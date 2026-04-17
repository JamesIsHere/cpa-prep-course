import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/E/2/1",
	section: "far",

	aicpaTask:
		"Identify investments that are eligible to be reported at amortized cost in the financial statements.",
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

	lessonSpec: "far-investments",
};
