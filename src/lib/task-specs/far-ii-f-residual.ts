import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/II/F (Intangible Assets).
// ~11 homeless questions on R&D costs, software costs, and goodwill
// impairment beyond the 3 representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/F",
	section: "far",

	aicpaTask:
		"Residual: intangible asset content beyond the three representative tasks — R&D cost accounting, software development costs (internal-use and external-sale), and goodwill impairment testing methodology.",
	aicpaSkill: "Application",
	bloomLevel: 3,

	inScope: [
		"R&D cost accounting (ASC 730): general rule of immediate expensing, exception for equipment with alternative future use, materials and personnel costs, contract R&D",
		"Software development costs for external sale (ASC 985-20): technological feasibility milestone, capitalization of costs after feasibility, amortization on greater-of-revenue-or-straight-line basis",
		"Internal-use software (ASC 350-40): three-stage model (preliminary project, application development, post-implementation), capitalization during development stage only",
		"Cloud computing arrangements (ASC 350-40): implementation costs for hosted arrangements, service vs license distinction",
		"Goodwill impairment testing: qualitative assessment option (Step 0), quantitative one-step test (comparing fair value of reporting unit to carrying amount including goodwill), elimination of the old Step 2",
		"Indefinite-lived intangible asset impairment (ASC 350-30): qualitative assessment option, quantitative test comparing fair value to carrying amount, no amortization — impairment test only",
		"Initial goodwill recognition in business combinations (ASC 805): measurement as excess of consideration over net identifiable assets acquired, bargain purchase gain when consideration is less than fair value of net assets",
	],

	keyStandards: [
		"ASC 730 — Research and Development",
		"ASC 985-20 — Software for External Sale",
		"ASC 350-40 — Internal-Use Software",
		"ASC 350-20 — Goodwill",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-intangible-assets",
	notes: "Direction W residual — group-level. Merges R&D + software + goodwill impairment themes. Created 2026-04-17.",
};
