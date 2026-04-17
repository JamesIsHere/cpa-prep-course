import type { TaskSpec } from "./types";

// Direction W: group-level residual task-spec for FAR/I/C
// (State and Local Government Concepts).
//
// FAR/I/C has only 2 representative tasks:
//   1. Recall measurement focus and basis of accounting concepts (L1)
//   2. Determine the appropriate fund type (L2)
//
// The bank has 64+ questions on GASB-specific standards that don't fit
// either task. This residual spec catches government content BEYOND the
// two representative tasks. It anchors at the group level (3-part ref)
// per Direction W multi-level anchoring.
//
// Sub-themes identified from Phase 1D homeless analysis:
//   - GASB 54 fund balance classification (~8 questions)
//   - Modified accrual revenue recognition application (~9 questions)
//   - GASB 33 nonexchange transaction classification (~5 questions)
//   - Government-wide statement presentation/classification (~11 questions)
//   - GASB 68/75 pension and OPEB accounting (~7 questions)
//   - Interfund transactions and eliminations (~6 questions)
//   - Component unit reporting (GASB 14/61) (~3 questions)
//   - Other GASB-specific standards (49, 65, 87, 89, 91) (~15 questions)

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/C",
	section: "far",

	aicpaTask:
		"Residual: government accounting content within the State and Local Government group that is not covered by the two AICPA representative tasks (measurement focus/basis recall and fund determination).",
	aicpaSkill: "Application",
	bloomLevel: 3, // Ceiling — content ranges L1-L4, capped at L3 (most common level in the homeless set)

	inScope: [
		"GASB 54 fund balance classification: nonspendable, restricted, committed, assigned, unassigned categories; spending order (default GASB order vs. custom policy); reclassification between categories",
		"Modified accrual revenue recognition: measurable and available criteria, 60-day availability rule, application to specific revenue types (property taxes, sales taxes, grants); deferred inflows for unavailable revenue",
		"GASB 33 nonexchange transactions: four categories (derived, imposed, government-mandated, voluntary); recognition timing (eligibility requirements, time requirements, purpose restrictions)",
		"Government-wide statement presentation: Statement of Net Position categories (net investment in capital assets, restricted, unrestricted); Statement of Activities format (program revenues vs general revenues, net expense presentation); activity categories (governmental, business-type)",
		"GASB 68 pension accounting: net pension liability measurement, pension expense components, deferred inflows/outflows from pensions, cost-sharing vs agent vs single-employer plans, discount rate methodology",
		"GASB 75 OPEB accounting: total OPEB liability, OPEB expense, deferred items, discount rate selection, actuarial methods",
		"Interfund transactions: interfund loans, advances, transfers, reimbursements; recording within funds; elimination at government-wide level",
		"Component unit reporting (GASB 14/61): blended vs discrete presentation criteria, fiscal dependency, financial benefit/burden relationship",
		"Fund-to-government-wide reconciliation: reconciling items between fund statements and government-wide statements (capital assets, long-term liabilities, internal service fund consolidation)",
		"Major fund reporting criteria under GASB 34: 10%/5% test, reporting requirements",
		"GASB 65 items previously reported as assets and liabilities: bond issuance cost treatment across fund types",
		"GASB 87 lease accounting for government entities: lessee accounting, classification in proprietary vs governmental funds",
		"Other GASB standards: GASB 49 (pollution remediation), GASB 89 (interest capitalization), GASB 91 (conduit debt)",
	],

	keyStandards: [
		"GASB 33 — Nonexchange transactions",
		"GASB 34 — Basic financial statements",
		"GASB 54 — Fund balance reporting",
		"GASB 65 — Items previously reported as assets and liabilities",
		"GASB 68 — Pension accounting",
		"GASB 75 — OPEB accounting",
		"GASB 87 — Leases",
		"GASB 14/61 — Component units",
	],

	commonMisconceptions: [
		"Confusing fund balance categories (committed vs restricted — committed requires formal government action, restricted requires external constraints)",
		"Applying accrual revenue recognition rules to governmental funds (governmental funds use modified accrual, not full accrual)",
		"Treating voluntary nonexchange revenues the same as imposed nonexchange (voluntary have eligibility requirements, imposed do not)",
		"Assuming personal guarantees create component unit relationships (fiscal dependency requires actual financial support, not just guarantees)",
	],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },

	lessonSpec: "far-state-local-government",

	notes:
		"Direction W residual spec — group-level (3-part ref). This is NOT an AICPA representative task; it covers the content gap between the 2 representative tasks and the actual bank content. The 64 homeless questions from Phase 1D all fall within FAR/I/C but don't match either representative task. bloomLevel set to 3 as a ceiling because the homeless set spans L1-L4 with L3 being most common. Created 2026-04-17.",
};
