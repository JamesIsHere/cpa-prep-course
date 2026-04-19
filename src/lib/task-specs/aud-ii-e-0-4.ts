import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/4",
	section: "aud",

	aicpaTask: "Determine appropriate procedures to assess the operating effectiveness of relevant controls.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Tests of controls: inquiry, observation, inspection, reperformance to assess operating effectiveness (AU-C 330)",
		"When tests of controls are required: planned reliance on controls, substantive procedures alone insufficient",
		"Evaluating design and implementation of controls vs testing operating effectiveness",
		"Sample size and timing considerations for tests of controls: extent of reliance, period of reliance, frequency of control operation",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
