# Session log — 2026-04-14 — Topic-specs pilot rollout

**Duration:** Single-session rollout arc from pilot completion through proven production use.
**Commits:** 15 (`316e2f3` → `d73ede3`).
**Net bank change:** 8,832 → 8,729 (−103 net: −129 off-blueprint removed, +26 new spec-constrained generation).
**Drift test:** 31 → 41 passing (5 existing + 2 new specs × 5 assertions each).

## Narrative

Started the session continuing work from the previous night's pilot scaffold (commits `0353874` and `d1e8ad9`). The pilot had one spec written (`bar-prospective-analysis-and-forecasting`) and a handoff doc listing five more to author. The goal was to finish the pilot, then roll out the pattern across the bank.

The session went deeper than planned because the work surfaced multiple layers of structural issues:

1. **Pilot completion** revealed JSON extraction bugs in `alignment/aicpa-blueprint-tasks.json`. TCP/II/A and II/B were missing entirely (caught while writing the International Tax spec). REG/V/B and V/C were mis-merged and partially dropped (caught while writing the S Corporations spec). Both fixed by reading the AICPA PDF directly and hand-patching the JSON.

2. **Reconciliation script** built to diff JSON against PDF systematically. Found a third category of corruption: REG Area III was completely destroyed (task text mashed into the area name) and Area IV was duplicated. Plus 3 AUD topics had task text merged into topic names with empty task arrays. All Tier 1 corruptions fixed in a single cleanup pass.

3. **Generator wiring (Step 4 of pilot handoff)** completed. `select-generation-batch.ts` now emits `topicSpec` in the batch JSON, and `scripts/orchestrate.ps1` injects the inScope/outOfScope/misconceptions lists into the generator prompt. Verified end-to-end in a PowerShell test harness before a real batch ran.

4. **First audit pass (International Tax)** returned 87% drift — dramatically higher than anticipated. 86 questions deleted, 2 rewritten to strip FTC-limitation framing, 15 kept. The pilot's structural value was proven: 83% of the topic's questions were off-blueprint content that had been "verified correct" under the old regime because correctness was measured against the questions themselves, not against what the AICPA Blueprint actually tests.

5. **Second audit pass (S Corporations)** returned 37% drift — lower than International Tax but still meaningful. 29 deleted, 53 kept. The cleanup surfaced a second failure mode: 5 borderline questions that were in-scope for their content but actually belonged to *other* topics (reasonable compensation to TCP, at-risk limitation to REG individual, NIIT to REG individual). Topic specs don't directly prevent this tagging failure — flagged for future cross-topic audit tooling.

6. **Three rollout gaps** identified before full scaling:
   - Gap 1 — Orchestrator prompt injection had never been run on a real generation batch
   - Gap 2 — `validate-migration` had no spec-aware check at write time
   - Gap 3 — Spec authoring was still a 30-min-per-topic job

7. **Gap 2 and Gap 3 closed in-session.** Added `bannedTerms: BannedTerm[]` as an optional field on `TopicSpec`, migrated the two JSON term files inline into their respective spec files, wired `validate-migration` to scan new questions against the compiled banned-terms patterns. Built `scripts/qa/scaffold-topic-spec.ts` to bulk-generate stub files for all 125 unspecced topics.

8. **Gap 1 closed by James** — ran the orchestrator in a standalone PowerShell terminal on BAR and it picked Prospective Analysis and Forecasting (a specced topic), generated 26 questions under spec constraints, passed `validate-migration`, and committed `01030_generate_bar_batch32.sql`. Post-batch audit against the new banned-terms found only 1 real drift question (Q14788, autocorrelation in a distractor) — **96% clean generation on first production run.**

9. **Rollout begun.** Authored two more specs from the stubs to close out Slayer's `bar.1.B` teaching group (Capital Structure and Valuation, Risk Management and Economics). Each followed the now-standardized pattern: scaffold → author (~15 min) → register → drift test → audit → cleanup. Drift rates dropping as we move beyond the early-drift topics: Capital Structure 5.7%, Risk Management 3.8%.

10. **Ended the session** at 15 commits, with the pipeline proven and reproducible. `bar.1.B` is the first fully-specced teaching group in the bank.

## Key numbers

| Metric | Session start | Session end |
|---|---:|---:|
| Total questions | 8,832 | 8,729 |
| Specs authored | 1 | 7 |
| Stubs generated | 0 | 125 (123 remaining) |
| Off-blueprint removed | 0 | 129 |
| Drift tests | 10 | 41 |
| Orchestrator proven in production | no | yes (96% clean) |

