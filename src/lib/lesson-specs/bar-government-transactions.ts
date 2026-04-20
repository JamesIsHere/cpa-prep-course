import type { LessonSpec } from "./types";

// BAR/III/B — Deriving government-wide financial statements and
// reconciliation requirements.
//
// Note 2026-04-19: Re-anchored from III/C (government entity
// transactions) to III/B after a homeless audit found 64/67
// "Interfund Transactions" questions homeless at III/C. Samples
// explicitly test reciprocal/nonreciprocal classification and
// elimination in government-wide statements — that is the
// reconciliation/conversion content covered by III/B's 2 tasks
// (prepare worksheets to convert fund to government-wide; prepare
// fund balance reconciliation schedules). III/C tasks cover net
// position / fund balance / capital asset / long-term liability
// calculations, not interfund activity.
//
// "Income Taxes Advanced" alias removed: ASC 740 corporate income
// taxes are not in BAR 2026 (live in FAR). Leaving unmapped so
// those 48 questions surface in pass 2 as off-blueprint rather
// than mis-routing them.

export const spec: LessonSpec = {
	topic: "Interfund Transactions",
	section: "bar",
	primaryRef: "BAR/III/B",
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
