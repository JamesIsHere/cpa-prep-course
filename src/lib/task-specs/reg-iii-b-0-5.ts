import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/III/B/0/5 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/III/B/0/5",
	section: "reg",

	aicpaTask: "Review and resolve discrepancies identified by automated diagnostic and validation checks to ensure the completeness and accuracy of the depreciation and amortization expense reported on a tax return based on the source data used to prepare the return.",
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
