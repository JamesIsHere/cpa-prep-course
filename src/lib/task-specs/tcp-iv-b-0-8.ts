import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/IV/B/0/8 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/IV/B/0/8",
	section: "tcp",

	aicpaTask: "Review and resolve discrepancies identified by automated diagnostic and validation checks to ensure the completeness and accuracy of the amount and character of a gain or loss reported on a tax return based on the source data used to prepare the return.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
