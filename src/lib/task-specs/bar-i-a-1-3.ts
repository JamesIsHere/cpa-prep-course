import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/I/A/1/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/I/A/1/3",
	section: "bar",

	aicpaTask: "Interpret financial statement fluctuations and ratios (e.g., profitability, liquidity, solvency, performance).",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
