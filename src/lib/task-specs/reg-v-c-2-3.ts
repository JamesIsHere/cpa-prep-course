import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";
import { REG_S_CORPS_BASE } from "./_reg-s-corps-base";

// REG/V/C/2/3 — Form 1120S review for classification completeness and accuracy.
// Pilot task-spec #6 of 9.

export const spec: TaskSpec = {
	aicpaRef: "REG/V/C/2/3",
	section: "reg",

	aicpaTask:
		"Review federal Form 1120S – U.S. Income Tax Return for an S Corporation and supporting documentation, including any source data used to create the return, to determine the completeness and accuracy of the classification of items as ordinary business income (loss), separately stated or nondeductible.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Given a partially-completed Form 1120S and supporting data (trial balance, GL detail, adjusting entries), identify MIS-CLASSIFIED items — e.g., an interest income amount reported on the ordinary income line instead of as a separately stated item, or a political contribution incorrectly deducted as a business expense when it should be nondeductible",
		"Identify NONDEDUCTIBLE items that the return preparer must exclude from both ordinary business income and separately stated items: fines and penalties, political contributions, lobbying expenses (except qualified small-amount lobbying), 50% of business meals (post-TCJA), certain entertainment expenses, life insurance premiums where the corporation is the beneficiary",
		"Evaluate whether a given item on Form 1120S has been properly classified as (a) ordinary business income/deduction, (b) separately stated item flowing through to shareholders' K-1s, or (c) nondeductible (reported on Schedule K as a non-deductible expense but not flowing to ordinary income)",
		"Review a supporting trial balance against the Form 1120S to verify completeness — identify items that should have been reported but were omitted (e.g., a capital gain from the trial balance that should have flowed to Schedule K as a separately stated item)",
	],

	keyStandards: [
		"IRC §1363 — Effect of election on corporation",
		"IRC §1366 — Pass-through of items to shareholders",
		"IRC §162 — Ordinary and necessary business expenses (what qualifies for ordinary income deduction)",
		"IRC §275 — Nondeductible taxes",
		"Form 1120S, Schedule K, Schedule K-1 — return structure",
	],

	commonMisconceptions: [
		"Treating 100% of business meals as deductible (only 50% post-TCJA, with limited temporary exceptions)",
		"Deducting political contributions as business expenses (nondeductible per IRC §162(e))",
		"Putting capital gains on the ordinary income line (separately stated)",
		"Failing to report tax-exempt interest on Schedule K as a separately stated item (it is reportable even though not taxable)",
	],

	bannedTerms: REG_S_CORPS_BASE.bannedTerms,

	targetCount: 6,
	difficultyMix: { easy: 0, medium: 50, hard: 50 },

	lessonSpec: "reg-s-corporations",

	notes:
		"L3 task — 'Review ... to determine' (Analysis). This task requires the candidate to EVALUATE a presented return/data for errors, not just calculate. Fact patterns should present a Form 1120S or a trial balance with one or more deliberate classification errors, and ask the candidate to identify what's wrong. NO easy-level questions — the skill level is Analysis and the AICPA task explicitly requires reviewing source data. Difficulty skews medium/hard.",
};
