import type { LessonSpec } from "./types";

// BAR/II/C — Revenue recognition (five-step model).
// 2 representative tasks: interpret contracts to determine revenue amount
// and timing using the five-step model, interpret data analytics outputs
// to detect discrepancies in revenue recognition.

export const spec: LessonSpec = {
	topic: "Advanced Revenue and Intangibles",
	topicAliases: [],
	section: "bar",
	primaryRef: "BAR/II/C",
	secondaryRefs: [],

	inScope: [
		"ASC 606 five-step model: identify the contract, identify performance obligations, determine the transaction price, allocate the transaction price, recognize revenue when (or as) each performance obligation is satisfied",
		"Variable consideration estimation (expected value vs. most likely amount) and the constraint on variable consideration",
		"Over-time vs. point-in-time recognition criteria and the three over-time criteria (simultaneous receipt and consumption, customer controls asset as created, no alternative use plus enforceable right to payment)",
		"Contract modifications: treated as a separate contract, prospective adjustment, or cumulative catch-up depending on modification terms",
		"Using data analytics outputs (reports, visualizations) to detect revenue recognition discrepancies such as errors, outliers, and unexpected contract elements",
	],

	outOfScope: [
		"Industry-specific revenue guidance (construction contracts, real estate, software licensing nuances) beyond ASC 606 core model",
		"Detailed standalone selling price estimation techniques at computational depth (adjusted market assessment, expected cost plus margin, residual approach beyond concept)",
		"Transition methods (full retrospective vs. modified retrospective) at mechanics depth",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
