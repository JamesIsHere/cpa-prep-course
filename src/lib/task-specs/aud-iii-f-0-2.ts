import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/F/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/F/0/2",
	section: "aud",

	aicpaTask: "Determine the effect of uncorrected misstatements on an entity’s financial statements in an engagement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Evaluating effect of uncorrected misstatements individually and in aggregate on financial statements (AU-C 450)",
		"Iron curtain approach vs rollover approach for evaluating uncorrected misstatements",
		"Impact of uncorrected misstatements on materiality thresholds and the auditor's opinion",
		"Obtaining written representations from management regarding uncorrected misstatements",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-audit-misstatements",
};
