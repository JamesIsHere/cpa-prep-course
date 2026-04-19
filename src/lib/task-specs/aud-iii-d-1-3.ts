import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/1/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/1/3",
	section: "aud",

	aicpaTask: "Use reperformance to independently execute procedures or controls to obtain evidence.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Reperformance as audit procedure: auditor independently executing a control or procedure originally performed by entity",
		"Reperformance of bank reconciliations, account reconciliations, and three-way matching procedures",
		"Reperformance vs recalculation: reperformance covers entire procedure, not just mathematical accuracy",
		"Using reperformance to test operating effectiveness of controls: independent execution with comparison to entity results",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
