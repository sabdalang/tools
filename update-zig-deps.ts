#!/usr/bin/env bun

/**
 * update-zig-deps.ts
 *
 * Update Zig dependency hashes in build.zig.zon.
 *
 * Usage:
 *   bun run update-zig-deps.ts [project-dir] [--fetch]
 */

const argv = Bun.argv.slice(2);
const fetchFlag = argv.includes("--fetch");
const projectDir = argv.find((a) => !a.startsWith("--")) ?? ".";

const zonPath = `${projectDir}/build.zig.zon`;
const zonText = await Bun.file(zonPath).text();

// Parse dependencies
const deps: { name: string; url: string; hash: string }[] = [];
const lines = zonText.split("\n");
let inDeps = false;
let braceDepth = 0;

for (const line of lines) {
  if (/\.dependencies\s*=\s*\.?\{/.test(line)) {
    inDeps = true;
    braceDepth = 1;
    continue;
  }
  if (!inDeps) continue;

  const trimmed = line.trim();
  for (const ch of trimmed) {
    if (ch === "{") braceDepth++;
    else if (ch === "}") braceDepth--;
  }

  const nameM = trimmed.match(/^\.(\w+)\s*=\s*\.?\{/);
  if (nameM && braceDepth >= 2) {
    deps.push({ name: nameM[1], url: "", hash: "" });
  }

  const urlM = trimmed.match(/\.url\s*=\s*"([^"]+)"/);
  if (urlM && deps.length > 0) deps[deps.length - 1].url = urlM[1];

  const hashM = trimmed.match(/\.hash\s*=\s*"([^"]+)"/);
  if (hashM && deps.length > 0) deps[deps.length - 1].hash = hashM[1];

  if (braceDepth <= 0) inDeps = false;
}

if (deps.length === 0) {
  console.log("No dependencies found in build.zig.zon");
  process.exit(0);
}

console.log(`Found ${deps.length} dependenc${deps.length === 1 ? "y" : "ies"} in ${zonPath}`);

const updates: { oldHash: string; newHash: string }[] = [];

for (const dep of deps) {
  process.stdout.write(`  ${dep.name} ... `);

  try {
    const proc = Bun.spawn(["zig", "fetch", dep.url], {
      cwd: projectDir,
      stdout: "pipe",
      stderr: "pipe",
    });
    const stdout = await new Response(proc.stdout).text();
    const exitCode = await proc.exited;

    if (exitCode !== 0) {
      const stderr = await new Response(proc.stderr).text();
      console.log("FAILED");
      console.error(`    ${stderr.trim()}`);
      continue;
    }

    const newHash = stdout.trim();

    if (newHash === dep.hash) {
      console.log("up to date");
    } else {
      console.log("updated");
      console.log(`    old: ${dep.hash}`);
      console.log(`    new: ${newHash}`);
      updates.push({ oldHash: dep.hash, newHash });
    }
  } catch (err) {
    console.log("FAILED");
    console.error(`    ${err}`);
  }
}

if (updates.length === 0) {
  console.log("\nAll dependencies are up to date.");
  process.exit(0);
}

let updatedText = zonText;
for (const { oldHash, newHash } of updates) {
  updatedText = updatedText.replace(oldHash, newHash);
}

await Bun.write(zonPath, updatedText);
console.log(`\nUpdated ${updates.length} dependenc${updates.length === 1 ? "y" : "ies"} in build.zig.zon`);

if (fetchFlag) {
  console.log("\nFetching dependencies to cache...");
  const fetchProc = Bun.spawn(["zig", "build", "--fetch"], {
    cwd: projectDir,
    stdout: "pipe",
    stderr: "pipe",
  });
  await fetchProc.exited;
  console.log("Done.");
}
