import type { LessonSpec } from "./types";

// BAR/II/B — Internally developed software.
// 2 representative tasks: recall capitalization criteria for internal-use
// and sale software, calculate capitalized amounts and amortization.

export const spec: LessonSpec = {
	topic: "Internal-Use Software and Cloud Computing",
	topicAliases: [],
	section: "bar",
	primaryRef: "BAR/II/B",
	secondaryRefs: [],

	inScope: [
		"Three-stage model for internal-use software under ASC 350-40: preliminary project stage (expense), application development stage (capitalize), post-implementation stage (expense)",
		"Capitalization criteria for software developed for sale under ASC 985-20: technological feasibility as the capitalization threshold, amortization using greater of straight-line or revenue-based method",
		"Cloud computing arrangements (hosting arrangements) under ASU 2018-15: customer's accounting for implementation costs — capitalize if the arrangement includes a software license, expense if it is a service contract (with certain implementation costs capitalized)",
		"Calculation of capitalized software costs and related amortization expense",
		"Impairment of capitalized software costs — triggers and measurement",
	],

	outOfScope: [
		"Software revenue recognition under ASC 606 (five-step model application to software licenses) — belongs to Revenue Recognition topic",
		"Detailed cloud computing contract analysis beyond the license-vs-service distinction",
		"Platform-as-a-service (PaaS) and infrastructure-as-a-service (IaaS) technical architecture distinctions",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
