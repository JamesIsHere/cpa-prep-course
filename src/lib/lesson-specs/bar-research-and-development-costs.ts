import type { LessonSpec } from "./types";

// BAR/II/E — Research and development costs.
// 2 representative tasks: identify R&D costs and classify as expense,
// calculate R&D costs to be reported as expense.

export const spec: LessonSpec = {
	topic: "Research and Development Costs",
	topicAliases: [],
	section: "bar",
	primaryRef: "BAR/II/E",
	secondaryRefs: [],

	inScope: [
		"Definition of research and development activities under ASC 730: research is planned search for new knowledge, development is translating research into a plan or design for a new product or process",
		"Costs included in R&D: materials consumed, personnel costs, purchased intangibles with no alternative future use, contract services, indirect costs reasonably allocable",
		"General rule: R&D costs are expensed as incurred under ASC 730-10-25",
		"Tangible assets with alternative future use: capitalized and depreciated, with depreciation allocated to R&D expense during periods of R&D use",
		"Distinction between R&D costs and software development costs (ASC 985-20 / ASC 350-40 capitalization thresholds)",
	],

	outOfScope: [
		"In-process R&D acquired in a business combination (ASC 805 scope — capitalized as an indefinite-lived intangible until project completion or abandonment)",
		"IFRS treatment of development costs (IAS 38 capitalization criteria) — U.S. GAAP only",
		"R&D tax credits and their financial statement impact (REG/TCP territory)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
