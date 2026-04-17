import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/D/0/1",
	section: "far",

	aicpaTask:
		"Recall the purpose of forms 10-Q, 10-K and 8-K that a U.S. registrant is required to file with the U.S. Securities and Exchange Commission under the Securities Exchange Act of.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		// TODO: author inScope items for this task
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "far-public-company-reporting",
};
