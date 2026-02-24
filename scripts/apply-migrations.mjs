#!/usr/bin/env node
/**
 * Apply pending SQL migrations to Supabase via exec_sql RPC.
 * Usage: node scripts/apply-migrations.mjs [--from=00128] [--dry-run]
 */
import { readFileSync, readdirSync } from 'fs';
import { join } from 'path';
import { config } from 'dotenv';

config({ path: '.env.local' });

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
const MIGRATIONS_DIR = join(process.cwd(), 'supabase', 'migrations');

const args = process.argv.slice(2);
const fromArg = args.find(a => a.startsWith('--from='));
const fromNum = fromArg ? parseInt(fromArg.split('=')[1]) : 128;
const dryRun = args.includes('--dry-run');

async function execSQL(sql) {
  const resp = await fetch(`${SUPABASE_URL}/rest/v1/rpc/exec_sql`, {
    method: 'POST',
    headers: {
      'apikey': SERVICE_KEY,
      'Authorization': `Bearer ${SERVICE_KEY}`,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({ query: sql }),
  });

  if (!resp.ok) {
    const text = await resp.text();
    throw new Error(`HTTP ${resp.status}: ${text.substring(0, 300)}`);
  }
}

// Get all migration files sorted, filtered by --from
const files = readdirSync(MIGRATIONS_DIR)
  .filter(f => f.endsWith('.sql'))
  .sort()
  .filter(f => {
    const num = parseInt(f.split('_')[0]);
    return num >= fromNum;
  });

console.log(`Found ${files.length} migrations to apply (from ${String(fromNum).padStart(5, '0')})`);

if (dryRun) {
  files.forEach(f => console.log(`  [dry-run] ${f}`));
  console.log(`\n${files.length} migrations would be applied.`);
  process.exit(0);
}

let applied = 0;
let failed = 0;
const startTime = Date.now();

for (const file of files) {
  let sql = readFileSync(join(MIGRATIONS_DIR, file), 'utf8');
  // Strip transaction commands — exec_sql runs inside its own transaction
  sql = sql.replace(/^\s*BEGIN\s*;\s*$/gm, '').replace(/^\s*COMMIT\s*;\s*$/gm, '');
  process.stdout.write(`  [${applied + 1}/${files.length}] ${file}...`);
  try {
    await execSQL(sql);
    console.log(' OK');
    applied++;
  } catch (err) {
    console.log(` FAILED`);
    console.error(`    Error: ${err.message.substring(0, 200)}`);
    failed++;
    console.error(`\nStopping after failure. ${applied} applied, ${failed} failed.`);
    process.exit(1);
  }
}

const elapsed = ((Date.now() - startTime) / 1000).toFixed(1);
console.log(`\nDone: ${applied} migrations applied in ${elapsed}s.`);
