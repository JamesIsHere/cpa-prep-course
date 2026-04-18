import type { LessonSpec } from "./types";

// AUD/III/F — Misstatements identified during the audit.
// Covers accumulation, evaluation, and communication of misstatements
// found during fieldwork (distinct from AUD/IV/B which covers reporting
// on misstatements and control deficiencies in the final report phase).

export const spec: LessonSpec = {
	topic: "Evaluating Audit Misstatements",
	topicAliases: ["Accumulating Misstatements"],
	section: "aud",
	primaryRef: "AUD/III/F",
	secondaryRefs: [],

	inScope: [
		"Accumulating identified misstatements — known misstatements, likely (projected) misstatements, and further possible misstatements",
		"Evaluating whether uncorrected misstatements are material individually or in aggregate",
		"Communicating misstatements to the appropriate level of management on a timely basis",
		"Requesting management to correct all identified misstatements",
		"Evaluating the effect of uncorrected misstatements on the audit opinion",
	],

	outOfScope: [
		"Reporting on internal control deficiencies at depth — that belongs to AUD/IV/B (Misstatements and Control Deficiencies)",
		"Sampling projection mechanics at depth — those belong to AUD/III/C (Audit Sampling)",
		"Audit opinion modification types at depth — those belong to AUD/IV/A (Audit Reports)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
