import type { LessonSpec } from "./types";

// Maps to REG/II/E — entity selection, formation, operation, and termination.

export const spec: LessonSpec = {
	topic: "Business Structures",
	section: "reg",
	primaryRef: "REG/II/E",
	secondaryRefs: [],

	inScope: [
		"Entity selection considerations: sole proprietorship, general/limited partnership, LLC, C corporation, S corporation — formation requirements, liability protection, tax treatment comparison",
		"Formation and operational requirements: articles of incorporation/organization, operating agreements, partnership agreements, fiduciary duties of officers/directors/partners/members",
		"Rights, duties, and authority of owners and management: voting rights, distributions, inspection rights, derivative suits, piercing the corporate veil",
		"Termination and dissolution: voluntary vs. involuntary dissolution, winding up, distribution of assets on liquidation",
	],

	outOfScope: [
		"Detailed state-specific corporate governance statutes (Delaware vs. Model Business Corporation Act) beyond the conceptual level",
		"Securities registration requirements (1933 Act offerings, Regulation D exemptions) at depth",
		"Nonprofit corporation governance at depth (belongs to Tax-Exempt Organizations topic)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
