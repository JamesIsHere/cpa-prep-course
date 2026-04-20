# Slayer CPA — Project State

> **This document is the canonical "where are we right now" record.** Read it first at the start of every session. Update it at the end of every session. If you are about to propose non-trivial work, check whether this document already treats it as done, tried, or planned. If it doesn't speak to your question, say so explicitly before acting.
>
> **Why this file exists:** Project state was distributed across CLAUDE.md (user-facing docs), memory files (session snapshots), trackers (single-axis), session logs (historical), and git log (archaeology). No single artifact answered "where are we right now." That gap caused repeated "wait, we already knew that" moments where action preceded verification. This file closes the gap. See `memory/feedback_verification_discipline.md` for the full pattern.
>
> **Owner:** maintained by Claude, validated by James at session wrap. Not a replacement for CLAUDE.md, memory, trackers, or session logs — it is a short, living summary that points at them.
>
> **Freshness rule:** every claim in this file is either (a) a verifiable fact backed by a command or file, or (b) an opinion tagged with a date and the session that wrote it. No stale aspirations.

Last updated: 2026-04-20 (Phase 1E complete for all 6 sections. 5,629 / 8,612 = 65.4% pinned across bank. Migrations 01066-01071.)

---

## 1. Current state (facts, verifiable)

**The bank:**
- **8,612 questions** live in DB. Verified via `npm run migrate:status` on 2026-04-20.
- **Per-section counts:** AUD 1424 / FAR 1539 / REG 1397 / BAR 1509 / ISC 1452 / TCP 1291.
- **Pin state (Phase 1E):** All 6 sections pinned to DB 2026-04-20. Migrations 01066-01071. Overall 5,629 / 8,612 = **65.4% pinned** (rest at pin_ref = NULL as homeless/off-blueprint). Per-section: FAR 1414/1539 (91.9%), AUD 1127/1424 (79.1%), ISC 882/1452 (60.7%), BAR 903/1509 (59.8%), TCP 711/1291 (55.1%), REG 592/1397 (42.4%). 460 distinct pin_refs across the bank. Verified via `scripts/qa/verify-pins.ts`.
- **Composite quality score:** 9.3/10 avg. 0 critical, 0 moderate, 8612 acceptable. Verified via `npm run qa -- --output=json` on 2026-04-15.
- **Correctness verification:** 8,469 of 8,612 (98.3%) have passed `verify-correctness.ts`. All verdicts **pass**; zero fail, zero review. 143 recent additions unverified. Verified via `docs/verified-ids.json`.
- **Citation coverage:** 99.3% globally. Gaps: BAR 28, TCP 32, REG 3. AUD/FAR/ISC at 100%.
- **Difficulty distribution:** 5 of 6 sections within 5 pts of 30/50/20. ISC is 40/44/17 (easy-heavy by 10 pts).
- **Duplicates:** 1 pair. Negligible.

**Topic-specs infrastructure:**
- **43 authored specs** registered in `src/lib/topic-specs/index.ts`. All at 0 drift. Drift test 221/221.
- **87 unauthored scaffolder stubs** on disk in `src/lib/topic-specs/` (unregistered, empty arrays, STUB banner). These are an implicit to-do list, not broken code.
- **1 shared base module** (`_isc-soc-base.ts`) used by 5 ISC SOC specs.
- **Spec coverage:** the 43 specs protect ~36% of the bank's questions. The other ~64% are unspecced and unprotected against topic-drift via specs.
- Verified via `scripts/qa/audit-topic-specs-coupling.ts` on 2026-04-15.

**Taxonomy:**
- **130 distinct DB topic strings**, all 130 declared in `blueprint.ts`. Zero orphans, zero empty declared topics, zero cross-section contamination.
- **Known taxonomy issue:** REG Individual Taxation proliferation. Five variants (`Credits`, `Credits/AMT`, `Deductions`, `Filing/Credits`, `Income`) covering 319 questions. Two of them (`Credits` and `Credits/AMT`) share the same blueprint anchor REG/IV/C.
- **~~Known taxonomy issue:~~ ~~ISC has 791 questions...~~** ~~unrouted~~ — **RETIRED 2026-04-19.** The original claim in discrepancy queue #3 was mis-diagnosed. All 1,457 ISC questions DO route to AICPA groups via lesson-spec topic→group mapping (verified via `scripts/qa/audit-homeless.ts --section=isc`). The 826 "homeless" that looked unrouted were classifier-rejected, not structurally unmapped. Fixed via iter-1+2 routing (commits `9421a17`, `a7a0227`).
- Verified via `scripts/qa/audit-taxonomy.ts` and `scripts/qa/audit-task-coverage.ts` on 2026-04-15.

