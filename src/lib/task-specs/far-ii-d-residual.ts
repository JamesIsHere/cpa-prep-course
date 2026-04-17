import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/II/D (Property, Plant and Equipment).
// ~18 homeless questions on impairment, ARO, depreciation methods, and
// asset disposals beyond the 7 representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/D",
	section: "far",

	aicpaTask:
		"Residual: PP&E content beyond the seven representative tasks — impairment testing (ASC 360), asset retirement obligations, depreciation method concepts, and asset disposal/held-for-sale classification.",
	aicpaSkill: "Application",
	bloomLevel: 3,

	inScope: [
		"Long-lived asset impairment (ASC 360): two-step test (recoverability test using undiscounted cash flows, then fair value measurement), impairment loss calculation, reporting unit assignment for goodwill",
		"Asset retirement obligations (ASC 410): initial measurement at fair value, accretion expense over the asset's life, changes in estimates (revisions to timing or amount), settlement and derecognition",
		"Depreciation method concepts: straight-line, double-declining balance, sum-of-years digits, units-of-production — conceptual understanding beyond just calculating depreciation expense",
		"Asset disposal and held-for-sale classification (ASC 360-10-45): criteria for held-for-sale, measurement at lower of carrying amount or fair value less costs to sell, ceased depreciation, presentation",
		"Component depreciation: IFRS requirement vs GAAP practice, identifying significant components",
		"Nonmonetary exchanges (ASC 845): commercial substance test, fair value measurement, gain/loss recognition",
	],

	keyStandards: [
		"ASC 360 — Property, Plant and Equipment (impairment, held-for-sale)",
		"ASC 410 — Asset Retirement and Environmental Obligations",
		"ASC 845 — Nonmonetary Transactions",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-property-plant-equipment",
	notes: "Direction W residual — group-level. Merges impairment + ARO + depreciation themes. Created 2026-04-17.",
};
