import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/E/4/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/E/4/1",
	section: "aud",

	aicpaTask: "Identify the factors an auditor should consider when reporting on supplementary information included in or accompanying an entity’s financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Supplementary information accompanying financial statements: required supplementary information (RSI) vs other supplementary information (AU-C 725/730)",
		"Auditor's reporting on supplementary information: in-relation-to opinion, separate report, or disclaimer",
		"Required supplementary information (RSI): GASB pension schedules, management discussion and analysis — limited procedures",
		"Other supplementary information: combining statements, statistical data — auditor may report in relation to basic financial statements",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-other-reporting",
};
