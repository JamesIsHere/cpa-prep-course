import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/B/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/B/2/2",
	section: "aud",

	aicpaTask: "Identify the relevant factors that define the nature of an entity, including the impact on the risk of material misstatement (e.g., its operations, ownership and governance structure, investment and financing plans, selection of accounting policies, objectives and strategies, adoption and use of technologies including artificial intelligence).",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Understanding entity nature for risk assessment: operations, ownership structure, governance, business model",
		"Entity's investment and financing activities: capital structure, debt covenants, related party transactions",
		"Selection and application of accounting policies: significant estimates, revenue recognition methods, complex transactions",
		"Entity's objectives and strategies: expansion plans, market positioning, technology adoption including AI",
		"Governance structure impact on risk: board composition, management oversight, tone at the top, antifraud programs",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-understanding-the-entity",
};
