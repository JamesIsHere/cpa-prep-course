import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/II/B/3/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/II/B/3/1",
	section: "isc",

	aicpaTask: "Perform procedures to obtain an understanding how the entity communicates information to improve security knowledge and awareness and to model appropriate security behaviors to personnel through a security awareness training program. Provide input into a security assessment report by documenting the issues, findings and recommendations identified while performing tests of controls.",
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
