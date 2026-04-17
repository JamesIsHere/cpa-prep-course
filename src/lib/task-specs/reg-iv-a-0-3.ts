import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/IV/A/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/IV/A/0/3",
	section: "reg",

	aicpaTask: "Calculate the amounts that should be excluded from an individual's gross income as reported on Form 1040, including tax-exempt interest, gifts received and life insurance proceeds.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-individual-income",
};
