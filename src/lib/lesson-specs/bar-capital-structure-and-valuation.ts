import type { TopicSpec } from "./types";

// Sixth spec (first authored from a scaffold stub). Slayer's "Capital Structure
// and Valuation" topic maps 1:1 to AICPA BAR/I/B/2 "Capital structure"
// (4 representative tasks), refined here from the scaffolder's default 3-part
// group-level ref. The sibling topic "Financial Valuation Methods" covers
// BAR/I/B/3 "Investment alternatives using financial valuation decision models"
// and is already specced; "Risk Management and Economics" covers BAR/I/B/4 and
// /B/5 and still needs its own spec. All three share Slayer's bar.1.B group.
//
// The 4 AICPA representative tasks for this topic:
//   1. Calculate the cost of capital for a given financial scenario. [Application]
//   2. Determine the impact of changes in an entity's capital structure on cost
//      of capital, loan covenants, liquidity and leverage. [Application]
//   3. Compare the strategies for financing new business initiatives and
//      operations within the context of an optimal capital structure. [Analysis]
//   4. Interpret the impact of various capital structures on financial
//      statements and key performance measures. [Analysis]
//
// Drift surfaces this spec defends against:
//   - MM Proposition I/II algebraic proofs (graduate corporate finance)
//   - APV framework (advanced valuation, belongs in BAR Financial Valuation)
//   - Pecking order / agency-cost / signaling theoretical models
//   - Altman Z-score / formal credit rating derivation
//   - LBO modeling, debt paydown schedules
//   - Merton model / contingent-claims view of equity
//   - Static trade-off theory proofs
//   - Dynamic WACC rebalancing, multi-period capital structure theory

