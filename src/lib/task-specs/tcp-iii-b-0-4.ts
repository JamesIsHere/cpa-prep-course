import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/III/B/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/III/B/0/4",
	section: "tcp",

	aicpaTask: "Calculate estimated tax payments for a C corporation in order to avoid underpayment penalties given a specific planning scenario.",
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
