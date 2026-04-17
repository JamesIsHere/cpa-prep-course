import type { LessonSpec } from "./types";

// Maps to REG/II/B — contracts.

export const spec: LessonSpec = {
	topic: "Business Law: Contracts",
	section: "reg",
	primaryRef: "REG/II/B",
	secondaryRefs: [],

	inScope: [
		"Contract formation: offer, acceptance, consideration, capacity, legality; mailbox rule; mirror image rule vs. UCC battle of the forms",
		"Statute of Frauds: contracts required to be in writing (MYLEGS mnemonic), effect of noncompliance, part performance exception",
		"Contract performance and discharge: conditions, material vs. minor breach, impossibility, impracticability, frustration of purpose",
		"Remedies for breach: compensatory damages, consequential damages, specific performance, liquidated damages, mitigation duty",
	],

	outOfScope: [
		"Detailed UCC Article 2 warranty provisions (express, implied merchantability, fitness for particular purpose) beyond the concept level",
		"International commercial law and CISG",
		"Detailed promissory estoppel and quasi-contract analysis beyond the concept of their existence as alternatives to consideration",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
