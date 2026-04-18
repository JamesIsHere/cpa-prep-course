import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/II/B/2/7 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/II/B/2/7",
	section: "isc",

	aicpaTask: "Determine the appropriate identification and authentication techniques and technologies (e.g., password management, single sign-on, multi-factor authentication, personal identification number (PIN) management, digital signatures, smart cards, biometrics) in a specific scenario.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-security",
};
