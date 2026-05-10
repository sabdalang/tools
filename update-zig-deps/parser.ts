/**
 * ZON parser — parses build.zig.zon files using uniast.ts Plugin pattern.
 *
 * The parser is a state machine built on uniast.ts:
 *   state = state(parser) || state
 *
 * Each state consumes tokens and returns the next state,
 * or undefined to stay in the same state.
 */

import { Parser } from '../../uniast.ts/index.ts';
import * as basic from '../../uniast.ts/basic.ts';
import * as blocks from '../../uniast.ts/blocks.ts';

export interface ZonDep {
  name: string;
  url: string;
  hash: string;
}

export interface ZonRoot {
  name: string;
  version: string;
  dependencies: ZonDep[];
  paths: string[];
}

interface ParseCtx {
  root: ZonRoot;
  inDeps: boolean;
  dep: ZonDep | null;
}

type ParseState = (parser: Parser) => ParseState | undefined;

/** Parse a ZON file and return the extracted structure. */
export function parse(source: string): ZonRoot {
  const ctx: ParseCtx = {
    root: { name: '', version: '', dependencies: [], paths: [] },
    inDeps: false,
    dep: null,
  };

  // Skip everything until we find .dependencies
  function skipToDeps(parser: Parser): ParseState | undefined {
    basic.allowWhitespace(parser);
    if (parser.index >= parser.source.length) return undefined;

    if (parser.match('.dependencies')) {
      parser.index += '.dependencies'.length;
      ctx.inDeps = true;
      return parseObject;
    }

    // Skip tokens
    skipToken(parser);
    return undefined;
  }

  // Parse an object block: { field = value, ... }
  function parseObject(parser: Parser): ParseState | undefined {
    basic.allowWhitespace(parser);
    if (parser.index >= parser.source.length) return undefined;

    if (parser.peek() === ',') { parser.index++; return undefined; }
    if (blocks.matchClose(parser)) {
      blocks.eatCloseCurly(parser);
      // Close current dep if we were tracking one
      if (ctx.dep?.name && ctx.dep.url && ctx.dep.hash) {
        ctx.root.dependencies.push(ctx.dep);
      }
      ctx.dep = null;
      if (ctx.inDeps) return undefined;
      return skipToDeps;
    }

    // Check for field: .name
    if (parser.peek() === '.' && !parser.match('.{')) {
      parser.index++; // skip .
      const fieldName = parser.readWord();

      if (ctx.inDeps) {
        if (!ctx.dep?.name) {
          // This is a dep name (e.g., .uniast)
          ctx.dep = { name: fieldName, url: '', hash: '' };
        }
      }

      return parseField;
    }

    // Skip .{ (nested block start)
    if (parser.match('.{')) {
      parser.index += 2;
      return undefined;
    }

    skipToken(parser);
    return undefined;
  }

  // Parse a field: = value
  function parseField(parser: Parser): ParseState | undefined {
    basic.allowWhitespace(parser);

    if (parser.peek() === '=') {
      parser.index++;
      return parseValue;
    }

    // No = means this was something else, go back
    return parseObject;
  }

  // Parse a value: string, hex, or block
  function parseValue(parser: Parser): ParseState | undefined {
    basic.allowWhitespace(parser);

    // String value
    if (parser.peek() === '"') {
      parser.index++;
      const val = parser.readUntilChar('"');
      parser.eat('"');

      if (ctx.dep) {
        if (val.startsWith('http')) {
          ctx.dep.url = val;
        } else {
          ctx.dep.hash = val;
        }
      }

      // After value: check for comma, close, or end of block
      basic.allowWhitespace(parser);
      if (parser.peek() === ',') { parser.index++; return parseObject; }
      if (blocks.matchClose(parser)) {
        blocks.eatCloseCurly(parser);
        if (ctx.dep?.url && ctx.dep?.hash) {
          ctx.root.dependencies.push(ctx.dep);
        }
        ctx.dep = null;
        return parseObject;
      }
      return parseObject;
    }

    // Hex value (0x...)
    if (parser.peek() === '0' && parser.source[parser.index + 1] === 'x') {
      parser.index += 2;
      while (parser.index < parser.source.length && /[0-9a-fA-F]/.test(parser.source[parser.index])) parser.index++;
      return parseObject;
    }

    // Nested block .{
    if (parser.match('.{')) {
      parser.index += 2;
      return parseObject;
    }

    skipToken(parser);
    return parseObject;
  }

  function skipToken(parser: Parser): void {
    if (parser.peek() === '"') {
      parser.index++;
      parser.readUntilChar('"');
      parser.eat('"');
    } else if (parser.peek() === '.') {
      parser.index++;
      parser.readWord();
    } else if (parser.peek() === '0' && parser.source[parser.index + 1] === 'x') {
      parser.index += 2;
      while (parser.index < parser.source.length && /[0-9a-fA-F]/.test(parser.source[parser.index])) parser.index++;
    } else {
      parser.index++;
    }
  }

  new Parser(source, {
    state: skipToDeps,
  });

  return ctx.root;
}

/**
 * Update hashes in ZON source text.
 * Uses simple string replacement — finds each dep by name and replaces its .hash value.
 */
export function updateHashes(source: string, updates: Map<string, string>): string {
  let result = source;
  for (const [name, newHash] of updates) {
    const escaped = name.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
    const depBlockRe = new RegExp(`\\.${escaped}\\s*=\\s*\\.\\{`, 'g');

    let match: RegExpExecArray | null;
    while ((match = depBlockRe.exec(result)) !== null) {
      const blockStart = match.index;
      const blockText = result.slice(blockStart);
      const hashRe = /\.hash\s*=\s*"([^"]+)"/;
      const hashMatch = hashRe.exec(blockText);
      if (hashMatch) {
        const hashAbsPos = blockStart + hashMatch.index;
        const fullMatch = result.slice(hashAbsPos, hashAbsPos + hashMatch[0].length);
        const newFull = `.hash = "${newHash}"`;
        result = result.slice(0, hashAbsPos) + newFull + result.slice(hashAbsPos + hashMatch[0].length);
      }
    }
  }
  return result;
}
