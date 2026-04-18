import type { LessonSpec } from "./types";

// BAR/III/B — Fund-to-government-wide reconciliation.
// 2 representative tasks: prepare conversion worksheets from governmental
// fund statements to government-wide statements, prepare the reconciliation
// schedule (fund balances → net position, net change in fund balances →
// change in net position).

export const spec: LessonSpec = {
	topic: "Fund-to-Government-Wide Reconciliation",
	topicAliases: [],
	section: "bar",
	primaryRef: "BAR/III/B",
	secondaryRefs: [],

	inScope: [
		"Conversion worksheet from modified accrual (governmental fund) to full accrual (government-wide): capitalize capital assets, record depreciation, convert long-term liabilities, adjust revenue recognition differences",
		"Reconciliation of total governmental fund balances to net position of governmental activities: add capital assets net of depreciation, add long-term receivables, subtract long-term liabilities, adjust for internal service fund net assets",
		"Reconciliation of net change in fund balances to change in net position: add capital outlay as assets, subtract depreciation, adjust bond proceeds and principal payments, adjust for other accrual differences",
		"Common reconciling items: capital assets, accumulated depreciation, bonds payable, accrued interest, compensated absences, pension liabilities, deferred inflows/outflows",
		"Internal service fund allocations and the treatment of internal service fund activity in the reconciliation",
	],

	outOfScope: [
		"Proprietary fund to government-wide conversion (proprietary funds already use full accrual — no conversion needed)",
		"Component unit conversion and blending mechanics at detail depth",
		"Detailed GASB 34 implementation guidance and transitional provisions",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
