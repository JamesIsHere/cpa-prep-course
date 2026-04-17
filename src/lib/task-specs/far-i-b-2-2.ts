import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/B/2/2",
	section: "far",

	aicpaTask:
		"Prepare a statement of activities for a nongovernmental, not-for-profit entity from a trial balance and supporting documentation, including contributions that may be classified as with or without donor restrictions and releases from donor restrictions.",
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

	lessonSpec: "far-not-for-profit",
};
