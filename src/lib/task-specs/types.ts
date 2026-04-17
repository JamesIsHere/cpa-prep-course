// Task-spec type — the per-AICPA-representative-task scope specification.
//
// This is the unit of work for the task-driven rearchitecture (Phases 1-6).
// Each task-spec anchors to exactly one AICPA representative task and fixes
// its Bloom's level by construction. Questions are generated, validated, and
// audited at this granularity, replacing the old topic-level bundling.
//
// Under Direction W (2026-04-15), task-specs and lesson-specs are two
// permanent layers: task-specs anchor questions to AICPA representative tasks;
// lesson-specs define Slayer pedagogical scope. Every task-spec has a required
// `lessonSpec` field pointing to its parent lesson-spec.
//
// **Critical rule: task-specs anchor to alignment/aicpa-blueprint-tasks.json,
// NEVER to src/lib/blueprint.ts.** The two files use different group-letter
// coordinate systems (see docs/blueprint-coordinate-systems.md). Task-specs
// live in the AICPA coordinate system. Lessons and the study pipeline live
// in the Slayer coordinate system. If a task-spec needs to reference a
// Slayer lesson, use the explicit `slayerLessonSlug` field to document the
// cross-system link — do not put blueprint.ts group letters in `aicpaRef`.

import type { BannedTerm, Difficulty } from "../lesson-specs/types";

export type { BannedTerm, Difficulty };

/**
 * AICPA skill level (the canonical skill label from the AICPA JSON).
 *
 * The AICPA uses the combined label "Remembering and Understanding" for the
 * lowest skill level, not separate "Remembering" and "Understanding" levels.
 * The task-spec's `aicpaSkill` field must match one of these four exact
 * strings to resolve in the JSON.
 */
export type AicpaSkill =
	| "Remembering and Understanding"
	| "Application"
	| "Analysis"
	| "Evaluation";

/**
 * Bloom's taxonomy level 1-4, matching the `cognitive_level` column on the
 * questions table. This is derived automatically from `aicpaSkill` and is
 * the CEILING for questions tagged to this task.
 *
 * **Bloom's ceiling rule:** the task's `bloomLevel` is the MAXIMUM skill
 * level a question on this task may test. Questions may sit at the task's
 * level (the common case) OR at a lower level (foundational-recall content
 * that prepares students for the task). Questions above the task's level
 * are forbidden — if you want higher-level content, author a different
 * task-spec at the higher level. See `docs/topic-specs-pilot-handoff.md`
 * for the pilot decision that established this rule (2026-04-15).
 *
 * Rationale: AICPA representative tasks describe the level at which the
 * EXAM will test a concept, not a constraint on all prep-bank content.
 * A student mastering an L2 Application task needs L1 recall warmups on
 * the underlying concepts. Those warmups are legitimate bank content and
 * belong under the L2 task as foundational material.
 */
export type BloomLevel = 1 | 2 | 3 | 4;

/** Canonical mapping from AICPA skill to Bloom's level. */
export const SKILL_TO_BLOOM: Record<AicpaSkill, BloomLevel> = {
	"Remembering and Understanding": 1,
	Application: 2,
	Analysis: 3,
	Evaluation: 4,
};

export interface TaskSpec {
	/**
	 * AICPA JSON path: `<SECTION>/<AREA>/<GROUP>/<TOPIC>/<TASK>`
	 *
	 * Where:
	 *   - SECTION: uppercase section code ("AUD", "BAR", "FAR", "ISC", "REG", "TCP")
	 *   - AREA: Roman numeral ("I", "II", "III", ...)
	 *   - GROUP: AICPA-assigned group letter ("A", "B", "C", ...)
	 *   - TOPIC: AICPA topic number (1-indexed, matches `topics[].number` in the JSON)
	 *   - TASK: 1-indexed position within the topic's tasks array
	 *
	 * Example: `REG/V/C/1/1` = REG area V, group C (S corporations), topic 1
	 * (Eligibility and election), task 1 ("Recall eligible shareholders...").
	 *
	 * This MUST resolve in `alignment/aicpa-blueprint-tasks.json`. The
	 * validator will reject any task-spec whose ref does not resolve.
	 */
	aicpaRef: string;

	/** Section code (lowercase): aud, far, reg, bar, isc, tcp. */
	section: "aud" | "far" | "reg" | "bar" | "isc" | "tcp";

