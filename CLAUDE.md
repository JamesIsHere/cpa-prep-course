# CPA Prep Course

Full-scope CPA exam prep website — lessons, quizzes, practice exams, and study frameworks for $29.99/month.

## Tech Stack

| Layer      | Technology                       |
|------------|----------------------------------|
| Framework  | Next.js 16 (App Router)          |
| UI         | React 19 + Tailwind CSS v4       |
| Auth + DB  | Supabase (Auth + Postgres + RLS) |
| Payments   | Stripe Checkout + Customer Portal|
| Content    | MDX files in `src/content/`      |
| Unit tests | Vitest                           |
| E2e tests  | Playwright                       |
| Hosting    | Vercel                           |
| Package    | npm                              |

## Commands

```bash
npm run dev                  # Start dev server
npm run build                # Production build
npm test                     # Vitest unit tests (run)
npm run test:watch           # Vitest watch mode
npm run lint                 # ESLint
npm run test:e2e             # Playwright e2e tests (all browsers)
npm run qa                   # Question quality audit (all sections)
npm run qa -- --section=aud  # QA audit for single section
npm run qa -- --output=json  # QA audit with JSON output (for scripting)
npm run migrate              # Apply pending migrations → track → sync counts (THE one command)
npm run migrate:status       # Show pending migrations + DB counts (no changes)
npm run migrate:dry          # Show what would be applied (no changes)
npm run sync-counts          # Sync questionCounts from live DB → blueprint.ts + tests
npm run sync-alignment       # Validate alignment CSVs against sections.ts + MDX files
npm run sync-alignment -- --check  # Read-only validation (exit 1 if stale)
npm run validate-migration <file>  # Validate question migration against style guide
npm run generate-migration   # Generate UPDATE scaffold from piped candidate JSON
npm run cleanup-ids <file>   # Remove fixed IDs from verified-ids.json (auto-detect from migration)
npm run cleanup-ids -- --ids=444,2047 --section=far  # Remove specific IDs
npm run verify -- --section=bar --limit=50   # Substantive correctness verification
npm run verify -- --migration=path/to/file.sql  # Verify migration before commit
npm run verify -- --ids=1234,1235 --brief    # Verify specific IDs (compact output)
```

### Batch Orchestrator

```powershell
# Run from a standalone PowerShell terminal (not inside Claude Code)
./scripts/orchestrate.ps1 -Section isc -Mode citation -Batches 14          # Citation backfill
./scripts/orchestrate.ps1 -Section aud -Mode moderate -Batches 5          # Quality upgrade
./scripts/orchestrate.ps1 -Section bar -Mode difficulty -Batches 10        # Difficulty rebalancing
./scripts/orchestrate.ps1 -Section reg -Mode blooms -Target l3 -Batches 8 # Bloom's rebalancing
./scripts/orchestrate.ps1 -Section aud -Mode generate -Batches 130         # New question generation
./scripts/orchestrate.ps1 -Section bar -Mode verify -Batches 100          # Correctness verification
./scripts/wrap.ps1                                                        # Session wrap-up
./scripts/orchestrate.ps1 -Section isc -Mode citation -Batches 3 -DryRun  # Preview without Claude
```

Each batch gets its own headless `claude --print` invocation with a fresh context window. Cross-batch state (exclude IDs, progress) is tracked on disk. Logs written to `docs/orchestrator-logs/`. See `scripts/orchestrate.ps1` for full parameter docs.

## Architecture

