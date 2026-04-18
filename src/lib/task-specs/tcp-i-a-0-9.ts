import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/I/A/0/9 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/I/A/0/9",
	section: "tcp",

	aicpaTask: "Calculate the potential tax savings when donating noncash property to a charitable organization given a specific planning scenario, including identification of the property to be donated to minimize the individual’s current-year tax liability.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
