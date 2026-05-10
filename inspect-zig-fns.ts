import { readFileSync, existsSync } from "fs";
import { execSync } from "child_process";
import { join } from "path";

const DATA_FILES = {
  [join(__dirname, 'zig-std-apis.zig')]: 'std',
  [join(__dirname, 'zig-compiler-apis.zig')]: 'compiler'
};

const cyan = "\x1b[36m";
const purple = "\x1b[35m";
const yellow = "\x1b[33m";
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

const CACHE_DIR = join(__dirname, '../docs/zig-std-cache');

function getFromCache(targetApi: string) {
  const filename = `${targetApi.replace(/\./g, '-')}.md`;
  const cachePath = join(CACHE_DIR, filename);
  return existsSync(cachePath) ? readFileSync(cachePath, 'utf-8') : null;
}

function saveToCache(term: string, hasil: string) {
  const filename = `${term.replace(/\./g, '-')}.md`;
  const cachePath = join(CACHE_DIR, filename);
  const { writeFileSync, mkdirSync } = require("fs");
  if (!existsSync(CACHE_DIR)) {
    mkdirSync(CACHE_DIR, { recursive: true });
  }
  writeFileSync(cachePath, hasil);
}

function getFromOnlineDocs(targetApi: string) {
  console.log(`🌐 Mengunduh dokumentasi untuk ${targetApi}...`);
  try {
    let hasil = execSync(`node ${join(__dirname, 'scrape-std-docs.ts')} ${targetApi}`, { encoding: 'utf-8' });
    
    if (hasil && hasil.trim().length > 0) {
      saveToCache(targetApi, hasil);
      return hasil;
    }
  } catch (e) {
  }
}

function getDeskripsi(targetApi: string) {
  let desc = getFromCache(targetApi);
  if (desc) return desc;
  return getFromOnlineDocs(targetApi);
}

function getConst(line) {
  return {
    type: 'const',
    name: line.slice(6, (line as string).indexOf(' ', 6)),
    full: line.slice(6),
  }
}

function getFn(line) {
  return {
    type: 'fn',
    name: line.slice(3, (line as string).indexOf('(', 3)),
    full: line.slice(3),
  }

}

function getApiFromLine(line) {
  if (line.startsWith('const ')) {
    return getConst(line)
  }
  if (line.startsWith('fn ')) {
    return getFn(line)
  }
}

function getExactMatchedApi(query, line, ns, api) {
  if (api = getApiFromLine(line)) {
    if (ns === query) {
      return api
    }
    const full_path = `${ns}.${api.name}`
    if (full_path === query) {
      return api
    }
  }
}

function getSimiliarMatchedApi(queries, line, ns, api) {
  // if (queries[0] === 'Iterator')
  //   require('fs').appendFileSync(__dirname + '/inspect.md', Bun.stripANSI(Bun.inspect({queries, line, ns}, { depth: null, colors: true })) + '\n')

  if (api = getApiFromLine(line)) {
    for (const query of queries) {
      if (line.toLowerCase().includes(query.toLowerCase())) {
        const [cat, sub_cat, ...rest_ns] = ns.split('.')
        return {...api, cat, sub_cat, ns: rest_ns.join('.'), ns_full: ns}
      }
    }
  }
}

async function cariInFile(query, dataFile: string, alt_entries) {
  if (!existsSync(dataFile)) return;

  const queries = query.split('.')
  // const cat = queries.shift() // buang 'std'
  // alt_entries[cat] ||= {}

  const lines = (await Bun.file(dataFile).text()).split('\n');
  let currentNamespace = "";
  let api

  
  for (const line of lines) {
    // if (query === 'Iterator')
    //   require('fs').appendFileSync(__dirname + '/inspect.md', line + '\n')

    const trimmed = line.trim();

    if (trimmed === '}') {
      currentNamespace = "";
      continue
    }
    
    if (trimmed.endsWith('{')) {
      currentNamespace = trimmed.slice(0, -1).trim();
    }

    if (api = getExactMatchedApi(query, trimmed, currentNamespace)) {
      return {ns: currentNamespace, api}
    } else if (api = getSimiliarMatchedApi(queries, trimmed, currentNamespace)) {
      addEntry(api.cat, api.sub_cat, api.full, alt_entries)
    }
  }
}

async function cariInFiles(query, alt_entries) {
  let matched
  for (const [file, label] of Object.entries(DATA_FILES)) {
    if (matched = await cariInFile(query, file, alt_entries)) {
      return matched
    }
  }
}

