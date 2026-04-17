import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/D/0/2",
	section: "far",

	aicpaTask:
		"Identify the items of Form 10-Q (Part I Items 1 through 3) and Form 10-K (Part II Items 7, 7A and 8) filed with the U.S. Securities and Exchange Commission.",
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
