import type { LessonSpec } from "./types";

// Maps to REG/IV/E (filing status/dependents) with secondary coverage of REG/IV/F (credits/tax computation).

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
