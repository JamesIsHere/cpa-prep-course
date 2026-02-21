# Running Log

## 2026-02-22 05:08
1. Finished incomplete migration 00087 (10 remaining AUD questions)
2. Wrote 5 new migrations (00088-00092) upgrading 303 moderate questions across FAR, REG, BAR, ISC, TCP
3. Validated all JSON choice arrays across 6 migration files
4. Applied all 32 question upgrade migrations (00061-00092) to production Supabase
5. Ran QA audit: 0 critical, 51 moderate remaining, avg score 8.2/10
6. Cleaned up temp files (gen.js, wm.js, write-migration.js, tmp-moderate-output.txt, apply-migrations.ts)
7. Coherence audit: updated CLAUDE.md key files + git section, To Do.md completed tasks, archived stale session file
8. Pushed 6 pending migrations to production Supabase (00087-00092)

## 2026-02-22 03:45
1. Upgraded 19 moderate Prospective Analysis and Forecasting questions to score 7+ (migration 00051)
2. Upgraded 15 moderate Advanced Consolidations questions to score 7+ (migration 00052)
3. Upgraded 15 moderate Financial Statement Analysis questions to score 7+ (migration 00053)
4. Upgraded 15 moderate Stock Compensation and Business Combinations questions to score 7+ (migration 00054)
5. Upgraded 10 moderate Internal Controls questions to score 7+ (migration 00055)
6. Upgraded 10 moderate Business Law: Contracts questions to score 7+ (migration 00056)
7. Upgraded 9 moderate Audit Sampling questions to score 7+ (migration 00057)
8. Upgraded 9 moderate Agency and Regulation questions to score 7+ (migration 00058)
9. Upgraded 9 moderate Estate and Gift Tax questions to score 7+ (migration 00059)
10. Upgraded 9 moderate Advanced Lease Transactions questions to score 7+ (migration 00060)
11. Coherence audit: archived stale session file, updated CLAUDE.md key files and git section, verified build + tests pass

## 2026-02-22 03:10
1. Deduplicated 29 likely-duplicate question pairs: deleted 18 true duplicates, kept 11 intentional foil pairs (migration 00042)
2. Upgraded 37 moderate State and Local Government Reporting questions to score 7+ (migration 00043)
3. Upgraded 25 moderate Risk Management and Economics questions to score 7+ (migration 00044)
4. Upgraded 19 moderate Derivatives and Hedging questions to score 7+ (migration 00045)
5. Upgraded 9 moderate Misstatements and Control Deficiencies questions to score 7+ (migration 00046)
6. Upgraded 23 moderate Financial Valuation Methods questions to score 7+ (migration 00047)
7. Upgraded 14 moderate Pension and Postretirement Benefits questions to score 7+ (migration 00048)
8. Upgraded 21 moderate Advanced Revenue and Intangibles questions to score 7+ (migration 00049)
9. Upgraded 20 moderate Capital Structure and Valuation questions to score 7+ (migration 00050)
10. Built pull-moderate.ts and count-all-moderate.ts utility scripts for ongoing QA work
11. Reduced moderate question count from 579 to 407 (172 questions upgraded, 18 duplicates removed)

## 2026-02-21 22:40
1. Reviewed 7 medium content QA issues from prior session — 6 were false positives, 1 real bug found
2. Fixed defined benefit plan limit for 2026: $280,000 → $285,000 in migration 00030 question (migration 00040)
3. Rewrote all 8 critical-scoring questions (score 0-3) with scenario-based stems, named entities, parallel-length choices, expanded explanations with standard citations, and wrong-answer analysis (migration 00041)
4. Built `scripts/qa/fetch-questions.ts` utility for querying questions by ID from Supabase
5. Pushed migrations 00040 and 00041 to production Supabase
6. Coherence audit: fixed TCP count (~711 → ~699), total (~5,005 → ~5,010), updated CLAUDE.md git section and key files table, archived stale session file

