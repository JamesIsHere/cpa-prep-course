import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/II/B/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/II/B/2/2",
	section: "reg",

	aicpaTask: "Explain the different ways in which a contract can be discharged (e.g., performance, agreement, and operation of the law).",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-business-law-contracts",
};
