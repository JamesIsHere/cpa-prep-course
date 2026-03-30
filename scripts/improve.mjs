#!/usr/bin/env node
/**
 * npm run improve — one command to fix all question quality issues.
 *
 * Phase 1 (instant): Fixes #4 null cognitive, #6 label mismatch, #9 citation in stem.
 * Phase 2 (Claude):  Fixes #1 giveaway longest, #3 incomplete explanation.
 *
 * Usage:
 *   npm run improve                      # full run: Phase 1 + Phase 2 instructions
 *   npm run improve -- --dry-run         # detection only, no changes
 *   npm run improve -- --section=aud     # one section only
 *   npm run improve -- --phase1-only     # just instant fixes
 */
import { execSync } from 'child_process';
import { config } from 'dotenv';

config({ path: '.env.local' });

const args = process.argv.slice(2);
const dryRun = args.includes('--dry-run');
const phase1Only = args.includes('--phase1-only');
const sectionArg = args.find(a => a.startsWith('--section='));

// ─── Phase 1: Instant fixes ───────────────────────────────────

console.log('\n=== npm run improve ===\n');

// Build args for fix-issues-direct.ts
const phase1Args = ['scripts/qa/fix-issues-direct.ts'];
if (sectionArg) phase1Args.push(sectionArg);
if (dryRun) phase1Args.push('--dry-run');

try {
  const result = execSync(`npx tsx ${phase1Args.join(' ')}`, {
    encoding: 'utf-8',
    stdio: ['pipe', 'pipe', 'inherit'], // stdout captured, stderr shown
    timeout: 120000,
  });

  const migrationPath = result.trim();

  if (migrationPath && !dryRun) {
    // Apply the migration
    console.log('\nApplying Phase 1 migration...');
    try {
      execSync('node scripts/migrate.mjs', { stdio: 'inherit', timeout: 120000 });
    } catch {
      console.error('⚠️  Migration apply failed — run manually: npm run migrate');
    }
  }
} catch (err) {
  if (err.status === 0) {
    // No issues found — clean exit
  } else {
    console.error('Phase 1 failed:', err.message?.substring(0, 200));
  }
}

if (dryRun || phase1Only) {
  if (dryRun) console.log('\n--dry-run complete. No changes made.');
  process.exit(0);
}

// ─── Phase 2: Claude-powered fixes ────────────────────────────

console.log('\n=== Phase 2: Claude-powered fixes ===\n');
console.log('Scanning for remaining #1 (giveaway longest) and #3 (incomplete explanation)...\n');

// Count remaining issues per section
const sections = ['aud', 'far', 'reg', 'bar', 'isc', 'tcp'];
const sectionsToRun = sectionArg ? [sectionArg.split('=')[1]] : sections;

const commands = [];
let totalRemaining = 0;

for (const sec of sectionsToRun) {
  try {
    const result = execSync(
      `npx tsx scripts/qa/select-quality-candidates.ts --section=${sec} --count=99999`,
      { encoding: 'utf-8', stdio: ['pipe', 'pipe', 'pipe'], timeout: 120000 }
    );
    const candidates = JSON.parse(result.trim() || '[]');
    if (candidates.length > 0) {
      const batches = Math.ceil(candidates.length / 30);
      commands.push({ section: sec, count: candidates.length, batches });
      totalRemaining += candidates.length;
      console.log(`  ${sec.toUpperCase().padEnd(5)} ${String(candidates.length).padStart(5)} questions  →  ${batches} batches`);
    } else {
      console.log(`  ${sec.toUpperCase().padEnd(5)}     0 questions  ✅`);
    }
  } catch {
    console.log(`  ${sec.toUpperCase().padEnd(5)}  (scan failed)`);
  }
}

if (totalRemaining === 0) {
  console.log('\n✅ All quality issues resolved. Nothing to do.');
  process.exit(0);
}

console.log(`\n  Total: ${totalRemaining} questions remaining\n`);
console.log('Run these in parallel PowerShell terminals:\n');

for (const cmd of commands) {
  console.log(`  ./scripts/orchestrate.ps1 -Section ${cmd.section} -Mode quality -Batches ${cmd.batches}`);
}

console.log('');
