# Topic-specs pilot — session handoff (2026-04-14, end-of-session)

**Status:** Pilot complete and proven end-to-end. All 3 rollout gaps closed. Orchestrator prompt injection validated in production. Read this first if you're picking up the work in a fresh Claude Code session.

## State of the world

**Bank state:** 8,729 questions (was 8,832 at session start). Net change: −103 (−129 off-blueprint removed, +26 new spec-constrained generation from batch 32). `verified-ids.json` in sync.

**Authored specs (7):** Five pilot specs plus two authored from scaffolder stubs during the rollout session:

| # | File | AICPA Ref | Authored |
|---|------|-----------|----------|
| 1 | `bar-prospective-analysis-and-forecasting.ts` | BAR/I/B/1 | Pilot |
| 2 | `bar-financial-valuation-methods.ts` | BAR/I/B/3 | Pilot |
| 3 | `bar-derivatives-and-hedging.ts` | BAR/II/H/0 | Pilot |
| 4 | `tcp-international-tax.ts` | TCP/II/A/4 | Pilot |
| 5 | `reg-s-corporations.ts` | REG/V/C | Pilot (group-level ref) |
| 6 | `bar-capital-structure-and-valuation.ts` | BAR/I/B/2 | Rollout (first stub→authored) |
| 7 | `bar-risk-management-and-economics.ts` | BAR/I/B/4 (+/B/5 in notes) | Rollout |

**Stubs remaining:** 123 in `src/lib/topic-specs/` (generated 2026-04-14 by `scripts/qa/scaffold-topic-spec.ts --all-unspecced`). 10 have `blueprintRef: "TODO"` needing manual resolution — mostly ISC SOC topics where Slayer's decomposition doesn't match the AICPA JSON. Find them with:

```bash
grep -l 'blueprintRef: "TODO"' src/lib/topic-specs/
```

**Drift test:** `npx vitest run tests/unit/topic-specs.test.ts` — 41/41 passing.

## The three rollout gaps (all closed)

### Gap 1 — Orchestrator injection proven in production ✓

First spec-constrained generation batch committed as `01030_generate_bar_batch32.sql` (26 questions, BAR Prospective Analysis and Forecasting). Post-batch audit showed **25 of 26 questions fully on-spec** (96% clean). The single drift question (Q14788, autocorrelation in a distractor) was cleaned up in `01031`. In-scope content saturation confirmed by term-scan: 45 "variance", 27 "Forecast", 15 "correlation", 10 "breakeven", 9 "high-low", 8 "CVP", etc. Zero hits on out-of-scope terms in the new stems.

**Implication:** the orchestrator prompt injection works. Future generation batches under spec constraints can be trusted at ~96% clean, with the spec-aware validator catching the residual at write time.

### Gap 2 — Spec-aware validator at write time ✓

`scripts/qa/validate-migration.ts` now runs a per-question scope check against `getTopicSpec(q.topic).bannedTerms`. Any INSERT/UPDATE whose stem, choices, or explanation matches a compiled banned-term pattern gets an ERROR and blocks the migration. End-to-end verified with a synthetic GILTI-testing migration that was blocked with 4 banned-term errors.

**Authoring convention:** each spec's `bannedTerms` is the machine-readable projection of its `outOfScope` list. Keep them in sync by editing both when adding an out-of-scope item. See any of the 7 authored specs for the shape — TCP International Tax has the most (77 terms), BAR Derivatives has the fewest (20).

### Gap 3 — Bulk spec-stub scaffolder ✓

`scripts/qa/scaffold-topic-spec.ts` generates stub files for every unspecced topic in `blueprint.ts`. Two modes:

```bash
# Single topic
npx tsx scripts/qa/scaffold-topic-spec.ts --topic="Topic Name"

# Bulk (all unspecced topics at once)
npx tsx scripts/qa/scaffold-topic-spec.ts --all-unspecced [--dry-run]
```

Stubs are DORMANT until registered in `src/lib/topic-specs/index.ts`. The drift test only sees registered specs, so 123 stubs sitting on disk with empty inScope/outOfScope arrays don't break anything. Each stub has pre-populated topic, section, blueprintRef (auto-resolved or "TODO"), and a ready-to-paste import/register line.

