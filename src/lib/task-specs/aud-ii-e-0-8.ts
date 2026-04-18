import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/8 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/8",
	section: "aud",

	aicpaTask: "Assess risks of material misstatement, whether due to fraud or error, at the financial statement level and develop a response by leveraging the combined knowledge and understanding of the engagement team.",
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
