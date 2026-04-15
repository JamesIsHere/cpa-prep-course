import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";
import { REG_S_CORPS_BASE } from "./_reg-s-corps-base";

// REG/V/C/3/1 — Calculate shareholder stock basis from operations, contributions, distributions.
// Pilot task-spec #8 of 9.

export const spec: TaskSpec = {
	aicpaRef: "REG/V/C/3/1",
	section: "reg",

	aicpaTask:
		"Calculate a shareholder\u2019s stock basis in an S corporation for tax purposes resulting from business operations, cash contributions by the shareholder and cash distributions to the shareholder.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Compute end-of-year stock basis given: beginning stock basis, ordinary business income/loss, separately stated income items (interest, dividends, capital gains, tax-exempt income), separately stated deductions (charitable contributions, Section 179), distributions, and cash contributions by the shareholder",
		"The correct ORDERING of stock basis adjustments: (1) increase for all income items (ordinary income, separately stated income items INCLUDING tax-exempt income, capital contributions), (2) decrease for distributions (non-dividend distributions, to the extent of remaining basis), (3) decrease for losses and deductions (ordinary losses, separately stated losses, Section 179, nondeductible expenses) — this ordering matters because distributions are evaluated BEFORE losses",
		"The floor at zero: stock basis cannot go below zero. If distributions plus losses exceed available stock basis, distributions are taken first (to the extent of basis), and any loss in excess of remaining basis is SUSPENDED under Section 1366(d) until future stock basis is created",
		"Cash contributions increase stock basis dollar-for-dollar (unlike loans, which create debt basis — that's task 3/2)",
		"Cash distributions in excess of stock basis are treated as capital gain (when the corporation has no C-corp E&P, which is the default assumption since C-corp E&P interactions are out of scope per the base)",
		"The inclusion of tax-exempt income as a stock basis increase even though it doesn't increase AAA — stock basis and AAA have different adjustment rules",
	],

	keyStandards: [
		"IRC §1367(a) — Adjustments to basis of stock",
		"IRC §1366(d) — Limitation on pass-through (basis limitation)",
		"IRC §1368(b) — Distribution treatment when no C-corp E&P",
	],

	commonMisconceptions: [
		"Applying losses BEFORE distributions (ordering: income → distributions → losses)",
		"Excluding tax-exempt income from stock basis (it IS included in stock basis, even though it is NOT included in AAA)",
		"Letting stock basis go negative (it cannot — excess losses are suspended)",
		"Treating a capital contribution as a distribution reversal (contributions add to basis; distributions subtract)",
		"Confusing stock basis with AAA (AAA is entity-level; stock basis is per-shareholder)",
		"Forgetting that a cash distribution in excess of basis becomes capital gain (not return of capital or ordinary income)",
	],

	bannedTerms: REG_S_CORPS_BASE.bannedTerms,

	targetCount: 10,
	difficultyMix: { easy: 20, medium: 60, hard: 20 },

	inheritedFromTopicSpec: ["reg-s-corporations"],

	notes:
		"L2 task — 'Calculate' (Application). This is the single most common S-corp exam topic and should have the highest target count in the group. Questions must give a fact pattern that requires the candidate to compute end-of-year stock basis from multiple moving pieces. Debt basis (task 3/2) is a separate calculation — a question that involves BOTH stock and debt basis simultaneously could go under either task, but the classifier should prefer 3/1 if the stock basis mechanics are the primary test, 3/2 if the debt basis repayment mechanics are the primary test.",
};
