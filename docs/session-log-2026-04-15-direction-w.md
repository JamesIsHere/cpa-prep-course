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

## Continued same session (post-crash recovery into implementation)

### Phase 1A: Schema Foundation (complete)
- Step 1: `git mv topic-specs/ → lesson-specs/` + all import paths
- Step 2: `TopicSpec → LessonSpec`, `inheritedFromTopicSpec → lessonSpec`, all function renames
- Step 3: Extended blueprint-task-resolver for 3/4/5-part refs (`isValidRef`, `refLevel`)
- Step 4: Added `primaryRef` + `secondaryRefs` to LessonSpec type, renamed `blueprintRef`
- Step 5: Added optional `aicpaRef` to Lesson type in sections.ts
- Step 6: DB migration 01064 — created_at, updated_at, pin_ref, pinned_at on questions

### Phase 1B: FAR Bootstrap (complete)
- Step 7: Bootstrap script generated 113 FAR task-spec files from CSV using greedy bipartite
  matching (word similarity) to resolve CSV task text → AICPA JSON. Zero duplicates.
- Step 8: Generated 22 FAR lesson-spec scaffolds. Fixed far-lessee-accounting → far-leases mismatch.
- Step 9: Archived FAR CSV to docs/archive/, deprecated sync-alignment for FAR.

### Phase 1C: Classifier Rebuild (complete)
- New `scripts/qa/classify-section.ts` — two-pass section-wide cascade
- Loads task-specs from files (no registry needed), pre-filters questions to AICPA groups
  via lesson-spec topic→primaryRef mapping
- Tested on 30 FAR questions: 7 matched, 23 homeless (mostly gov GASB content), 2 overshoots
- Fixed Supabase 1000-row default limit bug

### Phase 1D: Full FAR Classification (running)
- Kicked off full run on ~1,000 FAR questions (1,539 total but hit 1000-row limit before fix)
- Running at ~50-60s/batch, estimated ~2 hours total
- Partial saves to docs/classify-far.partial.json
- Will need re-run for remaining ~539 questions after the limit fix

### Coherence check (post-implementation)
- All 469 tests passing (17 files)
- Lint: 0 errors, 0 warnings
- All import paths verified, 0 stale topic-specs references
- All 122 task-spec lessonSpec refs resolve to existing files
- 23 key CLAUDE.md file paths verified
- Pushed to remote (20+ commits)

### Commits (implementation phase)
| Hash      | Description |
|-----------|-------------|
| (rename)  | topic-specs → lesson-specs directory |
| (rename)  | TopicSpec → LessonSpec types |
| `46d1b4b` | Multi-level blueprint resolver |
| `7fdb679` | primaryRef + secondaryRefs on LessonSpec |
| `e45a982` | aicpaRef on Lesson + DB migration 01064 |
| (bootstrap)| 113 FAR task-spec files from CSV |
| (lesson)  | 22 FAR lesson-spec scaffolds + CSV archived |
| (lint)    | Fix unused imports |
| (classify)| Direction W classifier + test output |
| `609b2ef` | Fix Supabase 1000-row limit |

## Next session priorities
1. Check Phase 1D results (full FAR classification)
2. Re-run classifier for remaining ~539 FAR questions (limit fix applied)
3. Review the coverage report — identify which groups have high homeless rates
4. Begin authoring inScope on FAR task-specs (start with groups that have good match rates)
5. Update session memory with final Phase 1D numbers
