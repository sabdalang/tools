import { Glob } from "bun";
import { readFileSync, statSync, existsSync } from "fs";
import { join } from "path";

/**
 * Linter untuk mencari impor Zig yang keluar dari direktori saat ini (menggunakan ../).
 * Penggunaan: bun run tools/lint-zig.ts [file atau direktori]
 */

const target = process.argv[2] || ".";
const excludeDirs = ["node_modules", ".zig-cache", "zig-out", ".git", ".sabda_rakitan"];

let totalErrors = 0;

function checkFile(filePath: string) {
  try {
    const content = readFileSync(filePath, "utf-8");
    const lines = content.split("\n");

    lines.forEach((line, index) => {
      const trimmedLine = line.trim();
      if (trimmedLine.startsWith("//")) return; // Skip commented lines
      const importMatch = line.match(/@import\(\s*"\.\.[\\\/][^"]+/);
      if (importMatch) {
        console.error(`${filePath}:${index + 1}: Tidak boleh impor dari luar direktori: ${importMatch[0]}`);
        console.error(`Gunakan addImport() atau barrel`);
        totalErrors++;
      }
    });
  } catch (err) {
    console.error(`Gagal membaca berkas ${filePath}: ${err}`);
  }
}

async function run() {
  if (!existsSync(target)) {
    console.error(`Kesalahan: Jalur '${target}' tidak ditemukan.`);
    process.exit(1);
  }

  const stats = statSync(target);

  if (stats.isFile()) {
    checkFile(target);
  } else {
    console.log(`Scanning for invalid Zig imports in: ${target}`);
    const scanner = new Glob("**/*.zig");
    for await (const file of scanner.scan(target)) {
      if (excludeDirs.some(dir => file.includes(dir))) continue;
      checkFile(join(target, file));
    }
  }

  if (totalErrors > 0) {
    console.error(`\nTerdeteksi ${totalErrors} kesalahan impor.`);
    process.exit(1);
  } else {
    console.log("\nTidak ditemukan pelanggaran impor.");
  }
}

run();