	/**
	 * The literal AICPA representative task sentence, copied verbatim from
	 * the JSON. This is stored here so authors can read the spec and see the
	 * task without consulting the JSON, and so the generator prompt can
	 * inject the task text directly.
	 *
	 * If this string drifts from the JSON, the validator flags it.
	 */
	aicpaTask: string;

	/**
	 * The AICPA skill level for this task, matching the JSON exactly.
	 * Determines `bloomLevel` by the SKILL_TO_BLOOM mapping.
	 */
	aicpaSkill: AicpaSkill;

	/**
	 * Bloom's level 1-4, derived from `aicpaSkill`. Every question tagged to
	 * this task MUST have `cognitive_level <= bloomLevel` (ceiling rule —
	 * questions may be at or below the task's level, never above). The
	 * validator enforces the ceiling.
	 */
	bloomLevel: BloomLevel;

	/**
	 * Sub-concepts and specific candidate actions this task tests.
	 * Each entry should be concrete enough that:
	 *   (a) a question author can decide whether a draft question fits
	 *   (b) the generator prompt can be seeded with these as content targets
	 *   (c) the classifier can match an existing question to this task if
	 *       its content substantively matches one or more entries
	 */
	inScope: string[];

	/**
	 * Authoritative citation roots expected in correct-answer explanations
	 * for questions on this task. Example: ["IRC §1361", "IRC §1362"].
	 * The validator checks that explanations contain at least one of these.
	 */
	keyStandards: string[];

	/**
	 * Candidate confusion points that make pedagogically valuable distractors.
	 * Used by the generator to avoid generic / lazy distractors and to focus
	 * wrong answers on real misconceptions.
	 */
	commonMisconceptions: string[];

	/**
	 * How many questions should exist for this task, given the section's
	 * overall question budget and the blueprint weighting. Surplus questions
	 * may be trimmed in a cleanup pass; deficit questions get queued for
	 * task-driven generation.
	 *
	 * Typical range: 3-15 questions per task.
	 */
	targetCount: number;

	/**
	 * Desired difficulty mix for the `targetCount` questions on this task.
	 * Percentages that sum to 100. Applied after bloom-level pinning:
	 * within the fixed Bloom's level, difficulty can still vary.
	 */
	difficultyMix: { easy: number; medium: number; hard: number };

	/**
	 * Parent lesson-spec filename (without `.ts`). Every task-spec must have
	 * exactly one parent lesson-spec. The lesson-spec is the Slayer pedagogical
	 * scope container; the task-spec is the AICPA exam scoping anchor.
	 *
	 * Example: `"reg-s-corporations"` resolves to
	 * `src/lib/lesson-specs/reg-s-corporations.ts`.
	 */
	lessonSpec: string;

	/**
	 * Optional explicit cross-reference to a Slayer lesson (by slug). This
	 * documents that students seeing Slayer lesson X should practice questions
	 * from this task. blueprint.ts provides the reverse mapping for the UI.
	 */
	slayerLessonSlug?: string;

	/**
	 * Freeform editorial notes — scope edges, authoring rationale, things to
	 * flag in audit reviews, etc.
	 */
	notes?: string;
}

/**
 * Group-scoped banned terms and shared scope context. Multiple task-specs
 * in the same AICPA group often share the same outOfScope / bannedTerms list
 * (example: all 9 tasks in REG/V/C share the S-corporations drift surfaces
 * like Section 1374, PTTP, QSub). This type is the structure for group-level
 * shared bases that individual task-specs import.
 *
 * Pattern: `src/lib/task-specs/_<section>-<group>-base.ts` exports an object
 * of this shape. Individual task-spec files import it and reference its
 * fields by spreading (`...BASE.outOfScope`) or by attaching them to the
 * TaskSpec.
 */
export interface GroupBase {
	/** Group-level AICPA ref, e.g., "REG/V/C". */
	groupRef: string;
	/** Group name for display. */
	groupName: string;
	/** Shared out-of-scope list — what the entire group does NOT test. */
	outOfScope: string[];
	/** Shared key standards — authoritative sources for this group. */
	keyStandards: string[];
	/** Shared banned terms — the regex enforcement of outOfScope. */
	bannedTerms: BannedTerm[];
	/** Shared common misconceptions across all tasks in the group. */
	commonMisconceptions: string[];
	/** Which lesson-spec (if any) this group's knowledge inherits from. */
	lessonSpec?: string;
	/** Editorial note on the group's scope context. */
	notes?: string;
}
