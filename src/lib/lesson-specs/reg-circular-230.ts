import type { LessonSpec } from "./types";

// Maps to REG/I/A (ethics) and REG/I/B (licensing/disciplinary systems).

export const spec: LessonSpec = {
	topic: "Circular 230",
	section: "reg",
	primaryRef: "REG/I/A",
	secondaryRefs: ["REG/I/B"],

	inScope: [
		"Treasury Circular 230 rules governing practice before the IRS: who may practice, duties and restrictions on practitioners, best practices, covered opinions",
		"Tax preparer penalties under IRC §6694 (understatement due to unreasonable positions) and §6695 (failure to furnish copy, sign return, etc.)",
		"IRS disciplinary proceedings: censure, suspension, disbarment, monetary penalties under Circular 230 Subpart C",
		"Licensing and enrollment requirements: enrolled agents, CPAs, attorneys, registered tax return preparers",
	],

	outOfScope: [
		"State-level CPA licensing requirements and state board disciplinary processes",
		"Detailed Office of Professional Responsibility (OPR) procedural rules beyond the existence of the process",
		"Tax court rules of practice and procedure",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
