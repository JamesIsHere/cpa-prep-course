import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/B/0/1",
	section: "far",

	aicpaTask:
		"Calculate trade receivables and allowances (e.g., credit losses, sales returns) and prepare journal entries.",
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
