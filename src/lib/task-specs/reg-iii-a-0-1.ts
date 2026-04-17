import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/III/A/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/III/A/0/1",
	section: "reg",

	aicpaTask: "Calculate the tax basis of an asset purchased for use in a trade or business.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-property-basis",
};
