import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";
import { REG_S_CORPS_BASE } from "./_reg-s-corps-base";

// REG/V/C/1/3 — S corporation revocation and termination.
// Pilot task-spec #3 of 9.

export const spec: TaskSpec = {
	aicpaRef: "REG/V/C/1/3",
	section: "reg",

	aicpaTask:
		"Identify situations in which S corporation status would be revoked or terminated for tax purposes.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Voluntary revocation: shareholders holding more than 50% of the outstanding stock (including nonvoting shares) must consent to the revocation. Effective date rules: prospective from the date specified, or if made within the first 2.5 months of the tax year without a specified date, retroactive to the first day of the current year",
		"Inadvertent termination triggers: acquiring an ineligible shareholder (e.g., a partnership becomes a shareholder via gift), exceeding the 100-shareholder limit, creating a second class of stock (e.g., issuing preferred stock, creating disproportionate distribution rights)",
		"The effective date of a termination caused by an eligibility failure: the date of the disqualifying event (NOT retroactive to the beginning of the year, unlike a voluntary revocation made in the first 2.5 months)",
		"Recognition that once S status terminates, the corporation cannot re-elect S status for 5 years without IRS consent (this is in scope at the 'exists as a rule' level; the five-year reverse re-election bar's mechanics beyond that statement are out of scope)",
	],

	keyStandards: [
		"IRC §1362(d) — Termination",
		"IRC §1362(d)(1) — Revocation by shareholders",
		"IRC §1362(d)(2) — Cessation of eligibility",
		"IRC §1362(g) — Election after termination (5-year bar)",
	],

	commonMisconceptions: REG_S_CORPS_BASE.commonMisconceptions,
	bannedTerms: REG_S_CORPS_BASE.bannedTerms,

	targetCount: 8,
	difficultyMix: { easy: 40, medium: 50, hard: 10 },

	lessonSpec: "reg-s-corporations",

	notes:
		"L1 task — 'Identify situations' (Remembering and Understanding). This task tests TRIGGER RECOGNITION (what event causes revocation or termination) but NOT relief mechanics. Section 1362(f) inadvertent termination relief is out of scope per the base bannedTerms. Section 1362(d)(3) three-year passive income termination is ALSO out of scope. So this task covers only the eligibility-failure triggers and the voluntary revocation trigger.",
};
