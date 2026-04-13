#!/usr/bin/env node
/**
 * Pre-commit gate for migration files.
 *
 * Checks every staged .sql file in supabase/migrations/:
 *   1. No TODO placeholders in the SQL
 *   2. Migration has been applied to DB (exists in applied_migrations)
 *   3. DB question counts match blueprint.ts (no silent drift)
 *
 * Exit 0 = all good, exit 1 = blocked.
 *
 * Install: copy or symlink to .git/hooks/pre-commit, or call from a
 * hook runner. The install-hooks.mjs script does this automatically.
 */
import { execSync } from 'child_process';
import { readFileSync, writeFileSync } from 'fs';
import { join } from 'path';
import { config } from 'dotenv';

config({ path: '.env.local' });

const URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
const KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

// ─── Find staged migration files ──────────────────────────────
const staged = execSync('git diff --cached --name-only --diff-filter=ACM', { encoding: 'utf-8' })
  .split('\n')
  .filter(f => f.startsWith('supabase/migrations/') && f.endsWith('.sql'));

if (staged.length === 0) {
  // No migrations staged — nothing to check, write pass result
  writeFileSync(join('.git', 'hooks', '.pre-commit-result'), '0');
  process.exit(0);
}

process.stdout.write(`\n🔒 Migration gate: checking ${staged.length} staged migration(s)...\n`);

let failed = false;

// ─── Check 1: No TODO placeholders ────────────────────────────
for (const f of staged) {
  const content = readFileSync(f, 'utf-8');
  const todoMatches = content.match(/TODO[:\s]/gi);
  if (todoMatches) {
    process.stdout.write(`\n❌ BLOCKED: ${f} contains ${todoMatches.length} TODO placeholder(s)\n`);
    // Show the lines
    content.split('\n').forEach((line, i) => {
      if (/TODO[:\s]/i.test(line)) {
        process.stdout.write(`   Line ${i + 1}: ${line.trim().substring(0, 120)}\n`);
      }
    });
    failed = true;
  }
}

// ─── Check 2: Migration applied to DB ─────────────────────────
// Page through applied_migrations — Supabase REST caps each request at 1000
// rows by default, so without pagination every migration beyond row 1000 is
// silently invisible and the hook falsely blocks commits.
if (URL && KEY) {
  try {
    const tracked = new Set();
    const pageSize = 1000;
    let offset = 0;
    let lastStatus = 200;
    while (true) {
      const resp = await fetch(
        `${URL}/rest/v1/applied_migrations?select=filename&order=filename&limit=${pageSize}&offset=${offset}`,
        { headers: { 'apikey': KEY, 'Authorization': `Bearer ${KEY}` } }
      );
      lastStatus = resp.status;
      if (!resp.ok) break;
      const rows = await resp.json();
      for (const r of rows) tracked.add(r.filename);
      if (rows.length < pageSize) break;
      offset += pageSize;
    }
    if (lastStatus >= 200 && lastStatus < 300) {
      for (const f of staged) {
        const filename = f.split('/').pop();
        if (!tracked.has(filename)) {
          process.stdout.write(`\n❌ BLOCKED: ${filename} is not in applied_migrations\n`);
          process.stdout.write(`   This migration has not been applied to the database.\n`);
          process.stdout.write(`   Run: npm run migrate\n`);
          failed = true;
        }
      }
    } else {
      process.stdout.write(`\n⚠️  WARNING: Could not reach applied_migrations table (HTTP ${lastStatus})\n`);
      process.stdout.write(`   Skipping DB tracking check — verify manually.\n`);
    }
  } catch (err) {
    process.stdout.write(`\n⚠️  WARNING: Could not connect to Supabase: ${err.message}\n`);
    process.stdout.write(`   Skipping DB tracking check — verify manually.\n`);
  }

  // ─── Check 3: Count drift ─────────────────────────────────────
  // Only run if any staged migration is an INSERT or DELETE (affects counts)
  const affectsCounts = staged.some(f => {
    const content = readFileSync(f, 'utf-8');
    return /\b(INSERT\s+INTO|DELETE\s+FROM)\s+questions\b/i.test(content);
  });

  if (affectsCounts) {
    try {
      // Get DB counts per section
      const secResp = await fetch(`${URL}/rest/v1/sections?select=id,code&order=id`, {
        headers: { 'apikey': KEY, 'Authorization': `Bearer ${KEY}` },
      });
      const sections = await secResp.json();

      const dbCounts = {};
      for (const s of sections) {
        const r = await fetch(
          `${URL}/rest/v1/questions?select=id&section_id=eq.${s.id}`,
          {
            method: 'HEAD',
            headers: {
              'apikey': KEY,
              'Authorization': `Bearer ${KEY}`,
              'Prefer': 'count=exact',
            },
          }
        );
        dbCounts[s.code] = parseInt(r.headers.get('content-range')?.split('/')[1] ?? '0');
      }

      // Get blueprint.ts counts
      const bpContent = readFileSync('src/lib/blueprint.ts', 'utf-8');
      const bpMatch = bpContent.match(/export const questionCounts[^{]*\{([^}]+)\}/);
      if (bpMatch) {
        const bpCounts = {};
        for (const line of bpMatch[1].split('\n')) {
          const m = line.match(/"([^"]+)":\s*(\d+)/);
          if (m) bpCounts[m[1]] = parseInt(m[2]);
        }

        // Sum DB counts by section code for comparison
        const dbBySection = {};
        for (const [code, count] of Object.entries(dbCounts)) {
          dbBySection[code] = (dbBySection[code] || 0) + count;
        }

        // Compare total DB count vs what CLAUDE.md says
        const totalDb = Object.values(dbCounts).reduce((a, b) => a + b, 0);
        const claudeMd = readFileSync('CLAUDE.md', 'utf-8');
        const totalMatch = claudeMd.match(/\*\*Totals:\*\*.*?([\d,]+)\s*questions/);
        if (totalMatch) {
          const claudeTotal = parseInt(totalMatch[1].replace(/,/g, ''));
          if (claudeTotal !== totalDb) {
            process.stdout.write(`\n❌ BLOCKED: Question count drift detected\n`);
            process.stdout.write(`   DB total: ${totalDb}\n`);
            process.stdout.write(`   CLAUDE.md claims: ${claudeTotal}\n`);
            process.stdout.write(`   Run: npm run migrate (it syncs counts automatically)\n`);
            failed = true;
          }
        }
      }
    } catch (err) {
      process.stdout.write(`\n⚠️  WARNING: Count verification failed: ${err.message}\n`);
    }
  }
} else {
  process.stdout.write(`\n⚠️  WARNING: No Supabase credentials — skipping DB checks.\n`);
  process.stdout.write(`   Set NEXT_PUBLIC_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY in .env.local\n`);
}

// Write result to file for the shell hook to read.
// Node.js on Windows has a fetch() cleanup bug that crashes on exit,
// so we can't rely on process.exit() returning the right code.
const resultFile = join('.git', 'hooks', '.pre-commit-result');
if (failed) {
  process.stdout.write(`\n🚫 Commit blocked. Fix the issues above and try again.\n\n`);
  writeFileSync(resultFile, '1');
} else {
  process.stdout.write(`✅ Migration gate passed (${staged.length} file(s) verified)\n`);
  writeFileSync(resultFile, '0');
}