export const spec: TopicSpec = {
	topic: "Capital Structure and Valuation",
	section: "bar",
	blueprintRef: "BAR/I/B/2",

	inScope: [
		"Cost of debt: after-tax cost of debt = Kd × (1 - Tc), using yield-to-maturity on outstanding bonds or coupon rate as a proxy",
		"Cost of preferred stock: Kp = Dp / Pp (dividend divided by net issue price)",
		"Cost of equity via CAPM: Ke = Rf + β(Rm - Rf), identifying the risk-free rate, beta, and market risk premium components",
		"Cost of equity via dividend discount model (Gordon growth): Ke = D1/P0 + g",
		"Weighted average cost of capital (WACC) computation: (E/V × Ke) + (D/V × Kd × (1-Tc)) + (P/V × Kp), using market-value weights",
		"Capital structure components: debt (notes, bonds, term loans), equity (common, preferred), hybrid instruments (convertible debt, convertible preferred)",
		"Financial leverage ratios: debt-to-equity, debt-to-total capital, long-term-debt-to-equity, times-interest-earned, fixed-charge coverage",
		"Effect of a capital structure change (e.g., issuing debt to repurchase equity) on WACC, leverage ratios, EPS, and ROE",
		"Interest coverage and fixed-charge coverage as debt-capacity measures and covenant triggers",
		"Loan covenants at the conceptual level: affirmative vs. negative covenants, maintenance vs. incurrence tests, common ratios used (e.g., maximum debt/EBITDA, minimum interest coverage)",
		"Impact of capital structure on liquidity and working-capital metrics (current ratio, quick ratio, cash conversion cycle relationships)",
		"Degree of financial leverage (DFL) = % change in EPS / % change in EBIT",
		"Comparing financing strategies: debt vs equity, senior vs subordinated, secured vs unsecured, public vs private placement, at the qualitative decision level",
		"Optimal capital structure as a trade-off between the tax shield benefit of debt and the costs of financial distress (conceptual framing, no formal proofs)",
		"Interpreting how a given capital structure affects the balance sheet, income statement (interest expense impact), and key per-share measures (EPS, book value per share)",
		"Refinancing decisions at the conceptual level: when to refinance debt, the break-even analysis between refinancing costs and interest savings",
	],

	outOfScope: [
		"Modigliani-Miller Proposition I and II algebraic proofs, derivations, or proof-based multi-step problem solving",
		"Adjusted present value (APV) framework — lives in BAR Financial Valuation Methods as out-of-scope there too",
		"Pecking order theory, signaling theory, or free-cash-flow theory at the academic-model level (high-level mention that 'firms prefer internal funds' is fine; formal model machinery is out)",
		"Agency cost of debt / equity modeling at the academic level (Jensen-Meckling framework derivations)",
		"Altman Z-score derivation, coefficient values, or formal bankruptcy prediction model calculations",
		"Formal credit rating model construction (Moody's KMV, structural vs. reduced-form credit models)",
		"Merton model or contingent-claims view of equity as an option on firm value",
		"Duration and convexity of a debt portfolio (those live in fixed-income topics if anywhere, not capital structure)",
		"Callable bond yield-to-call calculations beyond recognizing that call features reduce bondholder value",
		"Convertible bond pricing via binomial trees or Black-Scholes on the equity option component",
		"Real options applied to capital structure decisions (option to delay issuance, option to refinance)",
		"LBO modeling: debt paydown schedules, sponsor return calculations, exit multiple expansion analysis",
		"Dynamic WACC rebalancing across multiple periods, target capital structure convergence paths",
		"Static trade-off theory proofs or marginal-cost-of-financial-distress formulas",
		"Formal international tax adjustments to cost of capital (cross-border WACC)",
		"Lease financing classification mechanics under ASC 842 (lives in BAR Leases / FAR Leases)",
		"Complex hybrid instrument bifurcation under ASC 470-20 (lives in BAR Derivatives and Hedging)",
	],

	keyStandards: [
		"ASC 470 — Debt (classification, issuance costs, modifications for balance sheet context)",
		"ASC 505 — Equity (issuance, treasury stock, dividend mechanics for capital structure changes)",
		"ASC 480 — Distinguishing Liabilities from Equity (mandatorily redeemable preferred, puttable shares)",
		"AICPA framework concepts for cost of capital and financial analysis (no specific codification; trade-off theory is conceptual)",
	],

	commonMisconceptions: [
		"Using book-value weights instead of market-value weights when computing WACC (book weights understate the equity portion for profitable firms)",
		"Forgetting to apply the tax shield to the cost of debt — using pre-tax Kd in WACC instead of Kd × (1-Tc)",
		"Treating preferred stock as equity in WACC when its required return should be computed separately via Kp = Dp/Pp",
		"Confusing financial leverage with operating leverage — financial leverage is about debt financing, operating leverage is about fixed operating costs",
		"Believing higher financial leverage always reduces WACC (it does lower WACC over some range because of the tax shield, but distress costs eventually dominate)",
		"Treating the tax shield on debt as unconditionally valuable — it requires taxable income to be usable, and firms in loss positions may not benefit",
		"Forgetting that issuing debt to repurchase equity increases EPS and ROE mechanically even when total firm value is unchanged",
		"Confusing the cost of equity under CAPM with the realized return on equity or with the dividend yield",
		"Using the coupon rate as cost of debt when the yield-to-maturity is the correct measure (coupon rate is a proxy only when bonds trade near par)",
		"Treating maintenance covenants (tested each period) and incurrence covenants (tested only upon a specific action) as interchangeable",
		"Believing that refinancing always makes sense when rates drop — it requires a break-even analysis including call premiums, issuance costs, and remaining term",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{ term: "MM Proposition", pattern: "MM\\s+Proposition|Modigliani[-\\s]Miller\\s+(?:Proposition|proof|theorem|derivation)", category: "advanced theory", why: "MM Proposition I/II algebraic proofs — graduate corporate finance. The conclusions are teachable at concept level; the proofs are out." },
		{ term: "adjusted present value", pattern: "adjusted\\s+present\\s+value\\s+(?:framework|method|approach)|\\bAPV\\b", category: "advanced valuation", why: "APV framework — lives in BAR Financial Valuation Methods as out-of-scope; also out here." },
		{ term: "pecking order theory", pattern: "pecking\\s+order\\s+theory", category: "advanced theory", why: "Pecking order theory as a formal academic model — out of scope. Mention-level reference to financing preferences is acceptable." },
		{ term: "signaling theory", pattern: "signaling\\s+theory\\s+of\\s+(?:capital\\s+structure|dividend|debt)", category: "advanced theory", why: "Signaling theory of capital structure — graduate corporate finance." },
		{ term: "agency cost of debt", pattern: "agency\\s+cost\\s+of\\s+(?:debt|equity)|Jensen[-\\s]Meckling", category: "advanced theory", why: "Jensen-Meckling agency cost framework — graduate corporate finance." },
		{ term: "Altman Z-score", pattern: "Altman\\s+Z[-\\s]score|Z[-\\s]score\\s+model", category: "credit model", why: "Altman Z-score derivation or coefficients — out of scope. The existence of bankruptcy prediction models is fine." },
		{ term: "Moody's KMV", pattern: "Moody'?s\\s+KMV|\\bKMV\\s+model", category: "credit model", why: "Formal credit rating models — out of scope." },
		{ term: "structural credit model", pattern: "structural\\s+credit\\s+model|reduced[-\\s]form\\s+credit\\s+model", category: "credit model", why: "Structural and reduced-form credit models — out of scope." },
		{ term: "Merton model", pattern: "Merton\\s+model|contingent[-\\s]claims\\s+(?:view|approach)\\s+of\\s+equity", category: "advanced theory", why: "Merton contingent-claims view of equity — out of scope." },
		{ term: "duration of debt", pattern: "Macaulay\\s+duration|modified\\s+duration|effective\\s+duration|duration\\s+of\\s+(?:a\\s+)?(?:debt\\s+portfolio|bond\\s+portfolio)", category: "fixed income", why: "Duration calculations belong in fixed-income topics, not capital structure." },
		{ term: "convexity", pattern: "\\bconvexity\\b.{0,30}(?:bond|debt|yield)", category: "fixed income", why: "Bond convexity — fixed-income topic, out of scope here." },
		{ term: "yield-to-call", pattern: "yield[-\\s]to[-\\s]call|\\bYTC\\b", category: "callable bond", why: "Yield-to-call calculations — out of scope beyond recognizing call features exist." },
		{ term: "LBO model", pattern: "\\bLBO\\s+(?:model|modeling|analysis)|leveraged\\s+buyout\\s+model", category: "advanced valuation", why: "LBO modeling — out of scope (same as in Financial Valuation Methods spec)." },
		{ term: "sponsor return", pattern: "sponsor\\s+return|exit\\s+multiple\\s+expansion|debt\\s+paydown\\s+schedule", category: "LBO mechanics", why: "LBO-specific mechanics — out of scope." },
		{ term: "dynamic WACC", pattern: "dynamic\\s+WACC|multi[-\\s]period\\s+WACC\\s+rebalancing|target\\s+capital\\s+structure\\s+(?:path|convergence)", category: "advanced theory", why: "Multi-period / dynamic WACC rebalancing — out of scope." },
		{ term: "trade-off theory proof", pattern: "trade[-\\s]off\\s+theory\\s+(?:proof|derivation|model)|marginal\\s+cost\\s+of\\s+financial\\s+distress", category: "advanced theory", why: "Static trade-off theory at the formal-model level — out of scope. The conceptual framing (tax shield vs distress costs) IS in scope." },
		{ term: "cross-border WACC", pattern: "cross[-\\s]border\\s+WACC|international\\s+WACC\\s+(?:adjustment|build[-\\s]up)", category: "international finance", why: "Cross-border / international WACC — out of scope for the domestic capital-structure topic." },
	],

	notes:
		"First spec authored from a scaffolder stub (2026-04-14). Target topic-level anchor REG/I/B/2 was refined from the scaffolder's 3-part group-level default BAR/I/B; the sibling 'Financial Valuation Methods' spec handles BAR/I/B/3 and 'Risk Management and Economics' (not yet specced) handles BAR/I/B/4 and /B/5. The three Slayer topics in bar.1.B collectively cover the full AICPA group. This spec's outOfScope list intentionally overlaps with the Financial Valuation Methods spec on APV, Merton model, and LBO mechanics — both topics are adjacent in the same Slayer group and both should enforce those exclusions because a question about financing decisions could equally well be tagged to either one. Key risk during authoring: questions that test 'which financing option is cheapest' can slip into full WACC computation territory, which is in scope at the calculation level. Questions that ask candidates to DERIVE MM proof, construct Altman Z-scores, or build LBO models are where the audit should trip.",
};