## What worked

- **Test-first pattern for each fix.** Reconciliation script → run → patch → re-run → clean. Each Tier 1 fix was verified before moving on.
- **Bundling specs with their audits.** Author spec → audit against it → cleanup migration → commit all three. Single reviewable arc per topic.
- **Scaffolder dramatically accelerated spec #6.** The bar-capital-structure stub took ~15 min to author vs ~40 min for the from-scratch spec #1. The infrastructure investment pays back immediately.
- **Spec-aware validator caught the synthetic GILTI test.** Before committing the validator change, verified it actually blocked drift by writing a fake migration with GILTI content in the stem and watching 4 banned-term ERRORs fire.
- **Pausing to confirm direction before each large move.** The 86-delete International Tax cleanup and the 29-delete S Corps cleanup both paused for sign-off before executing. User said yes to both, but the pause discipline is what made the large deletes safe.

## What surprised me

- **International Tax drift was much higher than predicted.** The pilot handoff doc named it as "highest drift risk" but 87% was still a gut punch. It means the prior "verified 100%" state was measuring the wrong thing.
- **The JSON extraction script had more bugs than one.** Started by finding TCP/II gaps while writing the International Tax spec; ended up finding REG/V, REG/III, REG/IV, AUD III/D, AUD IV/C, AUD IV/E all had different failure modes. Wrote the reconciliation script because individual debugging wouldn't scale.
- **S Corporations drift was cross-topic, not within-topic.** 5 of 6 borderline hits were questions tagged to S Corps but testing content that belonged elsewhere (TCP, individual taxation). This is a failure mode topic specs don't directly prevent — flagged as future work.
- **The scaffolder found 10 blueprintRef orphans.** Slayer's blueprint.ts uses some group letters that don't exist in the AICPA JSON at their area. Mostly ISC SOC topics. These need manual resolution before the stubs can have valid refs.
- **First production batch was 96% clean.** Expected 70–85% based on the audit patterns. Claude respected the injected spec constraints more reliably than I expected.

## Deferred / future work

- **Orchestrator regeneration** of International Tax (17 → ~103) and S Corps (53 → ~100) under spec constraints. Runs in standalone PowerShell next session. First task of the next pickup.
- **Next 10 high-priority specs** from the 123 stubs. Priority list in `docs/topic-specs-pilot-handoff.md`.
- **Cross-topic tagging audit tool** to catch the S Corps-style misplacements.
- **10 blueprintRef TODO stubs** need manual resolution against the AICPA PDF.
- **Resolver enhancement** to support `blueprintRefs: string[]` for Slayer topics that span multiple AICPA topics. Workaround currently: anchor to one and document the span in notes (see `bar-risk-management-and-economics.ts`).

## Commit index

| # | Hash | Summary |
|---|---|---|
| 1 | `316e2f3` | Topic-specs pilot complete: 4 new specs + JSON repairs + group-level refs |
| 2 | `d4368e0` | Blueprint JSON reconciliation + Tier 1 cleanup |
| 3 | `301dabe` | Wire topic specs into the question generator (Step 4 of pilot handoff) |
| 4 | `5775510` | International Tax content audit: 86 delete + 2 rewrite candidates |
| 5 | `0ffd366` | 01028 — Delete 86 off-blueprint International Tax questions + rewrite 2 |
| 6 | `7957b83` | 01029 — S Corporations audit + delete 29 off-blueprint questions |
| 7 | `b691d8c` | blueprint.ts: rename off-blueprint sub-topics for TCP/INT and REG/S Corps |
| 8 | `8963d92` | Spec-aware validation at write time + inline bannedTerms on topic specs |
| 9 | `80f1183` | Bulk scaffold 125 topic-spec stubs (Gap 3 of rollout plan) |
| 10 | `79b78d0` | Gap 1 closed: first spec-constrained generation batch (01030) + BAR bannedTerms |
| 11 | `6714035` | 01031 — BAR Prospective residual cleanup: 2 deletes + 2 rewrites |
| 12 | `d762505` | Spec #6: bar-capital-structure-and-valuation — first stub-to-authored pass |
| 13 | `dd7bc2c` | 01032 — Delete 7 off-blueprint BAR Capital Structure questions |
| 14 | `0393889` | Spec #7: bar-risk-management-and-economics — closes out bar.1.B group |
| 15 | `d73ede3` | 01033 — Delete 5 off-blueprint BAR Risk Management questions |

Each commit message is written long-form. Read them directly for the "why" behind any specific decision.
