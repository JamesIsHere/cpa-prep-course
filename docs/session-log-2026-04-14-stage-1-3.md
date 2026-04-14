# Session log — Stage 1 + Stage 2 + Stage 3 first wave (2026-04-14 late evening)

**Summary:** In a single continuous session following the rollout-wave handoff,
closed Stage 1 (backlog cleanup), built Stage 2 infrastructure (drift census),
and completed the first three Stage 3 specs. Ended with **20 registered specs,
all at 0 drift**, a working census tool that can be re-run cheaply between
specs, and a ranked list of priority candidates for the next wave.

## State at start of session

- 17 registered specs, 15 clean at 0 drift, 2 backlog'd (Owner-Entity, Partnerships)
- Bank: 8,786 questions
- Drift test: 91/91
- Handoff doc: `docs/topic-specs-pilot-handoff.md`

## State at end of session

- **20 registered specs, all 20 at 0 drift**
- Bank: **8,721** (-65)
- Drift test: **106/106** (+15 for the 3 new specs)
- Stage 1 complete; Stage 2 infrastructure built + census run twice; Stage 3 underway (3 of ~10-12 specs done)

## What landed

### Stage 1 — backlog cleanup (commit d877414)

Closed the two deferred backlog topics with frozen audit lists.

| Topic | Before | After | Rewrites | Deletes |
|---|---|---|---|---|
| Owner-Entity Transactions (TCP) | 102 | 74 | 10 | 28 |
| Partnerships (REG) | 79 | 52 | 16 | 27 |

Migrations: `01047_owner_entity_spec_cleanup.sql`, `01048_partnerships_spec_cleanup.sql`.

Heavier rewrite load on Partnerships because foundational partnership concepts (Sec 721 formation, basis with liabilities, Sec 731 distributions, Sec 741 sale of interest) are directly in-scope and needed only citation stripping.

Both topics now need Stage 4 regeneration to restore generation targets (Owner-Entity back toward ~85-100, Partnerships back toward ~80 — currently 74 and 52 respectively).

### Stage 2 — drift census infrastructure (commit e93b258)

New tool: `scripts/qa/drift-census.ts` — scans every unspecced `(section, topic)` pair against a universal banned-term filter built from the union of all registered specs' `bannedTerms` arrays, with a configurable spec-agreement threshold (default ≥2 specs must agree on a ban before it counts as universal).

**The ≥2 filter** eliminates topic-specific bans (e.g., `hot assets` banned in Owner-Entity but allowed in Partnerships) from generating false positives on a blind cross-topic sweep. Key insight surfaced by the first run: the top-ranked topics are often "rightful owner" false positives rather than genuine drift — existing specs ban terms and push content to specific other topics, which the census then flags for owning the content they were told to own.

**Census v1** (17 specs loaded, 35 universal bans): `docs/drift-census-2026-04-14.md`
- 113 unspecced (section, topic) pairs scanned
- 7,246 unspecced questions
- 211 flagged (2.9%); 37 topics with any drift

**Census v2** (20 specs loaded, 48 universal bans): `docs/drift-census-2026-04-14-v2.md`
- Re-run after Advanced Basis Calculations was registered
- 8 new universal bans crossed the ≥2 threshold: `hot assets`, `economic risk of loss`, `constructive liquidation`, `Section 708(b)`, `technical termination`, `Section 736`, `Section 7704`, `publicly traded partnership`
- Material new discovery: **TCP Entity Formation and Liquidation** jumped from invisible to **#7 at 13.3% (14/105)** — the new `Section 736` and `unrealized receivable` bans surfaced drift that was not detectable on the first run

### Stage 3 #1 — TCP Advanced Basis Calculations (commit e93b258)

Census-identified highest-ROI rightful-owner candidate. 95 questions, 24 flagged by universal ban set (25%). The Partnerships spec explicitly pushed Sec 752 liability allocation, Sec 754/743(b)/734(b) elections, and Sec 704(c) built-in gain methods to this topic — those ban patterns were catching on-topic content that was invisible because no spec existed to whitelist it.

