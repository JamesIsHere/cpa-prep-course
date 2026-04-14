# Topic specs — session handoff (2026-04-14, end of rollout wave)

**Status:** 17 specs live. 8 cleanups complete at 0 drift. 2 backlog topics with frozen audit lists ready for triage. The full-bank review strategy is laid out but not started. Read this first if you're picking up the work in a fresh Claude Code session.

## State of the world

**Bank state:** 8,786 questions. Drift test 91/91 passing. 17 topic specs registered in `src/lib/topic-specs/index.ts` covering ~14% of the bank.

**Authored specs (17):**

| # | Topic | Section | Anchor | Clean? |
|---|---|---|---|---|
| 1 | Prospective Analysis and Forecasting | BAR | BAR/I/B/1 | ✓ |
| 2 | Financial Valuation Methods | BAR | BAR/I/B/3 | ✓ |
| 3 | Derivatives and Hedging | BAR | BAR/II/H/0 | ✓ |
| 4 | International Tax | TCP | TCP/II/A/4 | ✓ |
| 5 | S Corporations | REG | REG/V/C | ✓ |
| 6 | Capital Structure and Valuation | BAR | BAR/I/B/2 | ✓ |
| 7 | Risk Management and Economics | BAR | BAR/I/B/4 | ✓ |
| 8 | Fair Value | FAR | FAR/III/E/0 | ✓ |
| 9 | C Corporations | REG | REG/V/B | ✓ |
| 10 | Owner-Entity Transactions | TCP | TCP/IV/C | **backlog** |
| 11 | Financial Statement Analysis | BAR | BAR/I/A/1 | ✓ |
| 12 | Partnerships | REG | REG/V/D | **backlog** |
| 13 | Passive Activity and At-Risk Rules | TCP | TCP/I/B/0 | ✓ |
| 14 | Leases | FAR | FAR/III/F/0 | ✓ |
| 15 | Business Combinations | BAR | BAR/II/F/0 | ✓ |
| 16 | Audit Evidence | AUD | AUD/III/B | ✓ |
| 17 | Risk Assessment | AUD | AUD/II/E/0 | ✓ |

**Authoritative session-wrap doc (read this next):** `docs/session-log-2026-04-14-specs-rollout.md` — drift rates per topic, cleanup dispositions, migration filenames, the strategic question about full-bank review, the 5-stage recommendation.

## Immediate next task — Stage 1 of the full-bank plan

**Close the 2 backlog topics.** Both have frozen audit lists captured in backlog docs at the time of the first audit. The work is triage (KEEP / REWRITE / DELETE) plus writing a single cleanup migration per topic.

```bash
# For each backlog topic: re-run the audit, fetch the full question bodies,
# triage, and write a cleanup migration.
npx tsx scripts/qa/audit-topic-content.ts --topic="Owner-Entity Transactions" --section=tcp
npx tsx scripts/qa/audit-topic-content.ts --topic="Partnerships" --section=reg
```

**Backlog docs:**
- `docs/owner-entity-cleanup-backlog.md` — 38 flagged questions (expected ~10-15 deletes, ~5 rewrites after triage)
- `docs/partnerships-cleanup-backlog.md` — 43 flagged questions (expected ~15-25 deletes given drift density)

**Important:** both topics use group-level `blueprintRef` because they are hybrids that span REG foundational and TCP advanced material. The specs' inScope lists are intentionally permissive — during triage, KEEP questions that test in-scope concepts even if they trip a section-citation ban (e.g., a question about naming Sec 302 safe harbor categories is in-scope for Owner-Entity). DELETE only when the question's substantive teaching is out of scope.

**Expected outcome:** after Stage 1, all 17 authored specs have 0 drift. Topic counts drop further: Owner-Entity ~85-90, Partnerships ~45-55. Both topics will need spec-constrained regeneration in a later stage.

## After Stage 1 — the staged full-bank review

The 17 specs cover the highest-risk topics from the original rollout handoff, but ~103 topics across 6 sections remain unspecced (~86% of the bank). Drift rates observed in the 17 topics (5%-54%, averaging ~20%) suggest 1,000-1,500 drifted questions likely exist in the unspecced topics.

The recommended path (detail in the session wrap doc):

**Stage 2 — Drift census (1 session, cheap).** Run a cross-cutting sniff test across all unspecced topics using the banned-term patterns from the existing 17 specs as a universal filter. Many drift markers are universal (graduate M&A sections, case-law names, sampling theory terms). Output: a ranked list of unspecced topics by apparent drift density.

