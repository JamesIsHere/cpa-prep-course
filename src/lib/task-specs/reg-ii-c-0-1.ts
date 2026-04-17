import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/II/C/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/II/C/0/1",
	section: "reg",

	aicpaTask: "Explain the rights, duties and liabilities of debtors, creditors and guarantors.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-debtor-creditor",
};
