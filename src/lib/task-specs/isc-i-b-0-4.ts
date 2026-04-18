import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/I/B/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/I/B/0/4",
	section: "isc",

	aicpaTask: "Examine a standard SQL query (common commands, clauses, operators, aggregate functions and string functions) to determine whether the retrieved data set is relevant and complete.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
