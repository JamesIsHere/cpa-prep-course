# Running Log

## 2026-02-20 09:21
1. Comprehensive project audit: folder structure, routes, content, security, code quality — all clean
2. Verified all 94 unit tests + 152 e2e tests pass, production build clean
3. Fixed 2 stale 2024 tax references in reg/06 (Section 179: $1,220K→$1,250K/$3,050K→$3,130K; Section 280F: updated to 2025 per Rev. Proc. 2025-16)
4. Moved stale session file from project root to docs/sessions/2026-02/
5. Replaced boilerplate create-next-app README with full project documentation
6. Drafted comprehensive marketing plan (docs/marketing-plan.md): competitor pricing, target audience, 3-phase strategy, content calendar, objection handling, revenue projections
7. Refined marketing plan with user input: faceless brand, $200-500/mo budget, written content only, no free trial
8. Activated Stripe for live payments: created live product ($9.99/mo), set live API keys + webhook in Vercel, redeployed
9. Tested full payment pipeline end-to-end: real $9.99 charge, webhook fired, subscription status updated to Active in Supabase, Stripe Customer Portal working
10. Removed misleading "free" marketing copy from homepage and signup page (6 instances across 2 files)
11. Created project To Do.md with phased marketing implementation plan
12. Linked Vercel CLI and verified all 7 production environment variables

## 2026-02-20 08:25
1. Fixed ISC encryption decision tree: replaced pointless identical branches (both led to AES-256) with meaningful column-level vs. full-disk encryption distinction
2. Fixed ISC PICERL mnemonic: corrected acronym from "PICERLL" (7 chars) to "PICERL" (6 chars for 6 phases), cleaned up memory aid
3. Fixed TCP S Corp basis ordering: reordered nondeductible expenses before distributions per Reg. §1.1367-1(f) to match CPA exam convention
4. Fixed TCP 199A W-2/UBIA limitation: updated stale 2024 threshold ($191,950/$383,900) to 2025 ($197,300/$394,600)
5. Verified 4 of 7 QA issues were already resolved in prior sessions (FAR UTP, ISC SOC 3, ISC PICCERLL Classification phase, TCP defined benefit limit)
6. Verified clean production build after all fixes

## 2026-02-20 08:16
1. Fixed Playwright env loading: added `dotenv` dev dependency, configured `playwright.config.ts` to load `.env.local`
2. Reset e2e test user password via Supabase Admin API (correct user ID `eb473759`, not stale `ae39837b` from screenshot)
3. Fixed quiz answer button selectors: added `data-testid="choice-{letter}"` to `quiz-question.tsx`, updated tests to use `getByTestId("choice-A")`
4. Fixed "Next" button strict-mode violation: `name: /next/i` matched Next.js Dev Tools button — changed to `{ name: "Next", exact: true }`
5. Fixed quiz results text assertion: page shows "N of M correct" not "N out of M"
6. Fixed review item selector: simplified to find buttons containing numbered items
7. Added `E2E_TEST_EMAIL` and `E2E_TEST_PASSWORD` placeholders to `.env.local.example`
8. Suppressed noisy dotenv tips with `quiet: true` in Playwright config
9. Fixed CI workflow: removed `BASE_URL` override that prevented `webServer` from starting, removed unnecessary `npm run build` step
10. Updated CLAUDE.md: Playwright marked as installed, added `npm run test:e2e` command
11. Cleaned up: moved stale session file to `docs/sessions/`, deleted `test-results/` artifacts
12. Verified all 94 unit tests and 152 e2e tests pass (124 public across 3 browsers + 28 authenticated)

## 2026-02-20 07:02
1. Added `data-testid` attributes to homepage stats bar (stat-lessons, stat-questions, stat-sections, stat-frameworks)
2. Updated e2e smoke test to use `getByTestId` instead of brittle `getByText` for stats bar assertions
3. Verified all 61 unit tests and 81 e2e tests pass (Chromium, Firefox, WebKit)

## 2026-02-20 06:56
1. Fixed stale e2e test assertions: `1,250+` → `1,275+`, REG lessonCount `16` → `18`
2. Fixed strict-mode locator violations in homepage test: `text=1,275+`, `text=Practice Questions`, `text=$9.99` switched to `getByText(..., { exact: true })`
3. Updated stale metadata in 3 files: layout.tsx (3 instances), opengraph-image.tsx, signup/page.tsx — all `94 lessons, 1,250+` → `96 lessons, 1,275+`
4. Verified all 81 smoke tests pass across Chromium, Firefox, WebKit (local)
5. Verified all 27 smoke tests pass against production (slayer-cpa.com)

## 2026-02-20 06:45
1. Session 7: Created REG lesson 17 (Filing Status and Dependents — MFJ/MFS/HOH/QSS, qualifying child/relative tests, tiebreaker rules)
2. Session 7: Created REG lesson 18 (Tax-Exempt Organizations — 501(c)(3), UBIT, private foundations, Form 990)
3. Session 7: Created migration 00022 with 20 questions (10 filing status, 10 tax-exempt orgs) + 2 lesson inserts
4. Session 7: Filled final 2 REG blueprint gaps (reg.4.D and reg.5.E) — 100% lesson coverage achieved
5. Session 7: Added 4 study framework items (filing status decision tree, tax-exempt concept map, 2 reference tables)
6. Session 7: Updated stats to 96 lessons, 1,275+ questions, 280 framework items
7. Session 7: Updated blueprint test assertions (REG 250, 0 lesson gaps, 100% REG coverage)