**AUD classification status (2026-04-19, iter-4):**
- **AUD baseline match rate was 68.0%** (classifier silently dropping `inScope` from its prompt — fixed commit `0718c8d`).
- **Iter 2-3: 68.0% → 75.0%** after 3 lesson-spec re-anchors — commit `e4a8675`:
  - Misstatements and Control Deficiencies: IV/B → III/F
  - Modifications to the Auditor Report: IV/E alias → IV/A alias
  - Attestation Engagements: IV/E alias → new IV/B lesson-spec
- **Iter 4: 75.0% → 79.1%** (1127 / 1425 matched) after 2 more re-anchors, 0 regressions:
  - Analytical Procedures: III/A (data analytics) → III/D (AICPA AP topic, 4 tasks)
  - Specific Areas and Transactions: II/G (narrow engagement risk) → III/E (6 topics covering estimates / investments / inventory / litigation / going concern / single audits)
- **Key finding:** routing fixes delivered +159 matches from 5 edits over 2 sessions. Iter-1 inScope authoring on 73 task-specs across 13 groups delivered -6 (noise). See `memory/feedback_routing_over_authoring.md`.
- **Remaining homeless (298, 21%):** top candidates are Specific Areas and Transactions (34 residual at III/E), Government Auditing Standards (30 @ IV/D, 2-task under-specced), Written Representations (27 @ III/G, 1-task under-specced), Substantive Procedures (23 @ III/D). The remaining big clusters are **under-specced groups** (IV/D, III/G) and residual off-topic content; further routing lift likely requires authoring new task-specs, not re-anchoring.

**ISC classification status (2026-04-19, iter-2):**
- **ISC baseline match rate was 43.3%** (same classifier plumbing fix as AUD; empty inScope at scaffold baselines).
- **Iter 1: 43.3% → 56.1%** after 3 re-anchors (commit `9421a17`):
  - Incident Response and Recovery: II/B → new II/D lesson-spec
  - System Availability and Change Management: II/A → I/A
  - Change Management: II/A → I/A
- **Iter 2: 56.1% → 60.7%** (884 / 1457 matched) after 1 re-anchor (commit `a7a0227`):
  - Data Protection Technologies: II/B → II/C (II/C has explicit DLP task + encryption fundamentals + data management for confidentiality)
