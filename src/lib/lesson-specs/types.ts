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

/**
 * A single banned-term entry used by the audit pipeline and the spec-aware
 * validator. The human-readable `outOfScope` list on the spec is the authoring
 * source of truth; `bannedTerms` is its machine-readable projection — short
 * regex patterns with categories that can be compiled and grep-scanned.
 *
 * Authors should keep the two in sync manually. The split exists because the
 * natural-language `outOfScope` sentences are too verbose to regex-match
 * directly, while compiled term patterns are too terse to communicate the
 * "why" to a reviewer reading the spec.
 */
export interface BannedTerm {
	/** Display name for the banned term or concept (e.g., "GILTI", "Section 1374"). */
	term: string;
	/**
	 * Optional custom regex pattern. If omitted, the validator uses
	 * `\b<escaped term>\b` with a case-insensitive match.
	 */
	pattern?: string;
	/** Loose grouping for the term (e.g., "named provision", "code section"). */
	category?: string;
	/** One-sentence editorial note on why this term is out of scope. */
	why?: string;
}

export interface LessonSpec {
	/** Matches the `topic` column on the questions table verbatim. */
	topic: string;

	/** Section code: aud / far / reg / bar / isc / tcp. */
	section: "aud" | "far" | "reg" | "bar" | "isc" | "tcp";

	/**
	 * Path into `alignment/aicpa-blueprint-tasks.json`. Two forms supported:
	 *   - Topic-level (4-part): `<SECTION>/<AREA>/<GROUP>/<TOPIC_NUMBER>` (e.g. "BAR/I/B/1") —
	 *     anchors the spec to a single AICPA topic. Use this when a Slayer tagging string
	 *     maps 1:1 to an AICPA topic.
	 *   - Group-level (3-part): `<SECTION>/<AREA>/<GROUP>` (e.g. "REG/V/C") — anchors the
	 *     spec to an entire AICPA group. Use this when a Slayer tagging string covers
	 *     multiple AICPA topics in the same group (e.g., REG "S Corporations" spans
	 *     eligibility, ordinary income, and basis as separate AICPA topics).
	 *
	 * IMPORTANT: this anchors the spec to the AICPA canonical structure, NOT to
	 * Slayer's `blueprint.ts` group structure. The two diverge — Slayer reorganizes
	 * some AICPA groups into different teaching units. The spec is the bridge:
	 * `topic` (Slayer tagging vocabulary) and `blueprintRef` (AICPA structure) are
	 * validated independently against their respective sources of truth.
	 *
	 * The blueprint task text and skill levels for this topic/group are pulled at
	 * runtime from the JSON; they are NOT duplicated in the spec.
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

	/**
	 * Machine-readable projection of the `outOfScope` list. When present, both
	 * the audit pipeline (`scripts/qa/audit-topic-content.ts`) and the pre-commit
	 * migration validator (`scripts/qa/validate-migration.ts`) compile these
	 * patterns and reject any new question content that matches. Optional —
	 * specs without `bannedTerms` get no spec-aware enforcement, falling back
	 * to pre-spec validator behavior for that topic.
	 */
	bannedTerms?: BannedTerm[];

	/** Freeform editorial notes, drafting reminders, or scope-edge commentary. */
	notes?: string;
}
