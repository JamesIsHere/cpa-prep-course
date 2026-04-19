import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/10 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/10",
	section: "aud",

	aicpaTask: "Analyze the risk of material misstatement, including the potential impact of individual and cumulative misstatements, to provide a basis for developing planned audit procedures.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Analyzing cumulative and individual misstatement risk to design audit procedures: tolerable misstatement, performance materiality",
		"Risk analysis informing audit program design: nature (type of procedure), timing (interim vs year-end), extent (sample size)",
		"Relationship between RMM assessment and detection risk: inverse relationship, acceptable level of detection risk",
		"Significant risks requiring special audit consideration: revenue recognition fraud, management override, related parties",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
