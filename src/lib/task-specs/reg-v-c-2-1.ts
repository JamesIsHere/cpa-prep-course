import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";
import { REG_S_CORPS_BASE } from "./_reg-s-corps-base";

// REG/V/C/2/1 — Calculate S corporation ordinary business income and separately stated items.
// Pilot task-spec #4 of 9.

export const spec: TaskSpec = {
	aicpaRef: "REG/V/C/2/1",
	section: "reg",

	aicpaTask:
		"Calculate ordinary business income (loss) and separately stated items for an S corporation for tax purposes.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Given a trial balance or income statement for an S corporation, compute ordinary business income (loss): gross income from operations minus operating deductions (cost of goods sold, wages, rent, depreciation, etc.), before separately stated items",
		"Identify and SEPARATE the separately stated items that must be reported on Schedule K-1 and flow through to shareholders individually: interest income (portfolio), dividend income, capital gains and losses (short-term and long-term), Section 1231 gains and losses, charitable contributions, Section 179 deduction, foreign taxes paid, tax-exempt interest, depletion deduction, investment interest expense",
		"Distinguish items that are ordinary business income/deduction (aggregated into the single ordinary income line) from items that are separately stated (passed through on their own line because they could affect each shareholder differently)",
		"Allocate ordinary business income (loss) to shareholders on a per-share per-day basis based on stock ownership (the default allocation when no special election is made)",
		"Calculate each shareholder's K-1 share of ordinary income and separately stated items given their stock ownership percentage",
	],

	keyStandards: [
		"IRC §1363 — Effect of election on corporation (generally no entity-level tax)",
		"IRC §1366(a) — Pass-through of items to shareholders",
		"IRC §1366(b) — Character of items",
	],

	commonMisconceptions: [
		"Lumping interest income or dividend income into ordinary business income (they are separately stated)",
		"Netting capital gains against ordinary income at the entity level (separately stated: the character passes through)",
		"Treating a charitable contribution as a business expense (it is separately stated so shareholders can apply their individual AGI limits)",
		"Forgetting to allocate on a per-share per-day basis when stock ownership changes mid-year",
	],

	bannedTerms: REG_S_CORPS_BASE.bannedTerms,

	targetCount: 8,
	difficultyMix: { easy: 20, medium: 60, hard: 20 },

	lessonSpec: "reg-s-corporations",

	notes:
		"L2 task — 'Calculate' (Application). Questions must require the candidate to PERFORM a computation from a given fact pattern (trial balance, income statement, or shareholder ownership schedule), NOT just define what separately stated items are (that would be L1 and belongs in 1/2). The difficulty mix skews medium/hard because calculation tasks typically require multi-step fact patterns. The per-share per-day allocation is the DEFAULT method; the Section 1377(a)(2) closing-of-the-books election is OUT OF SCOPE per the base.",
};
