import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";
import { REG_S_CORPS_BASE } from "./_reg-s-corps-base";

// REG/V/C/3/2 — Calculate changes in debt basis from current year loan repayment.
// Pilot task-spec #9 of 9.

export const spec: TaskSpec = {
	aicpaRef: "REG/V/C/3/2",
	section: "reg",

	aicpaTask:
		"Calculate changes in a shareholder\u2019s debt basis in an S corporation resulting from current year repayment of debt.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Compute the change in debt basis from a partial or full repayment of shareholder debt to the S corporation during the year, given the beginning debt basis and the amount repaid",
		"Recognize that debt basis is created ONLY by direct shareholder loans to the S corporation — third-party loans guaranteed by the shareholder do NOT create debt basis unless and until the shareholder actually makes payments on the guarantee",
		"Apply the ordering rules for basis adjustments involving both stock and debt: losses that cannot be absorbed by stock basis reduce debt basis (down to a floor of zero); subsequent income items RESTORE debt basis FIRST before increasing stock basis",
		"Recognize the GAIN consequence when debt basis has been reduced below face value and the loan is then repaid: the repayment is partially treated as a return of basis (up to the adjusted debt basis) and partially as taxable income (the difference between repayment and adjusted debt basis). If the debt is evidenced by a note, the gain is capital gain; if not evidenced by a note, the gain is ordinary income",
		"Compute the income recognized on a loan repayment in the scenario where prior losses have reduced debt basis: income = repayment amount − (repayment × adjusted_debt_basis / face_amount)",
	],

	keyStandards: [
		"IRC §1367(b)(2)(A) — Reduction of debt basis for losses and deductions exceeding stock basis",
		"IRC §1367(b)(2)(B) — Restoration of debt basis from subsequent income",
		"Selfe v. U.S. and related authorities — direct loans only, not guarantees",
	],

	commonMisconceptions: [
		"Treating a third-party loan guarantee as creating debt basis (it does not — only direct shareholder loans do, and only when the guarantee is actually called upon)",
		"Restoring stock basis before debt basis from subsequent income (debt basis is restored first)",
		"Treating a loan repayment as nontaxable when debt basis has been reduced by prior losses (it is partially taxable — the reduction gets recaptured on repayment)",
		"Forgetting that debt basis absorbs losses only AFTER stock basis has been reduced to zero",
		"Confusing the ordinary income vs. capital gain distinction on loan repayment (depends on whether the debt is evidenced by a note)",
	],

	bannedTerms: REG_S_CORPS_BASE.bannedTerms,

	targetCount: 6,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },

	lessonSpec: "reg-s-corporations",

	notes:
		"L2 task — 'Calculate' (Application). Debt basis is narrower than stock basis (task 3/1) so target count is smaller. The trickiest sub-concept is the gain-on-repayment mechanics when prior losses have reduced debt basis — this is the Hard-level question territory. Note the AICPA task is specifically about 'current year repayment of debt,' so guarantee-only fact patterns where no cash moves are less central than fact patterns involving actual loan repayment.",
};
