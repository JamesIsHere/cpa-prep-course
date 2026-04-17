import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/I/C/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/I/C/2/2",
	section: "reg",

	aicpaTask: "Recall requirements to report foreign bank accounts.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-federal-tax-procedures",
};
