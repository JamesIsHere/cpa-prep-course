import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/I/A/4/6 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/I/A/4/6",
	section: "isc",

	aicpaTask: "Test the design and implementation of change control policies (e.g., acceptance criteria, authorization, code review, testing, logging, monitoring, separation of duties, access restrictions) in organizations, including those that have adopted continuous integration and continuous deployment processes.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-information-systems",
};
