import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";
import { REG_S_CORPS_BASE } from "./_reg-s-corps-base";

// REG/V/C/1/1 — S corporation eligibility: eligible shareholders.
// Pilot task-spec #1 of 9 for the REG/V/C S Corporations group.

export const spec: TaskSpec = {
	aicpaRef: "REG/V/C/1/1",
	section: "reg",

	aicpaTask: "Recall eligible shareholders for an S corporation for tax purposes.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"The closed list of eligible S corporation shareholders: individuals who are U.S. citizens or resident aliens, estates, qualifying trusts (grantor, voting, QSST, ESBT), and certain tax-exempt organizations (Section 401(a) qualified plans and Section 501(c)(3) organizations)",
		"The closed list of INELIGIBLE shareholder types: partnerships, C corporations, non-resident aliens, most foreign trusts",
		"Which trust types qualify as S corp shareholders: grantor trusts (while the grantor is alive), testamentary trusts (for a limited period post-death), QSSTs (Qualified Subchapter S Trusts with one income beneficiary), ESBTs (Electing Small Business Trusts)",
		"The family aggregation rule under Section 1361(c)(1): members of a family (defined through six generations from a common ancestor) are treated as a single shareholder for the 100-shareholder count",
		"Recognition that the 100-shareholder limit is a hard cap and that exceeding it (except via family aggregation) terminates the S election",
	],

	keyStandards: [
		"IRC §1361(b)(1) — Small business corporation definition",
		"IRC §1361(c)(1) — Family aggregation rule",
		"IRC §1361(c)(2) — Certain trusts permitted as shareholders",
	],

	commonMisconceptions: REG_S_CORPS_BASE.commonMisconceptions,
	bannedTerms: REG_S_CORPS_BASE.bannedTerms,

	targetCount: 8,
	difficultyMix: { easy: 50, medium: 40, hard: 10 },

	inheritedFromTopicSpec: ["reg-s-corporations"],

	notes:
		"L1 task — 'Recall' skill level. Questions should test the CANDIDATE'S RECOGNITION of eligible vs ineligible shareholders from a closed list. Fact patterns should name a specific shareholder type (e.g., 'a partnership', 'a non-resident alien', 'an ESBT', 'a revocable trust') and ask whether the entity qualifies. Do NOT test Section 1362(f) inadvertent termination relief mechanics when an ineligible shareholder is acquired — that's a relief-mechanics question and out of scope.",
};
