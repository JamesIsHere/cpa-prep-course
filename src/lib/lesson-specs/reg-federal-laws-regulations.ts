import type { LessonSpec } from "./types";

// Maps to REG/II/D — government regulation of business property.

export const spec: LessonSpec = {
	topic: "Government Regulation of Business",
	section: "reg",
	primaryRef: "REG/II/D",
	secondaryRefs: [],

	inScope: [
		"Employment tax obligations: FICA (Social Security and Medicare), FUTA, employer withholding responsibilities",
		"Worker classification: employee vs. independent contractor under common-law test and statutory tests; Form W-2 vs. Form 1099-NEC consequences",
		"Qualified health plans and employer shared-responsibility provisions (ACA employer mandate concept)",
		"Bankruptcy discharge of tax debts: which taxes are dischargeable, timing rules (3-year, 2-year, 240-day rules)",
		"Foreign Corrupt Practices Act (FCPA): anti-bribery provisions and accounting/recordkeeping provisions applicable to issuers",
	],

	outOfScope: [
		"Detailed ERISA plan design and compliance requirements",
		"OSHA workplace safety regulations",
		"Antitrust law (Sherman Act, Clayton Act) beyond existence",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
