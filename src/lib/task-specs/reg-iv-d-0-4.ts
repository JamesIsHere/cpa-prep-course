import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/IV/D/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/IV/D/0/4",
	section: "reg",

	aicpaTask: "Review Form 1040 and supporting documentation, including any source data used to create the return, to determine the accuracy of the losses reported.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-loss-limitations",
};
