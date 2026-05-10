import { chromium } from 'playwright';
import { mkdir, writeFile } from 'fs/promises';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const BASE_URL = 'https://ziglang.org/documentation/master/std/';
const CACHE_DIR = join(__dirname, '../docs/std-cache');

async function scrape(targetApi: string, headed: boolean) {
  const browser = await chromium.launch({ headless: !headed });
  const page = await browser.newPage();
  page.setDefaultTimeout(10000);

  await mkdir(CACHE_DIR, { recursive: true });

  const url = `${BASE_URL}#${targetApi}`;

  try {
    await page.goto(url, { waitUntil: 'networkidle' });
  } catch (e) {
    console.log(`Peringatan: Navigasi timeout.`);
  }

  // Cek keberadaan API melalui #listFields atau ID API
  const found = await page.evaluate((api) => {
      const id = api.replace(/\./g, '-');
      return !!document.getElementById(id) || !!document.getElementById('listFields');
  }, targetApi);

  if (found) {
    // Tunggu sampai #tldDocs tidak memiliki class 'hidden'
    try {
        await page.waitForFunction(() => {
            const el = document.getElementById('tldDocs');
            return el && !el.classList.contains('hidden');
        }, { timeout: 10000 });
    } catch (e) {
        console.log(`Peringatan: Menunggu elemen timeout.`);
    }

    const data = await page.evaluate((api) => {
        return document.getElementById('tldDocs').innerText
    }, targetApi);

    process.stdout.write(`# ${targetApi}\n\n${data}`);
  } else {
    process.stderr.write(`API ${targetApi} tidak ditemukan di halaman.\n`);
  }

  await browser.close();
}

const target = process.argv[2];
const headed = process.argv.includes('--headed');
if (!target) {
    console.error("Gunakan: node tools/scrape-std-docs.ts <api_target> [--headed]");
    process.exit(1);
}

scrape(target, headed).catch(console.error);
