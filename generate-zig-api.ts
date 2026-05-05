import { readFileSync, writeFileSync, readdirSync, statSync, existsSync } from 'fs';
import { join, relative, sep } from 'path';

const TARGETS = [
    { path: 'C:/zig/lib/std', output: join(__dirname, 'zig-std-apis.zig'), label: 'std' },
    { path: 'C:/zig/lib/compiler', output: join(__dirname, 'zig-compiler-apis.zig'), label: 'compiler' }
];

function walk(dir: string): string[] {
    let results: string[] = [];
    if (!existsSync(dir)) return results;
    const list = readdirSync(dir);
    for (const file of list) {
        const path = join(dir, file);
        const stat = statSync(path);
        if (stat && stat.isDirectory()) {
            results = results.concat(walk(path));
        } else if (file.endsWith('.zig')) {
            results.push(path);
        }
    }
    return results;
}

function generate() {
    for (const target of TARGETS) {
        if (!existsSync(target.path)) {
            console.warn(`⚠️ Direktori tidak ditemukan: ${target.path}`);
            continue;
        }
        console.log(`🔍 Memindai ${target.label} di: ${target.path}`);
        let files: string[] = [];
        try {
            files = walk(target.path);
        } catch (e) {
            console.error(`❌ Gagal membaca direktori: ${target.path}`);
            continue;
        }
        
        let output = '';

        for (const file of files) {
            const relPath = relative(target.path, file);
            let namespace = target.label;
            
            if (relPath !== `${target.label}.zig`) {
                const parts = relPath.replace(/\.zig$/, '').split(sep);
                namespace = `${target.label}.${parts.join('.')}`;
            }

            let content = '';
            try {
                content = readFileSync(file, 'utf-8');
            } catch (e) {
                continue;
            }

            const lines = content.split('\n');
            const apis = new Set<string>();

            const patterns = [
                /pub\s+fn\s+([a-zA-Z0-9_]+)/g,
                /pub\s+const\s+([a-zA-Z0-9_]+)\s*=/g,
                /pub\s+var\s+([a-zA-Z0-9_]+)\s*:/g,
                /pub\s+(?:struct|enum|union|error)\s+([a-zA-Z0-9_]+)/g,
                /pub\s+const\s+([a-zA-Z0-9_]+)\s*:/g
            ];

            for (const line of lines) {
                const trimmed = line.trim();
                if (trimmed.startsWith('//')) continue;

                for (const pattern of patterns) {
                    let match;
                    pattern.lastIndex = 0;
                    while ((match = pattern.exec(trimmed)) !== null) {
                        if (match[1]) apis.add(match[1]);
                    }
                }
            }

            if (apis.size > 0) {
                output += `${namespace} {\n`;
                for (const api of Array.from(apis).sort()) {
                    output += `  ${api}\n`;
                }
                output += `}\n\n`;
            }
        }

        writeFileSync(target.output, output);
        console.log(`✅ Berhasil menghasilkan ${target.output} (${files.length} berkas diproses)`);
    }
}

generate();
