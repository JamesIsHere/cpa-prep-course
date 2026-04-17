# Direction W: Multi-level AICPA Anchoring + Lesson-Spec Architecture

**Status:** Committed (2026-04-15)
**Scope:** Decision record + implementation roadmap
**Authors:** James McCoy + Claude (session 2026-04-15)

---

## 1. Architectural Decisions

### D1. Direction W — Multi-level AICPA anchoring
Every question and lesson must tie back to the AICPA 2026 Blueprint at the finest
available level. No non-AICPA content is permitted in the bank.

- **Task-level anchor** (5-part ref, e.g., `REG/V/C/1/2`) — default, preferred
- **Topic-level anchor** (4-part ref, e.g., `REG/V/C/2`) — for residual content within
  a topic not covered by any of the topic's representative tasks
- **Group-level anchor** (3-part ref, e.g., `REG/V/C`) — loosest, for interstitial content
  that doesn't fit any topic cleanly

Resolution rule: classifier tries task-level first, then topic+group. Questions are
assigned to the finest-grained match. Questions matching no level are homeless.

### D2. Phase 1 target: `targetCount = 3`
Phase 1 is an **architectural proof**, not a shippable product. Each task-spec targets
3 questions. Total bank target: ~2,160 questions (~720 tasks x 3). The existing
~8,612 questions become the candidate pool for selection/pinning.

Phase 2 (later) tops up successful task-specs to targetCount 8-10 for product
readiness. Competitor benchmark: ~1,200/section.

### D3. Bloom's ceiling rule
A task-spec's `bloomLevel` is a CEILING, not an exact match. Questions may sit at or
below the task's level (foundational recall is legitimate). Only questions ABOVE the
task's level are flagged as overshoots.

**Rationale:** AICPA representative task skill levels describe where the EXAM tests
a concept, not a constraint on all prep-bank content. Students need L1 recall warmups
to build toward L2 Application tasks.

**Status:** Implemented and committed (`b95e848`, 2026-04-15).

### D4. Two-layer scope architecture
Two systems coexist permanently, representing two different concerns:

| Layer        | Purpose                          | Granularity     | Count     |
|--------------|----------------------------------|-----------------|-----------|
| Lesson-specs | Slayer pedagogical grouping      | Lesson-level    | ~102      |
| Task-specs   | AICPA scoping for questions      | Task/topic/group| ~720      |

- **Lesson-specs** are the rich scope containers (12+ inScope items, bannedTerms,
  keyStandards, commonMisconceptions). They define the Slayer pedagogical boundaries
  ("mental barriers between topics").
- **Task-specs** are thin AICPA anchors (targetCount=3, 3-5 inScope items). They
  define the AICPA exam scoping and bloom ceiling.

Every task-spec has a required `lessonSpec` field pointing to its parent lesson-spec
(filename reference, single parent).

### D5. Strategy Z — Topic-specs renamed to lesson-specs
The existing 43 topic-spec files are **not retired**. They are renamed/relocated from
`src/lib/topic-specs/` to `src/lib/lesson-specs/` and promoted to the first-class
Slayer scope layer. Their content (inScope, bannedTerms, etc.) is preserved.

