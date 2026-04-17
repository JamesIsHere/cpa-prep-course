import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/III/B/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/III/B/0/4",
	section: "reg",

	aicpaTask: "Review a tax depreciation and amortization schedule for the current year and supporting documentation, including any source data used to create the schedule, to determine the completeness and accuracy of the expense amounts deducted for tax purposes.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-cost-recovery",
};
