import type { LessonSpec } from "./types";

// Maps to REG/II/A (agency) with secondary coverage of REG/II/D (federal regulation).

export const spec: LessonSpec = {
	topic: "Agency and Regulation",
	section: "reg",
	primaryRef: "REG/II/A",
	secondaryRefs: ["REG/II/D"],

	inScope: [
		"Types of agent authority: actual (express and implied), apparent, ratification, estoppel",
		"Duties of agents to principals: loyalty, obedience, care, accounting, notification",
		"Duties of principals to agents: compensation, reimbursement, indemnification, cooperation",
		"Liabilities of principals and agents to third parties: disclosed, partially disclosed, and undisclosed principal scenarios",
		"Termination of agency: by act of the parties, by operation of law, irrevocable agencies (agency coupled with an interest)",
	],

	outOfScope: [
		"Detailed employment discrimination law (Title VII, ADA, ADEA) beyond the concept of worker classification",
		"ERISA plan administration and fiduciary rules at depth",
		"Uniform Commercial Code Article 2 sales of goods (belongs to Contracts topic)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
