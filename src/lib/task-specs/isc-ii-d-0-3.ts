import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/II/D/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/II/D/0/3",
	section: "isc",

	aicpaTask: "Summarize contents commonly included in incident response plans (e.g., roles, responsibilities, methods, steps, timelines).",
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
