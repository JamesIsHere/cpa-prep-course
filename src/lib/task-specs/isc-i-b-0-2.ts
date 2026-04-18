import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/I/B/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/I/B/0/2",
	section: "isc",

	aicpaTask: "Summarize the data life cycle (i.e., the span of the use of information, from creation, through active use, storage and final disposition).",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-data-management",
};
