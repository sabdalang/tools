import { cariInFiles, cariAlternatif } from "./search";
import { getDeskripsi } from "./docs";
import { printDoc } from "./formatter";

export async function cariZigApi(query: string) {
  console.log(`🔍 Mencari ${query}...`);
  const result = await cariInFiles(query);
  
  if (result) {
    console.log("Pencarian ditemukan!\n");
    const desc = getDeskripsi(query) || "";
    printDoc(query, result.api, desc);

    // Tambahan: Jika hasil memiliki informasi tipe, tampilkan fields/fns
    if (result.api.type === "struct") {
      console.log("\n[Struktur Internal]");
      if (result.api.fields) {
        console.log("  Fields:", result.api.fields.join(", "));
      }
      if (result.api.fns) {
        console.log("  Functions:", result.api.fns.join(", "));
      }
    }
    return true;
  }

  console.log("Maaf, API tidak ditemukan.");
  const alternatif = await cariAlternatif(query);
  
  for (const [cat, subCats] of Object.entries(alternatif)) {
      console.log(`\n[${cat}]`);
      for (const [subCat, entries] of Object.entries(subCats)) {
          console.log(`  [${subCat}]`);
          for (const entry of entries) {
              console.log(`    - ${entry}`);
          }
      }
  }
  return false;
}

const query = Bun.argv[2];
if (!query) {
    console.log("Usage: bun tools/inspect-zig-api/entry.ts <api_target>");
    process.exit(1);
}
cariZigApi(query);
