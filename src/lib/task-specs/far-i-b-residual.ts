import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/I/B (NFP).
// ~8 homeless questions on donated services recognition, board designation
// reversibility, agent vs donee determination, donated facilities,
// NFP consolidation, conditional contribution criteria, net asset
// classification, and pledge discount rate selection beyond the
// representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/B",
	section: "far",

	aicpaTask:
		"Residual: not-for-profit content beyond the representative tasks — donated services recognition rules, board designation reversibility, agent vs donee determination (variance power), donated facilities recognition, NFP consolidation requirements, conditional contribution criteria (ASU 2018-08), net asset classification for board designations, and pledge discount rate selection.",
	aicpaSkill: "Application",
	bloomLevel: 3,

	inScope: [
		"Donated services recognition (ASC 958-605): criteria for recognition (specialized skills, would otherwise be purchased), measurement at fair value, volunteer time that does not meet recognition criteria",
		"Board designation reversibility: board-designated net assets classified as without donor restrictions (not restricted), reversibility at board discretion, disclosure requirements",
		"Agent vs donee determination (ASC 958-605): variance power concept, redirect authority, principal-agent relationship indicators, pass-through contribution accounting",
		"Donated facilities recognition: measurement at fair value, recognition as contribution revenue and occupancy expense, in-kind contribution disclosure",
		"NFP consolidation requirements (ASC 958-810): economic interest and control criteria, consolidation vs disclosure-only, related entities and affiliated organizations",
		"Conditional contribution criteria (ASU 2018-08): barrier vs right-of-return distinction, measurable performance or other barrier, recognition timing upon condition satisfaction",
		"Net asset classification for board designations: without donor restrictions classification despite internal designation, presentation on statement of financial position, distinction from donor-restricted",
		"Pledge discount rate selection: present value measurement for unconditional promises to give, risk-adjusted discount rate, amortization of discount as contribution revenue",
	],

	keyStandards: [
		"ASC 958 — Not-for-Profit Entities",
		"ASU 2018-08 — Clarifying the Scope and Accounting Guidance for Contributions",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-not-for-profit",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
