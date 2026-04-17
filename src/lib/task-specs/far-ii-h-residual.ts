import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/II/H (Debt).
// 5 homeless questions on debt extinguishment, restructuring, and
// fair value option for liabilities beyond the 5 representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/H",
	section: "far",

	aicpaTask:
		"Residual: debt content beyond the five representative tasks — early extinguishment gain/loss, troubled debt restructuring, convertible debt bifurcation, and debt covenant concepts.",
	aicpaSkill: "Application",
	bloomLevel: 3,

	inScope: [
		"Early extinguishment of debt: gain/loss calculation (reacquisition price vs carrying amount including unamortized premium/discount and issuance costs), income statement presentation",
		"Troubled debt restructuring (ASC 470-60): modification vs exchange, gain/loss recognition for debtor and creditor, effective interest rate recalculation",
		"Convertible debt: beneficial conversion feature (legacy), ASU 2020-06 simplified model, induced conversion",
		"Debt covenant concepts: classification of long-term debt as current when covenants are violated, subjective acceleration clauses, waiver accounting",
	],

	keyStandards: [
		"ASC 470 — Debt",
		"ASC 470-60 — Troubled Debt Restructuring",
		"ASU 2020-06 — Convertible instruments",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-debt",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
