import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/5/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/5/1",
	section: "aud",

	aicpaTask: "Understand the limitations of internal controls and the potential impact on the risk of material misstatement of an entity’s financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Inherent limitations of internal control: human error, faulty judgment, breakdowns, circumvention by collusion, cost-benefit constraints",
		"Reasonable (not absolute) assurance — why even well-designed IC cannot eliminate risk of material misstatement",
		"Classification of identified deficiencies: control deficiency, significant deficiency, material weakness; thresholds and reporting obligations (AU-C 265)",
		"How residual risk after IC evaluation drives the planned nature/timing/extent of substantive procedures",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
