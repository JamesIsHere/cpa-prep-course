# To Do

## Marketing Push

Reddit-first launch strategy. See `docs/marketing-plan.md` for full plan, content calendar, and ad strategy.

### This Week
- [ ] Review and edit blog post: "Slayer CPA vs Surgent"
- [ ] Review and edit blog post: "Which CPA Section Should You Take First?"
- [ ] Monitor Google Search Console for indexing status

### Week 2
- [ ] Sign up Northwest Registered Agent (confirm VA coverage) → ~$125/yr
- [ ] File VA Articles of Organization via SCC Clerk portal → $100 one-time
- [ ] Draft Operating Agreement (single-member, keep it simple)
- [ ] EIN via IRS.gov → free, instant
- [ ] Business bank account
- [ ] Apply for business credit card (after bank account established)
- [ ] Set up bookkeeping → Wave (free) or QuickBooks Simple Start
- [ ] Create separate savings account → fund 25-30% of every deposit for SE tax reserves
- [ ] Link bank account to Stripe + test full payment flow
- [ ] Insurance (GL + E&O) → before first paying customer
- [ ] Monitor net profit → S-Corp election when math works

### Week 3
- [ ] Answer 2-3 questions/day on r/CPA — pure value, zero product mentions
- [ ] Set up Reddit Ads account, create first promoted post ($3-7/day)
- [ ] Publish 2 blog posts: "Slayer CPA vs NINJA" + "CPA Exam Study Plan: 12-Month Schedule"
- [ ] Start comparison site outreach — email CPA Exam Guy, I Pass the CPA Exam (offer free review accounts)
- [ ] Draft free section topic checklists (PDF)

### Month 2-4
- [ ] Scale Reddit Ads on winning creatives ($200-400/month)
- [ ] Small Google Ads test — long-tail keywords only ($50-100/month max)
- [ ] Collect first subscriber testimonials (email prompt after 30 days)
- [ ] Add testimonials section to homepage
- [ ] Add email capture on blog (Buttondown or Mailchimp free tier)

## Pipeline & Content Quality

Blueprint-driven study pipeline, content connectivity, and data quality.

### Upcoming
- [ ] Resubmit sitemap to Google Search Console (stable lastModified, no more crawl budget waste)
- [ ] Difficulty rebalancing — target 30/50/20 easy/medium/hard. ~533 rewrites needed. Tracker: docs/difficulty-rebalancing.md
- [ ] Citation coverage backfill — ~65% of explanations lack standard citations. Tracker: docs/citation-coverage.md
- [x] Bloom's L1/L4 rebalancing — all sections complete. AUD (190), ISC (284). Tracker: docs/blooms-l1-l4-rebalancing.md
- [x] Bloom's L3 question rebalancing — all sections done. REG 25%, BAR 30%, FAR 26%, TCP 20%. Tracker: docs/blooms-rebalancing.md

## Completed

