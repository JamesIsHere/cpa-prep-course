import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/B/0/3",
	section: "far",

	aicpaTask:
		"Prepare a rollforward of the trade receivables account balance using various sources of data and information.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		// TODO: author inScope items for this task
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "far-trade-receivables",
};
