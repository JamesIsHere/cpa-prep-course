import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/B/1/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/B/1/3",
	section: "aud",

	aicpaTask: "Identify relevant factors (e.g., economic, environmental, financial reporting framework, government policy, industry, regulatory, supply chain, technology) that could impact an entity, its operations, and/or the inherent risk of material misstatement.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"External factors impacting inherent risk: economic conditions, industry trends, regulatory environment, technology changes",
		"Environmental and sustainability factors affecting entity operations and financial reporting risk",
		"Supply chain disruptions and their impact on entity operations, inventory valuation, and going concern",
		"Government policy and regulatory changes affecting financial reporting framework and compliance obligations",
		"Industry-specific risk factors: competitive pressures, technological obsolescence, cyclical demand patterns",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-understanding-the-entity",
};
