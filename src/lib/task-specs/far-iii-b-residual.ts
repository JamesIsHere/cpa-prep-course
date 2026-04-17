import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/III/B (Contingencies and Commitments).
// ~8 homeless questions on loss contingency accrual criteria, contingency
// measurement, restructuring termination benefits, uncertain tax positions,
// warranty vs contingency classification, and ARO boundary questions
// beyond the representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/III/B",
	section: "far",

	aicpaTask:
		"Residual: contingencies content beyond the representative tasks — loss contingency accrual criteria (ASC 450 general), contingency measurement (minimum of range), restructuring termination benefits (ASC 420), uncertain tax positions (ASC 740-10 vs ASC 450), warranty revenue recognition (extended warranties under ASC 606 vs contingencies), and ARO vs loss contingency classification boundary.",
	aicpaSkill: "Analysis",
	bloomLevel: 3,

	inScope: [
		"Loss contingency accrual criteria (ASC 450): probable and reasonably estimable threshold, disclosure-only for reasonably possible, remote contingencies and limited disclosure, litigation contingency assessment",
		"Contingency measurement — minimum of range: when a range of loss exists and no amount is more likely, accrue at the minimum; disclosure of the range; subsequent changes in estimate",
		"Restructuring termination benefits (ASC 420): one-time termination benefits recognition timing (communication date vs future service period), exit cost accrual at fair value, contract termination costs",
		"Uncertain tax positions (ASC 740-10): two-step recognition and measurement (more-likely-than-not threshold, then largest amount >50% cumulative probability), distinction from general loss contingency framework under ASC 450",
		"Warranty classification boundary: assurance-type warranties (ASC 450 contingency accrual) vs service-type extended warranties (ASC 606 separate performance obligation), recognition timing differences",
		"ARO vs loss contingency classification: asset retirement obligations (ASC 410) arise from legal obligations to retire assets, loss contingencies (ASC 450) arise from uncertain future events — distinguishing the two when environmental remediation is involved",
	],

	keyStandards: [
		"ASC 450 — Contingencies",
		"ASC 420 — Exit or Disposal Cost Obligations",
		"ASC 740-10 — Income Taxes: Uncertain Tax Positions",
		"ASC 606 — Revenue from Contracts with Customers",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-contingencies",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
