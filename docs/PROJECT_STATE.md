# Slayer CPA — Project State

> **This document is the canonical "where are we right now" record.** Read it first at the start of every session. Update it at the end of every session. If you are about to propose non-trivial work, check whether this document already treats it as done, tried, or planned. If it doesn't speak to your question, say so explicitly before acting.
>
> **Why this file exists:** Project state was distributed across CLAUDE.md (user-facing docs), memory files (session snapshots), trackers (single-axis), session logs (historical), and git log (archaeology). No single artifact answered "where are we right now." That gap caused repeated "wait, we already knew that" moments where action preceded verification. This file closes the gap. See `memory/feedback_verification_discipline.md` for the full pattern.
>
> **Owner:** maintained by Claude, validated by James at session wrap. Not a replacement for CLAUDE.md, memory, trackers, or session logs — it is a short, living summary that points at them.
>
> **Freshness rule:** every claim in this file is either (a) a verifiable fact backed by a command or file, or (b) an opinion tagged with a date and the session that wrote it. No stale aspirations.

Last updated: 2026-04-15 (session that uncovered the Wave B Bloom's alignment finding)

---

## 1. Current state (facts, verifiable)

**The bank:**
- **8,612 questions** live in DB. Verified via `npm run migrate:status`.
- **Per-section counts:** AUD 1424 / FAR 1539 / REG 1397 / BAR 1509 / ISC 1452 / TCP 1291.
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
- **Known taxonomy issue:** ISC has 791 questions in DB topic strings that are declared in `blueprint.ts` but not routed to any AICPA group via the group → `questionTopics` traversal path. Source of the issue is unknown as of this writing — the topics are in blueprint.ts somewhere but not linked from an AICPA group node. Needs investigation.
- Verified via `scripts/qa/audit-taxonomy.ts` and `scripts/qa/audit-task-coverage.ts` on 2026-04-15.

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

5. **REG Individual Taxation proliferation fix** — decide between merging 5 variants via data migration, or embracing them with overlapping specs.
6. **ISC orphan topic investigation** — figure out why 791 ISC questions aren't routed through blueprint.ts to an AICPA group.

**Hygiene (low priority):**

7. **63 citation gaps** in BAR (28), TCP (32), REG (3).
8. **2 pre-existing lint errors** in `scripts/qa/fetch-flagged.ts` (1 `any`) and unused-var warnings.
9. **7 untracked files** sitting in the working tree (backups, market research, codebase guide drafts) — decide to gitignore, delete, or commit.

---

## 3. Tried and discarded / explicitly not-doing

- **"Finish 87 more topic specs and call the bank done"** — considered, rejected 2026-04-15. Wave B data forced the rejection. Even complete topic coverage does not fix Bloom's misalignment, the distribution imbalance, or the ISC orphan topics.
- **"Random 300-question correctness sample in Wave C"** — proposed, replaced 2026-04-15 when discovered that 98.3% of bank was already verified. Correctness axis is not the bottleneck.
- **"Pure-AI generate-and-verify loop"** — implicit thesis at project start; reshaped 2026-04-15 to "AI as expert leverage" after the Wave B findings showed closed-loop AI review has systematic blind spots (the 2,500 L1 questions were generated AND verified by AI without either step catching the wrong Bloom's level).
- **"Shared-base pattern for AUD process cluster"** — considered during Stage 3 #18-26, rejected because each AUD topic needed idiosyncratic ban loosening. Kept as 5 independent specs. See `supabase/migrations/01061_aud_cluster_spec_cleanup.sql` header for rationale.
- **"Session logs always"** — feedback rule in memory. Adhered to: every substantive session gets a session log in `docs/` before wrap.
- **"Single pipeline loop, enforce quality at generation"** — feedback rule in memory. Topic specs are the first step toward this; task-specs are the intended completion.

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
| 2 | 87 scaffolder stub files in `src/lib/topic-specs/` — unauthored, empty arrays, STUB banner | Clean-end-state rule "zero scaffolder stubs in source" | Extract pre-computed metadata to `docs/topic-specs-backlog.md`, delete all 87 `.ts` files, rely on scaffolder to regenerate on demand | **in progress (session 2026-04-15 sweep)** |
| 3 | 791 ISC questions in DB topic strings that blueprint.ts declares but doesn't route through any AICPA group via `questionTopics` traversal | Phase 3 re-tagging for ISC content | Investigate blueprint.ts ISC area/group structure; either fix routing or re-anchor ISC topic strings to AICPA JSON directly via task-specs | open |
| 4 | REG Individual Taxation proliferation — 5 topic strings (`Credits`, `Credits/AMT`, `Deductions`, `Filing/Credits`, `Income`) covering 319 questions, two of them sharing the same blueprint anchor REG/IV/C | Phase 3 re-tagging for REG individual content | Decide: merge variants via data migration, OR split with canonical strings. Likely decided via Phase 3 findings. | open |
| 5 | 4 slash-named mixed-content topics: `Individual Taxation: Credits/AMT` (66 qs), `Individual Taxation: Filing/Credits` (68 qs), `Property Transactions: Gains/Losses` (43 qs), `Review/Compilation Engagements` (31 qs) | Phase 3 re-tagging | Three are probably benign AICPA standard naming (Gains/Losses, Review/Compilation). Credits/AMT and Filing/Credits are genuine mixed-content artifacts. Resolve alongside #4. | open |
| 6 | ~2,500 questions at Bloom's L1 while AICPA representative tasks have zero L1 content | AICPA-aligned Bloom's distribution end state | Phase 4: re-level by rewriting stems to demand application, OR delete and regenerate from task-spec | open |
| 7 | 2 pre-existing lint errors + 6 warnings in `scripts/qa/` | Clean-end-state rule "zero lint errors" | Fix `any` in `fetch-flagged.ts:47`, remove unused vars in `phase3-verify.ts`, `scan-content-misplacement.ts`, and others, run `npm run lint` clean | **in progress (session 2026-04-15 sweep)** |
| 8 | 7 untracked files in working tree: `.bak` files, `cpa-codebase-guide.md/pdf`, `market-research/`, `alignment/csv/far-framework-traceability-final.xlsx` | Clean-end-state rule "zero untracked files" | Decide each: gitignore, delete, or commit. `.bak` files → delete. Market research → gitignore or move out. | **in progress (session 2026-04-15 sweep)** |
| 9 | Migration ledger delta: 1,049 applied in DB / 1,044 on disk = 5 unexplained applied migrations | Clean-end-state rule "ledger in sync" | Investigate the 5 applied-but-missing migrations; either recover files from git history or record as historical ghosts in a note | open |
| 10 | 43 existing topic-specs running in parallel with new task-specs during Phases 1-5 | End-state rule "one architecture" | Phase 6: fold topic-spec scope/bans into task-specs as ancestor data (`inheritedFromTopicSpec` field), then delete topic-specs | open |
| 11 | Known-incomplete verification: 143 recent questions (30 REG + 15 BAR + 98 TCP) have not been through `verify-correctness.ts` | Clean-end-state rule "every question verified against current standards" | Run catch-up verification against these IDs in a dedicated pass; may be absorbed into Phase 3 re-tagging | open |

### Closed

*(Rows move here when retired. Each closed row records the session and commit that retired it.)*

---

## How to use this file

**At session start:** read sections 1, 4, and 5. If your session's topic is mentioned in section 2, read that row. If mentioned in section 3, DO NOT re-propose unless you have new information.

**Before proposing work:** verify section 3 does not already contain the work as "tried and discarded." Verify section 5 does not already show the check as recently passed.

**At session wrap:** update section 1 with any verified state changes, section 2 with any new to-do items or completed ones, section 3 with anything new that was considered and rejected, section 4 if the plan changed, section 5 with any new verification runs and their results.

**When this file and memory or CLAUDE.md disagree:** this file wins. Update the others to match.

**If you cannot find your topic in this file:** say so explicitly before acting, and add a row to the appropriate section when you do the work.
