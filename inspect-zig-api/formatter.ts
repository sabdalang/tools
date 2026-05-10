export function getSignature(api: any): string {
    if (api.type === 'fn') {
        return `pub fn ${api.full}`;
    } else if (api.type === 'const') {
        return `pub const ${api.full}`;
    } else {
        return api.name || "";
    }
}

export function printDoc(query: string, api: any, desc: string): string {
    const yellow = "\x1b[33m";
    const reset = "\x1b[0m";
    
    let signature = getSignature(api);
    let content = desc.trim();

    if (content.startsWith("#")) {
       const lines = content.split('\n');
       content = lines.slice(1).join('\n').trim();
    }
    
    const output = `# ${query}\n\n${signature}\n\n${content}\n`;
    console.log(`\n📄 ${yellow}Dokumentasi:${reset}\n${output}\n`);
    return output;
}
