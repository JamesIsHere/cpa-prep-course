import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/III/B/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/III/B/0/4",
	section: "isc",

	aicpaTask: "Prepare results of testing of controls to be included in the SOC 2® report of the test of a control, including when there was an exception identified by the test.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-soc-reporting",
};