Anchored at group-level **TCP/II/C** (scaffolder had mis-anchored to TCP/II/D which is actually Trusts). Cross-references TCP/II/B/1 for S corp basis material that Slayer teaches as one integrated unit.

**Results:** 24 flagged on census → 20 after spec authoring alone (4 rightful-owner false positives whitelisted) → 0 after cleanup migration `01049` (10 rewrites, 10 deletes) + follow-up fix `01050` (stray banned phrase in one choice array).

Topic: 95 → 85 questions (TCP -10).

### Stage 3 #2 — BAR Foreign Currency Transactions (commit 208c1f2)

Census v2 rank #1 rightful-owner candidate. 43 questions, 25 flagged (58.1% — highest drift rate of any unspecced topic). Every flag was on `functional currency`, which Derivatives and International Tax specs ban as not-their-topic.

Anchored at **BAR/II/G** (Consolidated Financial Statements — includes functional currency determination and translation adjustments per AICPA). Scope: ASC 830 Foreign Currency Matters at foundational US GAAP depth — transaction gains/losses on monetary balances, functional currency indicators, current-rate translation for foreign-functional subsidiaries, temporal remeasurement for USD-functional subsidiaries with local-currency books, CTA in OCI, long-term intercompany balances as part of net investment, highly inflationary economy exception, three forex hedge types at concept level.

**Results: 0/43 flagged after spec authoring alone.** First spec in the whole pipeline to produce a clean audit on authoring alone — validating the rightful-owner hypothesis from the census analysis. Zero cleanup migration needed.

Topic: 43 → 43 questions (unchanged).

### Stage 3 #3 — AUD Using the Work of Others (commit 208c1f2)

Census v2 rank #4. 64 questions, 18 flagged on `component auditor` which the Audit Evidence spec legitimately bans as group-audit territory. This topic IS the group-audit topic (plus internal audit reliance, specialist reliance, and service organization SOC report reliance from the user auditor's perspective).

Anchored at **AUD/II/F** (Planning for and using the work of others). Scaffolder had mis-anchored to AUD/II/G which is actually Specific Areas of Engagement Risk.

Scope: AU-C 600 (group audits, component auditor usage, group engagement partner, referred-to auditor option), AU-C 610 (internal audit function reliance with objectivity + competence + systematic approach), AU-C 620 (auditor's specialist vs management's specialist distinction), AU-C 402 (user auditor reliance on service organizations with SOC 1 Type 1 vs Type 2 distinction, subservice organizations, inclusive vs carve-out method).

**Results:** 18 census flags → 7 after spec authoring (11 rightful-owner false positives whitelisted). The remaining 7 hit newly-added bans for AT-C 320 and "trust services criteria" on concept-level SOC user-reliance content — all 7 were REWRITEs, not deletes, because the underlying teaching is in-scope. Cleanup migration `01051` stripped the regulatory citations and paraphrased the trust-services-criteria term of art.

Topic: 64 → 64 questions (unchanged — all rewrites).

## Key findings / insights

1. **The rightful-owner pattern is real.** Three specs in a row validated the hypothesis from the census analysis:
   - Advanced Basis Calculations: 24 → 20 on authoring (4 whitelisted, ~17% false positives)
   - Foreign Currency Transactions: 25 → 0 on authoring (pure rightful owner, 100% false positives)
   - Using the Work of Others: 18 → 7 on authoring (11 whitelisted, ~61% false positives)
   
   Average across the three: **46% of census flags on these topics were rightful-owner false positives** that spec authoring alone eliminated.

2. **The ≥2-spec agreement filter works as intended.** The census surfaced genuine drift (the partnership mechanics leaking into Advanced Basis, the AT-C citations leaking into SOC user reliance) without generating false positives on topic-specific bans like `hot assets` in Partnerships.

3. **Scaffolder mis-anchors are common** — every spec I authored in this session had the wrong `blueprintRef` on the stub. Advanced Basis: TCP/II/D → TCP/II/C. Work of Others: AUD/II/G → AUD/II/F. Foreign Currency was correct (BAR/II/G). Always verify against `alignment/aicpa-blueprint-tasks.json` before starting.