- **App Router only** — all routes under `src/app/`, no Pages Router
- **MDX for content** — lessons are `.mdx` files in `src/content/{section}/`, imported dynamically via `await import(\`@/content/${path}.mdx\`)`
- **Static data layer** — section/lesson metadata in `src/lib/sections.ts` (not in DB yet)
- **Server components by default** — client components only where interactivity is required (forms, nav, sidebar)
- **`mdx-components.tsx`** at `src/` root — custom Tailwind-styled overrides for all MDX elements. **Lesson component patterns documented in `docs/lesson-component-guide.md` — read before writing or modifying any MDX lesson.**
- **Supabase SSR auth** — `@supabase/ssr` with browser client (`src/lib/supabase/client.ts`), server client (`src/lib/supabase/server.ts`), and middleware (`src/lib/supabase/middleware.ts`)
- **Stripe lazy init** — `getStripe()` in `src/lib/stripe.ts` to avoid build-time errors from missing env vars
- **Stripe webhooks** — `src/app/api/webhooks/stripe/route.ts` uses service role client (bypasses RLS)
- **Auth middleware** — `middleware.ts` at project root protects `/dashboard`, `/account`, `/exam` routes, gated lesson pages, and quiz pages
- **Paywall gating** — lesson and quiz pages check user's `subscription_status` before rendering content
- **Quiz engine** — questions fetched server-side via `get_random_questions` RPC (no answers sent to client), scored on submit via route handler, results stored in `quiz_attempts`. Supports optional `topics` filter for targeted quizzes.
- **Blueprint Explorer** — `/sections/[slug]/blueprint` shows AICPA Blueprint structure (areas/groups) with progress tracking. Group detail at `/sections/[slug]/blueprint/[group]` shows topics, linked lessons, framework previews, and targeted quiz launch. Study framework items tagged with `blueprintGroups` for per-group filtering.
- **Study Pipeline** — 4-step methodology (Blueprint → Lesson → Framework → Practice) surfaced via `StudyPipeline` component. Full variant on homepage, sections listing, and dashboard. Compact breadcrumb variant on lesson pages (step 2), section detail, and quiz pages (step 4). End-of-lesson "What's Next" block links to framework download and quiz.

## File Conventions

- Components: `kebab-case.tsx` in `src/components/`
- Routes: Next.js App Router conventions (`page.tsx`, `layout.tsx`, `route.ts`)
- MDX content: `NN-slug.mdx` with zero-padded order (e.g., `01-intro.mdx`)
- Tests: `tests/unit/` for Vitest, `tests/e2e/` for Playwright
- Client components use `"use client"` directive + separate file (e.g., `login-form.tsx` imported by `page.tsx`)
- `useSearchParams()` must be wrapped in `<Suspense>` (Next.js requirement)

## Key Directories

| Directory                   | Purpose                                                        |
|-----------------------------|----------------------------------------------------------------|
| `frameworks/`               | James's working dir for study framework design (HTML prototypes, Excel drafts, images). Not code — do not modify. |
| `alignment/`                | AICPA 2026 Blueprint PDFs and mapping files (source of truth)  |
| `src/lib/study-frameworks/` | Production study framework data (TypeScript, used by app)      |

## Key Files