- **Cumulative lift:** +253 matches from 4 edits. Regressions: 3 (negligible vs 252 gains).
- **Remaining homeless (570, 39%):** top clusters appear to be **bank-content-overshoots-AICPA-scope** rather than routing issues:
  - Security and Control Frameworks @ II/A: 71 (ITIL, NIST RMF, ALE not in AICPA II/A's 8 tasks)
  - IT Audit Frameworks @ II/A: 64 (same pattern)
  - SOC Testing Controls @ III/A: 59 (sampling methodology / deviation evaluation not in AICPA III/A)
  - Incident Response residual @ II/D: 57 (43 of 100 matched; remainder may be overshoot of 4-task group)
  - IT General Controls @ I/A: 51 (general ITGC concepts not in I/A's 4 topics)

**REG / BAR / TCP classification status (2026-04-19, iter-1 each):**

| Section | Baseline | After iter-1 | Δ | Edits | Conversion | Pattern |
|---------|----------|--------------|---|-------|-----------|---------|
| REG     | 41.2%    | 42.4%        | +17 | 3 | 9% | Over-scope (AICPA 2026 narrower than bank) |
| BAR     | 58.8%    | 59.8%        | +16 (−3 reg) | 1 | 24% | Mostly over-scope + ~186 section-misplaced questions (Pension 138 + ITaxA 48 are FAR content tagged as BAR) |
| TCP     | 52.9%    | 55.0%        | +28 (−14 reg) | 2 | 20% | Mixed — transposition fixes worked, but ceiling exists |

Key structural findings:
- **REG**: ~300+ bank questions cover content outside REG 2026 AICPA scope. Estate/Gift Tax (78) moved to TCP in 2026. Securities Act / Rule 10b-5 (57) not in REG 2026. Like-Kind Exchange methodology (48) beyond III/A's basis tasks. Credits/AMT mechanics beyond IV/F's 3 narrow tasks.
- **BAR**: ~186 bank questions are section-level misplaced (Pension and Postretirement Benefits 138 + Income Taxes Advanced 48 belong in FAR per 2026 reorganization). Routing within BAR can't fix these — requires DB section reassignment or acceptance.
- **TCP**: IV/B ↔ IV/C transposition was a clean routing win. Remaining homeless has modest additional routing upside.

**Routing-first lens conclusion:** Different failure modes across sections require different treatments:
- AUD/ISC: routing fixes content-correctly-scoped-but-mis-routed. High leverage.
- REG: bank overshoots AICPA 2026. Routing has low ceiling. Solution = content-level rewrite or accept off-blueprint.
- BAR: some content is wrong-section (should be FAR), some overshoots. Solution = section reassignment + accept overshoot.
- TCP: mix of both. Some routing wins, some overshoot.

**REG + BAR acceptance decision (2026-04-19):** **REG and BAR are no longer active routing-audit targets.** Current routing state (REG 42.4%, BAR 59.8%) is accepted as the end state achievable via lesson-spec re-anchoring. Further match-rate improvement on these sections requires content-level work — either rewriting ~300+ off-blueprint REG questions to fit 2026 AICPA scope, or reassigning ~186 BAR questions to FAR via DB migration. Those are deferred as separate work streams, not routing cleanup. For Direction W's immediate purposes, the homeless questions on these sections are tagged "off-blueprint overshoot" — they will carry a pin_ref of null and be excluded from task-level coverage analysis, not treated as classifier failures. AUD/ISC/TCP remain candidates for further routing work if desired.

**The structural finding from Wave B (bank audit, 2026-04-15):**
- **AICPA representative tasks have zero L1 (Remembering) content.** All 648 tasks are at Application, Analysis, or Evaluation level.
- **The bank has 20-39% of its questions at L1.** Roughly 2,500 questions are testing a Bloom's level that the AICPA exam does not test.
- **Group-level coverage is radically uneven:** 3-93 questions per representative task, where even distribution would be ~12-14.
- **Cognitive level column** is fully populated (no heuristic fallbacks). Verified via QA run.

---

## 2. Known to-do list (real, ranked by impact)

**Highest-impact structural work (the rearchitect path):**

1. **Task-driven rearchitecture** (decision pending — see §4). Representative tasks become the unit of work instead of topics. 648 task-specs instead of 130 topic-specs. Re-tag existing questions against tasks. Re-level L1 content. Re-generate gaps. Multi-week project.

**High-value remaining Stage 3 work (if rearchitecture is deferred):**

2. **4 Stage 3 quick-win specs:** AUD Government Auditing Standards (32/34 Yellow Book), REG Alternative Minimum Tax (39/65 AMTI), TCP Trusts and Estates (18/50 DNI), + decide on the REG Credits proliferation before specing more REG IT topics.
3. **ISC IT-governance cluster** (8 topics, ~400 drift questions). Candidate for shared-base pattern.
4. **Close 87 scaffolder stubs** via census-v4-driven prioritization OR delete and move to data-file backlog.

**Taxonomy cleanup:**

5. **REG Individual Taxation proliferation fix** — decide between merging 5 variants via data migration, or embracing them with overlapping specs. (Context: REG is accepted at 42.4% match; this cleanup is no longer blocking match-rate work but remains valid taxonomy hygiene.)
6. ~~**ISC orphan topic investigation**~~ — **CLOSED 2026-04-19** via discrepancy #3 retirement. Topics ARE routed; the 826 "homeless" at baseline were classifier-rejected, not structurally unmapped. Fixed via ISC iter-1+2.

**Deferred content-level work (if/when Direction W needs higher match rates on REG/BAR):**

7. **REG off-blueprint content** — ~300+ questions covering Estate/Gift, Securities Act/Rule 10b-5, Like-Kind Exchange methodology, and deep Credits/AMT mechanics that 2026 AICPA REG does not test. Options: rewrite to 2026 scope, delete, or relocate to TCP (for Estate/Gift) / BAR (for Securities Act). Multi-week content authoring project.
8. **BAR section-misplacement** — 186 questions tagged BAR but covering FAR content (Pension/Postretirement 138 sponsor-side ASC 715 + Income Taxes Advanced 48 ASC 740). Options: DB section reassignment migration, or rewrite to fit BAR II/K (plan-side benefit FS) + BAR II/J (public company topics).

**Hygiene (low priority):**

9. **63 citation gaps** in BAR (28), TCP (32), REG (3).
10. **2 pre-existing lint errors** in `scripts/qa/fetch-flagged.ts` (1 `any`) and unused-var warnings.
11. **7 untracked files** sitting in the working tree (backups, market research, codebase guide drafts) — decide to gitignore, delete, or commit.

---

## 3. Tried and discarded / explicitly not-doing

- **"Finish 87 more topic specs and call the bank done"** — considered, rejected 2026-04-15. Wave B data forced the rejection. Even complete topic coverage does not fix Bloom's misalignment, the distribution imbalance, or the ISC orphan topics.
- **"Random 300-question correctness sample in Wave C"** — proposed, replaced 2026-04-15 when discovered that 98.3% of bank was already verified. Correctness axis is not the bottleneck.
- **"Pure-AI generate-and-verify loop"** — implicit thesis at project start; reshaped 2026-04-15 to "AI as expert leverage" after the Wave B findings showed closed-loop AI review has systematic blind spots (the 2,500 L1 questions were generated AND verified by AI without either step catching the wrong Bloom's level).
- **"Shared-base pattern for AUD process cluster"** — considered during Stage 3 #18-26, rejected because each AUD topic needed idiosyncratic ban loosening. Kept as 5 independent specs. See `supabase/migrations/01061_aud_cluster_spec_cleanup.sql` header for rationale.
- **"Session logs always"** — feedback rule in memory. Adhered to: every substantive session gets a session log in `docs/` before wrap.
- **"Single pipeline loop, enforce quality at generation"** — feedback rule in memory. Topic specs are the first step toward this; task-specs are the intended completion.
- **"Continue REG routing audits after iter-1 lift was 9%"** — considered, rejected 2026-04-19. REG iter-1 revealed AICPA 2026 scope is substantially narrower than bank content (300+ off-blueprint questions). Further routing edits would yield sub-10% conversion with regression risk. Accepted REG at 42.4%.
- **"Continue BAR routing audits after iter-1 proof was 24% net"** — considered, rejected 2026-04-19. BAR's biggest clusters (Pension 138, Income Taxes Advanced 48) are section-level misplacements (content belongs in FAR, not BAR). Routing within BAR can't fix these. Accepted BAR at 59.8%.

---

## 4. Current plan

**Status: decision pending.** The session of 2026-04-15 completed a multi-wave bank audit (Wave A cheap scans + Wave B coverage) that revealed structural issues (Bloom's misalignment, distribution imbalance, ISC orphans) that cannot be fixed by finishing more topic specs. The current plan is to **move to a task-driven rearchitecture** that:

1. Defines task-specs (one per AICPA representative task, ~648 total)
2. Re-tags existing questions against tasks via Claude-assisted classifier + spot-check
3. Re-evaluates coverage per task
4. Re-levels the ~2,500 L1 questions (rewrite stems OR delete and regenerate)
5. Re-generates gaps only
6. Folds existing topic-specs into task-specs as ancestors

**Key decision:** not a fork or rebuild from scratch. The ~6,000 non-L1 questions are almost certainly salvageable — they're well-formed, cited, verified, and only need task attribution. The ~2,500 L1 questions need re-leveling but most can be rewritten without regeneration. The tooling transplants with parameter changes (topic → task). The topic-specs become inputs to the task-specs.

**Decision not yet made:**
- Whether to start on a feature branch (probably yes) or commit directly on master
- Who is in scope for which phases (all Claude vs James spot-checks per N tasks)
- Shippable intermediate state: does master stay shippable during rearchitecture?

**Next action:** James to confirm rearchitecture path before any work begins. The audit is complete; the decision is James's to make.

---

## 5. Verification log (what has been checked, when, against what bar)

| Date | What | Tool | Result |
|---|---|---|---|
| 2026-04-15 | Spec file → DB → blueprint referential integrity | `scripts/qa/audit-topic-specs-coupling.ts` | 43 specs, 0 orphans, 0 duplicates, 0 bad anchors, all topics in DB, 221/221 drift test |
| 2026-04-15 | Bank composite quality + pedagogy + difficulty + bloom's + citations + duplicates | `npm run qa -- --output=json` | 9.3/10 avg, 0 critical, 0 moderate, all pass |
| 2026-04-15 | Taxonomy coherence (orphans, empties, cross-section, duplicates, proliferations) | `scripts/qa/audit-taxonomy.ts` | 0 orphans, 0 empties, 0 cross-section, 1 proliferation family (REG Individual Taxation), 4 slash-named topics |
| 2026-04-15 | Representative-task coverage per section and per group | `scripts/qa/audit-task-coverage.ts` | Bloom's misalignment: ~2,500 L1 questions for 0 L1 tasks. ISC routing gap: 791 questions unrouted to AICPA groups. Distribution spread: 3-93 q/task |
| 2026-04-15 | Drift census v4 against 43 specs' universal ban set | `scripts/qa/drift-census.ts` | 672 flagged in 52 unspecced topics. Biggest cluster: ISC IT-governance (~400 flags in 8 topics) |
| 2026-04-15 | Migration ledger sync | `npm run migrate:status` | 1,049 applied / 1,044 on disk (delta to investigate) |
| 2026-04-19 | AUD iter-4 routing lift (selective reclassification of 130 questions in 2 re-anchored topics) | `scripts/qa/classify-section.ts --section=aud --ids=<130>` + merge | 88 matched / 42 homeless on subset; full-bank 75.0% → 79.1% (+59 matches, 0 regressions) |
| 2026-04-19 | ISC iter-1 routing lift (3 re-anchors: II/B→II/D, II/A→I/A×2) | selective reclassify 271 qs + merge | 190 matched / 81 homeless on subset; full-bank 43.3% → 56.1% (+187 matches, 3 regressions) |
| 2026-04-19 | ISC iter-2 routing lift (Data Protection Technologies II/B → II/C) | selective reclassify 97 qs + merge | 94 matched / 3 homeless on subset; full-bank 56.1% → 60.7% (+66 matches, 0 regressions) |
| 2026-04-19 | REG iter-1 routing (Credits/AMT IV/D+IV/E → IV/F) | selective reclassify 185 qs + merge | 17 matched / 168 homeless; full-bank 41.2% → 42.4% (+17 matches, 0 regressions). Revealed AICPA-2026-narrower-than-bank pattern. |
| 2026-04-19 | BAR iter-1 proof (Interfund Transactions III/C → III/B) | selective reclassify 67 qs + merge | 19 matched / 48 homeless; full-bank 58.8% → 59.8% (+16 matches, 3 regressions). Confirmed REG-style ceiling. |
| 2026-04-19 | TCP iter-1 (Related Party IV/B → IV/C + Owner-Entity IV/C → II/A) | selective reclassify 140 qs + merge | 45 matched / 95 homeless; full-bank 52.9% → 55.0% (+28 net, 14 regressions). Mixed pattern. |
| 2026-04-20 | FAR classifier coverage gap + completion | `scripts/qa/check-classifier-coverage.ts --section=far` → classify 539 missing IDs → merge | Found 539/1539 unclassified. Fresh run: 509 matched / 30 homeless. Merged total 1414/1539 = 91.9% (prior "97.3%" memory was wrong). |
| 2026-04-20 | FAR pin migration applied | migration 01066 via `npm run migrate` + `scripts/qa/verify-pins.ts --section=far` | 1414 rows updated across 106 pin_refs; DB state matches classify-far.json exactly (1414 pinned, 125 null). |

**Recently verified and trusted:**
- Correctness of 8,469 questions via `verify-correctness.ts` (iterative verification campaign documented in `docs/verification-progress.md`)
- All 43 topic specs via `npm test -- topic-specs` (221 assertions, all pass)

**Not yet verified:**
- 143 recent questions (30 REG + 15 BAR + 98 TCP) have not been through `verify-correctness.ts`. These are the questions added in the Stage 3 #18-26 wave plus a few earlier.
- The verifier itself — whether it's rigorous enough to trust. No meta-review has been performed.

---

## 6. Discrepancy retirement queue

This is a living inventory of known discrepancies between artifacts, known tech debt, and known cleanup work. It exists to make the "we keep finding issues we already knew" pattern impossible — every known issue is on this list with a documented retirement plan. Rows are **closed** (not deleted) when resolved, with a pointer to the commit or session log where they were addressed.

**Rule:** when a session finds a new discrepancy, it is added to this queue IMMEDIATELY, before any other work. When a session retires one, it is marked closed IMMEDIATELY, before session wrap. This queue is the accountability record.

### Open

| # | Discrepancy | Blocks | Resolution plan | Status |
|---|---|---|---|---|
| ~~1~~ | ~~blueprint.ts ↔ AICPA JSON group-letter divergence~~ | ~~Task-spec anchoring~~ | ~~See resolution~~ | **CLOSED 2026-04-15** — `docs/blueprint-coordinate-systems.md` declares AICPA JSON authoritative for task-spec refs, blueprint.ts is Slayer-lesson view, no letter cross-matching permitted. Task-spec validator will enforce in Phase 1. `audit-task-coverage.ts` latent bug on per-group numbers is documented; section-level numbers remain valid. |
| ~~2~~ | ~~87 scaffolder stub files in `src/lib/topic-specs/`~~ | ~~Clean-end-state rule~~ | ~~See resolution~~ | **CLOSED 2026-04-15** — 86 stub files deleted (one count-off between extract and delete scripts is immaterial). Metadata extracted to `docs/topic-specs-backlog.md` with explicit warning that the scaffolder's blueprintRef guesses are untrustworthy and that these refs use blueprint.ts coordinates (not AICPA JSON). `src/lib/topic-specs/` now contains 43 authored specs + 4 utility files (index.ts, types.ts, blueprint-task-resolver.ts, _isc-soc-base.ts). Drift test still 221/221. |
| ~~3~~ | ~~791 ISC questions... not routed to any AICPA group~~ | ~~Phase 3 re-tagging~~ | ~~Investigate blueprint.ts ISC area/group structure~~ | **CLOSED 2026-04-19** — Mis-diagnosed. All 1,457 ISC questions DO route to AICPA groups via lesson-spec topic→group mapping. The 826 "homeless" at baseline were classifier-rejected, not structurally unmapped. Four of those routings were wrong (II/B Security routed incident response questions, II/A Frameworks routed availability/change management questions, II/B Security routed data-protection-technology questions). Fixed via iter-1 commit `9421a17` and iter-2 commit `a7a0227` — +253 matches. Remaining 570 homeless at ISC are bank-content-overshoots-AICPA-scope, not routing issues. |
| 4 | REG Individual Taxation proliferation — 5 topic strings (`Credits`, `Credits/AMT`, `Deductions`, `Filing/Credits`, `Income`) covering 319 questions, two of them sharing the same blueprint anchor REG/IV/C | Phase 3 re-tagging for REG individual content | Decide: merge variants via data migration, OR split with canonical strings. Likely decided via Phase 3 findings. | open |
| 5 | 4 slash-named mixed-content topics: `Individual Taxation: Credits/AMT` (66 qs), `Individual Taxation: Filing/Credits` (68 qs), `Property Transactions: Gains/Losses` (43 qs), `Review/Compilation Engagements` (31 qs) | Phase 3 re-tagging | Three are probably benign AICPA standard naming (Gains/Losses, Review/Compilation). Credits/AMT and Filing/Credits are genuine mixed-content artifacts. Resolve alongside #4. | open |
| 6 | ~2,500 questions at Bloom's L1 while AICPA representative tasks have zero L1 content | AICPA-aligned Bloom's distribution end state | Phase 4: re-level by rewriting stems to demand application, OR delete and regenerate from task-spec | open |
| ~~7~~ | ~~2 lint errors + 6 warnings in scripts/qa/~~ | ~~Clean-end-state rule~~ | ~~See resolution~~ | **CLOSED 2026-04-15** — all 8 resolved: `_audit-frameworks.ts` const fix, `audit-topic-content.ts` while-assign refactor, `fetch-flagged.ts` removed `any` + unused `idToCode`, `compare-scans-vs-verdicts.ts` removed unused `iResult`, `drift-census.ts` removed unused `BannedTerm` import, `phase3-verify.ts` removed unused `writeFileSync`, `scan-content-misplacement.ts` removed unused `DbQuestion`. `npm run lint` runs clean. |
| ~~8~~ | ~~7 untracked files in working tree~~ | ~~Clean-end-state rule "zero untracked files"~~ | ~~See resolution~~ | **CLOSED 2026-04-15** — `.bak` files deleted; `market-research/`, `docs/cpa-codebase-guide.*`, and `docs/verified-ids.json.pre-*.bak` added to `.gitignore`; `alignment/csv/far-framework-traceability-final.xlsx` committed. `git status` now clean. |
| 9 | Migration ledger delta: 1,049 applied in DB / 1,044 on disk = 5 unexplained applied migrations | Clean-end-state rule "ledger in sync" | Investigate the 5 applied-but-missing migrations; either recover files from git history or record as historical ghosts in a note | open |
| 10 | 43 existing topic-specs running in parallel with new task-specs during Phases 1-5 | End-state rule "one architecture" | Phase 6: fold topic-spec scope/bans into task-specs as ancestor data (`inheritedFromTopicSpec` field), then delete topic-specs | open |
| 11 | Known-incomplete verification: 143 recent questions (30 REG + 15 BAR + 98 TCP) have not been through `verify-correctness.ts` | Clean-end-state rule "every question verified against current standards" | Run catch-up verification against these IDs in a dedicated pass; may be absorbed into Phase 3 re-tagging | open |
| 12 | `audit-task-coverage.ts` `SKILL_TO_BLOOM` bug — maps `"Remembering"` and `"Understanding"` as separate keys, but AICPA JSON uses the combined label `"Remembering and Understanding"`. Lookup returns undefined, defaults to L2, so every L1 AICPA task was silently counted as L2. The Wave B audit's "AICPA has zero L1 content" claim is therefore WRONG; the real AICPA L1 task count is some meaningful fraction (example: REG/V/C topic 1 has 3 L1 tasks for S-corp eligibility recall). The Bank-has-2,500-L1-overshoot finding's *direction* is likely correct but its *magnitude* is inflated. | Wave B findings citation / future audit reruns | Fix `SKILL_TO_BLOOM` to map `"Remembering and Understanding"` → 1. Re-run `audit-task-coverage.ts`. Publish corrected Bloom's alignment numbers. Update PROJECT_STATE.md Wave B summary. | open — found 2026-04-15 during Phase 1 pilot prep |

### Closed

*(Rows move here when retired. Each closed row records the session and commit that retired it.)*

---

## How to use this file

**At session start:** read sections 1, 4, and 5. If your session's topic is mentioned in section 2, read that row. If mentioned in section 3, DO NOT re-propose unless you have new information.

**Before proposing work:** verify section 3 does not already contain the work as "tried and discarded." Verify section 5 does not already show the check as recently passed.

**At session wrap:** update section 1 with any verified state changes, section 2 with any new to-do items or completed ones, section 3 with anything new that was considered and rejected, section 4 if the plan changed, section 5 with any new verification runs and their results.

**When this file and memory or CLAUDE.md disagree:** this file wins. Update the others to match.

**If you cannot find your topic in this file:** say so explicitly before acting, and add a row to the appropriate section when you do the work.
