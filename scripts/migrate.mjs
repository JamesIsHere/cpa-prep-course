#!/usr/bin/env node
/**
 * npm run migrate — the ONE command for database migrations.
 *
 * What it does:
 *   1. Finds all .sql files in supabase/migrations/ not yet in applied_migrations
 *   2. Checks for TODO placeholders (blocks if found)
 *   3. Applies each migration to Supabase via exec_sql
 *   4. Records each in applied_migrations
 *   5. Runs sync-counts to update blueprint.ts, tests, CLAUDE.md
 *   6. Prints before/after question counts
 *
 * Usage:
 *   npm run migrate              # Apply all pending
 *   npm run migrate -- --dry-run # Show what would happen
 *   npm run migrate -- --status  # Just show sync status, apply nothing
 *
 * This is the ONLY way to apply migrations. Do not use exec_sql directly,
 * do not run SQL in the Supabase dashboard. If you do, the tracking table
 * won't know about it and the pre-commit hook will block your commit.
 */
import { readFileSync, readdirSync } from 'fs';
import { join } from 'path';
import { execSync } from 'child_process';
import { config } from 'dotenv';

config({ path: '.env.local' });

const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;
const MIGRATIONS_DIR = join(process.cwd(), 'supabase', 'migrations');

if (!SUPABASE_URL || !SERVICE_KEY) {
  console.error('Missing NEXT_PUBLIC_SUPABASE_URL or SUPABASE_SERVICE_ROLE_KEY in .env.local');
  process.exit(1);
}

const args = process.argv.slice(2);
const dryRun = args.includes('--dry-run');
const statusOnly = args.includes('--status');

// ─── Helpers ───────────────────────────────────────────────────

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

async function fetchTracked() {
  const applied = new Set();
  try {
    const resp = await fetch(
      `${SUPABASE_URL}/rest/v1/applied_migrations?select=filename`,
      { headers: { 'apikey': SERVICE_KEY, 'Authorization': `Bearer ${SERVICE_KEY}` } }
    );
    if (resp.ok) {
      for (const row of await resp.json()) applied.add(row.filename);
    }
  } catch { /* table doesn't exist yet */ }
  return applied;
}

async function trackMigration(filename) {
  await execSQL(
    `INSERT INTO applied_migrations (filename) VALUES ('${filename.replace(/'/g, "''")}') ON CONFLICT DO NOTHING;`
  );
}

async function getQuestionCounts() {
  const counts = {};
  const resp = await fetch(
    `${SUPABASE_URL}/rest/v1/sections?select=id,code&order=id`,
    { headers: { 'apikey': SERVICE_KEY, 'Authorization': `Bearer ${SERVICE_KEY}` } }
  );
  const sections = await resp.json();
  let total = 0;
  for (const s of sections) {
    const r = await fetch(
      `${SUPABASE_URL}/rest/v1/questions?select=id&section_id=eq.${s.id}`,
      {
        method: 'HEAD',
        headers: {
          'apikey': SERVICE_KEY,
          'Authorization': `Bearer ${SERVICE_KEY}`,
          'Prefer': 'count=exact',
        },
      }
    );
    const count = parseInt(r.headers.get('content-range')?.split('/')[1] ?? '0');
    counts[s.code.toUpperCase()] = count;
    total += count;
  }
  counts.TOTAL = total;
  return counts;
}

// ─── Main ──────────────────────────────────────────────────────

// 1. Scan disk and tracking table
const allFiles = readdirSync(MIGRATIONS_DIR).filter(f => f.endsWith('.sql')).sort();
const tracked = await fetchTracked();
const pending = allFiles.filter(f => !tracked.has(f));

console.log(`\nMigrations on disk:  ${allFiles.length}`);
console.log(`Already applied:     ${tracked.size}`);
console.log(`Pending:             ${pending.length}`);

if (statusOnly) {
  if (pending.length > 0) {
    console.log(`\nPending migrations:`);
    for (const f of pending) console.log(`  ${f}`);
  } else {
    console.log(`\n✅ All migrations applied. Database is in sync.`);
  }
  // Also show counts
  const counts = await getQuestionCounts();
  console.log(`\nDB question counts:`);
  for (const [k, v] of Object.entries(counts)) {
    console.log(`  ${k.padEnd(6)} ${v}`);
  }
  process.exit(0);
}

if (pending.length === 0) {
  console.log(`\n✅ Nothing to apply. Database is in sync.`);
  process.exit(0);
}

// 2. Check for TODO placeholders
let blocked = false;
for (const f of pending) {
  const content = readFileSync(join(MIGRATIONS_DIR, f), 'utf-8');
  const todos = content.match(/TODO[:\s]/gi);
  if (todos) {
    console.error(`\n❌ ${f} contains ${todos.length} TODO placeholder(s) — fix before applying`);
    blocked = true;
  }
}
if (blocked) {
  console.error(`\n🚫 Blocked. Remove TODO placeholders and retry.`);
  process.exit(1);
}

// 3. Dry run
if (dryRun) {
  console.log(`\nWould apply ${pending.length} migration(s):`);
  for (const f of pending) console.log(`  ${f}`);
  console.log(`\nRun without --dry-run to apply.`);
  process.exit(0);
}

// 4. Get before counts
const beforeCounts = await getQuestionCounts();

// 5. Apply
console.log(`\nApplying ${pending.length} migration(s)...\n`);
let applied = 0;
const startTime = Date.now();

for (const file of pending) {
  let sql = readFileSync(join(MIGRATIONS_DIR, file), 'utf8');
  // Strip transaction commands — exec_sql runs inside its own transaction
  sql = sql.replace(/^\s*BEGIN\s*;\s*$/gm, '').replace(/^\s*COMMIT\s*;\s*$/gm, '');

  process.stdout.write(`  [${applied + 1}/${pending.length}] ${file}...`);
  try {
    await execSQL(sql);
    await trackMigration(file);
    console.log(' OK');
    applied++;
  } catch (err) {
    console.log(' FAILED');
    console.error(`    ${err.message.substring(0, 200)}`);
    console.error(`\n🚫 Stopped after failure. ${applied} applied, 1 failed.`);
    console.error(`Fix the issue, then run: npm run migrate`);
    process.exit(1);
  }
}

const elapsed = ((Date.now() - startTime) / 1000).toFixed(1);
console.log(`\n✅ ${applied} migration(s) applied in ${elapsed}s`);

// 6. Sync counts
console.log(`\nSyncing question counts...`);
try {
  execSync('npm run sync-counts', { stdio: 'pipe' });
  console.log('✅ Counts synced (blueprint.ts, tests, CLAUDE.md)');
} catch (err) {
  console.error('⚠️  sync-counts failed — run manually: npm run sync-counts');
}

// 7. Before/after summary
const afterCounts = await getQuestionCounts();
console.log(`\n--- Question Count Summary ---`);
console.log(`Section  Before  After   Change`);
console.log(`-------  ------  ------  ------`);
for (const key of Object.keys(afterCounts)) {
  const before = beforeCounts[key] ?? 0;
  const after = afterCounts[key];
  const diff = after - before;
  const diffStr = diff === 0 ? '  —' : (diff > 0 ? ` +${diff}` : ` ${diff}`);
  console.log(`${key.padEnd(7)}  ${String(before).padStart(6)}  ${String(after).padStart(6)}  ${diffStr}`);
}
console.log();
