import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/3/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/3/4",
	section: "aud",

	aicpaTask: "Identify and document the relevant automated and manual controls within the flow of an entity’s transactions for a significant business process and consider the effect of these controls on the completeness, accuracy and reliability of an entity’s data.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
