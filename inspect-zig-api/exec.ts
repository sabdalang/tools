import { execSync } from "child_process";
import { join } from "path";

export function runCommand(command: string): string {
  try {
    return execSync(command, { stdio: 'pipe' }).toString();
  } catch (error) {
    console.error(`Error executing command: ${command}`, error);
    return "";
  }
}

export function runApiTool(query: string): string {
  const entryPath = join(__dirname, "entry.ts");
  return runCommand(`bun ${entryPath} ${query}`);
}
