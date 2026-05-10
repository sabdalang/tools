import { join } from "path";

export const DATA_FILES = {
  [join(__dirname, '../zig-std-apis.zig')]: 'std',
  [join(__dirname, '../zig-compiler-apis.zig')]: 'compiler'
};

export const CACHE_DIR = join(__dirname, '../../docs/zig-std-cache');
export const BASE_URL = 'https://ziglang.org/documentation/master/std/';
