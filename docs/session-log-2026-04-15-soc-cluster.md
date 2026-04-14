# Session log — Stage 3 #4-17: fourteen specs, closing census v2 and v3 (2026-04-15)

**Summary:** In a single continuous session building on the prior Stage 3 work, authored **fourteen** topic specs across AUD, TCP, REG, and ISC sections — exhausting the census v2 ranked list, running a fresh census v3, and closing the biggest remaining drift surface (the ISC SOC cluster) as pure rightful-owner. Bank shrank by 79 questions through 8 cleanup migrations. Drift test went from 106/106 to 176/176 (+70 assertions for the 14 new specs). All 34 registered specs remain at 0 drift.

## State at start of session

- **20 registered specs, all 20 at 0 drift**
- Bank: 8,721 questions
- Drift test: 106/106
- Handoff doc: `docs/topic-specs-pilot-handoff.md` pointing to census v2 ranked list

## State at end of session

- **34 registered specs, all 34 at 0 drift**
- Bank: **8,642** (−79 net)
- Drift test: **176/176** (+70)
- Census v3 (run mid-session) captured in `docs/drift-census-2026-04-15.md`
- Commit: **f60f93d** (single commit covering 14 specs + 8 migrations + shared SOC base module + updated census)

## The fourteen specs authored

| # | Topic | Section | Anchor | Qs post | Flags on authoring | Cleanup | Pattern |
|---|---|---|---|---|---|---|---|
| #4 | Audit Sampling | AUD | AUD/III/C | 52 | 0 / 52 | none | **Pure rightful-owner** |
| #5 | Capital Structure Tax Planning | TCP | TCP/III/B | 50 | 5 / 52 | 2 del + 3 rw | Rightful-owner + OID tail |
| #6 | Entity Choice and Planning | TCP | TCP/III/A | 48 | 13 / 56 | 8 del + 5 rw | Mixed, S corp mechanics mis-tags |
| #7 | Individual Taxation: Deductions | REG | REG/IV/C | 64 | 1 / 64 | 0 del + 1 rw | Rightful-owner (§199A mechanics) |
| #8 | Materiality | AUD | AUD/II/D | 61 | 4 / 64 | 3 del + 1 rw | Rightful-owner + group audit tail |
| #9 | Audit Planning | AUD | AUD/II/A | 53 | 12 / 61 | 8 del + 4 rw | Genuine drift, not rightful-owner |
| #10 | Multi-Jurisdictional Tax Planning | TCP | TCP/III/B | 24 | 32 / 56 | **32 del** | **Largest cleanup** — international depth |
| #11 | Entity Formation and Liquidation | TCP | TCP/II/A/2 | 86 | 20 / 105 | 19 del + 1 rw | Rightful-owner + partnership mis-tags |
| #12 | Entity Formation and Restructuring | TCP | TCP/II/A/2 | 60 | 8 / 67 | 7 del + 1 rw | Rightful-owner (§368/§355/§338) |
| #13 | SOC Engagements | ISC | ISC/III/A | 58 | **0 / 58** | none | **Pure rightful-owner** |
| #14 | SOC Reporting | ISC | ISC/III/B | 59 | 0 / 59 | none | **Pure rightful-owner** |
| #15 | SOC Testing Controls | ISC | ISC/III/A | 60 | 0 / 60 | none | **Pure rightful-owner** |
| #16 | SOC Report Content and Structure | ISC | ISC/III/B | 59 | 0 / 59 | none | **Pure rightful-owner** |
| #17 | SOC Reporting and Trust Services Criteria | ISC | ISC/III/B | 58 | 0 / 58 | none | **Pure rightful-owner** |

**Totals:** 79 deletes, 16 rewrites. Bank change: −79 questions.

## What landed

### Stage 3 #4 — AUD Audit Sampling (pure rightful-owner)

The cleanest close of the session. 23 census flags, all on `tolerable misstatement` and `attribute sampling` — terms the Audit Evidence spec and Risk Assessment spec explicitly push to "the Audit Sampling topic" in their outOfScope commentary. Authored spec as the designated owner of AU-C 530 at AICPA concept depth. **0 flags after authoring.** Third pure-rightful-owner in the pipeline after Foreign Currency Transactions and Using the Work of Others.

