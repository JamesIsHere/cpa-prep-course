import type { LessonSpec } from "./types";

// Maps to REG/V/F (tax-exempt orgs) with secondary coverage of REG/V/E (LLC classification).

export const spec: LessonSpec = {
	topic: "Tax-Exempt Organizations",
	section: "reg",
	primaryRef: "REG/V/F",
	secondaryRefs: ["REG/V/E"],

	inScope: [
		"Types of tax-exempt organizations: §501(c)(3) charitable, §501(c)(4) social welfare, §501(c)(6) trade associations, §501(c)(7) social clubs — formation and operational requirements",
		"Unrelated business taxable income (UBTI): definition, exclusions (dividends, interest, rents, royalties), debt-financed income, filing Form 990-T",
		"Private foundation rules: distinction from public charities, excise taxes on self-dealing/failure to distribute/excess business holdings/jeopardizing investments/taxable expenditures",
		"LLC tax classification options under check-the-box regulations: default classification (disregarded entity for single-member, partnership for multi-member), election to be taxed as a corporation",
	],

	outOfScope: [
		"Detailed Form 990 preparation and disclosure requirements at line-item depth",
		"State-level nonprofit formation and exemption requirements",
		"Political organization taxation under §527 at depth beyond the concept",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
