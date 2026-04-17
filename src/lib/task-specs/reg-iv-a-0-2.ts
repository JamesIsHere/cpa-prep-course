import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/IV/A/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/IV/A/0/2",
	section: "reg",

	aicpaTask: "Calculate the capital gain that should be included in an individual's gross income as reported on Form 1040 from transactions, including gains from the sale of investments or virtual currencies, assets received as gifts and assets received from a decedent and classify them as long-term or short-term.",
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
