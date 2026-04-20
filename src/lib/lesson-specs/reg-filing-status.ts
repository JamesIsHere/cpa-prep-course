import type { LessonSpec } from "./types";

// Maps to REG/IV/E (filing status/dependents) with secondary coverage of REG/IV/F (credits/tax computation).
//
// Note 2026-04-19: "Alternative Minimum Tax" alias removed. AMT
// belongs at IV/F (Computation of tax and credits), where the
// AICPA "Calculate tax liability" task covers AMT. The alias was
// causing all 65 AMT questions to route to IV/E (Filing status)
// where they were 100% homeless. Now routed via the
// "Alternative Minimum Tax" alias on reg-individual-taxation-credits.ts
// at IV/F.

export const spec: LessonSpec = {
	topic: "Individual Taxation: Filing/Credits",
	section: "reg",
	primaryRef: "REG/IV/E",
	secondaryRefs: ["REG/IV/F"],

	inScope: [
		"Filing status determination: single, married filing jointly, married filing separately, head of household, qualifying surviving spouse — requirements and tax rate implications",
		"Dependency tests: qualifying child (relationship, age, residency, support, joint return) and qualifying relative (relationship, gross income, support, not a qualifying child of another)",
		"Refundable vs. nonrefundable credits: child tax credit, earned income credit, American Opportunity Credit, Lifetime Learning Credit, child and dependent care credit",
		"Estimated tax safe harbor: 90% of current-year tax or 100%/110% of prior-year tax; underpayment penalty computation concept",
		"Net investment income tax (NIIT): 3.8% surtax on lesser of net investment income or MAGI exceeding threshold; additional Medicare tax of 0.9% on earned income above threshold",
	],

	outOfScope: [
		"Detailed AMT computation (belongs to Loss Limitations / AMT topic)",
		"Kiddie tax rules at mechanics depth beyond the concept",
		"State income tax filing requirements and credits",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
