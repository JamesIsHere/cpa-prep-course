// Topic scope specifications — the per-question-topic "what is and isn't testable on the
// CPA exam" reference that the AICPA Blueprint deliberately leaves vague. Each spec is
// authored by the curriculum team (i.e., James) once and used by:
//
//   1. The question generator prompt — explicit in-scope and out-of-scope lists keep new
//      generation batches from drifting into graduate-level material.
//   2. The validate-migration script — out_of_scope vocabulary becomes a warn/error pattern.
//   3. Manual audit tools — `audit-topic.ts --topic=X` reads the spec and grep-checks the
//      live bank for off-spec content.
//   4. SME review documentation — when a recent CPA passer reviews questions, they read the
//      spec first to know the intended scope.
//
// One spec per question.topic value (the string stored in the questions table). A single
// blueprint group can have multiple topics; each gets its own spec file.

export type Difficulty = "easy" | "medium" | "hard" | "mixed";

export interface TopicSpec {
	/** Matches the `topic` column on the questions table verbatim. */
	topic: string;

	/** Section code: aud / far / reg / bar / isc / tcp. */
	section: "aud" | "far" | "reg" | "bar" | "isc" | "tcp";

	/**
	 * Path into `alignment/aicpa-blueprint-tasks.json`, formatted as
	 * `<SECTION>/<AREA>/<GROUP>/<TOPIC_NUMBER>` (e.g. "BAR/I/B/1").
	 *
	 * IMPORTANT: this anchors the spec to the AICPA canonical structure, NOT to
	 * Slayer's `blueprint.ts` group structure. The two diverge — Slayer reorganizes
	 * some AICPA groups into different teaching units. The spec is the bridge:
	 * `topic` (Slayer tagging vocabulary) and `blueprintRef` (AICPA structure) are
	 * validated independently against their respective sources of truth.
	 *
	 * The blueprint task text and skill levels for this topic are pulled at runtime
	 * from the JSON; they are NOT duplicated in the spec.
	 */
	blueprintRef: string;

	/**
	 * Techniques, concepts, and rules that ARE testable at CPA-exam depth for this topic.
	 * Write at the level of "things a question can ask the candidate to do." Be specific
	 * enough that an LLM reading this list can decide whether a draft question fits.
	 */
	inScope: string[];

	/**
	 * Techniques, concepts, and rules that are NOT testable on the CPA exam for this topic
	 * but are easy to drift into (graduate stats, advanced theory, niche standards).
	 * The validator can treat any term in this list as a warn/error pattern in new content.
	 */
	outOfScope: string[];

	/**
	 * Authoritative standards expected to be cited in correct-answer explanations for this
	 * topic. Each entry is a citation root (e.g., "ASC 715-30", "IRC §132(c)", "AU-C 540").
	 * Used for citation-quality auditing.
	 */
	keyStandards: string[];

	/**
	 * Common candidate misconceptions that good distractors should test. Used by the
	 * generator to avoid generic / lazy distractors and to focus wrong answers on
	 * pedagogically valuable confusion points.
	 */
	commonMisconceptions: string[];

	/** Typical difficulty band for questions in this topic. */
	representativeDifficulty: Difficulty;

	/** Freeform editorial notes, drafting reminders, or scope-edge commentary. */
	notes?: string;
}
