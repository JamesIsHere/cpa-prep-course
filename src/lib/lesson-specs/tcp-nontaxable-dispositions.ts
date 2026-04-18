import type { LessonSpec } from "./types";

// TCP/IV/A — "Nontaxable disposition of assets."
//
// DB topic: "Nontaxable Dispositions" (66 questions).
//
// AICPA representative tasks cover §1031 like-kind exchanges, §1033
// involuntary conversions, §121 home sale exclusion, and wash sale
// rules under §1091 at concept level.

export const spec: LessonSpec = {
	topic: "Nontaxable Dispositions",
	section: "tcp",
	primaryRef: "TCP/IV/A",
	secondaryRefs: [],

	inScope: [
		"Like-kind exchange under §1031 — qualifying property (real property held for productive use or investment), boot recognition (cash or non-like-kind property received), basis computation for replacement property (carryover basis adjusted for boot and gain recognized), identification and exchange period rules (45-day identification, 180-day completion)",
		"Like-kind exchange limitations — personal property no longer qualifies post-TCJA, related party rules under §1031(f) (2-year holding requirement), partnership interest exclusion",
		"Involuntary conversion under §1033 — qualifying events (destruction, theft, condemnation, seizure), nonrecognition of gain when proceeds are reinvested in similar or related-use property, replacement period (2 years, 3 years for real property condemnation), partial recognition when proceeds exceed reinvestment cost",
		"Section 121 home sale exclusion — $250,000 exclusion ($500,000 MFJ), ownership and use tests (owned and used as principal residence for 2 of the 5 years preceding sale), reduced exclusion for unforeseen circumstances (health, employment, other IRS-specified events), frequency limitation (generally once every 2 years)",
		"Wash sale rule under §1091 — disallowed loss on sale of securities when substantially identical securities are acquired within 30 days before or after the sale, basis adjustment (disallowed loss added to basis of replacement securities), holding period tacking",
		"Installment sale under §453 at concept level — deferral of gain recognition, gross profit percentage computation, each payment = return of basis + gain + interest, limitations (dealer property, depreciation recapture recognized in year of sale)",
		"Basis computation in nontaxable transactions — carryover/substituted basis concepts, adjustment for boot received and gain recognized, the general principle that unrecognized gain is preserved in the basis of replacement/received property",
		"Interaction of depreciation recapture with nontaxable dispositions — §1245/§1250 recapture in like-kind exchanges (recapture to the extent of boot), §1250 recapture in installment sales (recognized in year of sale, not deferred)",
	],

	outOfScope: [
		"Like-kind exchange through qualified intermediary mechanics at depth — escrow arrangements, reverse exchange structures, improvement exchange structures",
		"Detailed §1033 replacement property standards — 'similar or related in service or use' vs. 'like-kind' for condemnation of real property, functional use test vs. taxpayer use test",
		"Section 1044/§1045 qualified small business stock rollover rules",
		"Tax-free reorganizations under §368 — corporate reorganization types (A through G), these belong to entity-level TCP/III topics",
		"Section 351 corporate formation — covered in TCP/II/A/2 and TCP/II/B specs",
		"Section 721 partnership formation — covered in TCP/II/C spec",
		"Installment sale to related parties at depth — §453(e) resale rules, §453(g) related party rules",
		"Private annuity and self-canceling installment note (SCIN) transactions",
		"Opportunity Zone deferrals under §1400Z-2 at depth",
		"Like-kind exchange combined with §1031/§121 principal residence conversion strategies at depth",
	],

	keyStandards: [
		"IRC §1031 — Like-kind exchanges",
		"IRC §1033 — Involuntary conversions",
		"IRC §121 — Exclusion of gain from sale of principal residence",
		"IRC §1091 — Wash sales",
		"IRC §453 — Installment method",
		"IRC §1245 — Gain from disposition of certain depreciable property (recapture)",
		"IRC §1250 — Gain from disposition of certain depreciable realty (recapture)",
		"Form 8824 — Like-Kind Exchanges",
	],

	commonMisconceptions: [
		"Believing personal property still qualifies for §1031 like-kind exchange. Post-TCJA (2018), only real property held for productive use or investment qualifies. Personal property (equipment, vehicles, artwork) no longer qualifies.",
		"Believing the entire gain is deferred in a §1031 exchange when boot is received. Gain is recognized to the extent of boot received (cash plus FMV of non-like-kind property). Only the remaining gain is deferred through basis reduction in the replacement property.",
		"Confusing the §121 ownership test with the use test. The taxpayer must meet BOTH tests — owned the home for at least 2 of the 5 years AND used it as a principal residence for at least 2 of the 5 years. The periods need not overlap.",
		"Believing the wash sale rule permanently disallows the loss. The loss is not permanently lost — it is added to the basis of the replacement securities, effectively deferring the loss recognition until the replacement securities are eventually sold (without triggering another wash sale).",
		"Applying the §1033 2-year replacement period from the date of the involuntary event. The replacement period runs from the end of the tax year in which gain is first realized (or the date of the event for condemnation), not from the event date itself for most involuntary conversions. Condemnation of real property gets a 3-year period.",
		"Believing depreciation recapture is deferred in like-kind exchanges. In a §1031 exchange with boot, depreciation recapture under §1245 is recognized to the extent of gain recognized (boot). The recapture 'comes first' before any §1231 gain character.",
		"Treating installment sales as available for all property types. Dealer dispositions of inventory and property sold at a loss do not qualify for installment method treatment. Additionally, depreciation recapture must be recognized in the year of sale regardless of installment treatment.",
	],

	representativeDifficulty: "medium",

	notes:
		"TCP/IV/A covers the core nontaxable disposition mechanisms tested on the CPA exam. The §1031 like-kind exchange and §121 home sale exclusion are the most heavily tested. Questions should present scenarios requiring basis computation in the replacement property and determination of gain recognized (especially when boot is involved). The post-TCJA limitation to real property for §1031 is a current exam priority.",
};
