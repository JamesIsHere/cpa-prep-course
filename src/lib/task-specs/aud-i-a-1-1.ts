import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/A/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/A/1/1",
	section: "aud",

	aicpaTask: "Understand the principles, rules and interpretations included in the AICPA Code of Professional Conduct.",
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
