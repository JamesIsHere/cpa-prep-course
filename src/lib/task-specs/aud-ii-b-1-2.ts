import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/B/1/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/B/1/2",
	section: "aud",

	aicpaTask: "Understand the business cycles (trough, expansion, peak, recession) and leading, coincident and lagging indicators of economic activity (e.g., consumer price index, producer price index, federal funds rate, bond yields, unemployment).",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Business cycle phases (trough, expansion, peak, recession) and their impact on audit risk assessment",
		"Leading economic indicators: consumer confidence, building permits, stock market, manufacturer orders",
		"Coincident indicators: industrial production, personal income, employment levels",
		"Lagging indicators: CPI, unemployment duration, commercial lending, labor cost per unit of output",
		"Impact of federal funds rate, bond yields, and monetary policy on entity operations and financial statements",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-understanding-the-entity",
};