| File                                          | Purpose                                    |
|-----------------------------------------------|--------------------------------------------|
| `src/lib/blueprint.ts`                        | AICPA Blueprint data + types (120 groups)  |
| `src/lib/blueprint-utils.ts`                  | Blueprint lookup, filtering, slug helpers  |
| `src/lib/blueprint-coverage.ts`               | Coverage analysis + gap identification     |
| `src/lib/sections.ts`                         | All section + lesson metadata (102 lessons) |
| `src/lib/stripe.ts`                           | Lazy Stripe client (`getStripe()`)         |
| `src/lib/supabase/client.ts`                  | Browser Supabase client                    |
| `src/lib/supabase/server.ts`                  | Server Supabase client                     |
| `src/lib/supabase/middleware.ts`               | Auth redirect logic                        |
| `middleware.ts`                                | Next.js middleware entry point             |
| `src/mdx-components.tsx`                      | MDX component overrides                    |
| `docs/lesson-component-guide.md`              | **Lesson component style guide — READ BEFORE WRITING MDX** |
| `src/components/study-pipeline.tsx`               | 4-step pipeline visual (full + compact)    |
| `src/lib/quiz.ts`                               | Quiz types + scoring logic                 |
| `supabase/migrations/00001_initial_schema.sql` | Full DB schema + seed data                 |
| `supabase/migrations/00002_seed_questions.sql` | 90 quiz questions + RLS update policy      |
| `supabase/migrations/00006_add_discipline_sections.sql` | BAR, ISC, TCP section + intro lessons |
| `supabase/migrations/00007–00012`             | Expanded questions + content per section   |
| `supabase/migrations/00032–00037`             | Gap coverage questions for 30 blueprint groups |
| `supabase/migrations/00038_add_cognitive_level.sql` | Bloom's cognitive level column          |
| `supabase/migrations/00040–00041`             | Data fix + 8 critical question rewrites  |
| `supabase/migrations/00042–00050`                     | Deduplication + 8 question batch upgrades |
| `supabase/migrations/00051–00060`                     | 10 more question batch upgrades (120 questions) |
| `supabase/migrations/00061–00092`                     | 32 remaining moderate question upgrades (303 questions) |
| `supabase/migrations/00093`                           | Final 51 moderate question upgrades (0 moderate target) |
| `supabase/migrations/00094`                           | Add topic_scores JSONB to quiz_attempts + backfill |
| `supabase/migrations/00095–00097`                     | Bloom's L3 rebalancing — REG batches 1-3 (155 questions) |
| `supabase/migrations/00098–00100`                     | Bloom's L3 rebalancing — BAR batches 1-3 (109 questions) |
| `supabase/migrations/00101–00104`                     | Bloom's L3 rebalancing — FAR batches 1-4 (85 questions)  |
| `supabase/migrations/00105–00106`                     | Bloom's L3 rebalancing — TCP batches 1-2 (40 questions)  |
| `supabase/migrations/00107`                           | Bloom's L1 rebalancing — BAR batch 1 (23 questions)      |
| `supabase/migrations/00108`                           | Bloom's L1 rebalancing — FAR batch 1 (51 questions)      |
| `supabase/migrations/00109`                           | Bloom's L4 rebalancing — TCP batch 1 (35 questions)      |
| `supabase/migrations/00110`                           | Bloom's L1 rebalancing — TCP batch 1 (36 questions)      |
| `supabase/migrations/00111–00114`                     | Bloom's L1 rebalancing — REG batches 1-4 (169 questions) |
| `supabase/migrations/00115–00118`                     | Bloom's L1 rebalancing — AUD batches 1-4 (190 questions) |
| `supabase/migrations/00119–00124`                     | Bloom's L1 rebalancing — ISC batches 1-6 (284 questions) |
| `supabase/migrations/00125`                           | Delete exact duplicate Q1690                             |
| `supabase/migrations/00126`                           | Performance indexes (questions, quiz/exam attempts)      |
| `supabase/migrations/00127`                           | `get_random_questions` RPC for server-side sampling      |
| `supabase/migrations/00128–00129`                     | Difficulty rebalancing — ISC (68 questions)               |
| `supabase/migrations/00130–00145`                     | Citation backfill — AUD batches 1-14 (complete, 566 questions) |
| `supabase/migrations/00146–00159`                     | Citation backfill — ISC batches 1-14 (complete, 677 questions) |
| `supabase/migrations/00160–00434`                     | Question generation (~280 batches across all sections)   |
| `supabase/migrations/00435–00440`                     | Dedup cleanup — 6,244 duplicates + 90 TODOs deleted (2026-03-05) |
| `supabase/migrations/00246–00248`                     | RLS hardening + auth optimization                        |
| `supabase/migrations/00441–00586`                     | Verification fixes + continued generation/curation       |
| `docs/question-style-guide.md`                | Question writing rubric (all new questions must meet this) |
| `scripts/apply-migrations.mjs`                | Apply pending SQL migrations via exec_sql RPC            |
| `scripts/health-check.ts`                     | Health check CLI (migration sync, DB, Stripe, Vercel, SEO) |
| `scripts/orchestrate.ps1`                     | Batch orchestrator (citation/difficulty/blooms/verify, headless Claude) |
| `scripts/qa/run-qa.ts`                        | QA audit entry point (`npm run qa`)        |
| `scripts/qa/pull-l2-batch.ts`                 | L2 question extractor for Bloom's rebalancing |
| `scripts/qa/select-l2-candidates.ts`          | L2 candidate selector with topic cap awareness |
| `scripts/qa/select-easy-candidates.ts`        | Easy→medium candidate selector with topic floor |
| `scripts/qa/find-missing-citations.ts`        | Citation gap identifier for backfill         |
| `scripts/qa/generate-migration.ts`            | Migration scaffold generator (blooms/difficulty/citation modes) |
| `scripts/qa/generate-insert-scaffold.ts`      | INSERT migration scaffold for new question generation |
| `scripts/qa/plan-distribution.ts`             | Compute per-topic targets from blueprint weights |
| `scripts/qa/select-generation-batch.ts`       | Pick next batch for a section (biggest-gap-first) |
| `scripts/qa/extract-topic-stems.ts`           | Fetch existing stems for dedup context |
| `scripts/qa/check-generation-duplicates.ts`   | Post-generation trigram duplicate check |
| `scripts/qa/sync-question-counts.ts`          | Sync DB topic counts → blueprint.ts + test assertions      |
| `scripts/qa/sync-alignment.ts`                | Validate alignment CSV status against sections.ts + MDX    |
| `scripts/qa/utils.ts`                         | Shared utilities (migration numbering, file lock, trigrams) |
| `scripts/qa/validate-migration.ts`            | Pre-commit migration validator (INSERT + UPDATE + explanation-only) |
| `scripts/qa/cleanup-verified-ids.ts`          | Remove fixed/deleted IDs from verified-ids.json fail/review lists  |
| `scripts/qa/verify-correctness.ts`            | Substantive correctness verifier (Claude-as-reviewer)              |
| `scripts/qa/select-verify-candidates.ts`      | Risk-prioritized candidate selector for verification               |
| `scripts/qa/generate-fix-scaffold.ts`         | UPDATE scaffold generator for failed verifications                 |
| `docs/blooms-rebalancing.md`                  | Cross-session Bloom's L3 rebalancing tracker |
| `docs/blooms-l1-l4-rebalancing.md`            | Cross-session Bloom's L1/L4 rebalancing tracker |
| `docs/difficulty-rebalancing.md`              | Cross-session difficulty rebalancing tracker |
| `docs/citation-coverage.md`                   | Cross-session citation coverage tracker      |
| `docs/generation-progress.md`                 | Cross-session question generation tracker    |
| `docs/generation-plan.json`                   | Machine-readable per-topic generation targets |
| `docs/verification-progress.md`               | Cross-session correctness verification tracker |
| `docs/verified-ids.json`                      | Persisted verified question IDs by section     |
| `.env.local.example`                          | Required env vars template                 |

