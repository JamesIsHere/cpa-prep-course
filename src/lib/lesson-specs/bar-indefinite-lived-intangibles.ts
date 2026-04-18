import type { LessonSpec } from "./types";

// BAR/II/A — Indefinite-lived intangible assets (goodwill and other).
// 2 representative tasks: recall impairment indicators, calculate carrying
// amounts (initial and subsequent measurement including impairment) and
// prepare journal entries.

export const spec: LessonSpec = {
	topic: "Intangible Assets Advanced",
	topicAliases: [],
	section: "bar",
	primaryRef: "BAR/II/A",
	secondaryRefs: [],

	inScope: [
		"Goodwill impairment testing under ASC 350: qualitative assessment (Step 0) and quantitative test (carrying amount of reporting unit vs. fair value)",
		"Impairment indicators for goodwill and other indefinite-lived intangibles (significant adverse changes in business climate, loss of key personnel, sustained decline in stock price, etc.)",
		"Initial and subsequent measurement of indefinite-lived intangible assets (trademarks, broadcast licenses, etc.) — recognized at fair value in a business combination, not amortized, tested for impairment at least annually",
		"Journal entries for goodwill impairment loss recognition under ASU 2017-04 simplified approach",
		"Distinction between definite-lived and indefinite-lived intangible assets and the criteria for each classification",
	],

	outOfScope: [
		"Detailed fair value estimation techniques for reporting units (DCF modeling, market multiples at computational depth) — fair values are given inputs at CPA exam level",
		"Goodwill allocation to reporting units upon reorganization or partial disposal at mechanics depth",
		"In-process research and development (IPR&D) subsequent accounting beyond recognition at acquisition",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
