import type { LessonSpec } from "./types";

// AUD/I/B — Professional skepticism and judgment.
// Covers the attitude of questioning mind, critical assessment of
// evidence, and the exercise of professional judgment throughout the audit.

export const spec: LessonSpec = {
	topic: "Professional Skepticism and Judgment",
	section: "aud",
	primaryRef: "AUD/I/B",
	secondaryRefs: [],

	inScope: [
		"Definition and application of professional skepticism — a questioning mind and critical assessment of audit evidence",
		"Professional judgment — applying relevant training, knowledge, and experience in making informed decisions",
		"Recognizing conditions that may indicate possible misstatement due to error or fraud",
		"Maintaining skepticism despite prior experience with the entity's management honesty",
		"Documentation of significant professional judgments made during the audit",
	],

	outOfScope: [
		"Detailed fraud investigation techniques — those belong to risk assessment and fraud procedures",
		"Cognitive bias research and behavioral psychology at academic depth",
		"Ethics enforcement and disciplinary processes — those belong to AUD/I/A",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
