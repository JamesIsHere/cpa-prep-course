import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/II/B (Trade Receivables).
// 9 homeless questions: notes receivable (valuation, accrued interest,
// effective interest method), CECL concepts (transition, methodology,
// presentation), and credit risk disclosure beyond the trade-A/R-focused
// representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/B",
	section: "far",

	aicpaTask:
		"Residual: receivables content beyond the trade-A/R representative tasks — notes receivable valuation and interest, CECL conceptual framework (transition, methodology selection, presentation), and credit risk concentration disclosure.",
	aicpaSkill: "Application",
	bloomLevel: 3,

	inScope: [
		"Notes receivable valuation: present value measurement for long-term notes, imputed interest on noninterest-bearing notes, effective interest method for interest income recognition",
		"Accrued interest on notes receivable: interest receivable calculation and presentation, interest recognition at acquisition when purchasing notes between interest dates",
		"CECL transition accounting (ASU 2016-13): cumulative-effect adjustment to retained earnings at adoption, no restatement of prior periods, modified retrospective method",
		"CECL methodology concepts (ASC 326): permitted methodologies (DCF, loss-rate, probability-of-default, vintage analysis), prohibition on incurred-loss model, reasonable and supportable forecast period plus reversion to historical",
		"Allowance for credit losses presentation (ASC 326): balance sheet classification as contra-asset, day-one allowance recognition at origination/purchase, effect on net receivable carrying amount",
		"Credit risk concentration disclosure: required disclosures when significant concentration exists, geographic/industry/customer concentration, financial instrument credit risk disclosures",
	],

	keyStandards: [
		"ASC 326 — Financial Instruments — Credit Losses (CECL)",
		"ASC 310 — Receivables",
		"ASU 2016-13 — Measurement of Credit Losses on Financial Instruments",
	],

	commonMisconceptions: [
		"Applying CECL only to trade receivables — CECL applies to all financial assets measured at amortized cost including notes receivable and held-to-maturity debt securities",
		"Confusing notes receivable interest income with trade receivable finance charges",
	],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-trade-receivables",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
