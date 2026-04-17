import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/I/D/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/I/D/2/1",
	section: "reg",

	aicpaTask: "Summarize the rules regarding privileged communications as they relate to tax practice.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-legal-duties",
};
