import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/I/A/2/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/I/A/2/4",
	section: "bar",

	aicpaTask: "Interpret non-financial (e.g., customer retention rate, employee turnover, labor productivity rate, ticket response time) and non-GAAP (e.g., EBITDA, free cash flow, core earnings, adjusted net income for non-recurring expenses) measures and analyze specific aspects of an entity’s performance and risk profile.",
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
