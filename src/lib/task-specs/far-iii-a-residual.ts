import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/III/A (Accounting Changes and Error Corrections).
// ~7 homeless questions on change in reporting entity, restatement
// materiality, retrospective vs prospective application, indirect effects,
// preferability requirements, and depreciation error vs estimate change
// distinction beyond the representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/III/A",
	section: "far",

	aicpaTask:
		"Residual: accounting changes content beyond the representative tasks — change in reporting entity identification, restatement materiality criteria (SEC guidance), retrospective vs prospective application concepts, indirect effects of accounting changes, preferability and SEC requirements for voluntary principle changes, and depreciation error vs estimate change distinction.",
	aicpaSkill: "Analysis",
	bloomLevel: 3,

	inScope: [
		"Change in reporting entity identification (ASC 250): what constitutes a change in reporting entity (presenting consolidated vs individual statements, change in specific subsidiaries), retrospective application requirement, distinction from business combinations",
		"Restatement materiality criteria: quantitative and qualitative factors (SAB 99/108), rollover vs iron curtain approaches, SEC guidance on when restatement is required vs revision (Big R vs little r)",
		"Retrospective vs prospective application concepts (ASC 250): change in accounting principle requires retrospective application (with impracticability exception), change in estimate requires prospective application, change in estimate effected by change in principle",
		"Indirect effects of accounting changes: direct effects (retrospective) vs indirect effects (prospective only), examples of indirect effects (profit-sharing, royalty recalculations), recognition period for indirect effects",
		"Preferability and SEC requirements for voluntary principle changes: preferability letter from auditor, justification that new principle is preferable, SEC registrant requirements under ASC 250",
		"Depreciation error vs estimate change distinction: mathematical error in depreciation calculation (error correction, retrospective restatement) vs revised useful life or salvage value (estimate change, prospective), common exam trap of distinguishing the two",
		"ASC 250 scope and definitions: what constitutes an accounting change (principle, estimate, reporting entity) vs what does not (initial adoption, correction of error), classification of specific scenarios",
		"Restatement terminology: definition of restatement as correction of material error in previously issued financial statements, distinction from revision (immaterial errors), Big R vs little r",
		"Error vs estimate vs principle classification: definitional boundaries — failed accrual as error, non-GAAP to GAAP transition as error or principle change, change in depreciation method as estimate effected by principle change",
	],

	keyStandards: [
		"ASC 250 — Accounting Changes and Error Corrections",
		"SEC Staff Guidance — SAB 99/108 (Materiality)",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-accounting-changes",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
