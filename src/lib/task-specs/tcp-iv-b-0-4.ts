import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/IV/B/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/IV/B/0/4",
	section: "tcp",

	aicpaTask: "Calculate the unrecaptured Section 1250 gain recognized for tax purposes on disposition of an asset used in a trade or business.",
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
