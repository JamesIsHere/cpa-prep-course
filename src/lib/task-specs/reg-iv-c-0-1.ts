import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/IV/C/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/IV/C/0/1",
	section: "reg",

	aicpaTask: "Identify adjustments allowed in the calculation of adjusted gross income given a specific scenario, including a contribution to a qualified retirement plan, contribution to a health savings plan and self-employment expenses.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-individual-taxation-deductions",
};
