# Blueprint coordinate systems

## The problem this document solves

The repository contains two artifacts that both organize CPA content into sections, areas, groups, and topics, but **they use different coordinate systems and are NOT aliases of each other.** A reference like `AUD/I/A` means one thing in one file and a different thing in the other. Taking either file's group letters as if they were canonical leads to cross-matching errors (example: my 2026-04-15 task-coverage audit silently matched blueprint.ts groups against AICPA JSON groups by letter-position, corrupting the per-group deficit numbers).

This document is the authoritative record of which file is canonical for which purpose.

---

## The two files

### `alignment/aicpa-blueprint-tasks.json` — the AICPA source

**This is canonical for representative tasks, task-specs, and anything AICPA-exam-aligned.**

Structure:
- Top-level keys: section codes in uppercase (`AUD`, `BAR`, `FAR`, `ISC`, `REG`, `TCP`)
- Each section is an array of areas. Each area has:
  - `area`: Roman numeral string (`"I"`, `"II"`, `"III"`, ...)
  - `name`: the AICPA area name
  - `weight`: the AICPA score-weight range (e.g., `"15–25%"`)
  - `groups`: array of groups
- Each group has:
  - `letter`: AICPA's letter assignment (`"A"`, `"B"`, ...)
  - `name`: the AICPA group name
  - `topics`: array of topics
- Each topic has:
  - `number`: integer 1, 2, 3, ...
  - `name`: the AICPA topic name
  - `tasks`: array of representative tasks
- Each task has:
  - `skill`: AICPA skill level (`"Remembering and Understanding"`, `"Application"`, `"Analysis"`, `"Evaluation"`)
  - `task`: the literal AICPA representative task sentence

**Letter assignments follow AICPA's published blueprint. They are not reorderable. AUD/I/A is always "Ethics, independence and professional responsibilities" because that's what the AICPA blueprint says.**

### `src/lib/blueprint.ts` — the Slayer-lesson view

**This is canonical for lesson navigation, study pipeline, and the Blueprint Explorer UI. It is NOT canonical for AICPA references and does NOT use AICPA's letter assignments.**

Structure:
- `cpaBlueprint` is an array of sections
- Each section has:
  - `code`: lowercase section code (`"aud"`, `"bar"`, ...)
  - `title`: Slayer-facing section title
  - `areas`: array of areas
