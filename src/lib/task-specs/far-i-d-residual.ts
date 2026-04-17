import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/I/D (Public Company Reporting and EPS).
// ~8 homeless questions on stock compensation measurement, diluted EPS mechanics,
// and SEC reporting beyond the 3 representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/D",
	section: "far",

	aicpaTask:
		"Residual: public company content beyond the three representative tasks — share-based compensation measurement, diluted EPS methodology, SEC filing requirements, and XBRL reporting.",
	aicpaSkill: "Application",
	bloomLevel: 3,

	inScope: [
		"Share-based compensation (ASC 718): grant-date fair value measurement, stock options vs restricted stock units, vesting conditions (service, performance, market), expense recognition pattern, forfeitures",
		"Diluted EPS mechanics: treasury stock method for options/warrants, if-converted method for convertible securities, anti-dilutive securities exclusion, contingently issuable shares",
		"Weighted-average shares: computation methodology, stock splits and dividends retroactive adjustment, shares issued/retired mid-period",
		"SEC reporting requirements: Form 10-K and 10-Q content, Management Discussion and Analysis, XBRL inline filing requirements",
		"Basic EPS denominator mechanics: DRIP (dividend reinvestment plan) share weighting, bonus issue retroactive treatment, stock dividend size thresholds affecting retroactive vs prospective treatment",
		"EPS presentation for discontinued operations: separate EPS disclosure for continuing vs discontinued operations, presentation requirements on the income statement",
	],

	keyStandards: [
		"ASC 718 — Compensation — Stock Compensation",
		"ASC 260 — Earnings Per Share",
		"SEC Regulation S-K",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-public-company-reporting",
	notes: "Direction W residual — group-level. Merges stock comp + EPS + SEC themes. Created 2026-04-17.",
};