**Authoring speedup measured:** ~40 min per topic from scratch (spec #1) → ~15 min per topic from stub (spec #6). 3× acceleration. The stub eliminates boilerplate authoring; the remaining time is the domain work of writing the scope lists.

## Cleanup cadence across the 5 audited topics

| Topic | Pre | Post | Δ | Drift rate | Migration |
|---|---:|---:|---:|---:|---|
| TCP International Tax | 103 | 17 | −86 | 87% | 01028 |
| REG S Corporations | 82 | 53 | −29 | 37% | 01029 |
| BAR Prospective Analysis | 134 | 132 | −2 + 2 rewrites | residual | 01031 |
| BAR Capital Structure | 122 | 115 | −7 | 5.7% | 01032 |
| BAR Risk Management | 130 | 125 | −5 | 3.8% | 01033 |

**Pattern:** drift rates drop sharply as we move beyond the early-drift topics. International Tax and S Corporations were the outliers (because named provisions like GILTI/Subpart F clustered tightly). Most future topics will audit in the 3–8% range, meaning the cleanup-per-spec is small and fast.

## Running instructions for the next session

### Immediate next task (per session-end discussion): orchestrator regeneration

The International Tax topic dropped from 103 to 17 questions and S Corporations from 82 to 53. Both are below the 100-question target per the generation plan. The spec-constrained orchestrator is proven (Gap 1), so regeneration is now safe.

**Run these in a standalone PowerShell terminal, NOT inside Claude Code:**

```powershell
# International Tax regeneration (targets ~83 new questions across 3 batches)
./scripts/orchestrate.ps1 -Section tcp -Mode generate -Batches 3

# S Corporations regeneration (targets ~47 new questions across 2 batches)
./scripts/orchestrate.ps1 -Section reg -Mode generate -Batches 2
```

The selector (`scripts/qa/select-generation-batch.ts`) will automatically pick the biggest-gap topic in each section. If the gap is International Tax or S Corporations, the batch generates under spec constraints. If a different topic gets picked instead, that's also fine — the orchestrator will still inject any available spec constraints when the topic has one, and otherwise run normal generation.

**After each batch, audit the new content:**

```bash
npx tsx scripts/qa/audit-topic-content.ts --topic="International Tax" --section=tcp
npx tsx scripts/qa/audit-topic-content.ts --topic="S Corporations" --section=reg
```

Expected drift: 0–2 questions per batch based on the 96% clean rate from batch 32. Any drift that slips through the prompt injection will also be blocked by `validate-migration` at write time (Gap 2), so the orchestrator won't even commit a drifted batch — it'll fail in the validate step and you'll see explicit banned-term errors.

### After regeneration — continuing the spec rollout

Priority order for authoring the next ~10 specs (highest drift risk first):

1. **FAR Fair Value** — ASC 820 mechanics + valuation hierarchy. Drift risk: advanced valuation techniques beyond Level 1/2/3 classification (DCF at depth belongs in BAR Financial Valuation).
2. **REG C Corporations** — Sec 351 formation, E&P calculations, distributions. Drift risk: Sec 338(h)(10), Sec 355 spin-off mechanics, Section 1202 QSBS, consolidated return elections beyond basic mechanics.
3. **TCP Owner-Entity Transactions** — reasonable compensation, Sec 1202, Sec 1244, distributions in redemption. Drift risk: economic substance doctrine beyond concept, Sec 302/303/304 attribution webs.
4. **BAR Financial Statement Analysis** — ratio analysis, trend analysis. Drift risk: DuPont decomposition at multi-level depth, economic value added formulas.
5. **REG Partnerships** — partner basis, 704(b)/(c) allocations, disguised sales. Drift risk: advanced 704(b) capital account maintenance, Section 754 elections at depth.
6. **TCP Passive Activity and At-Risk Rules** — Sec 469 groupings, material participation. Drift risk: Sec 469 publicly-traded-partnership rules, retired-farmer exception, trade-or-business grouping elections.
7. **FAR Leases** — ASC 842. Drift risk: sale-leaseback complex structures, variable lease payments beyond simple CPI indexing.
8. **BAR Business Combinations** — ASC 805 mechanics. Drift risk: bargain purchase remeasurement, pre-existing relationships, step acquisitions beyond the basic model.
9. **AUD Audit Evidence** — sufficiency and appropriateness. Drift risk: formal sampling theory (ASA/BSA depth) belongs in Audit Sampling topic.
10. **AUD Risk Assessment** — entity and environment, RMM. Drift risk: COSO framework at depth beyond the basic five components.

Each spec becomes one `npx tsx scripts/qa/scaffold-topic-spec.ts --topic="..."` → open file → fill in lists → register → drift test → audit → cleanup cycle. Budget ~15 min per spec + ~5 min per cleanup migration.

### Known follow-up backlog

- **10 stubs with `blueprintRef: "TODO"`** need manual resolution against the AICPA PDF. Hand-fix order: read the ISC section PDF pages, match each Slayer topic to an AICPA path, edit the stub. Takes ~30 min total.
- **Cross-topic tagging audit** needed. The S Corporations audit surfaced 5 questions that belonged to OTHER topics (reasonable compensation → TCP, at-risk → REG individual, NIIT → REG individual). Topic specs don't directly prevent this failure mode — a separate audit tool that compares question content against its tagged topic's scope vs. sibling topics' scopes would surface cross-topic misplacement. Design deferred.
- **4 residual BAR Prospective candidates** reviewed and executed in 01031: Q12978 deleted (had a class-1 key desync + p-values drift), Q14788 deleted (Cook's distance is graduate regression), Q619 and Q12990 rewritten in place (core content in scope, marginal framing fixed).
- **Phase 3 trust audit** confirmed true bank error rate at 0.75% (95% Wilson CI 0.16–2.18%) — see `docs/phase3-report.md`. Predates this session but still valid.

## Critical architectural facts to remember

- **`blueprint.ts` and `alignment/aicpa-blueprint-tasks.json` structurally diverge at the group level.** Slayer sometimes reorganizes AICPA groups into different teaching units. Specs handle this by anchoring `topic` to Slayer's tagging vocabulary and `blueprintRef` to AICPA's path. Both are validated independently.
- **The resolver supports two `blueprintRef` forms:** 4-part (e.g., `BAR/I/B/1`) for topic-level anchors and 3-part (e.g., `REG/V/C`) for group-level anchors when a Slayer topic spans multiple AICPA topics in the same group. The drift test enforces both.
- **The JSON extraction script had multiple bugs** — TCP/II/A and TCP/II/B were dropped entirely; REG/V/B and REG/V/C were merged/corrupted; REG Area III was destroyed and Area IV was duplicated. All fixed in 01028/d4368e0. A reconciliation script (`scripts/qa/reconcile-blueprint-json.py`) now diffs the JSON against the PDF — the remaining 11 flags in its last run are all scanner false positives verified in situ. Re-run if the PDF or JSON ever change.
- **`docs/verified-ids.json.pre-reconcile.bak` and `docs/verified-ids.json.pre-unverify.bak`** are James's safety backups left untracked. Do not commit them.

## Commit log for the 2026-04-14 rollout session (15 commits)

```
d73ede3 01033 — Delete 5 off-blueprint BAR Risk Management questions
0393889 Spec #7: bar-risk-management-and-economics — closes out bar.1.B group
dd7bc2c 01032 — Delete 7 off-blueprint BAR Capital Structure questions
d762505 Spec #6: bar-capital-structure-and-valuation — first stub-to-authored pass
6714035 01031 — BAR Prospective residual cleanup: 2 deletes + 2 rewrites
79b78d0 Gap 1 closed: first spec-constrained generation batch (01030) + BAR bannedTerms
80f1183 Bulk scaffold 125 topic-spec stubs (Gap 3 of rollout plan)
8963d92 Spec-aware validation at write time + inline bannedTerms on topic specs
b691d8c blueprint.ts: rename off-blueprint sub-topics for TCP/INT and REG/S Corps
7957b83 01029 — S Corporations audit + delete 29 off-blueprint questions
0ffd366 01028 — Delete 86 off-blueprint International Tax questions + rewrite 2
5775510 International Tax content audit: 86 delete + 2 rewrite candidates
301dabe Wire topic specs into the question generator (Step 4 of pilot handoff)
d4368e0 Blueprint JSON reconciliation + Tier 1 cleanup
316e2f3 Topic-specs pilot complete: 4 new specs + JSON repairs + group-level refs
```

Read any of these commit messages for the "why" behind the current state — they're written long-form for exactly this kind of cold pickup.

## When in doubt

- Ask James one item at a time.
- Show the actual numbers, not assertions.
- Default to delete over rewrite when content is off-blueprint.
- Don't try to run the orchestrator from inside Claude Code — it spawns nested `claude --print` processes and James runs it manually in a standalone PowerShell terminal.
- The drift test is cheap: run it after any change to `src/lib/topic-specs/`.
- If something feels like drift, audit it with `audit-topic-content.ts` before jumping to cleanup.
