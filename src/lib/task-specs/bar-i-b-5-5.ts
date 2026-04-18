import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/I/B/5/5 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/I/B/5/5",
	section: "bar",

	aicpaTask: "Interpret the impact of market influences on an entity’s business strategy, oper ations and risk (e.g., sourcing production inputs, innovating to develop or diversify product offerings, seeking new markets, undertaking productivity or cost-cutting initiatives).",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "bar-risk-management-and-economics",
};
