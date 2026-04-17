import type { LessonSpec } from "./types";

// Maps to REG/III/A — property transactions: basis determination.

export const spec: LessonSpec = {
	topic: "Property Transactions: Basis",
	topicAliases: ["Like-Kind Exchanges"],
	section: "reg",
	primaryRef: "REG/III/A",
	secondaryRefs: [],

	inScope: [
		"Tax basis of purchased assets: cost basis including capitalized acquisition costs, allocation of lump-sum purchase price among assets",
		"Basis of property converted from personal to business use: lower of adjusted basis or FMV at date of conversion",
		"Basis of gifted property: carryover basis with dual-basis rule (FMV at date of gift if lower than donor's basis, for loss purposes), effect of gift tax paid on basis",
		"Basis of inherited property: stepped-up (or stepped-down) basis to FMV at date of death or alternate valuation date; community property full step-up",
		"Wash sale rule: disallowed loss added to basis of replacement stock; 61-day window (30 days before and after)",
	],

	outOfScope: [
		"Section 1031 like-kind exchange basis calculations at depth (separate lesson topic)",
		"Partnership inside/outside basis mechanics (belongs to Partnerships topic)",
		"Section 362 corporate basis rules at depth (belongs to C Corporations topic)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
