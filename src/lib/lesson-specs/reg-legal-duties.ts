import type { LessonSpec } from "./types";

// Maps to REG/I/D — legal duties and responsibilities of CPAs.

export const spec: LessonSpec = {
	topic: "Legal Duties and Responsibilities",
	section: "reg",
	primaryRef: "REG/I/D",
	secondaryRefs: [],

	inScope: [
		"Common law duties and liabilities to clients: duty of care, breach of contract, negligence, fraud",
		"Common law liabilities to third parties: known users (Ultramares), foreseen users (Restatement), foreseeable users (Rosenblum)",
		"Privileged communications and confidentiality: IRC §7525 federally authorized tax practitioner privilege, work product doctrine, limitations on privilege",
		"Statutory liability under federal securities laws: Section 11 (1933 Act), Section 10(b)/Rule 10b-5 (1934 Act), scienter requirement",
	],

	outOfScope: [
		"State-specific tort law variations beyond the three major third-party liability approaches",
		"Detailed securities litigation procedure (class certification, discovery, settlement mechanics)",
		"Sarbanes-Oxley compliance requirements at depth (belongs to AUD)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
