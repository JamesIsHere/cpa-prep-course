# Running Log

## 2026-02-20
1. Created quiz types and scoring helpers (`src/lib/quiz.ts`) with `scoreQuiz()` pure function
2. Generated 90 CPA exam questions (30/section) seeded via `00002_seed_questions.sql`
3. Added missing RLS update policy for `quiz_attempts` table
4. Built POST `/api/quizzes/start` route — creates attempt, returns questions without answers
5. Built POST `/api/quizzes/[id]/submit` route — scores against DB, saves results, returns explanations
6. Built quiz question component with radio-style choices and progress bar
7. Built quiz results component with pass/fail scoring (75%), expandable per-question review
8. Built quiz config/session/results page with server-side auth + paywall gating
9. Added "Take a Quiz" button to section detail pages
10. Added recent quiz scores section to dashboard
11. Updated middleware to gate quiz routes behind auth
12. Wrote 6 unit tests for scoring logic (21 total tests passing)
13. Updated CLAUDE.md in both repos to reflect Phase 4 complete

## 2026-02-19
1. Rewrote CPA study spec into build-ready specification with 7 phased milestones, data model, and acceptance criteria
2. Created project CLAUDE.md for learning-specification repo
3. Scaffolded Next.js 16 app with TypeScript, Tailwind v4, App Router at `cpa-prep-course`
4. Built landing page with hero section, features grid, pricing, and section preview cards
5. Built section listing page with AUD/FAR/REG cards
6. Built section detail page with lesson list and navigation
7. Built lesson page with sidebar nav, MDX rendering, and prev/next navigation
8. Created responsive layout with mobile hamburger menu and collapsible sidebar
9. Set up MDX support with custom Tailwind-styled component overrides
10. Wrote 3 intro MDX lessons (one per section)
11. Added Vitest with 13 passing tests
12. Set up Supabase SSR auth (browser + server clients, middleware, session refresh)
13. Built login, signup, password reset, and update password pages
14. Built auth callback route for email confirmation
15. Created auth middleware gating protected routes and non-free lessons
16. Integrated Stripe Checkout ($9.99/mo) with lazy initialization
17. Built Stripe webhook handler for subscription lifecycle events
18. Built Stripe Customer Portal integration for self-service billing
19. Created paywall component blocking non-free lessons
20. Built dashboard page and account page with subscription management
21. Updated nav with auth-aware links (dashboard, account, logout)
22. Created full database migration with 6 tables, RLS policies, auto-profile trigger, and seed data
23. Generated 11 AUD lessons covering ethics, planning, risk, controls, evidence, sampling, reports, review/compilation, attestation, quality management
24. Generated 12 FAR lessons covering financial statements, revenue, inventory, fixed/intangible assets, leases, bonds, equity, taxes, governmental, NFP, consolidations
25. Generated 12 REG lessons covering Circular 230, contracts, agency, business structures, basis, gains/losses, 1031 exchanges, individual tax, credits, C/S corps, partnerships
26. Updated sections.ts with all 38 lessons and migration seed data to match
27. Added tests for lesson count, free-first-lesson, and unique slugs (15 tests total)
28. Updated both CLAUDE.md files with full project state through Phase 3
