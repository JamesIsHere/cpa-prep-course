import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/F/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/F/0/3",
	section: "aud",

	aicpaTask: "Determine the effect of identified misstatements on the assessment of internal control over financial reporting, individually and in the aggregate.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Evaluating identified misstatements as indicators of internal control deficiencies over financial reporting",
		"Aggregating misstatements to assess whether they indicate a significant deficiency or material weakness",
		"Relationship between misstatement patterns and control environment weaknesses: compensating controls, design vs operating failures",
		"Impact of identified control deficiencies on the auditor's further planned procedures and risk reassessment",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-audit-misstatements",
};
