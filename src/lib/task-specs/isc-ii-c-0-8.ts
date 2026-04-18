import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/II/C/0/8 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/II/C/0/8",
	section: "isc",

	aicpaTask: "Perform a walkthrough of an organization’s procedures relevant to confidentiality and privacy (e.g., IT risk management, human resources, training and education) and compare the observed procedure with the documented policy requirement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-confidentiality-and-privacy",
};
