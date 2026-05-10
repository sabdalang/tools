#!/usr/bin/env bun

/**
 * update-zig-deps.ts
 *
 * Update Zig dependency hashes in build.zig.zon.
 * Fetches each dependency URL via `zig fetch` and updates .hash
 * when upstream has changed.
 *
 * Usage:
 *   bun run update-zig-deps.ts [project-dir] [--fetch]
 *
 * Options:
 *   project-dir   Path to Zig project (default: cwd)
 *   --fetch       Run `zig build --fetch` after updating hashes
 */

import { $ } from "bun";

const argv = Bun.argv.slice(2);
const fetchFlag = argv.includes("--fetch");
const projectDir = argv.find((a) => !a.startsWith("--")) ?? ".";

const zonPath = `${projectDir}/build.zig.zon`;

// ── Read build.zig.zon ────────────────────────────────────────
const zonText = await Bun.file(zonPath).text();
const deps: { name: string; url: string; hash: string }[] = [];

// Parse dependency entries: .name = .{ .url = "...", .hash = "..." }
const depRe = /\.(\w+)\s*=\s*\{\s*\.url\s*=\s*"([^"]+)",\s*\.hash\s*=\s*"([^"]+)"/g;
let m: RegExpExecArray | null;
while ((m = depRe.exec(zonText)) !== null) {
  deps.push({ name: m[1], url: m[2], hash: m[3] });
}

if (deps.length === 0) {
  console.log("No dependencies found in build.zig.zon");
  process.exit(0);
}

console.log(`Found ${deps.length} dependenc${deps.length === 1 ? "y" : "ies"} in ${zonPath}`);

// ── Fetch new hashes ──────────────────────────────────────────
let changed = 0;

for (const dep of deps) {
  process.stdout.write(`  ${dep.name} ... `);

  try {
    const result = await $`zig fetch ${dep.url}`.cwd(projectDir).quiet();
    const newHash = result.stdout.trim();

    if (newHash === dep.hash) {
      console.log("up to date");
    } else {
      console.log(`updated`);
      console.log(`    old: ${dep.hash}`);
      console.log(`    new: ${newHash}`);
      dep.hash = newHash;
      changed++;
    }
  } catch (err) {
    console.log("FAILED");
    console.error(`    ${err}`);
  }
}

// ── Write updated build.zig.zon ───────────────────────────────
if (changed === 0) {
  console.log("\nAll dependencies are up to date.");
  process.exit(0);
}

// Reconstruct build.zig.zon with updated hashes
let updatedText = zonText;
for (const dep of deps) {
  updatedText = updatedText.replace(
    new RegExp(`(\\.${dep.name}\\s*=\\s*\\{[^}]*?\\.hash\\s*=\\s*)"[^"]+"`),
    `$1"${dep.hash}"`
  );
}

await Bun.write(zonPath, updatedText);
console.log(`\nUpdated ${changed} dependenc${changed === 1 ? "y" : "ies"} in build.zig.zon`);

// ── Optional: pre-download ────────────────────────────────────
if (fetchFlag) {
  console.log("\nFetching dependencies to cache...");
  await $`zig build --fetch`.cwd(projectDir);
  console.log("Done.");
}
