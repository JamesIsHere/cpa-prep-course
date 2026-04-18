import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/II/E/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/II/E/1/1",
	section: "tcp",

	aicpaTask: "Recall the requirements to qualify as an IRC Section 501(c)(3) tax-exempt organization.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
