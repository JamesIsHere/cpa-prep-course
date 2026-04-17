import type { LessonSpec } from "./types";

// Second pilot spec — the most quantitative-heavy BAR topic. AICPA explicitly names the
// Black-Scholes option pricing model in BAR/I/B/3 ("Determine the impact of changes to
// assumptions used to value an investment (e.g., using the Black-Scholes option pricing
// model)"), which makes the boundary between "conceptual familiarity with options
// pricing inputs" and "graduate-level derivatives mathematics" the sharpest editorial
// line in this topic. The 2026-04-13 audit kept Q14268 as borderline-acceptable when it
// referenced "vega" by name; this spec makes the policy on Greeks explicit so the
// generator and validator agree going forward.
//
// Note on structural divergence: Slayer's blueprint.ts groups this topic under bar.1.B
// "Valuation and capital structure" alongside Capital Structure and Risk Management.
// AICPA places "Investment alternatives using financial valuation decision models" at
// BAR/I/B/3 inside the "Prospective analysis" group. The spec anchors `topic` to the
// Slayer tagging string and `blueprintRef` to the AICPA path; both are validated
// independently against their respective sources of truth.

export const spec: LessonSpec = {
	topic: "Financial Valuation Methods",
	section: "bar",
	blueprintRef: "BAR/I/B/3",

	inScope: [
		"Time value of money: present value and future value of single sums and annuities (ordinary and annuity due)",
		"Discounted cash flow (DCF) valuation: projecting unlevered or levered free cash flows over an explicit forecast horizon and discounting at an appropriate rate",
		"Net present value (NPV) calculation and accept/reject decision rule",
		"Internal rate of return (IRR) calculation, interpretation, and limitations (multiple IRRs with non-conventional cash flows, reinvestment rate assumption)",
		"Modified internal rate of return (MIRR) at the conceptual level — what it fixes about IRR's reinvestment assumption",
		"Payback period and discounted payback period",
		"Profitability index (NPV-to-investment ratio) and its use in capital rationing",
		"Terminal value estimation using the Gordon growth (constant growth perpetuity) formula",
		"Weighted average cost of capital (WACC) as the discount rate for unlevered firm cash flows; cost of equity from CAPM",
		"Market multiples (comparable company analysis): P/E, EV/EBITDA, EV/Sales, P/B — selection, application, and adjustments",
		"Asset-based / book value approaches and their use cases (liquidation, holding companies)",
		"Black-Scholes option pricing model at the input level: identifying the five inputs (stock price, strike, time to expiration, risk-free rate, volatility) and the directional effect of changing each on call and put values",
		"Put-call parity relationship and its use to value one option from the other",
		"Intrinsic value vs. time value of an option",
		"Real options as a conceptual extension of NPV (option to expand, defer, abandon) — qualitative reasoning only",
		"Sensitivity analysis on a valuation: changing one assumption (growth rate, discount rate, terminal multiple) and observing the effect on value",
		"Scenario analysis: base / upside / downside cases with discrete assumption sets",
		"Economic value added (EVA) as NOPAT minus a capital charge",
	],

	outOfScope: [
		"Option Greeks by name (delta, gamma, vega, theta, rho) — directional sensitivity language is fine; named Greeks with formulas or hedging applications are out",
		"Black-Scholes formula derivation, the d1/d2 expressions, or any cumulative normal distribution computation",
		"Binomial / lattice option pricing at any depth beyond mentioning that it exists as an alternative to Black-Scholes — building a tree, computing risk-neutral probabilities, or backward induction is out",
		"Risk-neutral pricing theory, equivalent martingale measures, change of measure",
		"Stochastic processes: geometric Brownian motion, Wiener processes, Itô's lemma, stochastic differential equations",
		"Monte Carlo simulation at the implementation level for valuation (referencing it as a tool is fine; building one is out)",
		"American vs. European option early-exercise boundary analysis beyond the qualitative statement that American options can be exercised early",
		"Exotic options: Asian, barrier, lookback, compound, chooser, digital, or any path-dependent payoff structure",
		"Implied volatility surfaces, volatility smiles, or volatility term structure",
		"Local volatility models, stochastic volatility models (Heston), GARCH-based volatility forecasting",
		"Adjusted present value (APV) framework, MM Proposition I/II proofs (the conclusions are in capital structure topic; the algebraic proofs are out for valuation)",
		"Damodaran-style detailed industry-specific multiple adjustments or country risk premium build-ups",
		"DDM / dividend discount model variants beyond constant-growth Gordon (multistage / H-model are out)",
		"Free cash flow to equity vs. free cash flow to firm reconciliation at the formal-mechanics level (the distinction is in scope; full reconciliation walkthroughs are out)",
		"Synergy quantification methodologies in M&A valuation (revenue synergies, cost synergies, financing synergies as separate line items)",
		"Leveraged buyout (LBO) valuation modeling, debt paydown schedules, exit multiple expansion analysis",
		"Real option valuation using Black-Scholes with project-specific volatility inputs (stay qualitative)",
		"Bond pricing using continuous compounding or duration / convexity calculations (those live in fixed-income / debt topics, not here)",
	],

	keyStandards: [
		"ASC 820 — Fair Value Measurement (referenced when valuation feeds into financial reporting)",
		"AICPA Practice Aid: Valuation of Privately-Held-Company Equity Securities Issued as Compensation",
		"ASC 718 — Stock Compensation (where Black-Scholes inputs are tied to share-based payment valuation)",
		"AICPA Statement on Standards for Valuation Services (SSVS) No. 1",
	],

	commonMisconceptions: [
		"Treating IRR as always preferable to NPV when ranking mutually exclusive projects (NPV wins on scale; IRR can mislead)",
		"Assuming reinvestment of intermediate cash flows at the IRR rather than at the cost of capital",
		"Discounting unlevered free cash flows at the cost of equity instead of WACC",
		"Discounting levered (after-debt) cash flows at WACC instead of cost of equity",
		"Using book value of debt and equity in WACC instead of market values",
		"Forgetting to discount the terminal value back to present in a DCF",
		"Confusing enterprise value with equity value (EV includes debt; equity value subtracts net debt from EV)",
		"Treating EV/EBITDA and P/E multiples as interchangeable — EV multiples pair with pre-interest earnings; equity multiples pair with after-interest earnings",
		"Believing higher volatility is always bad in option pricing — higher volatility increases both call and put values",
		"Confusing intrinsic value (max of zero or in-the-money amount) with the full option premium",
		"Treating the discount rate as the only meaningful sensitivity in a DCF when growth assumptions and terminal value usually drive more variance",
		"Conflating the profitability index decision rule (>1) with the NPV decision rule (>0) — they agree on accept/reject but can disagree on ranking under capital rationing",
	],

	representativeDifficulty: "hard",

	bannedTerms: [
		{ term: "vega", pattern: "\\bvega\\b", category: "option Greek", why: "Option Greeks by name (vega, delta, gamma, theta, rho) are out of scope — directional sensitivity language is fine, but the named Greeks are graduate finance." },
		{ term: "option Greek", pattern: "option\\s+Greek|Greek\\s+letter.{0,30}option", category: "option Greek", why: "Option Greeks collectively — out of scope." },
		{ term: "d1 d2", pattern: "\\bd[_\\s]?1\\b.{0,30}d[_\\s]?2\\b|\\bN\\(d[_\\s]?[12]\\)", category: "Black-Scholes derivation", why: "Black-Scholes d1/d2 formula and N(d1)/N(d2) — out of scope." },
		{ term: "cumulative normal distribution", pattern: "cumulative\\s+normal\\s+distribution\\s+function", category: "Black-Scholes derivation", why: "Black-Scholes mechanics — out of scope." },
		{ term: "binomial tree", pattern: "binomial\\s+(?:tree|option\\s+pricing\\s+model|lattice)|binomial\\s+model", category: "lattice models", why: "Lattice / binomial tree option pricing beyond mentioning it exists — out of scope." },
		{ term: "lattice model", pattern: "lattice\\s+(?:model|method|approach)\\s+(?:for|option)", category: "lattice models", why: "Lattice option pricing — out of scope." },
		{ term: "risk-neutral probability", pattern: "risk[-\\s]neutral\\s+(?:probability|pricing|measure|valuation)", category: "lattice models", why: "Risk-neutral pricing theory — out of scope." },
		{ term: "backward induction", pattern: "backward\\s+induction", category: "lattice models", why: "Backward induction on a lattice — out of scope." },
		{ term: "martingale measure", pattern: "martingale\\s+measure|equivalent\\s+martingale", category: "advanced theory", why: "Martingale measures — out of scope." },
		{ term: "geometric Brownian motion", pattern: "geometric\\s+Brownian\\s+motion|Wiener\\s+process|Itô'?s?\\s+lemma|stochastic\\s+differential\\s+equation", category: "stochastic calculus", why: "Stochastic calculus — out of scope." },
		{ term: "Asian option", pattern: "Asian\\s+option", category: "exotic option", why: "Exotic options — out of scope." },
		{ term: "barrier option", pattern: "barrier\\s+option", category: "exotic option", why: "Exotic options — out of scope." },
		{ term: "lookback option", pattern: "lookback\\s+option", category: "exotic option", why: "Exotic options — out of scope." },
		{ term: "compound option", pattern: "compound\\s+option|chooser\\s+option|digital\\s+option", category: "exotic option", why: "Exotic options — out of scope." },
		{ term: "implied volatility surface", pattern: "implied\\s+volatility\\s+surface|volatility\\s+smile|volatility\\s+term\\s+structure", category: "volatility modeling", why: "Volatility surfaces — out of scope." },
		{ term: "Heston model", pattern: "Heston\\s+model|local\\s+volatility\\s+model|stochastic\\s+volatility\\s+model|GARCH", category: "volatility modeling", why: "Stochastic / local volatility models — out of scope." },
		{ term: "adjusted present value", pattern: "adjusted\\s+present\\s+value\\s+(?:framework|method|approach)|\\bAPV\\b", category: "advanced valuation", why: "APV framework — out of scope for this topic." },
		{ term: "MM Proposition", pattern: "MM\\s+Proposition|Modigliani[-\\s]Miller\\s+(?:proof|proposition)", category: "advanced valuation", why: "MM Proposition I/II algebraic proofs — out of scope (conclusions live in capital structure topic)." },
		{ term: "LBO model", pattern: "\\bLBO\\s+(?:model|modeling|analysis)|leveraged\\s+buyout\\s+model", category: "advanced valuation", why: "LBO modeling — out of scope." },
		{ term: "exit multiple expansion", pattern: "exit\\s+multiple\\s+expansion|debt\\s+paydown\\s+schedule", category: "advanced valuation", why: "LBO mechanics — out of scope." },
		{ term: "multistage dividend discount", pattern: "multi[-\\s]stage\\s+dividend\\s+discount|H[-\\s]model|two[-\\s]stage\\s+DDM", category: "DDM variants", why: "DDM variants beyond constant-growth Gordon — out of scope." },
		{ term: "country risk premium", pattern: "country\\s+risk\\s+premium|Damodaran", category: "advanced valuation", why: "Country risk premium build-up / Damodaran-style adjustments — out of scope." },
	],

	notes:
		"This is the most computationally demanding BAR topic. The single sharpest editorial line is the Black-Scholes boundary: AICPA names the model explicitly, so candidates must understand the inputs and their directional effects, but the formula itself, lattice alternatives, and named Greeks are graduate finance material. The 2026-04-13 audit retained Q14268 (which referenced 'vega' by name) as borderline-acceptable; under this spec, future content should not use Greek names — describe the sensitivity in plain language ('the option's sensitivity to volatility changes') instead. Real options should always be qualitative — never quantify a real option using Black-Scholes inputs. WACC mechanics belong here (as the discount rate input to DCF); WACC structural decisions and cost-of-capital calculations belong in the Capital Structure and Valuation topic. Both topics live in the same group so generator drift between them is low-risk, but reviewers should still tag stems by which decision the candidate is making.",
};
