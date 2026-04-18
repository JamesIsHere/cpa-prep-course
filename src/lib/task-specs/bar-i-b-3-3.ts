import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/I/B/3/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/I/B/3/3",
	section: "bar",

	aicpaTask: "Compare investment alternatives (e.g., system replacement, make, lease or buy decisions) using financial metrics and modeling (e.g., payback period, net-present value, economic value added, cash flow analysis, internal rate of return).",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "bar-financial-valuation-methods",
};
