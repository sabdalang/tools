import { Glob } from "bun";
import { exec } from '@tools/exec.ts';


function onError(err) {
  if (err.includes('tidak ditemukan')) return;
  
  console.error('\n' + '❌ ' + 'Lint error terdeteksi:');
  const errors = err.split('\n').filter(line => line.includes('Tidak boleh'));
  
  errors.forEach(line => {
    console.error('   ' + line.trim());
  });
  
  process.exit(1);
}
// if (process.env.ZIG_LINT === '0') 
// console.debug({entry_ziglint: process.env.ZIG_LINT})

  // Scan current directory for .zig files, excluding this file
const scanner = new Glob("tools/calang/files/*.ts");
const execs = []

for await (const file of scanner.scan({ absolute: true })) {
  // console.log(`Linting: ${file}`);
  const zig_file = (await import(file)).default
  execs.push(exec(['bun', 'tools/lint-zig.ts', zig_file], { onError }))
  if (process.env.ZIG_LINT_RM === '0') continue
  execs.push(Bun.$`rm ${file}`)
}

await Promise.all(execs)
console.log("✅ Lint zig source")
