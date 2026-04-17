import type { LessonSpec } from "./types";

// Maps to REG/I/C — federal tax procedures.

export const spec: LessonSpec = {
	topic: "Federal Tax Procedures",
	section: "reg",
	primaryRef: "REG/I/C",
	secondaryRefs: [],

	inScope: [
		"IRS audit process: examination selection, correspondence vs. office vs. field audits, 30-day and 90-day letters, statute of limitations on assessment and collection",
		"Appeals process and judicial forums: IRS Appeals Office, Tax Court (deficiency vs. refund jurisdiction), District Court, Court of Federal Claims",
		"Substantiation and disclosure requirements: recordkeeping obligations, adequate disclosure to avoid accuracy-related penalties",
		"Taxpayer penalties: accuracy-related penalty (§6662), fraud penalty (§6663), failure to file (§6651), failure to pay, reasonable cause and good faith defenses",
		"Authoritative hierarchy of tax law: IRC, Treasury regulations (final, temporary, proposed), revenue rulings, revenue procedures, private letter rulings, judicial precedent",
	],

	outOfScope: [
		"IRS collection procedures at depth (levies, liens, offers in compromise, installment agreements beyond existence)",
		"Detailed Tax Court litigation procedures and rules of evidence",
		"International information reporting penalties (Forms 5471, 8865, FBAR) at mechanics depth",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