### Stage 3 #5 — TCP Capital Structure Tax Planning (§163(j))

26 census flags on `Section 163(j)` — all whitelisted on authoring because §163(j) business interest limitation IS the core of this topic alongside §385 debt/equity classification and thin capitalization. Post-authoring audit exposed 5 drift-tail hits the census hadn't predicted: 2 pure OID mechanics questions (§1272/§1273 — bond tax accounting, off-topic, DELETED), 3 rewrites to strip §163(d)/§7872/§163(j) cross-reference citations from distractors. The spec also loosened its own `Section 382 limitation` regex pattern (over-strict — §382 mechanics at DEPTH is banned but the concept-level phrase is needed to discuss §163(j) carryforward interaction at ownership change).

### Stage 3 #6 — TCP Entity Choice and Planning

15 census flags on `Section 199A` / `qualified business income` / `Section 704(b)`. Spec authored at **entity-selection comparison level** (C corp vs pass-through decision, QBI concept as a decision variable) while explicitly carving off §199A MECHANICS depth to REG Individual Taxation: Deductions (spec #7) and §704(b) allocation depth to Partnerships / Advanced Basis. Post-authoring audit caught 8 more S corp mechanics questions mis-tagged here — pure §1368 distribution ordering, §1374 BIG tax, §1375 passive investment income penalty, §1371(e) PTTP, and one §199A W-2/UBIA formula question. All 8 deleted as off-topic (belong in S Corporations REG or Individual Deductions). Topic: 56 → 48.

### Stage 3 #7 — REG Individual Taxation: Deductions

The natural companion to Entity Choice and Planning. AICPA REG/IV/C task 3 literally says "Calculate the qualified business income (QBI) deduction" — unambiguous mandate to own §199A mechanics depth. Census v2 flagged 8 questions at 13% on QBI / §199A. Spec authored with full §199A computation scope (W-2 wage limit formula, UBIA of qualified property, SSTB phase-in, aggregation rules under Reg. §1.199A-4, rental real estate safe harbor, qualified REIT dividends as separate category). Scaffolder mis-anchored to REG/IV/B (pass-through reporting); corrected to REG/IV/C. **All 8 QBI flags whitelisted on authoring.** Only 1 small rewrite needed (Q2656 student loan interest had "American Opportunity Credit" in a distractor).

### Stage 3 #8 — AUD Materiality

5 census flags on `tolerable misstatement` / `component auditor`. Clean rightful-owner pattern — the Risk Assessment spec explicitly pushes `tolerable misstatement` to "the Materiality topic and Audit Sampling topic." Spec holds AU-C 320 materiality allocation (overall → performance → tolerable) while Audit Sampling owns tolerable misstatement as a sample-evaluation variable. Post-author audit: 3 pure group-audit questions mis-tagged here (DELETED, belong to Using the Work of Others), 1 pure sample-evaluation question (DELETED, belongs to Audit Sampling), 1 rewrite of an AU-C 450 qualitative-factor question (SAB 99 distractor reference stripped). Topic: 64 → 61.

### Stage 3 #9 — AUD Audit Planning

9 census flags on `component auditor` and `tolerable misstatement`. **NOT a rightful-owner pattern** — both terms now belong to OTHER specs (Using the Work of Others for group audit; Materiality and Audit Sampling for tolerable misstatement). All 12 post-author flags were genuine drift. Spec narrowed to AU-C 300 overall strategy and engagement plan PROCESS (not the specific content addressed during planning). 4 rewrites (Q6, Q269, Q1455, Q1456 — legitimate planning questions with banned terms only as examples or distractors) + 8 deletes (pure group audit, materiality mechanics, fraud brainstorming). Topic: 61 → 53.

### Stage 3 #10 — TCP Multi-Jurisdictional Tax Planning (LARGEST CLEANUP)

**The session's biggest finding.** Census v2 flagged 7 questions at 13% on `Section 482`. The authoring audit exposed **32 flagged questions at 57%** — a 27-question contiguous block (Q14304–Q14332) of mis-tagged international tax mechanics content (CFC, Subpart F, GILTI, FDII, BEAT, FTC limitation, §482 transfer pricing) plus 5 additional §482 questions elsewhere and 2 mis-tagged audit questions.

**None of this content has a valid home in the current spec landscape.** The International Tax (TCP) spec's own author notes from its original commit (back in the pilot wave) had predicted this exact cleanup: "the highest drift-risk topic — expect 30%+ to require deletion." The 2026 AICPA blueprint scopes International Tax at CONCEPT depth only (CFC existence, general international framework), explicitly excluding GILTI computation, FDII mechanics, BEAT, FTC limitation, §482 method analysis. The generator had produced this content against a scope definition the blueprint doesn't support, and it's been sitting in the bank mis-tagged ever since.

Spec authored with **state tax focus** (nexus, P.L. 86-272, apportionment formulas, throwback/throwout, unitary combined reporting, PTE SALT cap workaround) — which is what the AICPA TCP blueprint actually puts at TCP/III/B (task: "optimize state and local income tax rules in tax planning for business expansion").

**32 deletes total. Topic: 56 → 24.** Adds to Stage 4 regen queue (target ~80, deficit 56).

### Stage 3 #11 — TCP Entity Formation and Liquidation

14 census flags on `unrealized receivable` / `Section 752` / `Section 736`. These were discovered on census v2 (invisible on v1 before Advanced Basis Calculations registered those bans). Spec authored with **C corp formation and liquidation mechanics** scope (§351, §331, §332, §336, §337, §311(b), §358, §362, §381). Scaffolder badly mis-anchored to TCP/II/E (which is actually Tax-exempt organizations); corrected to TCP/II/A/2.

Post-author audit caught 20 flagged questions — 19 pure partnership content that belongs to Partnerships (REG) and Advanced Basis Calculations (TCP). 1 rewrite of a legitimate C corp liquidation timing question (Q1027, §531 accumulated earnings tax reference in a distractor). Topic: 105 → 86.

### Stage 3 #12 — TCP Entity Formation and Restructuring

Picked up from the fresh census v3 run as rank #2. 18 census flags on `Section 355`, `continuity of interest`, `Section 338`. Clean rightful-owner pattern: the Entity Formation and Liquidation spec (just authored) explicitly banned all §368/§355/§338 content as "separate advanced corporate topic — Entity Formation and Restructuring territory." This spec IS that separate topic.

Spec authored with §368 seven reorganization types (A-G with COI/COBE doctrines), §356 boot recognition and dividend recharacterization, §354/§361 nonrecognition, §358/§362 basis, §381 attribute carryover, §382 as a TRIGGER (not mechanics), §355 divisive transactions (spin-off/split-off/split-up) with active-trade-or-business test, device test, business purpose, §355(d)/(e) anti-Morris-Trust rules, and §338 qualified stock purchase elections (§338(g) buyer-only vs §338(h)(10) joint buyer-seller). Anchored at TCP/II/A/2 alongside Entity Formation and Liquidation (two specs, same anchor, different scope lines).

Post-author audit: 8 remaining flags — 1 rewrite of a §355 device test question (Q5002, §269 distractor stripped) + 7 deletes (mix of partnership content, §382 computation, and §269 anti-abuse). Topic: 67 → 60.

### Stage 3 #13-17 — ISC SOC cluster (FIVE topics, single architecture)

**The census v3 discovery.** After authoring 9 specs, I ran a fresh census (81 universal bans across 28 specs at the time of the run). The top 7 candidates included **five ISC SOC topics** all flagged on `SOC 1 Type 2`:

| Census rank | Topic | Qs | Flagged | % |
|---|---|---|---|---|
| 1 | SOC Engagements | 58 | 27 | 46.6% |
| 3 | SOC Reporting | 59 | 11 | 18.6% |
| 4 | SOC Testing Controls | 60 | 11 | 18.3% |
| 6 | SOC Report Content and Structure | 59 | 8 | 13.6% |
| 7 | SOC Reporting and Trust Services Criteria | 58 | 7 | 12.1% |

**Total 64 flagged across the cluster.** Clean rightful-owner pattern: the Using the Work of Others (AUD) spec explicitly bans `SOC 1 Type 2`, `SSAE 18`, `AT-C 320`, `trust services criteria`, `SOC for Cybersecurity`, and `SOC for Supply Chain` as service-auditor territory (it holds the line at user-auditor reliance concepts). The ISC SOC topics are the designated home for all of that content.

**Architectural innovation:** Rather than author five near-duplicate specs, created a shared scope module `src/lib/topic-specs/_isc-soc-base.ts` exporting `SOC_IN_SCOPE`, `SOC_OUT_OF_SCOPE`, `SOC_KEY_STANDARDS`, `SOC_COMMON_MISCONCEPTIONS`, and `SOC_BANNED_TERMS`. Each of the five topic-spec files is ~30 lines and imports the shared base, with a thin per-topic focus note. **Saved ~1,500 lines of duplication and made iterative scope-tuning trivial** — when I discovered the initial bannedTerms were too strict (catching on-topic content like AU-C 402 user reliance references, COBIT framework alignment, AES-256 encryption testing, and sampling concepts at 100% examination), I loosened them once in the base and all five topics re-audited clean simultaneously.

**Final result after scope iteration: 0 flags across all 5 SOC topics, 0 cleanup migration needed.** 100% pure rightful-owner across the entire cluster.

Scope iteration story:
- Initial audit after authoring: 27/58 → 0/58 for SOC Engagements, but residual hits on other four topics on terms that were legitimate SOC content
- Loosened `AU-C 402` ban (SOC reports legitimately reference the user auditor's reliance standard)
- Loosened `sampling risk`, `tolerable rate of deviation`, `monetary unit sampling` bans (100% examination and concept-level sampling language appear in SOC testing)
- Loosened `COBIT` ban (SOC 2 common criteria map to COBIT at framework-alignment level)
- Loosened `AES-256` and `SHA-256` bans (SOC 2 testing fact patterns include specific encryption algorithms)
- Final: 0/294 across all 5 topics

## Census v3

Run mid-session after authoring 11 of the 14 specs (before the SOC cluster). Captured in `docs/drift-census-2026-04-15.md`.

- **81 universal ban terms** (vs 48 in v2, 35 in v1) at ≥2-spec agreement
- **28 specs loaded** (counting International Tax through Entity Formation and Liquidation at the time of the run)
- **102 unspecced (section, topic) pairs** scanned (vs 113 in v1 as more topics move to specced side)
- **184 flagged questions** (2.8% of 6,534 unspecced bank)
- **47 topics with any drift** out of 102 scanned

The v3 run exposed:
1. The ISC SOC cluster (5 topics, 64 flags) — addressed this session
2. TCP Entity Tax Compliance: NOLs and Consolidated Returns (100 Qs, 14 flagged on `long-term tax-exempt rate` — §382 depth) — deferred to next session
3. Smaller AUD cluster: Internal Controls, Tests of Controls, Quality Management, Audit Reports, Misstatements — 5-6 flags each, mostly `SOC 1 Type 2` and `SQMS 1` drift — deferred

## Key findings / insights

### 1. The rightful-owner pattern strengthens as specs compound

Over this session, **eight of fourteen specs whitelisted ALL or NEARLY ALL of their census flags on authoring alone.** The clean wins:

- #4 Audit Sampling: 23 flags → 0 on authoring
- #7 Individual Deductions: 8 flags → 1 on authoring
- #13-17 ISC SOC cluster: 64 flags → 0 on authoring (after scope-tuning)

The common pattern: a term that another spec banned and pushed elsewhere in its outOfScope rationale. When the rightful-owner spec gets authored, the flags vanish.

### 2. The non-rightful-owner cases reveal generation pipeline quality issues

The five specs that needed substantial cleanup (#5, #6, #9, #10, #11) all exposed the same problem: the **generator had produced content at a depth or scope that doesn't match the AICPA 2026 blueprint**, then mis-tagged it under adjacent topics. Multi-Jurisdictional Tax Planning was the starkest case — 27 contiguous questions of GILTI/Subpart F/FDII/BEAT computation at depth, tagged as "multi-jurisdictional" (confusing international with multi-state). Entity Formation and Liquidation had 19 partnership formation questions. Entity Choice had 8 S corp mechanics questions.

**The pre-spec generation batches didn't have scope constraints.** Spec-constrained generation (via `validate-migration.ts` banned-term enforcement and orchestrator prompt injection) prevents this drift at WRITE time for specced topics. The backlog of pre-spec content is being cleaned retroactively through this pipeline.

### 3. The shared scope base module is a reusable pattern

`_isc-soc-base.ts` worked cleanly for five related topics sharing the same AICPA territory at different focus points. The pattern:

```typescript
// _topic-cluster-base.ts
export const CLUSTER_IN_SCOPE: string[] = [...];
export const CLUSTER_OUT_OF_SCOPE: string[] = [...];
export const CLUSTER_BANNED_TERMS: BannedTerm[] = [...];

// isc-soc-engagements.ts
import { CLUSTER_IN_SCOPE, ... } from "./_isc-soc-base";
export const spec: TopicSpec = {
  topic: "SOC Engagements",
  inScope: CLUSTER_IN_SCOPE,
  outOfScope: CLUSTER_OUT_OF_SCOPE,
  bannedTerms: CLUSTER_BANNED_TERMS,
  // ... thin per-topic focus note
};
```

Candidates for this pattern elsewhere: REG Individual Taxation (Income, Deductions, Credits, AMT could share some ban territory) and BAR Financial Reporting sub-topics.

### 4. Iterative scope-tuning is cheap with shared base modules

The SOC cluster's initial bannedTerms were too strict in four places. Loosening once in the base propagated to all five topics instantly. Audit re-ran in ~5 seconds per topic. Total iteration cost: ~2 minutes. This makes scope-tuning a fast feedback loop and encourages starting strict and relaxing based on actual false positives rather than anticipating them upfront.

### 5. Census v2 was a good starting ranked list; the full audit always surfaces more

Without exception, the full audit surfaced more flagged questions than the census predicted:
- #10 Multi-Jurisdictional: census 7 flags, audit 32 flags
- #11 Entity Formation and Liquidation: census 14, audit 20
- #5 Capital Structure Tax Planning: census 26, audit 5 (this is the opposite — rightful-owner whitelisted most)

The census uses the UNIVERSAL ban set (≥2-spec agreement). The per-topic audit uses the NEW SPEC's full bannedTerms list. The ≥2-spec filter excludes topic-specific bans, so single-spec bans (like the many specific §388/§355/§338 patterns in Entity Formation and Restructuring) don't count toward census flags but do trigger in the topic audit. This asymmetry is why the audit is the authoritative cleanup target, not the census.

## Commits

```
f60f93d Stage 3 #4-17: 14 specs across AUD/TCP/REG/ISC, +5 SOC cluster
```

Single commit, 31 files, 3434 insertions, 816 deletions. Migration gate passed (8 migrations verified).

## Stage 4 regen queue (growing)

Topics below generation target needing spec-constrained regeneration, in order of deficit:

| Topic | Current | Target | Deficit |
|---|---|---|---|
| Multi-Jurisdictional Tax Planning | 24 | 80 | 56 |
| Partnerships (REG) | 52 | 80 | 28 |
| Entity Choice and Planning | 48 | 80 | 32 |
| Owner-Entity Transactions (TCP) | 74 | 90 | 16 |
| Advanced Basis Calculations (TCP) | 85 | 95 | 10 |
| Passive Activity and At-Risk Rules | 93 | 130 | 37 |
| C Corporations (REG) | 71 | 80 | 9 |
| Audit Planning (AUD) | 53 | ~80 | ~27 |
| Materiality (AUD) | 61 | ~80 | ~19 |
| Entity Formation and Liquidation | 86 | ~100 | ~14 |

**Defer Stage 4 until Stage 3 is substantially complete** — still a few remaining spec candidates (AUD Internal Controls, Tests of Controls, Quality Management; TCP NOLs and Consolidated Returns; remaining smaller topics) and the orchestrator batch runs for regeneration are expensive. Plan: close ~3-5 more Stage 3 specs in the next session, then start Stage 4 regen in the following session with all specs in place.

## Next session — where to pick up

1. **Read `docs/topic-specs-pilot-handoff.md`** — will be refreshed at end of this session with current 34-spec state and census v3 ranked list.

2. **Next candidates from census v3 (after removing the 5 SOC topics and the 2 TCP topics already done this session):**

| Rank | Topic | Section | Qs | Flagged | % | Top terms |
|---|---|---|---|---|---|---|
| 5 | Entity Tax Compliance: NOLs and Consolidated Returns | TCP | 100 | 14 | 14.0% | `long-term tax-exempt rate` (13) |
| 8 | Internal Controls | AUD | 64 | 6 | 9.4% | `SOC 1 Type 2` (4); `SQMS 1` (1); `AS 2201` (1) |
| 9 | Tests of Controls | AUD | 64 | 6 | 9.4% | `sampling risk` (3); `SOC 1 Type 2` (2) |
| 10 | Audit Reports | AUD | 38 | 3 | 7.9% | `AS 2201` (2) |
| 11 | Quality Management | AUD | 38 | 3 | 7.9% | `SQMS 1` (3) |
| 12 | Misstatements and Control Deficiencies | AUD | 64 | 5 | 7.8% | `tolerable misstatement` (3); `AS 2201` (2) |
| 13 | Stock Compensation and Business Combinations | BAR | 52 | 4 | 7.7% | `Black-Scholes` (3) |
| 14 | Individual Taxation: Credits | REG | 67 | 5 | 7.5% | `Section 904` (5) |
| 15 | Estate and Gift Tax | REG | 78 | 5 | 6.4% | `Section 7872` (5) |

3. **My lean for next session:** Start with **TCP Entity Tax Compliance: NOLs and Consolidated Returns** (rank #5). It owns `long-term tax-exempt rate` (§382 limitation base rate) and `Section 951A` — both explicitly banned by my Entity Formation and Restructuring spec as "§382 mechanics territory, separate NOLs topic." Clean rightful-owner, good size (100 Qs), will close the §382 computation territory cleanly.

4. **Second pick:** The smaller AUD cluster (Internal Controls, Tests of Controls, Quality Management, Audit Reports, Misstatements) — possibly another shared-base opportunity since these are all related AUD process topics. Can be done as a set after NOLs.

5. **Re-run the census after 4-5 more specs** — universal ban set will evolve with new specs for NOLs, AUD process topics, and Individual Taxation sub-topics. Each re-run cheap (<1 min).

## Standing rules to remember

- Always verify `blueprintRef` against `alignment/aicpa-blueprint-tasks.json` before authoring — scaffolder mis-anchors frequently (happened again this session for multiple specs: Audit Sampling AUD/III/D→C, Using the Work of Others AUD/II/G→F, Multi-Jurisdictional Tax Planning TCP/III/D→B, Entity Formation and Liquidation TCP/II/E→II/A/2, Individual Deductions REG/IV/B→C, Entity Choice TCP/III/B→A)
- `sample-topic.ts` before authoring — never write a spec on a topic without first sampling 10-15 questions to understand what the bank actually tests
- Rewrites in cleanup migrations must have both an IRC/Section/ASC/AU-C citation word AND a contrast word (`while`/`whereas`/`however`/`rather than`/`unlike`/`in contrast`) for validator checks
- Use `$EXPL$` in SQL migrations, never `$$`
- Area-level anchors (TCP/III, AUD/II) don't resolve in the blueprint test — always anchor at group-level (TCP/III/A) or topic-level (TCP/III/A/2)
- Start with STRICT bans and loosen based on actual false positives, especially with shared scope modules where one loosening propagates to all cluster topics
- The Using the Work of Others spec bans SOC cluster territory — reference it as the "line holder" for user-auditor vs service-auditor territory

---

> *"Every banned term catches on-topic content somewhere — the question is whether that somewhere has a spec."*
