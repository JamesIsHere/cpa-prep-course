import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/III/A/0/1",
	section: "far",

	aicpaTask:
		"Calculate a required adjustment to the financial statements due to an accounting change (change in accounting principle or change in accounting estimate) or error correction and determine whether it requires prospective or retrospective application.",
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

	lessonSpec: "far-accounting-changes",
};