## 2026-02-20 06:12
1. Session 1: Rebranded all UI/metadata from "CPA Prep Course" to "Slayer CPA" (nav, layout, OG image, PDF document)
2. Session 1: Updated interim stats to 81 lessons, 1,125+ questions, 249 framework items
3. Session 1: Added 4 security headers to next.config.ts (X-Frame-Options DENY, HSTS, X-XSS-Protection, Permissions-Policy)
4. Session 1: Added PDF render tests for FAR, REG, BAR, ISC, TCP (5 new test cases, 61 total tests)
5. Session 1: Expanded study-frameworks test to validate all 6 sections (was only AUD, FAR, REG)
6. Session 2: Created AUD lesson 13 (Government Auditing Standards — Yellow Book, Single Audit, GAGAS)
7. Session 2: Created FAR lessons 17 (Contingencies/ASC 450) and 18 (Fair Value/ASC 820)
8. Session 2: Created migration 00018 with 30 questions + 3 lesson inserts
9. Session 2: Added 8 study framework items (AUD: 3, FAR: 5 — concept maps, decision trees, reference tables, mnemonics)
10. Session 3: Created REG lessons 14 (Federal Tax Procedures), 15 (Legal Duties), 16 (Debtor-Creditor)
11. Session 3: Created migration 00019 with 30 questions + 3 lesson inserts
12. Session 3: Added 8 study framework items (concept map, decision trees, reference tables, mnemonics)
13. Session 4: Created BAR lessons 15 (Fund Reconciliation) and 16 (Interfund Transactions)
14. Session 4: Created ISC lessons 15 (SOC Testing Controls) and 16 (SOC Reporting)
15. Session 4: Created migration 00020 with 40 questions + 4 lesson inserts
16. Session 4: Added 4 study framework items (BAR: concept map + reference table, ISC: decision tree + reference table)
17. Session 5: Created TCP lessons 13 (Capital Structure Tax), 14 (Nontaxable Dispositions), 15 (Related Party Transactions)
18. Session 5: Created migration 00021 with 30 questions + 3 lesson inserts
19. Session 5: Added 7 study framework items (concept map, decision tree, 2 formulas, 3 reference tables)
20. Session 6: Updated all stats to final numbers (94 lessons, 1,250+ questions, 276 framework items)
21. Session 6: Updated e2e test expectations to final lesson counts per section
22. Session 6: Updated blueprint.test.ts assertions (BAR 195, ISC 190)
23. Session 6: Verified zero stale brand/stat references, all 61 tests passing, clean build
24. Updated CLAUDE.md content summary with final per-section stats and topics

## 2026-02-20 05:31
1. Completed Tier 1 of AICPA Blueprint Gap Fill: 8 new MDX lessons across ISC, BAR, FAR
2. Created ISC lessons: IT General Controls (13), IT Audit Frameworks (14)
3. Created BAR lessons: Internal-Use Software (12), Advanced Leases (13), Employee Benefit Plans (14)
4. Created FAR lessons: Cash and Receivables (14), Employee Benefit Plans (15), Special Purpose Frameworks (16)
5. Created SQL migration 00017 with 80 new quiz questions (20 ISC + 30 BAR + 30 FAR)
6. Updated sections.ts with 8 new lesson entries
7. Updated blueprint.ts: 8 new question topics, updated sectionQuestionTotals (FAR 230, BAR 175, ISC 170)
8. Added 4 ISC study framework items: ConceptMap (ITGCs), DecisionTree (Change Authorization), ReferenceTable (Frameworks), Mnemonic (APOC)
9. Added 6 BAR study framework items: 2 ConceptMaps (Software, Cloud), DecisionTree (Sale-Leaseback), 2 Formulas (NPPC, Corridor), ReferenceTable (Pension Components)
10. Added 6 FAR study framework items: ConceptMap (CECL), DecisionTree (Bank Reconciliation), 2 Formulas (NPPC, CECL Allowance), ReferenceTable (SPF Comparison), Mnemonic (SIRAE)
11. Updated blueprint.test.ts expected totals to match new question counts
12. Verified all 56 unit tests pass and production build succeeds (117 pages)

## 2026-02-20 04:16
1. Researched tax year inconsistencies across all content: lessons use 2024, quiz questions use 2025 (with some wrong 2025 figures)
2. Verified correct 2025 IRS figures via web search (Rev. Proc. 2024-40): gift exclusion $19K, exemption $13.99M, 401(k) $23.5K, excess business loss $313K/$626K, etc.
3. Updated 7 TCP lesson MDX files to 2025: retirement limits, gift/estate figures, trust brackets, QBI thresholds, excess business loss, parking fringe
4. Updated tcp.ts study framework: 19 figure updates across concept maps, formulas, reference tables
5. Updated reg.ts study framework: standard deduction, SS wage base, excess business loss threshold
6. Created corrective SQL migration 00015: 11 UPDATE statements fixing quiz questions with wrong 2025 figures (gift exclusion $18K→$19K, exemption $13.61M→$13.99M, excess business loss $305K→$313K)
7. Verified clean build and all 39 unit tests passing

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
