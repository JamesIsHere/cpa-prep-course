import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";
import { REG_S_CORPS_BASE } from "./_reg-s-corps-base";

// REG/V/C/2/2 — Calculate impact of current year operations on AAA.
// Pilot task-spec #5 of 9.

export const spec: TaskSpec = {
	aicpaRef: "REG/V/C/2/2",
	section: "reg",

	aicpaTask:
		"Calculate the impact of current year operations on an S corporation's accumulated adjustments account.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Compute the end-of-year AAA given: beginning AAA, ordinary business income (loss), separately stated income items (interest, dividends, capital gains), separately stated deductions (charitable contributions, Section 179), and non-dividend distributions to shareholders",
		"AAA increase items: ordinary business income, separately stated income items (interest, dividends, capital gains, recaptured depreciation if any)",
		"AAA decrease items: ordinary business losses, separately stated deductions (charitable contributions, Section 179 deduction, unrealized losses), non-dividend distributions (distributions that come out of AAA rather than being taxed as dividends)",
		"The ordering rules for AAA adjustments: net income items are added first, then distributions are deducted, then losses/deductions are subtracted. (Note: this differs from stock basis ordering, which is income → distributions → losses — but for AAA specifically, the end-of-year impact is computed as beginning + net income − distributions − losses)",
		"Recognition that AAA can go NEGATIVE from losses (unlike stock basis, which cannot go below zero)",
		"Recognition that tax-exempt income does NOT increase AAA (it increases OAA, which is out of scope at the calculation level — so questions should simply state that tax-exempt income bypasses AAA)",
	],

	keyStandards: [
		"IRC §1368(e)(1) — Accumulated adjustments account definition",
		"IRC §1366 — Character of items flowing through",
	],

	commonMisconceptions: [
		"Adding tax-exempt income to AAA (it goes to OAA, not AAA)",
		"Treating AAA as identical to stock basis (AAA is entity-level tracking; stock basis is per-shareholder)",
		"Letting the AAA decrease below zero because of distributions (distributions can only reduce AAA to zero; any excess is a distribution from accumulated E&P or from paid-in capital or a capital gain — but since C-corp E&P is out of scope, simplify to: distributions cannot reduce AAA below zero)",
		"Forgetting that Section 179 deduction passes through and decreases AAA",
	],

	bannedTerms: REG_S_CORPS_BASE.bannedTerms,

	targetCount: 8,
	difficultyMix: { easy: 20, medium: 60, hard: 20 },

	lessonSpec: "reg-s-corporations",

	notes:
		"L2 task — 'Calculate' (Application). AAA mechanics get easily confused with stock basis mechanics — the two have SIMILAR but not IDENTICAL adjustment rules. Questions should force the candidate to compute AAA end-of-year balance from a multi-item fact pattern. Do NOT test OAA mechanics at the calculation level (base outOfScope). Do NOT test AAA bypass election or AAA freezing (base bannedTerms).",
};