- Each area has:
  - `area`: **arabic integer** (1, 2, 3, ...) — NOT a Roman numeral
  - `name`: Slayer-facing area name (may diverge from AICPA's official name)
  - `weight`: numeric tuple `[min, max]`
  - `groups`: array of groups
- Each group has:
  - `letter`: **Slayer's own letter assignment** — chosen for pedagogical flow through Slayer lessons, NOT aligned to AICPA's letter assignment
  - `name`: Slayer-facing group name
  - `topics`: Slayer-specific topic IDs (`aud.1.A.1` format)
  - `lessonSlugs`: which MDX lesson files cover this group
  - `questionTopics`: which DB topic strings populate this group's practice questions

**Example of divergence (AUD area I group A):**

| File | Letter | Name |
|---|---|---|
| `alignment/aicpa-blueprint-tasks.json` | AUD/I/A | Ethics, independence and professional responsibilities |
| `src/lib/blueprint.ts` | AUD area 1 group A | Nature and scope of engagements |

These are **different groups**. They are not the same content organized differently. They are two different groups that share no content, and both use the letter `A` because both files number their groups starting from `A`. This divergence is intentional — the Slayer-lesson view orders content by pedagogical progression (start with "what is an audit" before "what are the ethics"), while the AICPA view orders content by the authoritative blueprint structure.

---

## The rule

### For task-specs

**Task-specs anchor exclusively to `alignment/aicpa-blueprint-tasks.json` coordinates.** A task-spec's `aicpaRef` field is a 4-part reference:

```
<SECTION>/<AREA>/<GROUP>/<TOPIC>
```

Where:
- `SECTION` is uppercase (`AUD`, `REG`, etc.)
- `AREA` is a Roman numeral (`I`, `II`, etc.)
- `GROUP` is an AICPA-assigned letter
- `TOPIC` is an AICPA topic number

Example: `REG/V/C/1` means AICPA REG area V, group C (S corporations), topic 1.

**Task-specs NEVER reference blueprint.ts group letters.** When a task-spec needs to identify which Slayer lesson corresponds to it, that mapping lives in a separate field (`slayerLessonSlug?: string`) that explicitly documents the cross-coordinate-system link.

Validation:
- `isValidBlueprintRef()` in `src/lib/topic-specs/blueprint-task-resolver.ts` already resolves AICPA refs. New task-spec types should use this function as their anchor-validity check.
- Task-spec validator script must reject any spec where `aicpaRef` does not resolve in the JSON.
- CI test must verify this.

### For lessons and UI

**Lessons, the Blueprint Explorer UI, and the study pipeline continue to use `blueprint.ts`.** This is the Slayer-facing view and should not change. Students see the Slayer-lesson ordering, not the AICPA-exam ordering.

When a lesson needs to point at its practice questions, it can do so two ways:

1. **Direct topic-string list** (`questionTopics: string[]`) — current pattern, kept for backwards compatibility during the rearchitecture
2. **Task-spec list** (`taskSpecs: string[]`) — new pattern added in Phase 6 when task-specs supersede topic-specs. Task-specs resolve back to questions via the `task_id` column on `questions`.

During the transition, both patterns coexist. At end state, lessons use `taskSpecs` exclusively.

### For audits and tooling

Any audit script that traverses AICPA coordinates **must read `alignment/aicpa-blueprint-tasks.json` directly** or use `blueprint-task-resolver.ts`. It must **not** treat blueprint.ts letters as if they matched AICPA letters.

Any audit script that traverses Slayer-lesson coordinates **must read `src/lib/blueprint.ts` directly**. It must not assume the letter assignments mean anything outside the Slayer-lesson view.

**If an audit needs to cross-reference both** (e.g., "which lessons correspond to task REG/V/C/1?"), the cross-reference must be explicit in the script — walk blueprint.ts's group `questionTopics`, look up the DB questions, and match them to tasks via their future `task_id` column. No letter-position matching.

**The previously-built `scripts/qa/audit-task-coverage.ts` contains a latent bug** where it matches AICPA JSON areas to blueprint.ts areas by roman→arabic conversion of `area`, then matches groups by letter equality. This letter-matching is wrong whenever AICPA and Slayer disagree on letter assignments. The script's section-level aggregates remain valid (they sum across the whole section regardless of group letter). The per-group deficit and surplus numbers it reports are NOT reliable. **When we next need per-group coverage data, we must rewrite this audit to traverse AICPA JSON directly and count questions via `blueprint.ts.questionTopics` → `questions.topic` → question, without ever matching group letters across the two files.**

---

## Why this is NOT a bug in either file

`blueprint.ts` is legitimately a Slayer-specific reorganization of the material for pedagogical purposes. Slayer teaches "what is an audit" before "what are the ethics," so its group A in AUD area 1 is "Nature and scope" not "Ethics." The AICPA JSON is the authoritative exam structure and doesn't reorder. Both files are internally consistent; they just describe different things using overlapping notation.

The bug was in tooling that **assumed the two files were aliases of the same coordinate system**. That assumption is now prohibited by this document.

---

## Reconciliation is optional

We do NOT need to merge the two files into one. Merging would force a choice between Slayer's pedagogical ordering and AICPA's exam-authoritative ordering, and both are load-bearing for different consumers.

What we DO need is:
1. Explicit labeling (this document)
2. Type-level separation (task-specs use `aicpaRef`, lessons use `blueprintRef` if any)
3. Validators that enforce the separation
4. No tooling that cross-matches letters

If a future session wants to propose merging or auto-generating one from the other, that proposal lives in PROJECT_STATE.md's retirement queue and is evaluated against the cost of adapting all downstream consumers.

---

## Session reference

First documented: 2026-04-15 session, after the task-coverage audit surfaced the divergence in `docs/drift-census-2026-04-16-v4.md` and `scripts/qa/audit-task-coverage.ts`.

Retirement queue row: **PROJECT_STATE.md §6 row #1.**

---

> *"Two files can share a notation without sharing a meaning. The bug is not in either file — it's in the tool that forgot they're different languages."*
