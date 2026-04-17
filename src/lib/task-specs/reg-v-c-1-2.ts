import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";
import { REG_S_CORPS_BASE } from "./_reg-s-corps-base";

// REG/V/C/1/2 — S corporation eligibility requirements (beyond shareholders).
// Pilot task-spec #2 of 9.

export const spec: TaskSpec = {
	aicpaRef: "REG/V/C/1/2",
	section: "reg",

	aicpaTask: "Recall S corporation eligibility requirements for tax purposes.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"The five structural eligibility requirements of a small business corporation under Section 1361(b)(1): (1) be a domestic corporation, (2) have no more than 100 shareholders, (3) have only eligible shareholders, (4) have only one class of stock outstanding, (5) not be an ineligible corporation (banks using reserve method, insurance companies under Subchapter L, possession corporations, former DISCs)",
		"The single-class-of-stock requirement at the descriptive level: differences in voting rights are permitted; differences in distribution or liquidation rights generally violate the requirement and disqualify the corporation",
		"The S election mechanics: filing Form 2553 by the 15th day of the third month of the tax year for which the election is to be effective, and the requirement that ALL shareholders (including those who owned stock any time during the part of the year before the election was made) consent unanimously",
		"The consequence of filing Form 2553 after the 15th-day-of-3rd-month deadline: the election takes effect the following tax year (not the current year)",
		"Recognition that an S corporation must be a DOMESTIC corporation — a foreign corporation cannot make the S election",
	],

	keyStandards: [
		"IRC §1361(b)(1) — Small business corporation definition",
		"IRC §1362(a) — Election",
		"IRC §1362(b) — When election takes effect (timing rules)",
	],

	commonMisconceptions: REG_S_CORPS_BASE.commonMisconceptions,
	bannedTerms: REG_S_CORPS_BASE.bannedTerms,

	targetCount: 10,
	difficultyMix: { easy: 50, medium: 40, hard: 10 },

	lessonSpec: "reg-s-corporations",

	notes:
		"L1 task — 'Recall' skill level. This task overlaps with 1/1 (eligible shareholders) but is distinct: 1/1 is the SHAREHOLDER side of the eligibility test (who can own stock), and this task is the CORPORATE STRUCTURE side (domestic, ≤100 shareholders, single class of stock, not an ineligible corporation type, timely and unanimous election). Questions about Form 2553 timing and unanimous consent belong here, not in 1/1.",
};
