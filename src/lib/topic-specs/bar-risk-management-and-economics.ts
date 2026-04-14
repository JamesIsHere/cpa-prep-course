import type { TopicSpec } from "./types";

// Seventh spec. Completes the three-spec coverage of Slayer's bar.1.B group:
//
//   Capital Structure and Valuation     -> BAR/I/B/2  (commit d762505)
//   Financial Valuation Methods         -> BAR/I/B/3  (commit 316e2f3)
//   Risk Management and Economics       -> BAR/I/B/4 + BAR/I/B/5  (this file)
//
// Slayer's topic combines two AICPA topics — BAR/I/B/4 "Risk management" and
// BAR/I/B/5 "Economic and market influences on business" — into one teaching
// unit. The spec anchors to BAR/I/B/4 as the primary ref because the resolver
// currently supports a single blueprintRef per spec; the BAR/I/B/5 content is
// documented in notes and the inScope list covers both AICPA topics explicitly.
//
// 13 AICPA representative tasks combined:
//
//   BAR/I/B/4 "Risk management" (7 tasks):
//     - Recall the purpose and objectives of the COSO ERM framework [R&U]
//     - Recall how the COSO ERM framework applies to ESG risks [R&U]
//     - Apply COSO ERM to identify risk/opportunity scenarios [Application]
//     - Use strategies to mitigate financial risks (market, IR, currency,
//       liquidity) [Application]
//     - Compare working capital management strategies [Analysis]
//     - Derive the impact of a proposed transaction on key performance
//       measures [Analysis]
//     - Interpret a SWOT analysis to assess strategic options [Analysis]
//
//   BAR/I/B/5 "Economic and market influences" (6 tasks):
//     - Determine the effect of supply and demand and elasticity [Application]
//     - Calculate inflation effect on real price, investments, debt, future
//       expenses [Application]
//     - Calculate and use ratios to quantify risks (IR, FX, price) [Application]
//     - Calculate opportunity cost of a business decision [Application]
//     - Interpret market influence on strategy/operations/risk [Analysis]
//     - Compare acquisition and divestiture opportunities [Analysis]

