import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/II/A/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/II/A/1/1",
	section: "reg",

	aicpaTask: "Recall the types of agent authority.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-agency",
};