| Date       | Task                                                                                                |
|------------|-----------------------------------------------------------------------------------------------------|
| 2026-03-05 | Create Reddit account, start browsing r/CPA and r/Accounting                                        |
| 2026-03-05 | Bloom's L1/L4 rebalancing: ALL DONE — AUD 190, ISC 284, BAR 23, FAR 51, TCP 71, REG 169 (788 total) |
| 2026-03-05 | Bloom's L1/L4 rebalancing: ALL DONE — AUD 190, ISC 284, BAR 23, FAR 51, TCP 71, REG 169 (788 total) |
| 2026-02-21 | Bloom's L1/L4 rebalancing: ALL DONE — AUD 190, ISC 284, BAR 23, FAR 51, TCP 71, REG 169 (788 total) |
| 2026-02-21 | Bloom's L3 rebalancing TCP: 40 questions rewritten, 15%→20% L3                                      |
| 2026-02-21 | Bloom's L3 rebalancing FAR: 85 questions rewritten, 16%→26% L3                                      |
| 2026-02-22 | Bloom's L3 rebalancing BAR: 109 questions rewritten, 16%→30% L3                                     |
| 2026-02-22 | Bloom's L3 rebalancing REG batch 3: 60 questions, 18%→~25% L3                                       |
| 2026-02-21 | Bloom's L3 rebalancing REG: 95 questions rewritten, 9%→18% L3                                       |
| 2026-02-21 | L2 extraction script + cross-session tracker for Bloom's rebalancing                                |
| 2026-02-22 | Bloom's heuristic fix: L3 from 0-1% to 9-16%, closer to AICPA targets                               |
| 2026-02-22 | Mobile-responsive Blueprint Explorer (area headers, progress bars, group rows)					   |
| 2026-02-22 | Per-topic progress tracking (topic_scores JSONB, real per-group progress)                           |  
| 2026-02-22 | Sitemap stability fix (stable CONTENT_LAST_MODIFIED, no deploy churn)                               |
| 2026-02-22 | Near-duplicate review: all 50 pairs verified intentional, 0 true duplicates                         |
| 2026-02-22 | Upgrade final 51 moderate questions — 0 critical, 0 moderate, 100% acceptable                       |
| 2026-02-21 | Upgrade 303 remaining moderate questions across 32 migrations (00061-00092)                         |
| 2026-02-21 | Apply all 32 question upgrade migrations to production Supabase                                     |
| 2026-02-21 | QA audit: 0 critical, 51 moderate remaining, avg score 8.2/10                                       |
| 2026-02-21 | Deduplicate 18 questions, upgrade 172 moderate questions (8 topics)                                 |
| 2026-02-21 | Upgrade 120 moderate questions across 10 topics (407 → 287 remaining)                               |
| 2026-02-21 | Rewrite 8 critical-scoring questions, fix defined benefit limit (00040-41)                          |
| 2026-02-21 | Build QA system: analyzers, style guide, validator, Bloom's tagging                                 |
| 2026-02-21 | Sync questionCounts with live DB, fix Federal Tax Procedures orphan                                 |
| 2026-02-21 | Add 2 new blueprint tests (topic mapping, Levenshtein similarity)                                   |
| 2026-02-21 | Pipeline color refactor (emerald → indigo), remove homepage duplicate                               |
| 2026-02-21 | Fix dead "+N more rows" in reference table previews                                                 |
| 2026-02-21 | Fix 2 stale e2e test assertions, full coherence audit                                               |
| 2026-02-21 | Add study pipeline visual + framework discoverability across 8 pages                                |
| 2026-02-21 | Apply migrations 00023–00037 to production Supabase (all questions live)                            |
| 2026-02-21 | Add 600 gap questions for 30 unmapped blueprint groups (5,005 total)                                |
| 2026-02-21 | Update all question count references from 4,400+ to 5,000+                                          |
| 2026-02-21 | Upgrade /wrap command with coherence audit step                                                     |
| 2026-02-20 | Blueprint Pipeline: Explorer, group detail, targeted quizzes (11 files)                             |
| 2026-02-20 | Tag 280 framework items with blueprintGroups across all 6 sections                                  |
| 2026-02-20 | Add topics filter to quiz API for targeted practice                                                 |
| 2026-02-20 | Add blueprint routes to sitemap (~127 new pages)                                                    |
| 2026-02-20 | Fix all 7 content QA issues (FAR UTP, ISC, TCP)                                                     |
| 2026-02-20 | Expand question bank from 1,307 to 4,405 questions                                                  |
| 2026-02-20 | Rebalance quiz answer distributions across 5 sections                                               |
| 2026-02-20 | Update pricing to $29.99/month (Stripe, UI, marketing)                                              |
| 2026-02-20 | Blog route with MDX, 4 posts drafted (2 published, 2 in review)                                     |
| 2026-02-20 | Free CPA study plan PDF: markdown, branded, homepage download                                       |
| 2026-02-20 | Marketing plan finalized (docs/marketing-plan.md)                                                   |
| 2026-02-20 | Stripe go-live: live keys, webhook, tested real checkout                                            |
| 2026-02-20 | Google Search Console: domain verified, sitemap submitted                                           |
| 2026-02-20 | Full project audit: folder, routes, content, security — all clean                                   |
| 2026-02-20 | Update all content to 2026 AICPA Blueprint with H.R. 1 provisions                                   |
| 2026-02-20 | All 113 unit tests + 152 e2e tests pass, production build clean                                     |

