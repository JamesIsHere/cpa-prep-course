import type { LessonSpec } from "./types";

// BAR/II/J — Public company reporting topics.
// 4 representative tasks: Reg S-X and S-K requirements, XBRL reporting,
// reportable segment identification criteria, segment disclosure requirements.

export const spec: LessonSpec = {
	topic: "Public Company Reporting",
	topicAliases: [],
	section: "bar",
	primaryRef: "BAR/II/J",
	secondaryRefs: [],

	inScope: [
		"Regulation S-X: form and content requirements for financial statements filed with the SEC (annual reports on Form 10-K, quarterly reports on Form 10-Q)",
		"Regulation S-K: non-financial disclosure requirements (MD&A, description of business, risk factors, executive compensation) at the concept level",
		"XBRL (eXtensible Business Reporting Language): purpose, objective, key characteristics — structured machine-readable tagging of financial data for SEC filings (inline XBRL)",
		"Reportable segment identification under ASC 280: operating segments, quantitative thresholds (10% revenue, profit/loss, or assets tests), aggregation criteria",
		"Segment disclosure requirements: revenues from external customers and intersegment, segment profit or loss, segment assets, reconciliation to consolidated totals",
	],

	outOfScope: [
		"Detailed SEC filing procedures, EDGAR system mechanics, and filing deadlines beyond concept-level awareness",
		"XBRL taxonomy construction, tagging mechanics, or iXBRL technical implementation",
		"Transfer pricing and intersegment pricing policies at computational depth (REG/TCP territory)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
