import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/3",
	section: "aud",

	aicpaTask: "Determine a response to risks of material misstatement at the financial statement level (e.g., maintaining professional skepticism, engagement team supervision, incorporating elements of unpredictability), considering the auditor’s understanding of the control environment.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