## Content Summary

| Section | Code | Lessons | Questions | Framework Items | Topics                                            |
|---------|------|---------|-----------|-----------------|---------------------------------------------------|
| AUD     | aud  | 13      | ~1,446    | 37              | Ethics, planning, risk, controls, evidence, sampling, reports, review/compilation, attestation, quality mgmt, government auditing |
| FAR     | far  | 24      | ~1,554    | 126             | Financial reporting (for-profit), cash flows, consolidations, NFP, state/local govt, public company/EPS, special purpose frameworks, ratios, cash, receivables, inventory, PP&E, investments, intangibles, payables, debt, equity, accounting changes, contingencies, revenue, income taxes, fair value, leases, subsequent events |
| REG     | reg  | 18      | ~1,417    | 60              | Circular 230, contracts, agency, business structures, basis, gains/losses, 1031, individual tax, credits, filing status, C/S corps, partnerships, tax procedures, legal duties, debtor-creditor, tax-exempt orgs |
| BAR     | bar  | 16      | ~1,537    | 40              | Financial analysis, valuation, capital structure, derivatives, consolidations, govt reporting, fund reconciliation, interfund transactions |
| ISC     | isc  | 16      | ~1,452    | 39              | IT infrastructure, ERP, data management, security frameworks, threats, privacy, SOC, SOC testing, SOC reporting |
| TCP     | tcp  | 15      | ~1,335    | 44              | Individual planning, passive/at-risk, wealth transfer, retirement, international tax, trusts, capital structure tax, nontaxable dispositions, related parties |

**Totals:** 102 lessons, ~8,741 questions (target: ~9,000), 346 framework items across 6 sections

## Database Tables

