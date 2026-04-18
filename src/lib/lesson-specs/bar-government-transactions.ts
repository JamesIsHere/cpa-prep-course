import type { LessonSpec } from "./types";

// BAR/III/C — Government transactions and balances.
// 7 representative tasks across 4 topics: net position balances, fund
// balances, capital assets, and long-term liabilities (including pension
// and OPEB).

export const spec: LessonSpec = {
	topic: "Interfund Transactions",
	topicAliases: ["Income Taxes Advanced"],
	section: "bar",
	primaryRef: "BAR/III/C",
	secondaryRefs: [],

	inScope: [
		"Net position categories for government-wide statements: net investment in capital assets, restricted (expendable and nonexpendable), unrestricted — calculation and journal entries",
		"Fund balance classifications under GASB 54: nonspendable, restricted, committed, assigned, unassigned — calculation and journal entries",
		"Capital assets in government-wide statements: identification, initial measurement, subsequent depreciation and amortization (land, buildings, improvements, machinery, equipment, leases, infrastructure)",
		"General and proprietary long-term liabilities: bonds payable, notes payable, compensated absences, claims and judgments — recognition in government-wide statements",
		"Net pension liability (GASB 68) and net OPEB liability (GASB 75) recognition and measurement requirements for state and local governments",
	],

	outOfScope: [
		"Modified approach for infrastructure assets (GASB 34) at detail depth beyond concept-level awareness",
		"Actuarial methods for pension and OPEB liability computation — liabilities are given inputs at CPA exam level",
		"Tax increment financing (TIF) and conduit debt obligations at mechanics depth",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
