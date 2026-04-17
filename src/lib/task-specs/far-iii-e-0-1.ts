import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/III/E/0/1",
	section: "far",

	aicpaTask:
		"Identify the valuation techniques used to measure fair value.",
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

	lessonSpec: "far-fair-value",
};
