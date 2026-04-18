import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/II/A/2/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/II/A/2/3",
	section: "tcp",

	aicpaTask: "Calculate the tax realized and recognized gain (loss) for both a C corporation and shareholders on a liquidating distribution of noncash property, and the shareholders’ basis in the property received.",
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
