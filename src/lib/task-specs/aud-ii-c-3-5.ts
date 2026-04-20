import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/3/5 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/3/5",
	section: "aud",

	aicpaTask: "Conclude whether relevant automated and manual transaction-level internal controls are effectively designed and placed in operation.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Forming a conclusion on whether identified transaction-level controls are suitably designed AND have been placed in operation (D&I conclusion)",
		"Consequences of an adverse D&I conclusion: inability to rely on controls, increased substantive procedures, higher assessed control risk, communication of deficiencies",
		"Analysis-level judgment: weighing evidence from walkthroughs, inquiry, observation, and inspection to reach a supportable conclusion",
		"Distinction from operating-effectiveness conclusion (which comes later and asks whether controls worked consistently during the period under audit)",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
