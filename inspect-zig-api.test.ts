import { expect, test, describe } from "bun:test";
import { execSync } from "child_process";

function inspect(query) {
  return execSync(`bun tools/inspect-zig-fns.ts ${query}`, {stdio: 'pipe'}).toString();
}

describe("inspect-zig-API", () => {
  test("format: header std.Io.Dir", () => {
    const out = inspect("std.Io.Dir");
    expect(out).toContain("# std.Io.Dir");
  });

  // test("format: header dan konten std.Io.Dir.cwd", () => {
  //   const out = inspect("std.Io.Dir.cwd");
  //   expect(out).toContain("# std.Io.Dir.cwd\r\n\r\n");
  //   expect(out).toContain("pub fn cwd() Dir");
  // });

  /*
  test("presisi: std.Io.Dir", () => {
    const out = inspect("std.Io.Dir.Iterator");
    expect(out).toContain("Pencarian ditemukan");
    expect(out).toContain("This API is"); //Deskripsi
  });

  test("presisi: Iterator (di compiler)", () => {
    const out = inspect("compiler.aro.aro.UnwrappedSwitch.CaseIterator");
    expect(out).toContain("Pencarian ditemukan");
  });

  test("presisi: std.Io.Dir.cwd Zig function", () => {
    const out = inspect("std.Io.Dir.cwd");
    expect(out).toContain("Pencarian ditemukan");
    expect(out).toContain("pub fn cwd() Dir");
  });

  test("presisi: cwd BC API", () => {
    const out = inspect("std.fs.cwd");
    expect(out).toContain("ga ketemu blay.. nih alternatifnya");
    expect(out).toContain("std.Io.Dir.cwd"); // alternatif ada di list
  });

  test("fallback: query tidak ada", () => {
    const out = inspect("TidakAdaAPI");
    expect(out).toContain("ga ketemu blay.. nih alternatifnya");
  });

  test("fallback: query gabungan (Io.Dir)", () => {
    const out = inspect("Io.Dir");
    expect(out).toContain("ga ketemu blay.. nih alternatifnya");
    expect(out).toContain("cwd()"); // cari dari Io dan Dir
  });

  test("fallback: Iterator partial (case insensitive)", () => {
    const out = inspect("Iterator");
    expect(out).toContain("ga ketemu blay.. nih alternatifnya");
    expect(out).toContain("Dir.Iterator");  // alternatif ada di list <- case-insensitif
  });
  */
});

require('fs').writeFileSync(__dirname + '/inspect.md', '')
