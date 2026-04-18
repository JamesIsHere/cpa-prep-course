import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/I/A/4/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/I/A/4/2",
	section: "isc",

	aicpaTask: "Explain the different types of tools (e.g., change tracking, version control, test libraries, build automation, monitoring and logging) and documentation used (e.g., system component inventory, baseline configuration, change requests, ticketing, rollback procedures).",
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
