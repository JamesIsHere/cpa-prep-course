import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/III/D (Income Taxes).
// 7 homeless questions on income tax concepts beyond the 5 representative
// tasks (which focus on calculation of tax expense, DTA/DTL, and journal entries).

export const spec: TaskSpec = {
	aicpaRef: "FAR/III/D",
	section: "far",

	aicpaTask:
		"Residual: income tax content beyond the five representative tasks — conceptual understanding of temporary vs permanent differences, DTA/DTL presentation and classification, rate change remeasurement, and intraperiod tax allocation.",
	aicpaSkill: "Application",
	bloomLevel: 3,

	inScope: [
		"Temporary vs permanent differences: conceptual understanding of when DTAs/DTLs arise, examples of each type, why permanent differences don't create deferred taxes",
		"DTA/DTL presentation and classification: balance sheet netting by tax jurisdiction, current vs noncurrent classification under ASU 2015-17",
		"Rate change remeasurement: effect of enacted rate changes on existing DTA/DTL balances, enacted vs expected rate",
		"Intraperiod tax allocation: allocation of tax expense among continuing operations, discontinued operations, OCI, and retained earnings",
		"Measurement attribute for deferred taxes: enacted rate (not expected rate), scheduling of reversals",
	],

	keyStandards: [
		"ASC 740 — Income Taxes",
		"ASU 2015-17 — Balance sheet classification of deferred taxes",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-income-taxes",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
