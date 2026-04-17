import type { LessonSpec } from "./types";

// Maps to REG/II/C — debtor-creditor relationships.

export const spec: LessonSpec = {
	topic: "Debtor-Creditor Relationships",
	section: "reg",
	primaryRef: "REG/II/C",
	secondaryRefs: [],

	inScope: [
		"Rights, duties, and liabilities of debtors, creditors, and guarantors: suretyship and guaranty concepts, defenses available to sureties",
		"Bankruptcy proceedings: Chapter 7 (liquidation) vs. Chapter 11 (reorganization), voluntary vs. involuntary petitions, automatic stay, priority of claims",
		"Secured transactions under UCC Article 9: attachment, perfection (filing, possession, control), priority rules among competing creditors",
		"Exempt vs. nonexempt property in bankruptcy; discharge of debts and exceptions to discharge (fraud, student loans, taxes, alimony)",
	],

	outOfScope: [
		"Chapter 13 wage-earner plans at mechanics depth beyond the concept of their existence",
		"Detailed UCC Article 9 priority disputes involving purchase-money security interests (PMSI) at advanced depth",
		"International insolvency proceedings and cross-border bankruptcy",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
