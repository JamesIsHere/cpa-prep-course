import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/III/F (Leases).
// 7 homeless questions: lease modifications, lease definition criteria,
// ROU asset amortization methodology, lessee disclosure requirements,
// and cash flow classification of lease payments beyond the
// classification/measurement representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/III/F",
	section: "far",

	aicpaTask:
		"Residual: lease content beyond the representative tasks — lease modifications, lease definition criteria, ROU asset amortization concepts, lessee disclosure requirements, and cash flow statement classification of lease payments.",
	aicpaSkill: "Application",
	bloomLevel: 2,

	inScope: [
		"Lease modifications (ASC 842-10-25): determining whether a modification grants a new right of use, modification as separate new lease vs remeasurement of existing lease, partial scope reduction accounting",
		"Lease definition criteria (ASC 842-10-15): identified asset requirement, substantive substitution rights test, right to control use (direct use and obtain substantially all economic benefits)",
		"ROU asset amortization: finance lease ROU amortized on straight-line basis (typically), operating lease single lease expense pattern, impairment of ROU assets under ASC 842",
		"Lessee disclosure requirements (ASC 842-20-50): maturity analysis of lease liabilities, lease cost components (finance vs operating), weighted-average remaining lease term and discount rate",
		"Cash flow classification of lease payments: finance lease — principal in financing, interest in operating or financing; operating lease — all in operating; variable payments in operating",
		"Variable lease payments (ASC 842): payments that depend on index/rate (included in measurement) vs usage/performance-based (expensed as incurred), reassessment triggers",
	],

	keyStandards: [
		"ASC 842 — Leases",
	],

	commonMisconceptions: [
		"Treating all lease modifications as remeasurements — some create a separate new lease",
		"Classifying all finance lease cash flows as financing activities — only principal portion is financing",
	],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },
	lessonSpec: "far-leases",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
