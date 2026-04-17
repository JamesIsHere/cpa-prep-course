import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/IV/A/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/IV/A/0/1",
	section: "reg",

	aicpaTask: "Calculate the amounts that should be included in an individual's gross income as reported on Form 1040, including wages, interest and dividends, guaranteed payments received from a partnership, fringe benefits, income from a qualified retirement plan and punitive damages.",
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