**Stage 3 — Next wave of specs (5-8 sessions).** Let Stage 2 drive priorities. Continue the author → audit → clean cycle from this session.

**Stage 4 — Regen cleaned topics to target (background orchestrator).** Several cleaned topics dropped below their generation targets (Passive Activity 128→93, C Corps 81→71, after Stage 1 also Owner-Entity and Partnerships). Use the proven spec-constrained orchestrator to regen.

**Stage 5 — Optional null-spec.** A bank-wide universal-bans filter for topics that stay unspecced. Crude but high-ROI.

Budget: ~10-15 sessions total to reach full spec coverage and a regenerated bank.

## Tooling state (don't forget)

- **`scripts/orchestrate.ps1`** — ClaudeTimeoutMin bumped from 15 to 25 at line 1120 this session. Load-bearing for spec-constrained fills.
- **Orchestrator commit bug** — the session's first regen run (TCP batches 35-38 + REG batches 61-62) silently failed to create git commits even though migrations applied to the DB. Recovered manually in commit `34e9db8`. Root cause is in the git commit step of `scripts/orchestrate.ps1` — **tracked but not fixed**. If you run the orchestrator and see "Commit <hash>" lines that all show the same hash, check `git status` — the commits may not have landed.
- **Validator works correctly** — `scripts/qa/validate-migration.ts` auto-strips deleted IDs from `verified-ids.json` and blocks banned-term violations. Trustworthy.
- **Audit tool works correctly** — `scripts/qa/audit-topic-content.ts` reads the spec's bannedTerms inline. Accurate.

## Known architectural facts

- **`blueprint.ts` and `alignment/aicpa-blueprint-tasks.json` structurally diverge at the group level.** Slayer sometimes reorganizes AICPA groups. Specs anchor `topic` to Slayer's tagging vocabulary and `blueprintRef` to AICPA's path.
- **Resolver supports 3-part group-level refs** (e.g., `REG/V/D`) and 4-part topic-level refs (e.g., `BAR/I/A/1`). Drift test enforces both.
- **Group-level refs are CORRECT** for hybrid topics that span AICPA groups — see C Corporations (`REG/V/B`), S Corporations (`REG/V/C`), Partnerships (`REG/V/D`), Owner-Entity Transactions (`TCP/IV/C`).
- **The scaffolder sometimes misfires on group letter assignment.** C Corporations stub was `REG/V/A` but correct is `REG/V/B`. Partnerships stub was `REG/V/C` but correct is `REG/V/D`. Owner-Entity stub was `TCP/II/C` but that's Partnerships in AICPA — correct is `TCP/IV/C`. Always verify against the JSON.

## Commit log for the 2026-04-14 rollout wave

```
a160876 Session wrap: topic-specs rollout wave (2026-04-14 evening)
41e0ffb Spec #17: aud-risk-assessment — final spec of the rollout wave, 0 drift
6144952 Spec #16: aud-audit-evidence — cleanest drift yet (3.1%), 2 rewrites, 0 deletes
65f244d Spec #15: bar-business-combinations — tight scope, small clean cleanup
0bb3d38 Spec #14: far-leases — lessee-only scope, lessor drift cleaned out
054d3c6 Spec #13: tcp-passive-activity-and-at-risk-rules — clean cleanup, 35 bulk deletes
9ce2b25 Spec #12: reg-partnerships — spec committed, cleanup deferred
7593c8b Sync counts after C Corporations spec cleanup
832a953 Spec #9: reg-c-corporations — second spec of the rollout wave, first hybrid REG/TCP anchor
dac579e Spec #10: tcp-owner-entity-transactions — spec committed, cleanup deferred
6cf4752 Spec #11: bar-financial-statement-analysis — tight, narrow drift, clean cleanup
1cf2b22 Spec #8: far-fair-value — first FAR spec, starts the next rollout wave
34e9db8 Spec-constrained regen: International Tax + S Corporations + orchestrator timeout bump
```

Read any of these commit messages for the "why" behind the current state — they are written long-form for exactly this kind of cold pickup.

## When in doubt

- Ask James one item at a time.
- Show the actual numbers, not assertions.
- The Stage 1 work (backlog cleanup) is scoped and mechanical — don't over-engineer it.
- The Stage 2 census is a strategy decision — don't launch Stage 2 without James's explicit approval.
- The drift test is cheap: run it after any change to `src/lib/topic-specs/`.

---

> *"Scope is a line you hold, not a checklist you complete."*
