import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/I/D/1/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/I/D/1/2",
	section: "reg",

	aicpaTask: "Identify situations which result in violations of the tax return preparer's common law duties and liabilities to clients and third parties.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-legal-duties",
};
