import { expect, test, describe } from "bun:test";
import { execSync } from "child_process";

describe("inspect-zig-fns", () => {
  test("presisi: std.Io.Dir", () => {
    const out = execSync("bun tools/inspect-zig-fns.ts std.Io.Dir").toString();
    expect(out).toContain("Hasil pencarian: OK");
  });

  test("presisi: std.Io.Dir", () => {
    const out = execSync("bun tools/inspect-zig-fns.ts std.Io.Dir.Iterator").toString();
    expect(out).toContain("Hasil pencarian: OK");
    expect(out).toContain("This API is"); //Deskripsi
  });

  test("presisi: Iterator (di compiler)", () => {
    const out = execSync("bun tools/inspect-zig-fns.ts compiler.aro.aro.UnwrappedSwitch.CaseIterator").toString();
    expect(out).toContain("Hasil pencarian: OK");
  });

  test("presisi: std.Io.Dir.cwd Zig function", () => {
    const out = execSync("bun tools/inspect-zig-fns.ts std.Io.Dir.cwd").toString();
    expect(out).toContain("Hasil pencarian: OK");
    expect(out).toContain("pub fn cwd() Dir");
  });

  test("presisi: cwd BC API", () => {
    const out = execSync("bun tools/inspect-zig-fns.ts std.fs.cwd").toString();
    expect(out).toContain("PENCARIAN GA ADA DI DB.. DAN INI ALTERNATIFNYA");
    expect(out).toContain("std.Io.Dir.cwd"); // alternatif ada di list
  });

  test("fallback: query tidak ada", () => {
    const out = execSync("bun tools/inspect-zig-fns.ts TidakAdaAPI").toString();
    expect(out).toContain("PENCARIAN GA ADA DI DB.. DAN INI ALTERNATIFNYA");
  });

  test("fallback: query gabungan (Io.Dir)", () => {
    const out = execSync("bun tools/inspect-zig-fns.ts Io.Dir").toString();
    expect(out).toContain("PENCARIAN GA ADA DI DB.. DAN INI ALTERNATIFNYA");
    expect(out).toContain("std.Io.Dir.cwd"); // cari dari Io dan Dir
  });

  test("fallback: Iterator partial (case insensitive)", () => {
    const out = execSync("bun tools/inspect-zig-fns.ts iterator").toString();
    expect(out).toContain("PENCARIAN GA ADA DI DB.. DAN INI ALTERNATIFNYA");
    expect(out).toContain("std.Io.Dir.Iterator");  // alternatif ada di list <- case-insensitif
  });
});
