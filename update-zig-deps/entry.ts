#!/usr/bin/env bun

/**
 * update-zig-deps — Update Zig dependency hashes in build.zig.zon.
 *
 * Uses uniast.ts as the ZON parser plugin.
 *
 * Usage:
 *   bun run entry.ts [project-dir] [--fetch]
 */

import { parse, updateHashes } from './parser.ts';
import { $ } from 'bun';

const argv = Bun.argv.slice(2);
const fetchFlag = argv.includes('--fetch');
const projectDir = argv.find((a) => !a.startsWith('--')) ?? '.';

const zonPath = `${projectDir}/build.zig.zon`;
const zonText = await Bun.file(zonPath).text();

const parsed = parse(zonText);

if (parsed.dependencies.length === 0) {
  console.log('No dependencies found in build.zig.zon');
  process.exit(0);
}

console.log(`Found ${parsed.dependencies.length} dependenc${parsed.dependencies.length === 1 ? 'y' : 'ies'} in ${zonPath}`);

const updates = new Map<string, string>();

for (const dep of parsed.dependencies) {
  process.stdout.write(`  ${dep.name} ... `);

  try {
    const proc = Bun.spawn(['zig', 'fetch', dep.url], {
      cwd: projectDir,
      stdout: 'pipe',
      stderr: 'pipe',
    });
    const stdout = await new Response(proc.stdout).text();
    const exitCode = await proc.exited;

    if (exitCode !== 0) {
      const stderr = await new Response(proc.stderr).text();
      console.log('FAILED');
      console.error(`    ${stderr.trim()}`);
      continue;
    }

    const newHash = stdout.trim();

    if (newHash === dep.hash) {
      console.log('up to date');
    } else {
      console.log('updated');
      console.log(`    old: ${dep.hash}`);
      console.log(`    new: ${newHash}`);
      updates.set(dep.name, newHash);
    }
  } catch (err) {
    console.log('FAILED');
    console.error(`    ${err}`);
  }
}

if (updates.size === 0) {
  console.log('\nAll dependencies are up to date.');
  process.exit(0);
}

const updatedText = updateHashes(zonText, updates);
await Bun.write(zonPath, updatedText);
console.log(`\nUpdated ${updates.size} dependenc${updates.size === 1 ? 'y' : 'ies'} in build.zig.zon`);

if (fetchFlag) {
  console.log('\nFetching dependencies to cache...');
  const fetchProc = Bun.spawn(['zig', 'build', '--fetch'], {
    cwd: projectDir,
    stdout: 'pipe',
    stderr: 'pipe',
  });
  await fetchProc.exited;
  console.log('Done.');
}
