import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/II/G (Payables and Accrued Liabilities).
// ~7 homeless questions on current liability classification edge cases,
// refund liabilities under ASC 606, and gift card deferred revenue
// classification beyond the representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/G",
	section: "far",

	aicpaTask:
		"Residual: payables content beyond the representative tasks — classification questions (current portion of long-term debt, security deposits, retention payables, collected sales tax, escheat liability), refund liability for sales returns (ASC 606 contract liability), and gift card deferred revenue classification.",
	aicpaSkill: "Application",
	bloomLevel: 2,

	inScope: [
		"Current portion of long-term debt classification (ASC 470-10-45): reclassification criteria, refinancing exceptions (intent and ability to refinance on a long-term basis), subjective acceleration clauses",
		"Security deposit classification: refundable deposits as current vs noncurrent liability based on lease term, offsetting against receivables prohibition",
		"Retention payables and construction holdbacks: classification as current liability when payment is expected within the operating cycle, measurement at contract amount",
		"Collected sales tax liability: agent relationship, gross vs net presentation, timing of remittance and liability recognition",
		"Escheat liability: unclaimed property obligations to state governments, measurement and classification, recognition timing based on state dormancy periods",
		"Refund liability for sales returns (ASC 606): variable consideration constraint, refund liability and return asset recognition, subsequent remeasurement at each reporting period",
		"Gift card deferred revenue classification: contract liability recognition at issuance, breakage revenue recognition over expected redemption pattern (ASC 606), distinction between homogeneous pool and individual card tracking",
	],

	keyStandards: [
		"ASC 210 — Balance Sheet",
		"ASC 606 — Revenue from Contracts with Customers",
		"ASC 470-10-45 — Debt: Classification of Current Liabilities",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-payables-and-accrued-liabilities",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
