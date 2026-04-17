import type { LessonSpec } from "./types";

// Maps to REG/IV/A (gross income) with secondary coverage of REG/IV/B (adjustments/deductions).

export const spec: LessonSpec = {
	topic: "Individual Taxation: Income",
	section: "reg",
	primaryRef: "REG/IV/A",
	secondaryRefs: ["REG/IV/B"],

	inScope: [
		"Gross income inclusions: wages, interest, dividends (ordinary vs. qualified), rental income, alimony (pre/post-2019 rules), Social Security benefits inclusion formula, unemployment compensation, gambling income",
		"Gross income exclusions: gifts and inheritances (§102), life insurance proceeds (§101), municipal bond interest (§103), qualified scholarships (§117), foreign earned income exclusion (§911 concept)",
		"Capital gains and losses: short-term vs. long-term holding period, preferential rates on net long-term capital gains (0%/15%/20%), netting rules",
		"Income in respect of a decedent (IRD): items that retain their character when received by the estate or beneficiary, §691 deduction for estate tax paid on IRD",
		"Pass-through entity income reporting: Schedule K-1 from partnerships, S corporations, trusts — recognition of distributive share items",
	],

	outOfScope: [
		"Detailed passive activity loss rules (belongs to Loss Limitations topic)",
		"Section 199A qualified business income deduction computations (belongs to TCP)",
		"Foreign tax credit computation at depth (belongs to TCP International Tax topic)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
