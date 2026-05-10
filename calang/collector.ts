import { randomUUID } from "crypto";

const path = process.argv[2] || "";
const normalizedPath = path.replaceAll('\\', '/');

// Use JSON.stringify on the entire path to ensure it's a valid, fully escaped JS string
const jsCode = `export default ${JSON.stringify(normalizedPath)};`;

await Bun.write(__dirname + '/files/' + randomUUID() + '.ts', jsCode);
