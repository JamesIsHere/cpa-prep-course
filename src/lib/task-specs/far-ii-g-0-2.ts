import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/G/0/2",
	section: "far",

	aicpaTask:
		"Calculate the carrying amount of payables (e.g., accounts payable, dividends payable) and accrued liabilities (e.g., accrued wages, accrued vacation, accrued bonuses, self-insurance liabilities) and prepare journal entries.",
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

	lessonSpec: "far-payables-and-accrued-liabilities",
};