function getNamespaceAndApi(query: string) {
  const parts = query.split('.');
  const api = parts.pop() || "";
  const ns = parts.join('.');
  return { ns, api };
}

function getKeywords(query: string) {
  return query.split('.').filter(k => k.length > 0);
}

function cariInMap(namespaces: Record<string, any>, ns: string, api: string) {
  return namespaces[ns] && namespaces[ns].apis.some((a: string) => {
      const parts = a.split(' ');
      return parts[parts.length - 1] === api;
  });
}

function addEntry(cat: string, sub_cat: string, api_info: string, alt_entries: any) {
  alt_entries[cat] ||= {}
  if (!alt_entries[cat][sub_cat]) {
    alt_entries[cat][sub_cat] = []
  }
  alt_entries[cat][sub_cat].push(api_info)
}

function ketemuDiDB(namespace, api_info, targetNs, targetApi) {
  return api_info.endsWith(targetApi) && namespace === targetNs
}

function getFromDB(query, alt_entries) {
  const { ns: targetNs, api: targetApi } = getNamespaceAndApi(query);

  for (const [label, namespaces] of Object.entries(db)) {
    for (const [namespace, data] of Object.entries(namespaces)) {
      for (const api_info of (data as any).apis) {
        if (ketemuDiDB(namespace, api_info, targetNs, targetApi)) {
          return {api_info}
        }
      }
    }
  }
}

function getSignature(api: any): string {
    console.log("DEBUG getSignature api:", JSON.stringify(api));
    if (api.type === 'fn') {
        return `pub fn ${api.full || api.name || ""}`;
    } else if (api.type === 'const') {
        return `pub const ${api.full || api.name || ""}`;
    } else {
        return api.name || "";
    }
}

function printDoc(query: string, api: any, desc: string): string {
    let signature = getSignature(api);
    let content = desc.trim();

    // Log untuk debug apa yang masuk ke sini
    console.log("DEBUG SIGNATURE:", signature);
    console.log("DEBUG CONTENT:", content);
    
    let output = `# ${query}\n\n${signature}\n\n${content}\n`;
    console.log(`\n📄 ${yellow}Dokumentasi:${reset}\n${output}\n`);
    return output;
}

async function cariInDb(query: string, alt_entries: Record<string, any>) {
  const api = await cariInFiles(query, alt_entries)
  
  if (api) {
    console.log("Pencarian ditemukan!\n");
    let desc = getDeskripsi(query, api) || "";
    printDoc(query, api, desc);
    return true
  }
}

function cariAlternatifEntry(db: Record<string, any>, keyword: string, alt_entries: Record<string, Record<string, any[]>>, query: string) {
  for (const [label, namespaces] of Object.entries(db)) {
    for (const [namespace, data] of Object.entries(namespaces)) {
      for (const api_info of (data as any).apis) {
        if (api_info.toLowerCase().includes(keyword.toLowerCase())) {
          addEntry(label, namespace, api_info, alt_entries, query);
        }
      }
    }
  }
}

function showAlternatives(query, alt_entries) {
  // if (query === 'Iterator')
    // require('fs').appendFileSync(__dirname + '/inspect.md', Bun.stripANSI(Bun.inspect({query, alt_entries}, { depth: null, colors: true })) + '\n')
  console.log(Bun.stripANSI(Bun.inspect(alt_entries, { depth: null, colors: true })));

}

async function cariZigApi(query: string) {
  const alt_entries = {}
  console.log(`🔍 Mencari ${highlight(query, query)}...`);
  const found = await cariInDb(query, alt_entries);
  
  if (found) {
    // const labels = Object.values(DATA_FILES);
    // for (const label of labels) {
    //   const labelMatches = matches.filter(m => m.cat === label);
    //   if (labelMatches.length === 0) continue;
    //   console.log(`${purple}[${label}]${reset}`);
    //   for (const match of labelMatches) {
    //     if (match.exact) {
    //       console.log(`  ✅ ${highlight(match.raw_full, query)}`);
    //     } else {
    //       console.log(`     ${highlight(match.raw_full, query)}`);
    //     }
    //   }
    //   console.log("");
    // }
    process.exit(0);
  }

  console.log("ga ketemu blay.. nih alternatifnya");
  showAlternatives(query, alt_entries);
}

const query = process.argv[2];
if (!query) {
    console.log("Usage: bun tools/inspect-zig-fns.ts <api_target>");
    process.exit(1);
}
cariZigApi(query);
