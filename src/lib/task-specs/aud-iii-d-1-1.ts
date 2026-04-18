import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/1/1",
	section: "aud",

	aicpaTask: "Use observation and inspection to obtain evidence.",
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
