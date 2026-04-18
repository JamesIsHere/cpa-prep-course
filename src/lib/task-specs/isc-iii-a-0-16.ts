import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/III/A/0/16 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/III/A/0/16",
	section: "isc",

	aicpaTask: "Determine the effect of subsequent events in a SOC 1® or SOC 2® engagement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-soc-engagements",
};
