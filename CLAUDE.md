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
npm run validate-migration <file>  # Validate question migration against style guide
```

## Architecture

- **App Router only** — all routes under `src/app/`, no Pages Router
- **MDX for content** — lessons are `.mdx` files in `src/content/{section}/`, imported dynamically via `await import(\`@/content/${path}.mdx\`)`
- **Static data layer** — section/lesson metadata in `src/lib/sections.ts` (not in DB yet)
- **Server components by default** — client components only where interactivity is required (forms, nav, sidebar)
- **`mdx-components.tsx`** at `src/` root — custom Tailwind-styled overrides for all MDX elements
- **Supabase SSR auth** — `@supabase/ssr` with browser client (`src/lib/supabase/client.ts`), server client (`src/lib/supabase/server.ts`), and middleware (`src/lib/supabase/middleware.ts`)
- **Stripe lazy init** — `getStripe()` in `src/lib/stripe.ts` to avoid build-time errors from missing env vars
- **Stripe webhooks** — `src/app/api/webhooks/stripe/route.ts` uses service role client (bypasses RLS)
- **Auth middleware** — `middleware.ts` at project root protects `/dashboard`, `/account`, `/exam` routes, gated lesson pages, and quiz pages
- **Paywall gating** — lesson and quiz pages check user's `subscription_status` before rendering content
- **Quiz engine** — questions fetched server-side (no answers sent to client), scored on submit via route handler, results stored in `quiz_attempts`. Supports optional `topics` filter for targeted quizzes.
- **Blueprint Explorer** — `/sections/[slug]/blueprint` shows AICPA Blueprint structure (areas/groups) with progress tracking. Group detail at `/sections/[slug]/blueprint/[group]` shows topics, linked lessons, framework previews, and targeted quiz launch. Study framework items tagged with `blueprintGroups` for per-group filtering.
- **Study Pipeline** — 4-step methodology (Blueprint → Lesson → Framework → Practice) surfaced via `StudyPipeline` component. Full variant on homepage, sections listing, and dashboard. Compact breadcrumb variant on lesson pages (step 2), section detail, and quiz pages (step 4). End-of-lesson "What's Next" block links to framework download and quiz.

## File Conventions

- Components: `kebab-case.tsx` in `src/components/`
- Routes: Next.js App Router conventions (`page.tsx`, `layout.tsx`, `route.ts`)
- MDX content: `NN-slug.mdx` with zero-padded order (e.g., `01-intro.mdx`)
- Tests: `tests/unit/` for Vitest, `tests/e2e/` for Playwright
- Client components use `"use client"` directive + separate file (e.g., `login-form.tsx` imported by `page.tsx`)
- `useSearchParams()` must be wrapped in `<Suspense>` (Next.js requirement)

## Key Files

| File                                          | Purpose                                    |
|-----------------------------------------------|--------------------------------------------|
| `src/lib/blueprint.ts`                        | AICPA Blueprint data + types (121 groups)  |
| `src/lib/blueprint-utils.ts`                  | Blueprint lookup, filtering, slug helpers  |
| `src/lib/blueprint-coverage.ts`               | Coverage analysis + gap identification     |
| `src/lib/sections.ts`                         | All section + lesson metadata (96 lessons) |
| `src/lib/stripe.ts`                           | Lazy Stripe client (`getStripe()`)         |
| `src/lib/supabase/client.ts`                  | Browser Supabase client                    |
| `src/lib/supabase/server.ts`                  | Server Supabase client                     |
| `src/lib/supabase/middleware.ts`               | Auth redirect logic                        |
| `middleware.ts`                                | Next.js middleware entry point             |
| `src/mdx-components.tsx`                      | MDX component overrides                    |
| `src/components/study-pipeline.tsx`               | 4-step pipeline visual (full + compact)    |
| `src/lib/quiz.ts`                               | Quiz types + scoring logic                 |
| `supabase/migrations/00001_initial_schema.sql` | Full DB schema + seed data                 |
| `supabase/migrations/00002_seed_questions.sql` | 90 quiz questions + RLS update policy      |
| `supabase/migrations/00006_add_discipline_sections.sql` | BAR, ISC, TCP section + intro lessons |
| `supabase/migrations/00007–00012`             | Expanded questions + content per section   |
| `supabase/migrations/00032–00037`             | Gap coverage questions for 30 blueprint groups |
| `supabase/migrations/00038_add_cognitive_level.sql` | Bloom's cognitive level column          |
| `supabase/migrations/00040–00041`             | Data fix + 8 critical question rewrites  |
| `docs/question-style-guide.md`                | Question writing rubric (all new questions must meet this) |
| `scripts/qa/run-qa.ts`                        | QA audit entry point (`npm run qa`)        |
| `scripts/qa/validate-migration.ts`            | Pre-commit migration validator             |
| `.env.local.example`                          | Required env vars template                 |

## Content Summary

| Section | Code | Lessons | Questions | Framework Items | Topics                                            |
|---------|------|---------|-----------|-----------------|---------------------------------------------------|
| AUD     | aud  | 13      | ~1,055    | 37              | Ethics, planning, risk, controls, evidence, sampling, reports, review/compilation, attestation, quality mgmt, government auditing |
| FAR     | far  | 18      | ~860      | 60              | Financial statements, revenue, inventory, fixed/intangible assets, leases, bonds, equity, tax, govt, NFP, consolidations, contingencies, fair value |
| REG     | reg  | 18      | ~850      | 60              | Circular 230, contracts, agency, business structures, basis, gains/losses, 1031, individual tax, credits, filing status, C/S corps, partnerships, tax procedures, legal duties, debtor-creditor, tax-exempt orgs |
| BAR     | bar  | 16      | ~780      | 40              | Financial analysis, valuation, capital structure, derivatives, consolidations, govt reporting, fund reconciliation, interfund transactions |
| ISC     | isc  | 16      | ~749      | 39              | IT infrastructure, ERP, data management, security frameworks, threats, privacy, SOC, SOC testing, SOC reporting |
| TCP     | tcp  | 15      | ~699      | 44              | Individual planning, passive/at-risk, wealth transfer, retirement, international tax, trusts, capital structure tax, nontaxable dispositions, related parties |

**Totals:** 96 lessons, ~5,010 questions, 280 framework items across 6 sections

## Database Tables

`profiles`, `sections`, `lessons`, `questions`, `quiz_attempts`, `exam_attempts` — all defined in `00001_initial_schema.sql` with RLS policies. Auto-profile trigger creates a profile on user signup. `questions` table has optional `cognitive_level` column (1-4, Bloom's taxonomy) added in migration 00038.

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

## Question Quality

- **Style guide:** `docs/question-style-guide.md` — rubric for stem, distractor, explanation, difficulty, and Bloom's level standards
- **QA audit:** `npm run qa` scores all questions on a 0-10 composite and produces a dated report in `docs/qa-reports/`
- **Migration validator:** `npm run validate-migration <file>` checks new question migrations against the rubric before commit
- **Rule:** All new question migrations must pass `validate-migration` before commit. No questions scoring 0-3 (critical) should be deployed.

## Spec Reference

Full product specification with all 7 phases, data model, and acceptance criteria:
`C:\Users\james\Desktop\personal-org\projects\learning-specification\cpa-study-website.md`

## Git

Repository: https://github.com/JamesIsHere/cpa-prep-course
Branch: `master`
Latest commits:
- `9cc30f3` build QA system: analyzers, style guide, validator, Bloom's tagging
- `2f94b61` pipeline QA: indigo color, remove duplicate, fix stale tests, coherence audit
- `f63c327` checkpoint: pipeline color refactor, remove duplicate, fix stale tests
- `1a8f380` add study pipeline visual and framework discoverability across 8 pages
- `dcf52ed` fix migration JSON quoting, push all migrations to production, add migration check to /wrap
