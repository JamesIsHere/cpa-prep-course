# Gemini Review Handoff — Orchestrator Reliability

## Who is asking

James, sole developer of a CPA exam prep course website. He's spent 20+ hours dealing with pipeline failures that Claude (me) kept declaring fixed. He's lost trust and wants fresh eyes on this before proceeding.

## What this project is

A Next.js study website with ~8,920 quiz questions stored in Supabase (Postgres). Questions go through quality improvement passes (rewriting explanations, fixing choice cuing, adding citations, etc.) via SQL UPDATE migrations. The pipeline generates these migrations using Claude in headless mode, validates them, applies them to the DB, and commits to git.

## The pipeline architecture

```
orchestrate.ps1  (PowerShell, 1,529 lines)
    ├── select-*-candidates.ts    → picks questions needing work
    ├── generate-*-scaffold.ts    → creates SQL migration file with TODOs
    ├── claude --print             → fills the TODOs with real content
    ├── validate-migration.ts     → checks the filled migration for errors
    ├── git commit                 → commits the migration file
    ├── migrate.mjs               → applies migration SQL to Supabase via exec_sql RPC
    └── sync-question-counts.ts   → updates local files with DB counts
```

James runs up to 6 instances of `orchestrate.ps1` simultaneously (one per exam section: AUD, FAR, REG, BAR, ISC, TCP) in separate PowerShell terminals.

## Key files

| File | Lines | Purpose |
|------|-------|---------|
| `scripts/orchestrate.ps1` | 1,529 | Main batch loop — the core of the pipeline |
| `scripts/migrate.mjs` | 215 | Applies pending SQL migrations to Supabase |
| `scripts/improve.mjs` | 111 | Two-phase quality fix entry point |
| `scripts/qa/*.ts` | 36 files | Candidate selectors, scaffold generators, validators |
| `supabase/migrations/*.sql` | 873 files | All database migrations |

## The three bugs

### Bug 1: Migration apply races (CRITICAL)

**Where:** `orchestrate.ps1` line 1449-1463, `migrate.mjs` lines 110-188

When an orchestrator batch finishes, it calls `node scripts/migrate.mjs` to apply the migration. `migrate.mjs` works like this:

1. Fetch all tracked filenames from `applied_migrations` table
2. Scan all `.sql` files on disk
3. Find the diff (pending = on disk but not tracked)
4. Apply ALL pending migrations sequentially

When 6 orchestrator instances call this simultaneously:
- All 6 see the same pending list
- All 6 try to apply the same migrations
- Most fail with HTTP errors (duplicate key, race conditions)
- The migration file is already committed to git (commit happens BEFORE apply)
- `migrate.mjs` exits non-zero, orchestrator prints yellow warning, continues to next batch
- **Result:** Migration is in git but never applied to DB. The DB is stale.

This happened with 210 migrations across the most recent quality fix run. All 210 were committed to git, zero were in the DB. James thought everything was done.

**The fix should:** Either add a `--file=<specific_file>` mode to `migrate.mjs` so each orchestrator only applies its own migration (no scanning, no racing), or add file-level locking, or both.

### Bug 2: Apply failure is non-fatal

**Where:** `orchestrate.ps1` lines 1454-1458

```powershell
if ($LASTEXITCODE -eq 0) {
    Write-Step 'Apply' 'migration applied to DB'
} else {
    Write-Step 'Apply' 'WARNING: migration apply failed — DB counts may be stale' 'Yellow'
    Write-Log "Apply  WARNING: $applyOutput"
}
```

When apply fails, the orchestrator just prints a yellow warning and keeps going. The migration is already committed to git (step 7 happens before step 7.5). The next batch proceeds with stale DB data.

**The fix should:** Either make apply failure stop the loop (`$stopped = $true; break`), or reorder so apply happens BEFORE commit (so if apply fails, nothing is committed).

### Bug 3: Failed scaffolds left on disk

**Where:** `orchestrate.ps1` lines 1256-1261

When Claude fills a scaffold but validation fails after retries, the orchestrator stops the loop but never deletes the bad `.sql` file from `supabase/migrations/`. This inflates file counts and leaves junk that confuses the next run.

Same issue on lines 1408-1411 (TODO guard), 1420-1423 (duplicate number guard), and other `$stopped = $true; break` paths.

**The fix should:** Delete `$scaffoldPath` whenever the batch is abandoned.

## Secondary issues

### dotenv banner pollution

The `dotenv` package prints a banner to stdout: `[dotenv@17.3.1] injecting env (12) from .env.local...`

Several scripts pipe stdout to `JSON.parse()`. The banner breaks parsing. Each script needs to either:
- Filter stdout before parsing (grep -v, string manipulation)
- Suppress the banner (dotenv config option or env var)
- Use stderr for the banner

This was partially fixed in `improve.mjs` but the pattern exists across other scripts.

### Concurrency on git operations

Six orchestrators all doing `git add` + `git commit` on the same repo simultaneously. Git has its own lock file (`.git/index.lock`), so concurrent commits can fail. The orchestrator doesn't handle this — if the commit fails, it's silently swallowed (`2>&1 | Out-Null`).

### sync-counts file contention

At the end of each run, all 6 orchestrators try to run `npm run sync-counts` which writes to `blueprint.ts`, `CLAUDE.md`, and test files. Multiple writers = file corruption or last-writer-wins. The end-of-run sync consistently fails with "Sync failed: Computing generation plan..."

## Current state (as of 2026-03-30)

- 873 migration files on disk, 878 applied to DB (5 extra in DB are from before the tracking table existed)
- 0 pending migrations — James and I manually applied the 210 that were stuck
- 8,920 total questions across 6 sections
- The quality fix pass (Phase 2) did run through Claude and the migrations ARE now applied, but ~2,106 questions still have issues (the Claude rewrites didn't fully resolve every flagged pattern)
- 292 verification failures + 145 review flags from the correctness verifier still need fixing

## What James needs from Gemini

An honest review of the orchestrator's reliability. Specifically:

1. **Are the three bugs above correctly diagnosed?** Did Claude (me) miss anything?
2. **What's the right fix?** The plan I wrote (in `.claude/plans/jazzy-napping-pike.md`) proposes adding `--file` mode to migrate.mjs, reordering apply-before-commit, making apply failure fatal, and cleaning up failed scaffolds. Is that sufficient or is there a better architecture?
3. **Is the overall pipeline architecture sound?** Or is there a fundamental design issue with running 6 instances against one git repo and one DB?
4. **What testing should be done** to actually verify the fixes work under real concurrent conditions?

## How to explore

```bash
# Read the orchestrator
cat scripts/orchestrate.ps1

# Read the migration applier
cat scripts/migrate.mjs

# Read the quality improvement entry point
cat scripts/improve.mjs

# Check current migration status
npm run migrate:status

# See the plan Claude wrote
cat .claude/plans/jazzy-napping-pike.md

# See the QA scripts
ls scripts/qa/

# Run quality candidate count for a section
npx tsx scripts/qa/select-quality-candidates.ts --section=aud --count=99999
```
