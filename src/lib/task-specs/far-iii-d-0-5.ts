import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/III/D/0/5",
	section: "far",

	aicpaTask:
		"Prepare journal entries to record the tax provision.",
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

	lessonSpec: "far-income-taxes",
};