`profiles`, `sections`, `lessons`, `questions`, `quiz_attempts`, `exam_attempts`, `feedback` — all defined in migrations with RLS enabled. Auto-profile trigger creates a profile on user signup. `questions` table has optional `cognitive_level` column (1-4, Bloom's taxonomy) added in migration 00038. `quiz_attempts` has `topic_scores` JSONB column (array of `{topic, correct, total}`) added in migration 00094 for per-topic progress tracking.

### !! MANDATORY — Row Level Security !!

**Every new table MUST have `ALTER TABLE <name> ENABLE ROW LEVEL SECURITY;` in its migration.** No exceptions. A table without RLS is publicly readable AND writable by anyone with the anon key. Every migration that creates a table must include:

1. `ALTER TABLE <name> ENABLE ROW LEVEL SECURITY;`
2. At least one policy (e.g., `SELECT using (true)` for public read, or `using (auth.uid() = user_id)` for user isolation)
3. If only read access is intended, do NOT add insert/update/delete policies — RLS will deny them by default

## Current Phase

All build phases complete. Active work is marketing and content connectivity.

- **Phase 1:** Scaffold + Static Shell
- **Phase 2:** Auth + Payments
- **Phase 3:** Lesson Content Generation
- **Phase 4:** Quiz Engine
- **Phase 5:** Practice Exams (timed, navigation, flagging)
- **Phase 6:** PDF Study Frameworks
- **Phase 7:** Polish + Deploy (Vercel, SEO, error boundaries, loading states)
- **Phase 8:** Content Expansion (all 6 sections deepened + built)
- **Phase 9:** Blueprint Pipeline (Blueprint Explorer, group detail, targeted quizzes, framework tagging)
- **Phase 10 (active):** Marketing Push (Reddit organic, blog content, Reddit Ads, SEO)

## Gotchas Learned

- Stripe client must be lazy-initialized (`getStripe()`) — module-scope `new Stripe()` fails at build time with no env vars
- `useSearchParams()` requires `<Suspense>` wrapper or build fails
- React Testing Library v16 needs explicit `cleanup()` in `afterEach` with Vitest — auto-cleanup doesn't work
- `@next/mdx` requires `mdx-components.tsx` at the `src/` root (not `app/` root) for App Router
- `generateStaticParams` only pre-renders free lessons; gated lessons are dynamic due to auth check in the page component

## Data Freshness

Some values in this file are kept in sync automatically; others are point-in-time snapshots.

| What | How it stays current | Command |
|------|---------------------|---------|
| Per-section question counts (Content Summary table) | `sync-counts` writes to this file | `npm run sync-counts` |
| `blueprint.ts` questionCounts + test assertions | `sync-counts` | `npm run sync-counts` |
| QA quality scores (critical/moderate/avg) | **Not auto-synced** — run QA for live numbers | `npm run qa` |
| Bloom's / difficulty / citation status | **Not auto-synced** — see tracker files in `docs/` | `npm run qa --output=json` |
| Duplicate count | **Not auto-synced** — reported by QA | `npm run qa` |
| AICPA mapping CSV lesson status (`alignment/csv/`) | `sync-alignment` validates against `sections.ts` + MDX | `npm run sync-alignment` |

**Rule for Claude:** Do not report "everything is in sync" unless you have run the relevant commands in this session. Prose claims in this file may be stale.

## Question Quality

- **Style guide:** `docs/question-style-guide.md` — rubric for stem, distractor, explanation, difficulty, and Bloom's level standards
- **QA audit:** `npm run qa` scores all questions on a 0-10 composite and produces a dated report in `docs/qa-reports/`. Supports `--output=json` for scripting. Bloom's classification uses DB `cognitive_level` column (authoritative) with heuristic fallback.
- **Migration validator:** `npm run validate-migration <file>` checks INSERT, UPDATE, and explanation-only UPDATE migrations against the rubric (stem length, explanation quality, citation/contrast checks, TODO detection)
- **Migration generator:** `npm run generate-migration` reads candidate JSON from stdin and outputs UPDATE scaffold SQL. Supports `--mode=blooms|difficulty|citation`
- **Rule:** All new question migrations must pass `validate-migration` before commit. No questions scoring 0-3 (critical) should be deployed.
- **Current status:** Run `npm run qa` for live scores. Latest report: `docs/qa-reports/` (dated). `sync-counts` keeps question counts current; QA scores are point-in-time snapshots.
- **Bloom's L3 rebalancing:** Complete (2026-02) — 389 rewrites. Tracker: `docs/blooms-rebalancing.md`
- **Bloom's L1/L4 rebalancing:** Complete (2026-02) — 788 rewrites. Tracker: `docs/blooms-l1-l4-rebalancing.md`
- **Difficulty rebalancing:** Complete (2026-02) — target 30/50/20 reached. Tracker: `docs/difficulty-rebalancing.md`
- **Citation coverage:** AUD complete, ISC complete. BAR/REG/FAR/TCP pending. Tracker: `docs/citation-coverage.md`
- **Question generation (1,500/section):** Pipeline built — `plan-distribution.ts` → `select-generation-batch.ts` → `generate-insert-scaffold.ts` → Claude fills → `validate-migration` + `check-generation-duplicates.ts`. All sections target ~1,500. Live DB: ~8,741 questions (synced 2026-04-14). FAR topics realigned to AICPA 2026 Blueprint. Tracker: `docs/generation-progress.md`

## Spec Reference

Full product specification with all 7 phases, data model, and acceptance criteria:
`C:\Users\james\Desktop\personal-org\projects\learning-specification\cpa-study-website.md`

## Git

Repository: https://github.com/JamesIsHere/cpa-prep-course
Branch: `master`
Use `git log --oneline -10` for recent commits — do not hardcode commit hashes here.



