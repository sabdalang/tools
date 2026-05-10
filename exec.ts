import { execSync as nodeExecSync, spawn } from "child_process";
import { join } from "path";

export function execSync(command: string): string {
  try {
    return nodeExecSync(command, { stdio: 'pipe' }).toString();
  } catch (error) {
    console.error(`Error executing command: ${command}`, error);
  }
}

enum ErrorHandle {
  Forwarded = 0,
  Suppressed = 1,
}

export async function exec(args: string[], opts: any = {}) {
  const command = args.shift();
  if (!command) return;

  const proc = spawn(command, args, {
    ...opts,
    stderr: "pipe",
    stdout: "pipe"
  });

  const decoder = new TextDecoder();
  opts.error = ErrorHandle.Forwarded

  if (opts.onError) {
    (async () => {
      for await (const chunk of proc.stderr) {
        await opts.onError(decoder.decode(chunk, { stream: true }),
          function suppres() {
            opts.error = ErrorHandle.Suppressed
          })
      }
    })()
  }

  if (opts.onOutput && proc.stdout) {
    for await (const chunk of proc.stdout) {
      opts.onOutput(decoder.decode(chunk, { stream: true }))
    }
  }

  return new Promise((resolve, reject) => {
    proc.on('close', (code) => {
      if (code === 0) return resolve(code);
      if (opts.error !== ErrorHandle.Suppressed)
        reject(new Error(`Command failed with code ${code}`));
    });
    proc.on('error', reject);
  });
}

export function runApiTool(query: string): string {
  const entryPath = join(__dirname, "entry.ts");
  return execSync(`bun ${entryPath} ${query}`);
}
