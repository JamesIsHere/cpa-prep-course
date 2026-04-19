import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/F/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/F/0/4",
	section: "aud",

	aicpaTask: "Evaluate internal control deficiencies to determine potential impact on the nature, timing, and extent of audit procedures.",
	aicpaSkill: "Evaluation",
	bloomLevel: SKILL_TO_BLOOM["Evaluation"],

	inScope: [
		"Severity evaluation of internal control deficiencies: deficiency → significant deficiency → material weakness (AU-C 265)",
		"Factors in severity assessment: magnitude of potential misstatement, likelihood of occurrence, compensating controls",
		"Impact of control deficiency severity on nature, timing, and extent of substantive audit procedures",
		"Reassessing audit strategy when material weakness is identified: additional testing, expanded scope, revised risk assessment",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-audit-misstatements",
};
