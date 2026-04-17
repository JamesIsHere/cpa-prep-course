import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/IV/D/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/IV/D/0/2",
	section: "reg",

	aicpaTask: "Calculate the amount of ordinary business loss allowed for an individual materially participating in the operations of a pass-through entity with sufficient basis in the entity.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-loss-limitations",
};
