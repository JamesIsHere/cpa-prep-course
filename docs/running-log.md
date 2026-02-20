# Running Log

## 2026-02-20
1. Fixed FAR UTP decision tree: identical yes/no branches now distinguish full vs. partial benefit recognition
2. Fixed ISC PICCERLL mnemonic: removed fabricated "Classification" phase, corrected to 6 real NIST SP 800-61 phases (PICERLL)
3. Fixed ISC encryption decision tree: restructured either/or root question into proper yes/no binary ("Is data at rest?")
4. Fixed ISC SOC 3 table: corrected Type I/II rows to reflect SOC 3 is based on SOC 2 Type II engagements
5. Fixed TCP Roth IRA phase-out range: corrected from $161K-$176K to $146K-$161K (2024)
6. Fixed TCP defined benefit limit in DB: $275,000 → $280,000 for 2025, and 401(k) catch-up $7,000 → $7,500
7. Created and applied corrective migration 00014 to production Supabase
8. Verified S Corp basis ordering is correct per Reg. 1.1367-1(f) — QA false positive dismissed
9. Verified clean build and all 39 unit tests passing

## 2026-02-22
1. Applied migrations 00009–00012 to production Supabase (REG expanded questions, BAR/ISC/TCP full builds)
2. Updated CLAUDE.md to reflect all 8 phases complete with full content stats (73 lessons, ~1,050 questions, 233 framework items)
3. Cleaned up stale files: archived session file to docs/sessions/, added .claude/ to .gitignore
4. Ran content QA spot-check across all 6 sections (3 parallel agents reviewing lessons, frameworks, questions)
5. Fixed 6 critical question errors: AUD prospective financials explanation, REG bonus depreciation rate, REG AMT phase-out threshold, BAR DuPont triple-correct answer, BAR inverted current ratio logic, ISC malformed JSON
6. Created and applied corrective migration 00013 to production Supabase
7. Expanded Playwright e2e tests: all 6 section detail pages + free intro lessons, paywall enforcement, auth gate redirects, nav links — 25 passing, 2 skipped (auth-gated)
8. Added quiz.spec.ts for auth-gated quiz flow testing
9. Fixed pre-existing stale smoke tests: homepage feature headings, nav link selector, auth redirect tolerance
10. Verified clean build (107 pages), unit tests (39/39), and e2e tests (25/25)

## 2026-02-21
1. Fixed personal-org .gitignore: added *.m4a, *.mp4, vault/books/**/*.pdf; untracked 82MB m4a file
2. Built 11 ISC lessons (02-12): IT infrastructure, ERP systems, data management, availability, security frameworks, threats, security controls, privacy, incident response, SOC engagements, SOC reporting
3. Built 11 TCP lessons (02-12): compensation planning, passive/at-risk rules, wealth transfer, retirement plans, NOLs/consolidated returns, international tax, owner-entity transactions, basis calculations, trusts/estates, formation/liquidation, entity choice
4. Created ISC question bank: 150 CPA exam questions across 11 topics (migration 00011)
5. Created TCP question bank: 150 CPA exam questions across 11 topics (migration 00012)
6. Populated ISC study framework: 8 concept maps, 5 decision trees, 6 formulas, 6 reference tables, 8 mnemonics
7. Populated TCP study framework: 8 concept maps, 6 decision trees, 9 formulas, 6 reference tables, 8 mnemonics
8. Verified clean production build with all 73 lessons across 6 sections

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
