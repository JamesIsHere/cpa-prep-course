import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";
import { REG_S_CORPS_BASE } from "./_reg-s-corps-base";

// REG/V/C/2/4 — Review and resolve discrepancies from automated diagnostic checks on 1120S.
// Pilot task-spec #7 of 9.

export const spec: TaskSpec = {
	aicpaRef: "REG/V/C/2/4",
	section: "reg",

	aicpaTask:
		"Review and resolve discrepancies identified by automated diagnostic and validation checks to ensure the completeness and accuracy of the ordinary business income (loss) and separately stated items reported on Form 1120S – U.S. Income Tax Return for an S Corporation based on the source data used to prepare the form.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Given an automated diagnostic warning on a Form 1120S (e.g., 'Schedule K line 1 does not equal the sum of Schedule K-1 line 1 amounts', or 'Schedule L beginning balance does not tie to prior year ending balance'), identify the source of the discrepancy and how to resolve it",
		"Reconcile Schedule K (partnership-level totals) to the sum of Schedule K-1 items (per-shareholder allocations). Identify allocation errors where K-1s do not sum to the Schedule K total",
		"Identify discrepancies between the trial balance and Form 1120S line items — e.g., a depreciation expense on the trial balance that doesn't match the depreciation deducted on the 1120S because of a Section 179 timing difference, and determine which version is correct",
		"Recognize that a diagnostic saying 'ordinary business income does not tie to supporting schedule' requires tracing individual items back to source documentation (GL detail, adjusting entries, trial balance)",
		"Evaluate which of several presented 'fixes' for a diagnostic discrepancy is correct — the fix must address the ROOT CAUSE and not just mask the symptom",
	],

	keyStandards: [
		"IRC §1366 — Pass-through of items to shareholders",
		"Form 1120S Schedule K and Schedule K-1 structure and reconciliation requirements",
	],

	commonMisconceptions: [
		"Resolving a K-to-K-1 discrepancy by adjusting Schedule K instead of fixing the per-shareholder allocation (the allocation is the source of truth derived from ownership)",
		"Treating a beginning-balance discrepancy on Schedule L as a current-year error instead of a prior-year reconciliation issue",
		"Accepting the first diagnostic warning as the error without tracing back to source data",
	],

	bannedTerms: REG_S_CORPS_BASE.bannedTerms,

	targetCount: 4,
	difficultyMix: { easy: 0, medium: 40, hard: 60 },

	inheritedFromTopicSpec: ["reg-s-corporations"],

	notes:
		"L3 task — 'Review and resolve discrepancies' (Analysis). This is a newer-style AICPA task reflecting the 2026 blueprint's emphasis on automated tax-prep-tool workflows. Questions should present a DIAGNOSTIC warning (e.g., 'Schedule K line 1 exceeds the sum of Schedule K-1 line 1 by $500') and ask the candidate to identify the root cause from several candidate explanations. Target count is low (4) because this is a new and narrower task than 2/3 (which is broader classification review).",
};
