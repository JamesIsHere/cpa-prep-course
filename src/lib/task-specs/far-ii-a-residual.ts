import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/II/A (Cash and Cash Equivalents).
// 4 homeless questions on restricted cash classification, compensating
// balances, petty cash concepts, and credit facility disclosure beyond
// the calculation-focused representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/A",
	section: "far",

	aicpaTask:
		"Residual: cash and cash equivalents content beyond the representative tasks — restricted cash classification, compensating balance presentation, imprest petty cash system concepts, and credit facility disclosure.",
	aicpaSkill: "Application",
	bloomLevel: 2,

	inScope: [
		"Restricted cash classification (ASC 230-10-50): current vs noncurrent based on nature of restriction, balance sheet presentation, reconciliation to cash flow statement totals",
		"Compensating balance presentation: classification as restricted cash when legally restricted, disclosure requirements when informal arrangement, effect on available liquidity",
		"Imprest petty cash system: purpose and internal control rationale, replenishment entries, custodian responsibility, reconciliation concepts",
		"Credit facility disclosure: undrawn lines of credit presentation in financial statement notes, distinction from cash equivalents, commitment fee recognition",
	],

	keyStandards: [
		"ASC 230 — Statement of Cash Flows",
		"ASC 305 — Cash and Cash Equivalents",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },
	lessonSpec: "far-cash-and-cash-equivalents",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
