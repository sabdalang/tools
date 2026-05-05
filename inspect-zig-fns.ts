import { readFileSync, existsSync } from "fs";
import { join } from "path";
import { execSync } from "child_process";

const DATA_FILES = {
  [join(__dirname, 'zig-std-apis.zig')]: 'std',
  [join(__dirname, 'zig-compiler-apis.zig')]: 'compiler'
};

const CACHE_DIR = join(__dirname, '../docs/std-cache');
const cyan = "\x1b[36m";
const purple = "\x1b[35m";
const reset = "\x1b[0m";

function highlight(text: string, query: string) {
  const terms = query.split('.').filter(t => t.length > 0);
  let result = text;
  terms.sort((a, b) => b.length - a.length).forEach(term => {
    const escaped = term.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
    const regex = new RegExp(`\\b(${escaped})\\b`, 'g');
    result = result.replace(regex, `${cyan}$1${reset}`);
  });
  return result;
}

function getDeskripsi(targetApi: string) {
  const filename = `${targetApi.replace(/\./g, '-')}.md`;
  const cachePath = join(CACHE_DIR, filename);
  if (!existsSync(cachePath)) {
    try { execSync(`node ${join(__dirname, 'scrape-std-docs.ts')} ${targetApi}`, { stdio: 'ignore' }); } catch (e) { return null; }
  }
  return existsSync(cachePath) ? readFileSync(cachePath, 'utf-8') : null;
}

function cariFungsi(query: string) {
  console.log(`Pencarian API: ${highlight(query, query)}\n`);
  const fnName = query.split('.').pop() || "";
  let foundExact = false;

  for (const [file, label] of Object.entries(DATA_FILES)) {
    if (!existsSync(file)) continue;

    const lines = readFileSync(file, 'utf-8').split('\n');
    let currentNamespace = "";
    let labelPrinted = false;

    for (const line of lines) {
      const trimmed = line.trim();
      if (trimmed.endsWith('{')) {
        currentNamespace = trimmed.slice(0, -1).trim();
      } else if (trimmed === '}') {
        currentNamespace = "";
      } else if (trimmed.length > 0 && currentNamespace.length > 0 && trimmed.includes(fnName)) {
        if (!labelPrinted) {
            console.log(`${purple}[${label}]${reset}`);
            labelPrinted = true;
        }

        const matchFull = `${currentNamespace}.${trimmed}`;
        if (trimmed.split(/[\s:()]+/)[0] === fnName && matchFull.includes(query)) {
            console.log(`  ✅ ${highlight(matchFull, query)}`);
            foundExact = true;
        } else {
            console.log(`     ${highlight(matchFull, query)}`);
        }
      }
    }
    if (labelPrinted) console.log("");
  }

  if (foundExact) {
    const desc = getDeskripsi(query);
    if (desc) console.log(`📄 Deskripsi:\n${desc}`);
  } else {
    console.log(`❌ '${highlight(query, query)}' tidak ditemukan.`);
  }
}

const query = process.argv[2];
if (!query) {
    console.log("Usage: bun tools/inspect-zig-fns.ts <api_target>");
    process.exit(1);
}
cariFungsi(query);