This reverses the original Phase 6 plan ("retire topic-specs by folding into
task-specs") because under Direction W, task-specs are deliberately thin and lesson-
specs are the rich scope layer. The fold destination no longer has room for the content.

The 59 lessons without a lesson-spec get new files authored as review proceeds.

### D6. Lesson-spec AICPA refs: primary + secondary
Each lesson-spec has:
- `primaryRef: string` — the core AICPA group/topic this lesson teaches
- `secondaryRefs: string[]` — additional AICPA nodes the lesson touches

This handles lesson-specs that span multiple AICPA groups (e.g., "Audit Evidence"
spans AUD/III/B + parts of AUD/III/D + AUD/III/E).

### D7. Frameworks as future sub-lesson scope containers
Scope operationally lives at the lesson level by default. When mental models are
identified during review, they become **framework-level scope containers** — finer
sub-divisions of a lesson-spec.

- Trigger for framework creation: pedagogical split identified (mental model), NOT
  complexity thresholds or arbitrary rules.
- Amendability: adding a framework is a pure additive operation. No refactor of
  existing files needed.
- Deferred: no framework-level specs exist yet. Authored as mental models are
  identified during iterative review.

### D8. Pin model with timestamp-based staleness
Questions are **pinned** to scope containers (task-spec, lesson-spec, or future
framework). Pins are stored, timestamped, and sticky. The classifier suggests pins;
the user confirms or overrides.

- `pin_ref` — the scope container ref (nullable; null = homeless)
- `pinned_at` — timestamp of last pin confirmation
- Scope containers have `updatedAt` in frontmatter
- A pin is **stale** if the container's `updatedAt > question.pinned_at`
- Stale pins generate a review queue, not an auto-reclassification
- Homeless questions are filtered in admin/QA tools, not in student-facing quizzes
  (quiz engine uses existing topic-based routing unchanged for now)

### D9. Historical data: accept the loss
Existing ~8,612 questions get `created_at = now()` when the migration runs.
True creation history is lost. Move forward from the migration date.

### D10. FAR CSV: migrate into task-specs, deprecate
`alignment/csv/aicpa-far-blueprint-mapping.csv` (113 rows) serves as seed data for
bootstrapping FAR task-specs. Each row maps to one task-spec with `aicpaRef`,
`aicpaTask`, `aicpaSkill`, `bloomLevel`, and `lessonSpec` pre-derived.

After FAR task-specs are authored, the CSV and `npm run sync-alignment` tooling
are deprecated.

### D11. Classifier: two-pass cascade
- **Pass 1:** Match against task-level specs only (the common case, ~70% of questions)
- **Pass 2:** Unmatched questions get a second pass against topic-level + group-level
  specs combined
- Anything unmatched after both passes is homeless

### D12. Lesson tieback in sections.ts
Add `aicpaRef: string` directly to the Lesson type in `sections.ts`. Populated
manually per lesson for now. Future upgrade: `npm run sync-lesson-refs` script keeps
sections.ts in sync with lesson-spec primaryRefs.

### D13. Validator rules

**Enforce now (high confidence):**

| # | Rule |
|---|------|
| 1 | Every task-spec must have a `lessonSpec` that resolves to an existing lesson-spec file |
| 2 | Every task-spec must have an `aicpaRef` that resolves in `aicpa-blueprint-tasks.json` |
| 4 | `bloomLevel` must equal `SKILL_TO_BLOOM[aicpaSkill]` (derived, not hand-set) |
| 7 | `aicpaTask` must match the literal AICPA task sentence from the JSON |

**Deferred until N=50 authoring milestone:**

| # | Rule | Concern |
|---|------|---------|
| 3 | No duplicate `aicpaRef` across task-specs | May be too strict for cross-section cases |
| 5 | Topic-level specs only allowed as "residual" when task-level specs exist | Will prove itself during authoring |
| 6 | Lesson-spec `primaryRef` must contain at least one child task-spec | Breaks during authoring before children exist |
| 8 | `targetCount` bounds (1-20) | Arbitrary until real distributions observed |

### D14. Phase 1 rollout: FAR first
FAR has the 113-row CSV giving a pre-built scaffold. 4 of 8 task-spec fields are
pre-filled per CSV row. Completing FAR end-to-end proves the architecture at scale
before committing to the other 5 sections.

---

## 2. Implementation Roadmap

### Phase 1A: Schema Foundation

**Step 1 — Rename topic-specs to lesson-specs**
- `git mv src/lib/topic-specs/ src/lib/lesson-specs/`
- Find/replace all imports and references across codebase
- Rename `TopicSpec` type to `LessonSpec`
- Rename `inheritedFromTopicSpec` to `lessonSpec` on TaskSpec type (change from
  optional string array to required string)
- Update 9 existing REG/V/C task-specs with the new field name
- Run tests, commit

**Step 2 — Add `primaryRef` + `secondaryRefs` to LessonSpec type**
- New fields on the LessonSpec interface
- Backfill the existing 43 lesson-spec files with their AICPA refs (each already
  has a `blueprintRef` — promote to `primaryRef`, add `secondaryRefs` from the
  comment-documented cross-references)
- Update validator to check `primaryRef` resolves in AICPA JSON

**Step 3 — Extend blueprint-task-resolver**
- Add `resolveTopicRef(ref: string)` for 4-part refs
- Add `resolveGroupRef(ref: string)` for 3-part refs
- Existing `resolveTaskRef` handles 5-part refs (already done)
- Add `isValidRef(ref: string)` that dispatches to the right resolver based on
  part count
- Write tests for all three levels

**Step 4 — Update TaskSpec type**
- `lessonSpec: string` — required, filename reference to parent lesson-spec
- Remove `inheritedFromTopicSpec` (replaced by `lessonSpec`)
- `aicpaRef` — already exists, now validated to accept 3/4/5-part refs via
  the extended resolver
- Update validator: enforce rules #1, #2, #4, #7

**Step 5 — Add `aicpaRef` to Lesson type in sections.ts**
- New optional field on the Lesson interface: `aicpaRef?: string`
- Populate FAR lessons first (from the CSV mapping)
- Other sections populated as review proceeds

**Step 6 — Database migration**
```sql
ALTER TABLE questions
  ADD COLUMN created_at timestamptz DEFAULT now(),
  ADD COLUMN updated_at timestamptz DEFAULT now(),
  ADD COLUMN pin_ref text,
  ADD COLUMN pinned_at timestamptz;

-- Trigger to auto-update updated_at
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $FN$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$FN$ LANGUAGE plpgsql;

CREATE TRIGGER questions_updated_at
  BEFORE UPDATE ON questions
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();
```

### Phase 1B: FAR Bootstrap

**Step 7 — Convert FAR CSV to task-spec files**
- Script reads 113 CSV rows
- For each row, generates a task-spec file with:
  - `aicpaRef` — derived from Area/Group/Topic/Task columns
  - `aicpaTask` — Representative Task column (verbatim)
  - `aicpaSkill` — Skill Level column
  - `bloomLevel` — derived via SKILL_TO_BLOOM
  - `lessonSpec` — derived from "Our Lesson #" → matched to lesson-spec filename
  - `targetCount: 3`
  - `inScope: []` — placeholder, to be authored
  - `bannedTerms: []` — placeholder, inherits from lesson-spec
- Human review pass: author `inScope` for each task-spec (the main authoring work)

**Step 8 — Create FAR lesson-specs for uncovered lessons**
- FAR has 24 lessons. Some already have lesson-specs (from the 43 topic-spec rename).
  Identify gaps and author new lesson-spec files for lessons without one.
- Each new lesson-spec gets `primaryRef` + `secondaryRefs` from the CSV data.

**Step 9 — Deprecate FAR CSV + sync-alignment**
- Move `alignment/csv/aicpa-far-blueprint-mapping.csv` to `docs/archive/`
- Remove FAR entry from `sync-alignment.ts` config
- Update CLAUDE.md to remove sync-alignment references for FAR

### Phase 1C: Classifier Rebuild

**Step 10 — Rebuild classifier as two-pass cascade**
- Pass 1: task-level specs only (existing classifier logic, scoped to one
  section's task-specs)
- Pass 2: unmatched questions against topic-level + group-level lesson-specs
- Output: suggested `pin_ref` per question + confidence + rationale
- Output format: JSON file (machine-readable) + markdown report (human-readable)

**Step 11 — Run classifier on FAR questions**
- Classify all ~1,539 FAR questions
- Generate pin suggestions
- Output review queue

**Step 12 — Review + pin FAR questions**
- User reviews suggestions, confirms or overrides pins
- Update questions table with `pin_ref` + `pinned_at`
- Homeless questions flagged for disposition (delete, rewrite, or defer)

### Phase 1D: Architecture Validation

**Step 13 — Coverage report**
- Every FAR AICPA task has a task-spec: yes/no
- Every task-spec has >= 3 pinned questions: yes/no
- Overshoot count (questions above bloom ceiling)
- Foundational count (questions below bloom ceiling, allowed)
- Homeless count + disposition recommendations

**Step 14 — Decision: proceed to next section or iterate on FAR**
- If FAR validates cleanly: proceed to REG (has 9 pilot specs already)
- If FAR surfaces architectural issues: iterate on the plan before expanding

---

## 3. Open Questions (deferred)

| # | Question | Trigger to resolve |
|---|----------|--------------------|
| 1 | Deferred validator rules (#3, 5, 6, 8) | N=50 task-specs authored |
| 2 | Framework-level scope containers | Mental models identified during review |
| 3 | Quiz engine `pin_ref IS NOT NULL` filter | All questions in a section pinned |
| 4 | `npm run sync-lesson-refs` script | All 102 lessons have lesson-specs |
| 5 | Bank-wide `cognitive_level` audit tool | After classifier rebuild validates on FAR |
| 6 | Per-topic and per-group targetCount semantics | After FAR rollout reveals distribution |
| 7 | Naming convention for Slayer-authored topic/group-level task-specs | During FAR authoring |

---

## 4. Key Commits (prior work this session)

| Hash | Description |
|------|-------------|
| `b9ad4df` | Phase 1: task-spec architecture + REG/V/C pilot + classifier |
| `91cbded` | Phase 1 pilot report: classify 83 REG/V/C S Corps questions |
| `b95e848` | Bloom's ceiling rule: tasks set a maximum, not an exact match |

---

## 5. File Impact Summary

| File/Directory | Change |
|----------------|--------|
| `src/lib/topic-specs/` | Renamed to `src/lib/lesson-specs/` |
| `src/lib/lesson-specs/types.ts` | `TopicSpec` → `LessonSpec`, add `primaryRef` + `secondaryRefs` |
| `src/lib/task-specs/types.ts` | `inheritedFromTopicSpec` → `lessonSpec: string` (required) |
| `src/lib/topic-specs/blueprint-task-resolver.ts` | Add `resolveTopicRef`, `resolveGroupRef` (moves with directory) |
| `src/lib/sections.ts` | Add optional `aicpaRef` to Lesson type |
| `scripts/qa/classify-questions-to-tasks.ts` | Rebuild as two-pass cascade with pin-suggestion output |
| `supabase/migrations/00XXX_*.sql` | Add `created_at`, `updated_at`, `pin_ref`, `pinned_at` to questions |
| `alignment/csv/aicpa-far-blueprint-mapping.csv` | Migrated to task-specs, archived to `docs/archive/` |
| `scripts/qa/sync-alignment.ts` | Deprecated after FAR migration |
| `tests/unit/task-specs.test.ts` | Extended for multi-level refs + lessonSpec validation |
