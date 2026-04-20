import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/5/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/5/2",
	section: "aud",

	aicpaTask: "Identify and document the risks associated with management override of internal controls and the potential impact on the risk of material misstatement of an entity’s financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Management override as the presumed fraud risk under AU-C 240 — why it applies to every audit regardless of perceived integrity",
		"Required override-detection procedures: testing journal entries (especially non-standard, period-end, unusual combinations), reviewing significant accounting estimates for bias, evaluating business rationale for significant unusual transactions",
		"Control-environment warning signs that elevate override risk: weak tone at the top, concentration of authority, aggressive incentive structures, override of existing controls",
		"Impact on substantive procedures: heightened professional skepticism, engagement-partner involvement, unpredictable audit procedures",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