export const spec: TopicSpec = {
	topic: "Risk Management and Economics",
	section: "bar",
	blueprintRef: "BAR/I/B/4",

	inScope: [
		"COSO ERM Framework — purpose, objectives, five components (Governance & Culture, Strategy & Objective-Setting, Performance, Review & Revision, Information/Communication/Reporting), and relationship to internal control",
		"Applying COSO ERM to ESG (environmental, social, governance) risk identification and response at the concept level",
		"Risk categories and identification: strategic, operational, financial, compliance, reputational, cyber; using ERM to surface entity-specific risk scenarios",
		"Risk response strategies: accept, avoid, reduce, share (transfer), exploit — and selecting the appropriate response for a given scenario",
		"Financial risk mitigation at the concept level: interest rate risk (hedging with swaps/caps conceptually, not valuation), currency risk (forwards/options conceptually), commodity price risk, liquidity risk (committed credit facilities, cash buffers)",
		"Working capital management: operating cycle and cash conversion cycle computation, strategies to shorten the cash conversion cycle (inventory turnover, AR collection, AP timing), conservative vs aggressive working capital policies",
		"Transaction impact analysis: computing the effect of a proposed transaction on key performance measures (ROE, ROA, current ratio, debt-to-equity, EPS)",
		"SWOT analysis: identifying strengths, weaknesses, opportunities, threats from a fact pattern and interpreting strategic options",
		"Supply and demand: price elasticity of demand (Ed = %ΔQ / %ΔP), elastic vs inelastic, factors affecting elasticity, revenue effects of price changes under each elasticity regime",
		"Price elasticity of supply and cross-price elasticity at the concept level",
		"Inflation effects: computing real price from nominal price (Fisher equation at concept level), impact on fixed-rate debt (borrower benefits), impact on investments (real return ≈ nominal - inflation), impact on future expenses",
		"Quantifying entity-level risk via ratios: interest-rate exposure (fixed vs floating debt mix), FX exposure (transaction, translation, economic), commodity exposure measures",
		"Opportunity cost calculation: foregone return on alternative use of resources, relevant when comparing mutually exclusive decisions",
		"Market influences on business strategy: interpreting how changes in input costs, consumer preferences, regulatory environment, or competitive landscape reshape operations and risk",
		"Acquisition/divestiture comparison at the decision level: using market analysis (TAM, market share, growth rates) and financial criteria (IRR, NPV, strategic fit) to rank opportunities",
		"Business cycle stages (expansion, peak, contraction, trough) and their effects on different industries and financial metrics",
	],

	outOfScope: [
		"Value at Risk (VaR) formal derivation: parametric, historical simulation, or Monte Carlo VaR at the calculation level",
		"Expected shortfall / conditional VaR (CVaR / ES) calculations",
		"Stress testing model construction or formal scenario-weighted loss estimation",
		"Extreme value theory (EVT), generalized Pareto distribution for tail risk",
		"Copula models for correlation aggregation or dependency modeling",
		"Basel III / Basel IV capital adequacy ratios, risk-weighted assets calculation, LCR/NSFR (banking-specific regulation)",
		"Solvency II capital requirements (insurance-specific regulation)",
		"Black-Litterman portfolio optimization or reverse optimization",
		"Mean-variance portfolio optimization, efficient frontier derivation",
		"CAPM formal derivation (use of CAPM to calculate cost of equity is in scope in Capital Structure topic; the theoretical derivation is out everywhere)",
		"Arbitrage Pricing Theory (APT) formal factor model",
		"Fama-French three- or five-factor models",
		"Econometric elasticity estimation via regression, instrumental variables, or two-stage least squares",
		"Game theory: Nash equilibrium, Bertrand/Cournot oligopoly models, mechanism design, beyond casual mention that competition exists",
		"Behavioral economics / prospect theory academic framework (loss aversion, reference dependence, probability weighting at formal-model level)",
		"Phillips curve, DSGE (dynamic stochastic general equilibrium) models, IS-LM framework, Taylor rule, formal macroeconomic modeling",
		"Interest rate parity proofs, purchasing power parity derivations beyond the concept that PPP/IRP approximately hold",
		"Complete Fisher equation derivation or Fisher effect formal proof (the approximation is in scope; the derivation is out)",
		"Expected utility theory axioms and independence/completeness formal proofs",
		"Monte Carlo simulation at the implementation level for risk measurement (already banned in Prospective Analysis and Financial Valuation specs)",
		"Credit risk models: KMV, Merton structural model, CreditMetrics, CreditRisk+",
		"Operational risk loss distribution approach (LDA) quantification",
		"Real options quantitative valuation of risk-mitigation decisions",
	],

	keyStandards: [
		"COSO Enterprise Risk Management — Integrating with Strategy and Performance (2017) and its 2018 ESG supplement",
		"AICPA framework concepts for financial risk management and business analysis",
		"ASC 820 — Fair Value Measurement (when risk mitigation references hedging instruments at their fair-value reporting)",
		"ASC 815 — Derivatives and Hedging (concept-level references only; detailed hedge accounting lives in BAR Derivatives and Hedging)",
	],

	commonMisconceptions: [
		"Treating 'risk' as synonymous with 'variance' when ERM defines risk as the effect of uncertainty on objectives (upside and downside)",
		"Confusing the four risk responses (accept, avoid, reduce, share) — e.g., assuming 'share' always means insurance when it can also mean partnerships, joint ventures, or outsourcing",
		"Treating elastic demand (Ed > 1) as meaning 'demand is high' — elastic means demand is RESPONSIVE to price, not that quantity is large",
		"Confusing the direction of revenue effect under price changes: for elastic goods, revenue MOVES OPPOSITE to price; for inelastic goods, revenue moves WITH price",
		"Forgetting that inflation benefits borrowers at fixed rates and hurts lenders at fixed rates (real repayment falls)",
		"Confusing nominal and real interest rates — the real rate ≈ nominal rate − inflation rate, and investment decisions should use real when comparing future cash flows",
		"Treating opportunity cost as an out-of-pocket cost rather than a foregone return (it's the value of the best alternative not chosen)",
		"Confusing the cash conversion cycle (days inventory + days receivable − days payable) with the operating cycle (days inventory + days receivable), which omits the payable timing benefit",
		"Believing a SWOT analysis is prescriptive (it's diagnostic; strategy is derived from a SWOT, not identical to it)",
		"Conflating transaction exposure (FX risk on a specific transaction), translation exposure (FX risk on consolidated reporting), and economic exposure (FX risk on long-run competitive position)",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{ term: "Value at Risk", pattern: "Value\\s+at\\s+Risk|\\bVaR\\s+(?:model|calculation|computation|methodology)", category: "quantitative risk model", why: "Formal VaR calculation / model derivation — graduate finance." },
		{ term: "expected shortfall", pattern: "expected\\s+shortfall|conditional\\s+value\\s+at\\s+risk|\\bCVaR\\b|\\bCoVaR\\b", category: "quantitative risk model", why: "CVaR / expected shortfall — out of scope." },
		{ term: "extreme value theory", pattern: "extreme\\s+value\\s+theory|\\bEVT\\b|generalized\\s+Pareto\\s+distribution", category: "quantitative risk model", why: "EVT tail-risk modeling — out of scope." },
		{ term: "copula model", pattern: "copula\\s+(?:model|function|method)|Gaussian\\s+copula", category: "quantitative risk model", why: "Copula-based correlation aggregation — out of scope." },
		{ term: "Basel III", pattern: "Basel\\s+(?:III|IV|2|3|4)|risk[-\\s]weighted\\s+assets|\\bRWA\\b|\\bLCR\\b|\\bNSFR\\b", category: "banking regulation", why: "Banking capital adequacy regulation — out of scope." },
		{ term: "Solvency II", pattern: "Solvency\\s+(?:II|2)", category: "insurance regulation", why: "Insurance capital regulation — out of scope." },
		{ term: "Black-Litterman", pattern: "Black[-\\s]Litterman", category: "portfolio optimization", why: "Black-Litterman portfolio model — graduate portfolio theory." },
		{ term: "mean-variance optimization", pattern: "mean[-\\s]variance\\s+(?:optimization|frontier|analysis)|efficient\\s+frontier", category: "portfolio optimization", why: "Markowitz mean-variance optimization — graduate finance." },
		{ term: "APT", pattern: "arbitrage\\s+pricing\\s+theory|\\bAPT\\s+(?:model|factor)", category: "asset pricing", why: "Arbitrage Pricing Theory formal factor model — graduate finance." },
		{ term: "Fama-French", pattern: "Fama[-\\s]French|three[-\\s]factor\\s+model|five[-\\s]factor\\s+model", category: "asset pricing", why: "Fama-French factor models — graduate finance." },
		{ term: "Nash equilibrium", pattern: "Nash\\s+equilibrium|Cournot\\s+(?:model|equilibrium|competition)|Bertrand\\s+(?:model|equilibrium|competition)", category: "game theory", why: "Game theory formal equilibria — out of scope." },
		{ term: "prospect theory", pattern: "prospect\\s+theory|Kahneman[-\\s]Tversky", category: "behavioral economics", why: "Prospect theory academic framework — out of scope." },
		{ term: "Phillips curve", pattern: "Phillips\\s+curve", category: "macroeconomics", why: "Phillips curve formal framework — out of scope." },
		{ term: "DSGE model", pattern: "\\bDSGE\\b|dynamic\\s+stochastic\\s+general\\s+equilibrium", category: "macroeconomics", why: "DSGE macroeconomic modeling — graduate econ." },
		{ term: "IS-LM", pattern: "\\bIS[-\\s]LM\\b|IS[-\\s]LM\\s+(?:model|framework)", category: "macroeconomics", why: "IS-LM formal framework — graduate econ." },
		{ term: "Taylor rule", pattern: "Taylor\\s+rule", category: "macroeconomics", why: "Taylor rule central-bank policy rule — out of scope." },
		{ term: "CreditMetrics", pattern: "CreditMetrics|CreditRisk\\+|\\bKMV\\s+model", category: "credit risk model", why: "Credit risk quantification frameworks — out of scope (also banned in Capital Structure spec)." },
		{ term: "LDA operational risk", pattern: "loss\\s+distribution\\s+approach|\\bLDA\\s+(?:model|approach)", category: "operational risk model", why: "Operational risk LDA quantification — out of scope." },
		{ term: "expected utility axiom", pattern: "expected\\s+utility\\s+(?:theory|axiom|hypothesis)|independence\\s+axiom|completeness\\s+axiom", category: "decision theory", why: "Formal utility theory axioms — graduate decision theory." },
	],

	notes:
		"Slayer's 'Risk Management and Economics' topic spans two AICPA topics — BAR/I/B/4 Risk management (7 tasks) and BAR/I/B/5 Economic and market influences (6 tasks) — combined into a single Slayer teaching unit. The spec's blueprintRef anchors to BAR/I/B/4 because the resolver currently supports one blueprintRef per spec. When authoring new questions or auditing drift, treat BOTH AICPA topics' representative task lists as authoritative. This spec closes out the three-spec coverage of Slayer's bar.1.B group alongside Capital Structure and Valuation (BAR/I/B/2) and Financial Valuation Methods (BAR/I/B/3). The banned-terms list intentionally overlaps with the Capital Structure and Valuation spec on KMV / mean-variance optimization — those drift surfaces are adjacent to both topics. Drift risk for this topic centers on two failure modes: (1) testing VaR / expected shortfall / stress testing at a quantitative depth that belongs in CFA/FRM curricula, and (2) drifting into formal macroeconomics (Phillips curve, DSGE, IS-LM) on the economics side instead of the concept-level market-influence analysis the AICPA actually tests. The Slayer bank for this topic also frequently absorbs questions that conceptually belong in other topics (e.g., derivatives detail belongs in BAR Derivatives and Hedging) — a cross-topic tagging audit would surface those.",
};
