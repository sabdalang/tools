import { existsSync } from "fs";
import { DATA_FILES } from "./config";

function getApiFromLine(line: string) {
  if (line.startsWith('const ')) {
    return {
      type: 'const',
      name: line.slice(6, line.indexOf(' ', 6)),
      full: line.slice(6),
    };
  }
  if (line.startsWith('fn ')) {
    return {
      type: 'fn',
      name: line.slice(3, line.indexOf('(', 3)),
      full: line.slice(3),
    };
  }
  // Tambahkan deteksi namespace/struct (misal: std.Io.Dir {)
  if (line.endsWith('{') && !line.includes(' ')) {
    return {
      type: 'ns',
      name: line.slice(0, -1),
      full: line.slice(0, -1),
    };
  }
  return null;
}

function getExactMatchedApi(query: string, line: string, ns: string) {
  const api = getApiFromLine(line);
  if (api) {
    // Mencocokkan query secara presisi: `std.Io.Dir` atau `std.Io.Dir.cwd`
    const fullApi = ns ? `${ns}.${api.name}` : api.name;
    if (query === fullApi || query === `${ns}.${api.name}`) {
      return api;
    }
  }
  return null;
}

export async function cariInFiles(query: string) {
  for (const [file, label] of Object.entries(DATA_FILES)) {
    if (!existsSync(file)) continue;

    const lines = (await Bun.file(file).text()).split('\n');
    let currentNamespace = "";
    
    for (const line of lines) {
      const trimmed = line.trim();
      if (trimmed === '}') {
        currentNamespace = "";
        continue;
      }
      if (trimmed.endsWith('{')) {
        currentNamespace = trimmed.slice(0, -1).trim();
      }

      const api = getExactMatchedApi(query, trimmed, currentNamespace);
      if (api) {
        return { ns: currentNamespace, api };
      }
    }
  }
  return null;
}

export async function cariAlternatif(query: string) {
  // Struktur: Record<string, Record<string, string[]>>
  // Kategori -> Sub-kategori -> [entries]
  const alternatif: Record<string, Record<string, string[]>> = {};

  for (const [file, label] of Object.entries(DATA_FILES)) {
    if (!existsSync(file)) continue;

    const lines = (await Bun.file(file).text()).split('\n');
    let currentNamespace = "";
    
    for (const line of lines) {
      const trimmed = line.trim();
      if (trimmed === '}') {
        currentNamespace = "";
        continue;
      }
      if (trimmed.endsWith('{')) {
        currentNamespace = trimmed.slice(0, -1).trim();
      }

      if (trimmed.toLowerCase().includes(query.toLowerCase())) {
        const parts = currentNamespace.split('.');
        const cat = label; // misal 'std'
        const sub_cat = parts.length > 0 ? parts[0] : "root";
        
        alternatif[cat] ||= {};
        alternatif[cat][sub_cat] ||= [];
        if (!alternatif[cat][sub_cat].includes(trimmed)) {
            alternatif[cat][sub_cat].push(trimmed);
        }
      }
    }
  }
  return alternatif;
}
