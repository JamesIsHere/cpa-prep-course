import type { LessonSpec } from "./types";

// BAR/II/K — Employee benefit plans (plan-level financial statements).
// 4 representative tasks: identify required financial statements for DB and
// DC plans, recall note disclosure requirements, prepare statement of changes
// in net assets, prepare statement of net assets available for benefits.

export const spec: LessonSpec = {
	topic: "Pension and Postretirement Benefits",
	topicAliases: [],
	section: "bar",
	primaryRef: "BAR/II/K",
	secondaryRefs: [],

	inScope: [
		"Required financial statements for defined benefit pension plans under ASC 960: statement of net assets available for benefits, statement of changes in net assets available for benefits, statement of accumulated plan benefits and changes therein",
		"Required financial statements for defined contribution pension plans under ASC 962: statement of net assets available for benefits, statement of changes in net assets available for benefits",
		"Note disclosure requirements for DB and DC plans: description of plan, funding policy, significant accounting policies, plan amendments, tax status",
		"Preparation of statement of net assets available for benefits: investments at fair value, receivables (employer contributions, participant contributions), liabilities, net assets",
		"Preparation of statement of changes in net assets available for benefits: additions (contributions, investment income) and deductions (benefits paid, administrative expenses)",
	],

	outOfScope: [
		"Employer-side pension accounting under ASC 715 (net periodic pension cost components, PBO/ABO calculations, funded status recognition) — this is the plan-level reporting topic, not employer accounting",
		"ERISA regulatory compliance and DOL filing requirements at detail depth",
		"Actuarial valuation methods and assumptions (discount rate selection, mortality tables) at computational depth",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
