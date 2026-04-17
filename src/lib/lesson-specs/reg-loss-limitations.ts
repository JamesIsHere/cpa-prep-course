import type { LessonSpec } from "./types";

// Maps to REG/IV/D — individual loss limitations and AMT.

export const spec: LessonSpec = {
	topic: "Individual Taxation: Credits/AMT",
	section: "reg",
	primaryRef: "REG/IV/D",
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
