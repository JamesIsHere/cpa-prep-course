import type { LessonSpec } from "./types";

// Maps to REG/V/A — C corporation book-tax differences (part of the C Corporations lesson content).

export const spec: LessonSpec = {
	topic: "C Corporations",
	section: "reg",
	primaryRef: "REG/V/A",
	secondaryRefs: [],

	inScope: [
		"Permanent vs. temporary book-tax differences: identification and classification from a book trial balance (municipal bond interest, meals/entertainment, depreciation timing, bad debt methods)",
		"Schedule M-1 reconciliation: book income to taxable income adjustments for corporations with total assets under $10 million",
		"Schedule M-3 reconciliation: required for corporations with $10 million+ total assets; three-column format (book, temporary, permanent)",
		"Common book-tax differences: depreciation (GAAP straight-line vs. MACRS), bad debt expense (allowance vs. direct write-off), prepaid income (accrual vs. receipt), capital loss limitations, charitable contribution limitations",
	],

	outOfScope: [
		"Detailed corporate formation under §351 (covered by separate C Corporations spec at REG/V/B)",
		"Consolidated return regulations and intercompany transaction elimination",
		"Corporate AMT computation under the Inflation Reduction Act (book minimum tax)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