4. **Census re-runs are cheap** and worth doing between specs. The v2 re-run with Advanced Basis registered surfaced Entity Formation and Liquidation at #7 — entirely invisible on v1 — because the new universal bans caught drift that was previously unseen.

## Tooling added

- **`scripts/qa/drift-census.ts`** — Stage 2 census script, reusable for every future re-run
- **`scripts/qa/sample-topic.ts`** — small helper for sampling N question stems from a `(section, topic)` pair. Useful for understanding what the bank actually tests before authoring a spec on a topic that has no registered spec yet (the audit script requires a registered spec to load banned terms)

## Commits this session

```
208c1f2 Stage 3 #2 + #3: Foreign Currency Transactions + Using the Work of Others
e93b258 Stage 2 + Stage 3 #1: drift census + Advanced Basis Calculations spec
d877414 Stage 1 cleanup: Owner-Entity Transactions + Partnerships specs, 0 drift
```

## Next session — where to pick up

1. **Read `docs/topic-specs-pilot-handoff.md` first** — it has been refreshed with the current 20-spec state, the Stage 3 recipe, and the ranked priority list from census v2.

2. **Next candidates from census v2 ranked list** (in likely priority order):

   | Rank | Topic | Section | Qs | Flagged | Top terms |
   |---|---|---|---|---|---|
   | #3 | Audit Sampling | AUD | 52 | 23 (44%) | tolerable misstatement, attribute sampling |
   | #2 | Capital Structure Tax Planning | TCP | 52 | 26 (50%) | Section 163(j) |
   | #7 | Entity Formation and Liquidation | TCP | 105 | 14 (13%) | unrealized receivable, Section 752, Section 736 |
   | #5 | Entity Choice and Planning | TCP | 56 | 15 (27%) | Section 199A, qualified business income, Section 704(b) |
   | #6 | Audit Planning | AUD | 61 | 9 (15%) | component auditor, tolerable misstatement |
   | #9 | Multi-Jurisdictional Tax Planning | TCP | 56 | 7 (13%) | Section 482, transfer pricing |

3. **Audit Sampling** is the natural next pick — size (52 Qs) similar to others, clean rightful-owner for sampling theory, and the two hits (`tolerable misstatement`, `attribute sampling`) are squarely on-topic for a sampling spec. Expect mostly rightful-owner whitelisting with a small cleanup tail.

4. **Stage 4 regen queue keeps growing.** Topics below generation target:
   - Owner-Entity Transactions (TCP): 74 (target ~90-100)
   - Partnerships (REG): 52 (target ~80)
   - Advanced Basis Calculations (TCP): 85 (target ~95)
   - Plus the ones from the prior rollout wave: Passive Activity 93, C Corporations 71
   
   These need spec-constrained generation orchestrator runs. Defer Stage 4 until Stage 3 is further along (no point regenerating topics whose specs may still be evolving).

5. **Re-run the census again after 3-4 more specs** — each new spec adds terms to the universal ban set that may surface drift invisible to the prior run.

## Standing rules to remember

- Always verify `blueprintRef` against `alignment/aicpa-blueprint-tasks.json` before authoring — scaffolder mis-anchors frequently
- `sample-topic.ts` before authoring — never write a spec on a topic without first sampling 10-15 questions to see what the bank actually tests at that topic
- Run `npm test -- topic-specs` (drift test) + `audit-topic-content.ts` (post-author audit) after every spec registration
- Validator `validate-migration.ts` auto-strips deleted IDs from `verified-ids.json` — trustworthy
- Rewrites must include both an "IRC"/"Section"/"AU-C"/"ASC"/etc. word for citation check AND a contrast word (`while`, `whereas`, `although`, `however`, `rather than`, `unlike`, `in contrast`) for contrast check
- Use `$EXPL$` tags in SQL migrations, never `$$` (content has dollar amounts)

---

> *"Every banned term catches on-topic content somewhere — the question is whether that somewhere has a spec."*
