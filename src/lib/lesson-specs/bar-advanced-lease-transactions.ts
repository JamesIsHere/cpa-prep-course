import type { LessonSpec } from "./types";

// BAR/II/I — Leases (lessor accounting and sale-leaseback).
// 5 representative tasks: lessor lease classification, lessor asset/liability
// carrying amounts and JEs, lessor lease income, sale-leaseback JEs,
// lessee accounting from contracts.

export const spec: LessonSpec = {
	topic: "Advanced Lease Transactions",
	topicAliases: [],
	section: "bar",
	primaryRef: "BAR/II/I",
	secondaryRefs: [],

	inScope: [
		"Lessor lease classification criteria under ASC 842: sales-type, direct financing, and operating lease — the five classification tests (transfer of ownership, purchase option reasonably certain, major part of remaining economic life, substantially all of fair value, specialized nature)",
		"Lessor accounting for sales-type leases: derecognize underlying asset, recognize net investment in lease (lease receivable + unguaranteed residual), recognize selling profit or loss at commencement",
		"Lessor accounting for direct financing leases: derecognize underlying asset, recognize net investment in lease, defer selling profit in the net investment",
		"Lessor accounting for operating leases: retain underlying asset, recognize lease income on straight-line basis",
		"Sale-leaseback transactions under ASC 842-40: determine if the transfer qualifies as a sale under ASC 606, seller-lessee journal entries for sale and subsequent leaseback, buyer-lessor journal entries",
	],

	outOfScope: [
		"Lessee accounting fundamentals (right-of-use asset, lease liability, finance vs. operating from lessee perspective) — covered in FAR foundational leases",
		"Leveraged lease grandfathering under ASC 842 transition provisions",
		"Real estate lease specialization rules and land-plus-building allocation at mechanics depth",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
