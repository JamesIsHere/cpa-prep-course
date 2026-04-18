import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/IV/B/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/IV/B/0/3",
	section: "tcp",

	aicpaTask: "Calculate the Section 1245 and Section 1250 depreciation recapture recognized for tax purposes on the disposition of an asset used in a trade or business.",
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
