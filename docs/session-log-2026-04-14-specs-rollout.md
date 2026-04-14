# Session wrap — Topic specs rollout wave (2026-04-14, evening)

## What happened

Authored 10 new topic specs (priority #1-10 from the rollout handoff), cleaned 8 of them end-to-end, and deferred 2 to backlog. The spec count in `src/lib/topic-specs/` went from 7 → **17**. Drift test went 41/41 → **91/91** (+50 assertions). Bank went 8,858 → **8,786** (−72 net from clean cleanups and +129 from a regen batch earlier in the session that also landed).

### Specs authored this wave

| # | Spec | First audit drift | Disposition |
|---|------|---:|---|
| 8 | FAR Fair Value | 4/57 (7%) | 4 rewrites |
| 9 | REG C Corporations | 13/81 (16%) | 3 rewrites + 10 deletes |
| 10 | TCP Owner-Entity Transactions | 38/102 (37%) | **backlog** |
| 11 | BAR Financial Statement Analysis | 10/187 (5%) | 3 rewrites + 7 deletes |
| 12 | REG Partnerships | 43/79 (54%) | **backlog** |
| 13 | TCP Passive Activity and At-Risk Rules | 35/128 (27%) | 35 deletes |
| 14 | FAR Leases | 19/52 (37%) | 4 rewrites + 15 deletes |
| 15 | BAR Business Combinations | 6/41 (15%) | 1 rewrite + 5 deletes |
| 16 | AUD Audit Evidence | 2/64 (3%) | 2 rewrites |
| 17 | AUD Risk Assessment | 0/64 (0%) | nothing to clean |

### Cleanup migrations committed

- `01040_fair_value_spec_cleanup.sql`
- `01041_c_corps_spec_cleanup.sql`
- `01042_financial_statement_analysis_spec_cleanup.sql`
- `01043_passive_activity_spec_cleanup.sql`
- `01044_leases_spec_cleanup.sql`
- `01045_business_combinations_spec_cleanup.sql`
- `01046_audit_evidence_spec_cleanup.sql`

Plus the earlier regen batch cleanup `34e9db8` (TCP International Tax + S Corporations + Entity Formation, 129 new questions via orchestrator).

### Backlog documented

- `docs/owner-entity-cleanup-backlog.md` — 38 flagged questions
- `docs/partnerships-cleanup-backlog.md` — 43 flagged questions

### Known-broken / follow-ups

- **Orchestrator commit bug:** the session's first regen run silently failed to `git commit` after applying migrations to the DB. All 6 migration files were staged (`A` state) but no commit was created; the log showed a stale HEAD hash. Recovered manually in `34e9db8`. Root cause is in `scripts/orchestrate.ps1` commit step — tracked but not fixed.
- **Orchestrator timeout:** bumped `$ClaudeTimeoutMin` 15 → 25 in `scripts/orchestrate.ps1:1120`. Load-bearing for spec-constrained fills (batch 37 came in at 15.8 minutes, would have timed out at the old ceiling).

## The strategic question (this is the important part)

**James raised this at the end of the session:** given that we have ~8,786 questions already in the bank, what does spec-constrained generation mean retroactively? Is the rollout so far a pilot, or is it a step toward a full-bank review?

### Where coverage stands now

- **17 specs** covering ~1,240 questions (≈14% of the bank)
- **~103 topics** across 6 sections with NO spec (≈7,500 questions, 86% of the bank)
- The 17 specs are the highest-drift-risk topics per the pilot handoff, so the fencing is not random — we covered the worst offenders first
- But the drift rates we observed (5-54%) suggest the rest of the bank almost certainly has similar patterns we haven't looked at

### The key asymmetry

The current pipeline defends **new generation** cleanly — the validator's banned-term check blocks drift at write time for any spec'd topic. But it does not retroactively clean drift in the existing bank for topics without specs. So there's a ceiling on bank quality determined by the coverage of specs, not by the strength of the pipeline.

**If drift rates in the unspecced ~7,500 questions follow the distribution we saw (the top-10 averaged ~20% after weighting), we may have 1,000-1,500 drifted questions hiding in topics we haven't looked at.** That's a meaningful quality gap.

### Recommendation: yes, run a full review — but staged

The spec-authoring pattern IS the right template for a full-bank review. But authoring specs one-by-one across 103 topics would take dozens of sessions and risks drift fatigue. Better to do it in stages:

**Stage 1 — Close the existing backlog (1 session).** Process the 2 deferred topics (Owner-Entity, Partnerships) to bring all authored specs to 0 drift. This is already-identified work; the specs exist and the flagged lists are frozen in the backlog docs. Expected: ~60-80 deletes total, possibly ~10-15 rewrites.

**Stage 2 — Drift census (1 session, very cheap).** Run a cross-cutting sniff test across all ~103 unspecced topics using the banned-term patterns from the 17 existing specs as a crude first-pass filter. Many drift markers (graduate M&A terms, niche code sections, case-law names, sampling theory language) are universal — a question citing "Section 704(b)" in a topic with no partnerships spec is probably still drift. Output: a ranked list of unspecced topics by apparent drift density. This tells us where to spend the next wave of spec authoring without committing to 103 specs upfront.

**Stage 3 — Author specs for the top drift-density topics (N sessions).** Use the Stage 2 census to pick the next 10-15 topics. Continue the author → audit → clean cycle established in this session. Budget: 10-20 minutes per spec from stub (already measured).

**Stage 4 — Regen the cleaned topics to target (orchestrator runs).** Several cleaned topics dropped below their 1,500-per-section generation targets (Passive Activity 128→93, C Corps 81→71, Partnerships 79 pending). Use the proven spec-constrained orchestrator to regen these back to target. This is the validation that the whole effort was worth it — the bank rebuilds at higher quality under spec constraints.

**Stage 5 — Optional: generalize.** If Stages 1-4 work, consider whether a "null spec" that just enforces a bank-wide set of universal bans (sampling theory terms, graduate tax sections, case-law names) could be applied to all unspecced topics. A crude version of this would catch the highest-signal drift without requiring a spec per topic.

### What NOT to do

Don't try to author all 103 remaining specs before doing anything else. The spec-authoring work showed that drift patterns are often concentrated in a few topics (e.g., Passive Activity's 35 deletes came from a few banned-term categories) — a census will identify which topics are actually dirty vs which are structurally clean (like Risk Assessment at 0/64). Spec authoring should be driven by observed drift, not by completeness goals.

### Estimated session budget for the full review

- Stage 1 (backlog cleanup): 1 session (~2 hours focused)
- Stage 2 (drift census): 1 session (~1 hour — it's mostly scripting)
- Stage 3 (10-15 new specs): 5-8 sessions at ~2 hours each
- Stage 4 (regen): background orchestrator, 3-5 sessions of monitoring
- **Total: ~10-15 sessions** to reach roughly-full spec coverage and a regenerated bank

That's a real commitment but it converts the pipeline from "fences new generation" to "fences new generation AND the existing bank has been vetted against the same standards." The result: spec-governed bank quality across all 6 sections at the AICPA 2026 level.

## Immediate next task (for next session)

Process the 2 backlog topics — Owner-Entity Transactions (38 flagged) and Partnerships (43 flagged). The audits are already captured in the backlog docs; the work is triage + migration. Completing both restores the invariant that all authored specs have 0 drift, and it gives a clean baseline before starting Stage 2.

Then decide on Stage 2: run the drift census using the existing 17 specs' banned-term lists as a universal sniff-test across all unspecced topics, or pick up the rollout from priority #11+ using the same author-audit-clean cycle.

---

> *"Scope is a line you hold, not a checklist you complete."*
