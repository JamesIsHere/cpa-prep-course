import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/IV/A/0/6 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/IV/A/0/6",
	section: "reg",

	aicpaTask: "Review and resolve discrepancies identified by automated diagnostic and validation checks to ensure the completeness and accuracy of gross income reported on Form 1040 based on the source data used to prepare the form.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-individual-income",
};
