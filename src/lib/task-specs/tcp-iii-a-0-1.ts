import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/III/A/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/III/A/0/1",
	section: "tcp",

	aicpaTask: "Prepare a schedule that is used as an input to an entity selection decision that calculates the tax implications of noncash property transactions for multiple entity types.",
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
