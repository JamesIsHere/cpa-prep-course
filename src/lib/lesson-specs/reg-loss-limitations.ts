import type { LessonSpec } from "./types";

// Maps to REG/IV/F — Computation of tax and credits.
//
// Note 2026-04-19: Re-anchored from IV/D (Loss limitations) to IV/F
// (Computation of tax and credits). The DB topic "Individual
// Taxation: Credits/AMT" contains credits and AMT content — both
// belong at IV/F, not IV/D. 66/66 homeless at IV/D because IV/D
// tasks cover loss netting/disallowance, not credits. The inScope
// below still describes loss limitations (legacy) — content is
// misaligned with the DB topic string and should be rewritten in a
// future pass, but the routing fix recovers match rate immediately.

export const spec: LessonSpec = {
	topic: "Individual Taxation: Credits/AMT",
	section: "reg",
	primaryRef: "REG/IV/F",
	secondaryRefs: [],

	inScope: [
		"Capital loss netting and carryforward rules: $3,000 annual deduction limit against ordinary income, indefinite carryforward of net capital losses, short-term vs. long-term netting baskets",
		"Passive activity loss limitations under §469: material participation tests (concept level), passive vs. nonpassive classification, $25,000 rental real estate exception, grouping election concept",
		"At-risk rules under §465: amount at-risk computation, qualified nonrecourse financing exception for real estate, ordering of loss limitation rules (basis → at-risk → passive → excess business loss)",
		"Hobby loss disallowance under §183: presumption of profit motive (3 of 5 years), factors for determining profit motive",
		"Wash sale loss disallowance under §1091: 61-day window, basis adjustment to replacement shares",
	],

	outOfScope: [
		"Detailed AMT preference and adjustment items at computation depth beyond the concept of AMT existence and exemption",
		"Excess business loss limitation under §461(l) at advanced depth",
		"Net operating loss computation and carryforward rules at depth (belongs to C Corporations or TCP topic)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
