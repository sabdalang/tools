import { existsSync, readFileSync, mkdirSync, writeFileSync } from "fs";
import { execSync } from "child_process";
import { join } from "path";
import { CACHE_DIR, BASE_URL } from "./config";

export function getFromCache(targetApi: string): string | null {
  const filename = `${targetApi.replace(/\./g, '-')}.md`;
  const cachePath = join(CACHE_DIR, filename);
  return existsSync(cachePath) ? readFileSync(cachePath, 'utf-8') : null;
}

export function saveToCache(term: string, hasil: string) {
  const filename = `${term.replace(/\./g, '-')}.md`;
  const cachePath = join(CACHE_DIR, filename);
  if (!existsSync(CACHE_DIR)) {
    mkdirSync(CACHE_DIR, { recursive: true });
  }
  writeFileSync(cachePath, hasil);
}

export function getFromOnlineDocs(targetApi: string) {
  console.log(`🌐 Mengunduh dokumentasi untuk ${targetApi}...`);
  try {
    let hasil = execSync(`node ${join(__dirname, '../scrape-std-docs.ts')} ${targetApi}`, { encoding: 'utf-8' });
    if (hasil && hasil.trim().length > 0) {
      saveToCache(targetApi, hasil);
      return hasil;
    }
  } catch (e) {
    console.error("Gagal mengunduh dokumentasi:", e);
  }
  return null;
}

export function getDeskripsi(targetApi: string): string | null {
  if (process.env.MOCK_DOCS === "fail") return null;
  let desc = getFromCache(targetApi);
  if (desc) return desc;
  return getFromOnlineDocs(targetApi);
}
