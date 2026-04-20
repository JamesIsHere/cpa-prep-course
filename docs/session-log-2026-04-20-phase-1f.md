# Session log — 2026-04-20 (Phase 1F)

Continuation of 2026-04-20. Goal: wire the Direction W `pin_ref` plumbing into the quiz engine and build the task-level coverage analysis tool — the downstream payoff of the Phase 1E pinning work.

## Decision surfaced at session start

The architecture doc (D8) said the quiz engine would leave homeless questions in. Open Question #3 set the trigger for the `pin_ref IS NOT NULL` filter at "all questions in a section pinned." We are nowhere near that — REG is at 42.4% pinned. Three options:

1. Strict filter — enforces AICPA discipline, drops 58% of REG from student view.
2. Opt-in param, default off — cheapest reversible plumbing.
3. Coverage-only for now — defer the filter entirely.

**James chose Option 2.** Plumbing goes in, default off, flip per-section when each clears a pinning threshold.

## Deliverables

### 1. `get_random_questions` RPC extended

Migration `01074_random_questions_pinned_only.sql` adds `p_pinned_only boolean DEFAULT false`. When true, filters to `pin_ref IS NOT NULL`. Default preserves existing behavior — no-op for current callers. Applied cleanly via `npm run migrate`.

Smoke test: unfiltered call returned 20/200 null pin_ref in a FAR sample; `p_pinned_only=true` returned 0/200 null. Filter confirmed working.

### 2. Route + schema plumbing

- `startQuizSchema` + `startExamSchema` both gained optional `pinnedOnly: z.boolean().optional()`.
- `/api/quizzes/start` passes `p_pinned_only: pinnedOnly ?? false` to the RPC.
- `/api/exams/start` passes the same through, and also applies the filter to the section count query (so the exam size matches the filtered pool).
- 37/37 schemas unit tests pass (2 new tests added).

No UI surface yet. API-only means admin can A/B via curl or feature flag; student-facing toggle is a separate decision.

### 3. Task-coverage analysis tool

`scripts/qa/task-coverage.ts`:

- Loads all 673 task-spec files (regex — same pattern as `classify-section.ts`).
- Paginates `questions.pin_ref` to build per-ref counts (avoids the 1000-row Supabase default cap).
- Classifies every task-spec as `empty` / `gap` / `on-target` / `surplus` (surplus = pinned ≥ 2x target).
- Identifies orphan pin_refs — DB refs with no matching task-spec file, grouped by level (task / topic / group).
- Per-section summary table + per-section detail with `--gaps` and `--json` flags.

### Per-section summary (from tool)

```
Section   Specs  On-target   Gap  Empty  Surplus  Pinned  Homeless  Orphan
----------------------------------------------------------------------------------
AUD         144 19 (13.2%)    13     48       64    1127       297       0
BAR         101 16 (15.8%)    19     33       33     903       606       0
FAR         134 26 (19.4%)    15     29       64    1414       125       9
ISC          91 18 (19.8%)    13     23       37     882       570       0
REG         105 16 (15.2%)    17     41       31     592       805       0
TCP          98   9 (9.2%)    15     41       33     711       580       5
----------------------------------------------------------------------------------
TOTAL       673 104 (15.5%)    92    215      262    5629      2983      14
```

## Key finding

**Only 15.5% of task-specs (104 of 673) are at `targetCount = 3`.** But 262 task-specs have ≥2x the target pinned. The bank's **volume is on-target** (5,629 pinned against a 2,019 total target — 2.8x the floor) but the **distribution is not**. 215 tasks have zero questions pinned to them.

Orphan pin_refs are low (14 across all 673 specs, 9 in FAR, 5 in TCP). This means the task-spec corpus covers nearly every pin_ref the classifier emitted — the gaps are real per-task gaps, not missing spec files.

**Implication:** the next structural move is redistribution — either re-pin content from surplus tasks into related empty tasks (classifier/prompt work), or author targeted generation batches for the 215 empty tasks. Either way, `task-coverage.ts` is the metric the work will be measured against.

## Tested

- `npm run migrate` — 01074 applied, ledger in sync.
- `npx vitest run tests/unit/schemas.test.ts` — 37/37 pass (2 new tests for `pinnedOnly` on both schemas).
- `npm run lint` — clean.
- RPC smoke test via `@supabase/supabase-js` direct call — confirmed filter behavior.
- `scripts/qa/task-coverage.ts` — runs clean on all 6 sections + single-section mode.

### Pre-existing, unrelated

`npm test` without filter shows 16 failures in `tests/unit/topic-specs.test.ts` — `spec.topic` not found in `blueprint.ts questionTopics`. Confirmed pre-existing (failures reproduce on clean master with all Phase 1F changes stashed). These are drift-test failures from the Strategy Z rename era. Out of scope for this session; worth cleaning up separately.

## Commits

| Hash | Subject |
|------|---------|
| TBD  | Phase 1F: opt-in pinned-only filter on get_random_questions RPC + quiz/exam routes |
| TBD  | Phase 1F: task-coverage analysis script |
| TBD  | PROJECT_STATE: record Phase 1F completion |

## State at session end

- **Bank:** 8,612 questions, 100% verify-pass, 65.4% pinned (unchanged from prior session).
- **Quiz/exam engine:** `pinnedOnly` API-optional; default-off means no student-visible change yet.
- **Task coverage tooling:** live. `scripts/qa/task-coverage.ts` is now the authoritative metric for Phase 1 architectural proof.

## Remaining paths forward

1. **Fill 215 empty + 92 gap task-specs.** Two approaches — classifier re-pin from surplus, or targeted generation. AUD/REG/TCP hold 175 of the 307 under-target tasks.
2. **Flip `pinnedOnly` to default-on for FAR** when ready (91.9% pinned is within striking distance of lossless). Still a decision for James.
3. **Revisit task-rearchitecture** — one of its two pillars was voided 2026-04-20 by the `SKILL_TO_BLOOM` bug fix. Distribution unevenness remains as its surviving rationale, but that's what the coverage tool now tracks directly without a rearchitecture.
4. **Clean up the 16 pre-existing `topic-specs.test.ts` failures** — drift-test hygiene, orthogonal to Direction W.
