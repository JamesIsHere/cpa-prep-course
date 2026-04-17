# Session Log — 2026-04-15 — Direction W Architecture

## Context
Resumed after crash mid-session. Previous session had committed task-spec
architecture (9 REG/V/C specs), classifier script, and was running the first
classification pass when the crash occurred.

## Work Completed

### Classifier fixes + first successful run
- Fixed classifier: incremental per-batch writes, stderr progress logging,
  per-batch timeout (90s initially, bumped to 180s after a timeout), `--limit=N`
  flag for smoke testing
- Ran full classifier on 83 REG S Corps questions (17 batches, ~20 min)
- Results: 83 classified, 23 homeless (28%), 34 Bloom's mismatches (41%), 60 high-confidence

### Bank data-quality discovery
- Spot-checked 13 of 34 Bloom's mismatches against actual question content
- **Finding: bank's `cognitive_level` column has systematic upward bias.**
  All 10 upward-mismatched questions were bank tag errors (L3/L4 tags on
  L2 Application content). Stems containing "Evaluate" or "Compute" got over-leveled.
- 3 downward mismatches were correctly tagged L1 content parked on L2 tasks because
  AICPA has no L1 task in those topic areas — architecture mismatch, not bank error.
- Task-specs 2/3 and 2/4 (both L3) got zero hits — real content gap (bank has zero
  Form 1120S review / diagnostic reconciliation questions), not spec mis-specification.

### Bloom's ceiling rule (implemented)
- Decision: task's `bloomLevel` is a ceiling, not an exact match
- Questions at or below the task's level are legitimate (foundational recall)
- Only questions above the task's level are flagged as overshoots
- Commit `b95e848`: updated types.ts, classifier, tests, re-ran full classification
- Re-run results: 30 overshoots (down from 34), 3 foundational, 24 homeless

### Direction W architecture session (15 decisions)
Extensive Q&A session establishing the architecture for task-spec + lesson-spec
system. Key decisions:

1. **Direction W committed** — multi-level AICPA anchoring (task/topic/group)
2. **targetCount = 3** — Phase 1 is architectural proof, not shippable product
3. **Slayer pedagogical structure is first-class** — lesson-specs and task-specs
   are two permanent layers with different responsibilities
4. **Strategy Z** — existing 43 topic-specs renamed to lesson-specs, preserved
5. **Pin model with timestamp staleness** — stored pins, classifier suggests,
   user confirms, stale pins generate review queue
6. **Lesson-spec refs: primaryRef + secondaryRefs** (option C)
7. **Classifier: two-pass cascade** — task-level first, then topic+group
8. **FAR first rollout** — CSV gives 113-row head start
9. **FAR CSV deprecated after migration** into task-specs
10. **Plan doc written** at `docs/architecture/direction-w-plan.md`

### Commits this session
| Hash      | Description |
|-----------|-------------|
| `91cbded` | Phase 1 pilot report: classify 83 REG/V/C S Corps questions |
| `b95e848` | Bloom's ceiling rule: tasks set a maximum, not an exact match |
| `ba279d6` | Direction W plan doc |

## State at session end
- Working tree: clean
- Branch: master (ahead of origin by 11 commits)
- No unpushed migrations
- All unit tests passing (66/66 task-spec tests)

## Next session priorities
1. Start Phase 1A from the plan doc (rename topic-specs → lesson-specs)
2. Extend blueprint-task-resolver for 3/4/5-part refs
3. Begin FAR task-spec bootstrap from CSV seed data
