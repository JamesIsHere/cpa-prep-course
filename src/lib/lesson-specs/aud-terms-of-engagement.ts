import type { LessonSpec } from "./types";

// AUD/I/D — Terms of engagement.
// Covers engagement acceptance and continuance, engagement letters,
// predecessor/successor auditor communications, and client acceptance.

export const spec: LessonSpec = {
	topic: "Terms of Engagement",
	section: "aud",
	primaryRef: "AUD/I/D",
	secondaryRefs: [],

	inScope: [
		"Engagement letters — required content, purpose, and when to update for recurring engagements",
		"Client acceptance and continuance evaluation — integrity of management, ability to perform the engagement",
		"Predecessor/successor auditor communications — required inquiries before accepting an engagement",
		"Changes in engagement terms — downgrading from audit to review or compilation, when it is appropriate",
		"AU-C 210 preconditions — management acceptance of its responsibilities and the applicable financial reporting framework",
	],

	outOfScope: [
		"Detailed planning procedures after engagement acceptance — those belong to AUD/II/A (Audit Planning)",
		"Fee arrangements, billing, and practice management at depth",
		"Detailed ethics rules on engagement acceptance — those belong to AUD/I/A",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
