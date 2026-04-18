import type { LessonSpec } from "./types";

// AUD/I/C — Nature and scope of engagements.
// Covers engagement types (audit, review, compilation, agreed-upon
// procedures, attestation) and the level of assurance each provides.

export const spec: LessonSpec = {
	topic: "Nature and Scope of Engagements",
	section: "aud",
	primaryRef: "AUD/I/C",
	secondaryRefs: [],

	inScope: [
		"Types of engagements: audit (reasonable assurance), review (limited assurance), compilation (no assurance), agreed-upon procedures, attestation",
		"Level of assurance provided by each engagement type and appropriate reporting",
		"Distinguishing between audit, attestation, and assurance engagements",
		"Preconditions for an audit — acceptable financial reporting framework, management responsibilities",
		"Understanding the scope of the engagement and its limitations",
	],

	outOfScope: [
		"Detailed audit report language and opinion types — those belong to AUD/IV/A",
		"Review and compilation report formats at depth — those belong to AUD/IV/C",
		"Engagement letter drafting at depth — that belongs to AUD/I/D (Terms of Engagement)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
