import type { TaskSpec } from "./types";

// Direction W: group-level residual task-spec for FAR/I/A
// (General-Purpose Financial Reporting: For-Profit Business Entities).
//
// FAR/I/A has 21 representative tasks focused on PREPARING and ADJUSTING
// specific financial statements from trial balances. The bank has 47+
// homeless questions testing the CONCEPTUAL FRAMEWORK that underlies
// all financial reporting — GAAP hierarchy, qualitative characteristics,
// elements definitions, recognition/measurement principles, and
// standard-setting process knowledge.
//
// These questions don't match any "prepare X from a trial balance" or
// "adjust X to correct errors" task because they test foundational
// conceptual knowledge, not statement preparation mechanics.

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/A",
	section: "far",

	aicpaTask:
		"Residual: FASB Conceptual Framework and GAAP hierarchy knowledge that underlies financial reporting but is not tested through specific statement preparation, adjustment, or discrepancy detection tasks.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: 2, // Ceiling — most content is L1 recall or L2 application of framework concepts

	inScope: [
		"GAAP hierarchy (ASC 105): authoritative vs nonauthoritative sources, role of ASUs, FASB Accounting Standards Codification structure, status of FASB Concepts Statements as non-authoritative",
		"FASB Conceptual Framework qualitative characteristics: relevance (predictive value, confirmatory value), faithful representation (completeness, neutrality, free from error), enhancing characteristics (comparability, verifiability, timeliness, understandability)",
		"Elements of financial statements (SFAC No. 8): assets, liabilities, equity, revenues, expenses, gains, losses, comprehensive income, investments by owners, distributions to owners — definitions and recognition criteria",
		"Recognition and measurement principles: accrual basis concepts, revenue recognition principles at the conceptual level (distinct from ASC 606 mechanics), expense recognition (matching, systematic allocation, immediate recognition)",
		"Measurement attributes from the conceptual framework: historical cost, current cost, net realizable value, fair value, present value — when each is appropriate",
		"Full disclosure principle: what must be disclosed, purpose of notes to financial statements, materiality as a pervasive constraint",
		"Substance over form, economic entity assumption, going concern assumption, monetary unit assumption, periodicity assumption",
		"FASB standard-setting process: due process, exposure drafts, ASU issuance; GAAP vs IFRS high-level differences (principles-based vs rules-based, conceptual framework convergence)",
		"Prudence vs neutrality: historical role of conservatism, current conceptual framework position on neutrality",
	],

	keyStandards: [
		"ASC 105 — Generally Accepted Accounting Principles (GAAP hierarchy)",
		"SFAC No. 8 — Conceptual Framework for Financial Reporting",
		"ASC 235 — Notes to Financial Statements",
	],

	commonMisconceptions: [
		"Treating FASB Concepts Statements as authoritative GAAP (they are not — they inform but do not override the Codification)",
		"Confusing relevance with reliability (the current framework uses 'faithful representation' not 'reliability')",
		"Assuming conservatism/prudence is still a primary characteristic (the 2010 revision removed it in favor of neutrality)",
	],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 40, medium: 40, hard: 20 },

	lessonSpec: "far-financial-reporting-for-profit",

	notes:
		"Direction W residual spec — group-level (3-part ref). Covers the conceptual/framework layer that the 21 preparation-focused representative tasks don't address. bloomLevel L2 ceiling because most content is L1 recall or L2 application of framework concepts. Created 2026-04-17.",
};
