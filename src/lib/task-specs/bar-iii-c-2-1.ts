import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/III/C/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/III/C/2/1",
	section: "bar",

	aicpaTask: "Calculate the fund balances (assigned, unassigned, nonspendable, committed and restricted) for state and local governments and prepare journal entries.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "bar-government-transactions",
};
