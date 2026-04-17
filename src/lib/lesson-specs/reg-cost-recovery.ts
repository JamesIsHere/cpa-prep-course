import type { LessonSpec } from "./types";

// Maps to REG/III/B — property transactions: gains and losses (cost recovery focus).

export const spec: LessonSpec = {
	topic: "Property Transactions: Gains/Losses",
	section: "reg",
	primaryRef: "REG/III/B",
	secondaryRefs: [],

	inScope: [
		"MACRS depreciation: recovery periods (3/5/7/10/15/27.5/39-year), applicable conventions (half-year, mid-quarter, mid-month), 200% and 150% declining balance methods, straight-line election",
		"Bonus depreciation under Section 168(k): 100% first-year deduction for qualified property, phase-down schedule, new vs. used property eligibility",
		"Section 179 expensing: annual dollar limit, taxable income limitation, phase-out threshold, eligible property",
		"Amortization of intangible assets: Section 197 intangibles (15-year straight-line), startup/organizational costs (§195, §248, §709)",
		"Section 1245 and 1250 depreciation recapture: ordinary income recapture on disposition of depreciable personal property (§1245) and real property (§1250 / unrecaptured §1250 gain at 25%)",
	],

	outOfScope: [
		"Detailed listed property and luxury automobile depreciation limits beyond the concept",
		"Alternative Depreciation System (ADS) computations at depth beyond knowing it exists for certain property",
		"Cost segregation studies and component depreciation analysis",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
