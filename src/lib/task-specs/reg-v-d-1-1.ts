import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/V/D/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/V/D/1/1",
	section: "reg",

	aicpaTask: "Calculate ordinary business income (loss) and separately stated items for a partnership for tax purposes, including consideration of guaranteed payments disbursed.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-partnerships",
};
