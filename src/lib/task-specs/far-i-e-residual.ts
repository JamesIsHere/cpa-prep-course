import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/I/E (Special Purpose Frameworks).
// 19 homeless questions on SPF classification, audit reporting on SPF
// statements, tax-basis/cash-basis/regulatory-basis mechanics.

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/E",
	section: "far",

	aicpaTask:
		"Residual: special purpose framework content beyond the four representative tasks — SPF classification, audit reporting requirements (AU-C 800), compilation reporting, disclosure requirements, and GAAP-to-SPF conversion mechanics.",
	aicpaSkill: "Application",
	bloomLevel: 3,

	inScope: [
		"SPF classification: identifying which framework applies (tax-basis, cash-basis, regulatory-basis, contractual-basis, other basis) given a scenario",
		"AU-C 800 audit reporting on SPF statements: general-use vs special-use restrictions, required explanatory paragraphs, departures from the framework, emphasis-of-matter paragraphs",
		"Compilation and review reporting on SPF statements: SSARS requirements, disclosures, compilation without note disclosures",
		"Disclosure requirements for SPF statements: subsequent events, going concern, related parties — how they differ from GAAP disclosure requirements",
		"Cash-basis vs modified cash-basis: what modifications are permitted (recording depreciation, capitalizing long-lived assets), when modified cash basis is still an SPF",
		"Tax-basis financial statements: tax return as source data, departures from tax law, presentation differences from GAAP",
		"GAAP vs SPF conceptual comparison: why entities choose SPF (cost, relevance), governance considerations for framework selection",
	],

	keyStandards: [
		"AU-C 800 — Special considerations for SPF frameworks",
		"SSARS — Compilation and review standards",
		"ASC 105 — GAAP hierarchy (OCBOA/SPF classification)",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-special-purpose-frameworks",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
