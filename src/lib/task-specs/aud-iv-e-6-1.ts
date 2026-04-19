import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/E/6/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/E/6/1",
	section: "aud",

	aicpaTask: "Identify the factors an auditor should consider when reporting on the audit of financial statements prepared in accordance with the cash basis, tax basis, regulatory basis, contractual basis or other basis of accounting.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Special purpose framework financial statements: cash basis, tax basis, regulatory basis, contractual basis, other basis (AU-C 800)",
		"Reporting on special purpose frameworks: alert paragraph restricting distribution, description of framework in report",
		"Cash basis and tax basis financial statements: common departures, presentation requirements, required disclosures",
		"Contractual and regulatory basis reporting: restricted-use reports, adequacy of informative disclosures within the framework",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-other-reporting",
};
