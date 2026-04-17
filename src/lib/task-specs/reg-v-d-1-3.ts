import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/V/D/1/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/V/D/1/3",
	section: "reg",

	aicpaTask: "Review and resolve discrepancies identified by automated diagnostic and validation checks to ensure the completeness and accuracy of ordinary business income (loss) and separately stated items reported on Form 1065 based on the source data used to prepare the form.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-partnerships",
};
