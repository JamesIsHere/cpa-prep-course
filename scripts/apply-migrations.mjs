#!/usr/bin/env node
/**
 * Apply pending SQL migrations to Supabase via exec_sql RPC.
 * Usage: node scripts/apply-migrations.mjs [--from=00128] [--dry-run] [--seed]
 *
 * --seed: Backfill applied_migrations with all existing migration filenames (run once).
 * Without --from, processes all unapplied migrations.
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
const fromNum = fromArg ? parseInt(fromArg.split('=')[1]) : null;
const dryRun = args.includes('--dry-run');
const seedMode = args.includes('--seed');

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

/**
 * Fetch the set of already-applied migration filenames from the tracking table.
 * Returns empty Set if the table doesn't exist yet.
 */
async function fetchAppliedMigrations() {
  const applied = new Set();
  try {
    const resp = await fetch(
      `${SUPABASE_URL}/rest/v1/applied_migrations?select=filename`,
      {
        headers: {
          'apikey': SERVICE_KEY,
          'Authorization': `Bearer ${SERVICE_KEY}`,
        },
      }
    );
    if (resp.ok) {
      const rows = await resp.json();
      for (const row of rows) {
        applied.add(row.filename);
      }
    }
    // If 404 or error, table doesn't exist yet — return empty set
  } catch {
    // Table doesn't exist yet
  }
  return applied;
}

/**
 * Record a migration as applied in the tracking table.
 */
async function trackMigration(filename) {
  await execSQL(
    `INSERT INTO applied_migrations (filename) VALUES ('${filename.replace(/'/g, "''")}') ON CONFLICT DO NOTHING;`
  );
}

// Get all migration files sorted
const allFiles = readdirSync(MIGRATIONS_DIR)
  .filter(f => f.endsWith('.sql'))
  .sort();

// Seed mode: backfill tracking for all existing migrations
if (seedMode) {
  console.log(`Seeding applied_migrations with ${allFiles.length} files...`);
  if (dryRun) {
    allFiles.forEach(f => console.log(`  [dry-run] would track: ${f}`));
    console.log(`\n${allFiles.length} migrations would be seeded.`);
    process.exit(0);
  }

  let seeded = 0;
  for (const file of allFiles) {
    process.stdout.write(`  [${seeded + 1}/${allFiles.length}] ${file}...`);
    try {
      await trackMigration(file);
      console.log(' OK');
      seeded++;
    } catch (err) {
      console.log(` FAILED`);
      console.error(`    Error: ${err.message.substring(0, 200)}`);
      process.exit(1);
    }
  }
  console.log(`\nSeeded ${seeded} migrations into tracking table.`);
  process.exit(0);
}

// Normal mode: fetch tracked migrations, filter, apply
const applied = await fetchAppliedMigrations();
console.log(`Tracking table has ${applied.size} recorded migrations.`);

// Filter by --from if specified, then exclude already-applied
let files = allFiles;
if (fromNum !== null) {
  files = files.filter(f => {
    const num = parseInt(f.split('_')[0]);
    return num >= fromNum;
  });
}
files = files.filter(f => {
  if (applied.has(f)) {
    console.log(`  [skip] ${f}`);
    return false;
  }
  return true;
});

console.log(`\n${files.length} migrations to apply.`);

if (files.length === 0) {
  console.log('Nothing to do.');
  process.exit(0);
}

if (dryRun) {
  files.forEach(f => console.log(`  [dry-run] ${f}`));
  console.log(`\n${files.length} migrations would be applied.`);
  process.exit(0);
}

let appliedCount = 0;
let failed = 0;
const startTime = Date.now();

for (const file of files) {
  let sql = readFileSync(join(MIGRATIONS_DIR, file), 'utf8');
  // Strip transaction commands — exec_sql runs inside its own transaction
  sql = sql.replace(/^\s*BEGIN\s*;\s*$/gm, '').replace(/^\s*COMMIT\s*;\s*$/gm, '');
  process.stdout.write(`  [${appliedCount + 1}/${files.length}] ${file}...`);
  try {
    await execSQL(sql);
    await trackMigration(file);
    console.log(' OK');
    appliedCount++;
  } catch (err) {
    console.log(` FAILED`);
    console.error(`    Error: ${err.message.substring(0, 200)}`);
    failed++;
    console.error(`\nStopping after failure. ${appliedCount} applied, ${failed} failed.`);
    process.exit(1);
  }
}

const elapsed = ((Date.now() - startTime) / 1000).toFixed(1);
console.log(`\nDone: ${appliedCount} migrations applied in ${elapsed}s.`);