## 2026-02-21 02:15
1. Built QA analysis system (`scripts/qa/`): 5 analyzers (difficulty, coverage, quality, Bloom's, duplicates), report formatter, orchestrator entry point
2. Created `npm run qa` command — queries live Supabase DB, scores all 5,005 questions on 0-10 composite, writes dated markdown report
3. Created question style guide (`docs/question-style-guide.md`): stem rules, distractor rules, explanation rules, difficulty/Bloom's definitions, tone rules, writing checklist
4. Ran full QA audit: avg 7.8/10, 8 critical, 579 moderate, 4,418 acceptable, 174 duplicate pairs
5. Fixed "Federal Tax Procedures" orphan: added to `questionCounts` and REG blueprint group's `questionTopics`
6. Created migration 00038: `cognitive_level` column on questions table (nullable, CHECK 1-4)
7. Created backfill script + migration 00039: tagged all 5,005 questions with heuristic Bloom's levels (L1:1475, L2:3421, L3:22, L4:87)
8. Synced all `questionCounts` values with live DB counts (many topics had drifted 5-13 questions)
9. Created `npm run validate-migration` — pre-commit validator for question INSERT SQL against style guide rubric
10. Added 2 blueprint tests: topic-to-group mapping, Levenshtein similarity detection with `allowedPairs`
11. Updated CLAUDE.md: added QA commands, key files, Question Quality section
12. Coherence audit: pushed migrations 00038+00039 to production, archived stale session file, updated To Do.md

## 2026-02-21 01:35
1. Removed duplicate StudyPipeline from homepage (was rendered twice — "A 4-step system" and "How it works")
2. Switched pipeline color from emerald to indigo to avoid visual collision with section badges
3. Removed dead "+N more rows" truncation from reference table previews (now shows all rows)
4. Updated sections page copy to include $29.99 pricing
5. Fixed 2 stale e2e test assertions (features section headings and "How it works" heading)
6. Full coherence audit: counts, prices, imports, links, CLAUDE.md, duplicates — all clean
7. Archived stale session file from project root

## 2026-02-21 01:20
1. Created `StudyPipeline` component with full (4-step horizontal flow with SVG icons) and compact (breadcrumb) variants
2. Placed full pipeline on homepage (replaced emoji features grid + 3-step "How it works"), sections listing, and dashboard
3. Placed compact pipeline on lesson pages (step 2 active), section detail, and quiz pages (step 4 active)
4. Added "What's Next" block to lesson pages with framework download CTA and quiz link
5. Added Study Frameworks download section with 6 buttons to dashboard
6. Added study guide download button to Blueprint Explorer page
7. Updated CLAUDE.md: architecture (study pipeline), key files (study-pipeline.tsx), git commits
8. Archived stale session file from project root

## 2026-02-21 00:47
1. Applied 14 pending migrations (00023–00030, 00032–00037) to production Supabase — all 5,005 questions now live
2. Fixed JSON quoting bug in 00032 migration (unescaped double quotes inside ::jsonb cast)
3. Updated /wrap command: added step 1f for pending migration detection + auto-push, added production-sync rule
4. Added Supabase/SQL lesson to lessons.md (JSON quoting in ::jsonb casts)

## 2026-02-21 00:36
1. Upgraded /wrap command with coherence audit step (hardcoded counts, CLAUDE.md accuracy, To Do.md, tests, stale files, build/test)
2. Updated CLAUDE.md git section with current commit history
3. Updated To Do.md: added 3 completed tasks, added pending task for production migration push
4. Verified build + 113/113 tests pass after all coherence fixes

## 2026-02-21 00:30
1. Created 6 SQL migration files (00032–00037) with 600 new questions for 30 unmapped blueprint groups
2. AUD gap coverage: 300 questions across 15 new topics (Nature/Scope, Independence, Skepticism, Terms, Entity/Environment, Materiality, Assessed Risks, Work of Others, Tests of Controls, Analytical Procedures, Misstatements, Written Representations, Specific Areas, Report Modifications, Other Information)
3. FAR gap coverage: 80 questions across 4 new topics (Conceptual Framework, Payables/Accrued Liabilities, Accounting Changes, Governmental Fundamentals)
4. REG gap coverage: 40 questions across 2 new topics (Government Regulation of Business, Alternative Minimum Tax)
5. BAR gap coverage: 80 questions across 4 new topics (Business Combinations, Foreign Currency, Intangible Assets Advanced, Income Taxes Advanced)
6. ISC gap coverage: 60 questions across 3 new topics (Change Management, Data Protection Technologies, SOC Report Content/Structure)
7. TCP gap coverage: 40 questions across 2 new topics (Multi-Jurisdictional Tax Planning, Entity Formation and Restructuring)
8. Updated blueprint.ts: all 30 groups now have non-empty questionTopics, 30 new questionCounts entries, sectionQuestionTotals updated (AUD 1055, FAR 860, REG 850, BAR 780, ISC 749, TCP 711)
9. Updated question count references from "4,400+" to "5,000+" across 13 files (page.tsx, layout.tsx, opengraph-image.tsx, signup page, README, CLAUDE.md, marketing plan, reddit guide, study plan, 3 blog posts, e2e test)
10. Updated blueprint.test.ts section total assertions to match new counts
11. Verified clean production build and 113/113 unit tests passing

## 2026-02-20 23:30
1. Blueprint Pipeline Phase 1: Added `blueprintGroups?: string[]` to all 5 framework types in types.ts
2. Blueprint Pipeline Phase 1: Created blueprint-utils.ts with lookup, filtering, slug helpers, and questionCounts re-export
3. Blueprint Pipeline Phase 1: Tagged 280 framework items with blueprintGroups across all 6 section files (AUD:37, FAR:60, REG:60, BAR:40, ISC:39, TCP:44)
4. Blueprint Pipeline Phase 1: Created 19 unit tests for blueprint-utils (getBlueprintSection, getBlueprintGroup, getGroupQuestionCount, getFrameworkItemsForGroup, getGroupSlug/parseGroupSlug)
5. Blueprint Pipeline Phase 2: Added optional `topics` filter to quiz start API and quiz-client component for targeted quizzes
6. Blueprint Pipeline Phase 3: Built Blueprint Explorer page, accordion component, and progress bar component
7. Blueprint Pipeline Phase 4: Built group detail page with framework previews, linked lessons, and targeted quiz launch
8. Blueprint Pipeline Phase 5: Built targeted quiz route at `/sections/[slug]/blueprint/[group]/quiz` wrapping existing QuizClient
9. Blueprint Pipeline Phase 6: Added loading.tsx skeletons for blueprint and group routes, generateMetadata for SEO
10. Added "Study by Blueprint" button to section detail page
11. Project audit: Fixed CLAUDE.md framework counts (FAR 54→60, BAR 34→40, ISC 35→39), added Phase 9 + Phase 10, updated git history
12. Project audit: Added ~127 blueprint routes to sitemap.ts (6 overview + 121 group detail pages)
13. Project audit: Restructured To Do.md into Marketing Push + Pipeline & Content Quality sections
14. Project audit: Added Status column to marketing plan content calendar (Published/Draft/blank)
15. All 113 unit tests passing, production build clean

## 2026-02-20 22:08
1. Validated all 6 expansion migration files (00025–00030): zero SQL syntax errors, valid JSONB, correct difficulty distributions
2. Identified severe correct_index skew in 5 of 6 files (AUD, FAR, REG, ISC, TCP) — index 1 overrepresented up to 58%
3. Wrote and ran Python rebalance script to fix correct_index distribution to ~25% per index in all 5 local migration files
4. Created production migration (00031_rebalance_correct_index.sql) — idempotent PL/pgSQL block that rebalances based on current state
5. Applied 00031 to production Supabase via `supabase db push` — all 5 sections rebalanced successfully
6. Updated pricing from $9.99 to $29.99 across 13 source files (components, pages, blog posts, signup, paywall, meta descriptions)
7. Updated blog post math to reflect new pricing ($360/12mo, $180-$360 for 6-12mo, cost summary totals)
8. Updated marketing plan: positioning, competitor table, ad copy, objections, revenue projections, LTV metrics
9. Updated CLAUDE.md, README.md, and 3 e2e test assertions for new $29.99 price
10. Cleaned up temp rebalance script after use

## 2026-02-20 21:42
1. Created 6 SQL migration files (00025–00030) with 3,098 new questions across all CPA sections
2. AUD expansion: 540 new questions (00025_expand_aud_bank.sql), total ~755
3. FAR expansion: 527 new questions (00026_expand_far_bank.sql), total ~780
4. REG expansion: 552 new questions (00027_expand_reg_bank.sql), total ~810
5. BAR expansion: 502 new questions (00028_expand_bar_bank.sql), total ~700
6. ISC expansion: 491 new questions (00029_expand_isc_bank.sql), total ~689
7. TCP expansion: 486 new questions (00030_expand_tcp_bank.sql), total ~671
8. Updated question count references from "1,275+" to "4,400+" across 5 source files (page.tsx, layout.tsx, opengraph-image.tsx, signup/page.tsx, blog post)
9. Updated blueprint.ts questionCounts and sectionQuestionTotals with new per-topic and per-section totals
10. Updated CLAUDE.md Content Summary table with new question counts (~4,405 total)
11. Updated blog post comparison copy to reflect competitive 4,400+ question bank
12. Verified clean production build after all changes

## 2026-02-20 09:59
1. Phase 1: Updated blueprint.ts source to January 2026 Blueprint — added 4 new topics, updated 2 topic names, removed 1 dropped topic (transfer pricing)
2. Phase 1: Updated page.tsx year references from 2025 to 2026 (stats section + FAQ)
3. Phase 2: Updated 12 MDX lesson files with 2026 Blueprint content (entity-level controls, accounting estimates, ASC 820 scope, H.R. 1 bonus depreciation/auto loan/tips, HIPAA key terms, emergency change management, SOC 1 AT-C 320, Section 250 GILTI deduction, TCJA extension language)
4. Phase 2: Verified 2 MDX files needed no changes (AUD 12 quality management, FAR 02 financial statements)
5. Phase 3: Updated tcp.ts study framework — ~20 dollar figures and year references to 2026 (exemption, excess business loss, SS wage base, QBI thresholds, retirement limits, trust bracket)
6. Phase 3: Updated reg.ts study framework — ~15 references to 2026 (standard deductions, filing status tables, bankruptcy limit, dependency gross income)
7. Phase 4: Created migration 00023_2026_blueprint_questions.sql — 32 new questions across all 6 sections
8. Phase 4: Updated blueprint.ts question counts and section totals (+32 questions, total ~1,307)
9. Phase 5: Created migration 00024_update_2026_tax_figures.sql — 22 question updates (estate exemption $14.50M, excess business loss $322K, standard deductions, 401(k) $24K, SIMPLE $17K, defined benefit $285K, Roth phase-out, dependency test $5,200, kiddie tax $1,350/$2,700)
10. Phase 6: Fixed blueprint test assertions for new question totals — all 94 unit tests passing
11. Phase 6: Verified clean production build (132 pages)
12. Phase 6: Updated CLAUDE.md content summary table (~1,307 questions)

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
