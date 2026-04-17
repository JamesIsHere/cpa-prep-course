import type { LessonSpec } from "./types";

// Eighth authored spec. AICPA scope at FAR/III/E is deliberately narrow: two
// representative tasks — "Identify the valuation techniques used to measure
// fair value" (R&U) and "Use assumptions (highest and best use, market
// participant assumptions, unit of account) and approaches (cost, income,
// market) to measure fair value according to the fair value hierarchy"
// (Application). In-scope work is conceptual application of ASC 820 —
// classify inputs by level, select among cost/income/market approaches, apply
// highest-and-best-use to nonfinancial assets, invoke the fair value option
// under ASC 825 with its eligibility rules and own-credit-risk carve-out.
//
// Out-of-scope is graduate valuation: Black-Scholes or binomial option
// pricing mechanics, WACC/CAPM/beta derivation, terminal value and Gordon
// growth multi-stage DCF models. Those belong to BAR Financial Valuation
// Methods (BAR/I/B/3), which is already specced. The handoff doc flagged this
// topic as priority #1 for the next spec wave because generators routinely
// drift from "select an approach" into "compute a DCF with WACC and terminal
// value", and study material often conflates ASC 820 application with the
// full BAR valuation toolkit.

export const spec: LessonSpec = {
	topic: "Fair Value",
	section: "far",
	primaryRef: "FAR/III/E/0",
	secondaryRefs: [],

	inScope: [
		"Definition of fair value under ASC 820 as the exit price — the amount that would be received to sell an asset or paid to transfer a liability in an orderly transaction between market participants at the measurement date",
		"Principal market (greatest volume and activity for the asset or liability) vs. most advantageous market (maximizes proceeds for an asset or minimizes transfer price for a liability, after considering transaction costs) when selecting the reference market; the rule that the measured fair value itself excludes transaction costs",
		"Market participant assumptions — the measurement reflects what knowledgeable, willing market participants would assume, not entity-specific plans, synergies, or intended use",
		"Highest and best use (HBU) for nonfinancial assets: the three criteria (physically possible, legally permissible, financially feasible); that HBU may differ from the entity's current use; HBU does not apply to financial assets or liabilities",
		"Unit of account — what is being measured (an individual asset, a group of assets, a portfolio) is determined by the standard that requires or permits the fair value measurement, not by ASC 820 itself",
		"The fair value hierarchy and classification of inputs into Level 1 (quoted prices in active markets for identical assets or liabilities the entity can access at the measurement date), Level 2 (other observable inputs — quoted prices for similar items in active markets, quoted prices for identical or similar items in inactive markets, observable market data such as interest rates, yield curves, credit spreads, volatilities, and market-corroborated inputs), and Level 3 (unobservable inputs reflecting the entity's own assumptions about what market participants would use)",
		"The 'lowest-level-of-significant-input' rule — the overall fair value measurement is categorized at the lowest level of any input that is significant to the entire measurement",
		"Identification of the three valuation approaches — market, income, cost — and the circumstances where each is most appropriate; selection of the approach (or combination) most consistent with how market participants would value the item",
		"Conceptual content of each approach: market approach uses prices and other relevant information from transactions involving identical or comparable items; income approach converts future amounts (cash flows, earnings) to a single present value using a risk-adjusted discount rate; cost approach is based on the current amount required to replace the service capacity of an asset, adjusted for physical deterioration and functional/economic obsolescence",
		"The distinction between recurring fair value measurements (measured each reporting period — trading and available-for-sale debt securities, derivatives, equity investments measured at fair value) and nonrecurring measurements (measured only when a specific event is triggered — impaired long-lived assets under ASC 360, goodwill upon impairment under ASC 350, assets acquired and liabilities assumed in a business combination at the acquisition date under ASC 805, assets held for sale)",
		"The fair value option under ASC 825: irrevocable, instrument-by-instrument election applied to certain financial assets and financial liabilities that would otherwise be measured at amortized cost; items explicitly excluded from the election (investments in consolidated subsidiaries, interests in consolidated VIEs, pension and postretirement obligations, lease-accounting items, deposit liabilities of depository institutions); accounting when elected — measure at fair value each period, changes flow through net income, upfront costs and fees are expensed immediately rather than deferred",
		"The own-credit-risk carve-out under the fair value option: for a liability whose fair value change is attributable to instrument-specific credit risk (the entity's own credit deterioration or improvement), that portion of the change is recognized in OCI rather than net income, to avoid booking a gain when the entity's credit quality worsens",
		"ASC 820 disclosure requirements at the conceptual level: the heightened disclosure burden for Level 3 measurements (roll-forward reconciliation showing beginning balance, purchases/sales/issuances/settlements, gains and losses in earnings and OCI, transfers into/out of Level 3, ending balance; description of the valuation process; quantitative information about significant unobservable inputs; sensitivity analysis); disclosure of transfers between Level 1 and Level 2 and into/out of Level 3",
		"The Level 1 no-adjustment rule — quoted prices for identical assets in active markets are used without adjustment for blockage discounts (size of the holding), control premiums, or entity-specific factors; the market quote is the measurement",
		"The scope boundary of ASC 820 — it defines HOW to measure fair value when another standard requires or permits fair value to be used, but it does NOT determine WHEN fair value must be used (that is determined by ASC 320, 321, 326, 350, 360, 805, 815, 842, and other topic-specific standards)",
		"Application of the hierarchy to concrete scenarios: classifying exchange-traded equity securities as Level 1; classifying corporate bonds priced off observable yield curves as Level 2; classifying intangible assets valued with internal cash flow projections as Level 3; classifying an overall measurement when one significant input is Level 3 and the rest are Level 2",
		"Selection of the approach for typical fair-value subjects at a conceptual level: market approach for actively traded securities; income approach for cash-generating assets and intangible assets without observable market prices; cost approach for specialized tangible assets lacking an active market",
	],

	outOfScope: [
		"Black-Scholes option pricing model mechanics — computing d1 and d2, plugging in volatility, risk-free rate, strike, and time to expiration to derive the option premium",
		"Binomial / lattice option pricing model mechanics — building the underlying-price tree, computing risk-neutral probabilities, working backward through nodes to arrive at a present value",
		"Multi-stage discounted cash flow mechanics beyond the conceptual statement 'an income approach projects future cash flows and discounts them at a risk-adjusted rate' — specifically: computing weighted average cost of capital (WACC), deriving cost of equity via the capital asset pricing model (CAPM), adjusting the cost of debt for the tax shield, computing terminal value with Gordon growth or exit multiple, multi-stage DCF modeling",
		"Capital Asset Pricing Model (CAPM) mechanics — computing cost of equity from risk-free rate, beta, and equity market risk premium (this belongs to BAR Financial Valuation Methods)",
		"Weighted average cost of capital (WACC) derivation — weighting cost of debt and cost of equity by capital structure proportions, tax-adjusting the debt component (belongs to BAR Capital Structure and Valuation)",
		"Beta derivation — computing beta via regression of stock returns against market returns, levering/unlevering beta for capital structure differences (belongs to BAR Financial Valuation Methods)",
		"Terminal value mechanics in a DCF — the Gordon growth perpetuity formula TV = CF × (1 + g) / (r − g), the exit multiple method (belongs to BAR Financial Valuation Methods)",
		"Multi-period excess earnings method (MPEEM) mechanics beyond the name — projecting intangible cash flows, computing contributory asset charges, discounting at an asset-specific rate",
		"Specific ASC 815 derivative accounting mechanics — designation of hedges, hedge effectiveness testing, recycling of OCI on cash flow hedges, fair value hedge basis adjustments (belongs to the Derivatives and Hedging topic)",
		"Investments classification mechanics and investment-specific impairment (available-for-sale, held-to-maturity, trading classification; ASC 320/321 measurement) beyond noting that FV measurement applies where required — belongs to the Investments topic",
		"Current expected credit loss (CECL) under ASC 326 — a separate topic with its own measurement framework (lifetime expected credit loss on amortized-cost financial assets)",
		"Other-than-temporary impairment (OTTI) historical rules or the CECL replacement mechanics for available-for-sale debt securities",
		"Goodwill impairment testing mechanics (the pre-ASU 2017-04 two-step test, the ASU 2017-04 single-step test, the qualitative 'Step 0' option) — belongs to the Intangibles and Goodwill topic",
		"Business combination fair value mechanics (contingent consideration remeasurement classified as liability vs. equity, bargain purchase gain recognition, step acquisition remeasurement at fair value, pre-existing relationships) beyond noting that acquired assets and assumed liabilities are initially measured at fair value — belongs to Business Combinations",
		"Pension and postretirement benefit plan asset fair value measurement mechanics beyond noting that plan assets are reported at fair value and that the fair value option under ASC 825 is unavailable for these obligations",
		"IFRS 13 Fair Value Measurement provisions and differences from ASC 820 beyond noting that the definition of fair value is converged with US GAAP",
		"Transfer pricing for tax purposes (IRC §482 arm's-length standard, advance pricing agreements) — this is a REG/TCP topic and has no connection to ASC 820 fair value",
		"Credit valuation adjustment (CVA) and debit valuation adjustment (DVA) mechanics for derivative and liability fair values",
		"Volatility surface construction, implied vs. historical volatility calibration, stochastic volatility models",
		"Monte Carlo simulation mechanics for complex fair value measurements (path-dependent options, contingent consideration with multiple scenarios)",
		"Matrix pricing mechanics for fixed-income securities beyond noting that matrix pricing is a typical Level 2 technique",
		"Mark-to-model practices and model validation frameworks beyond noting that Level 3 measurements use entity models calibrated to market participant assumptions",
		"Specific disclosure-language requirements or FASB staff views beyond the conceptual disclosure categories",
	],

	keyStandards: [
		"ASC 820 — Fair Value Measurement (the how, not the when)",
		"ASC 820-10-35 — Fair value hierarchy and measurement guidance",
		"ASC 820-10-50 — Fair value disclosure requirements",
		"ASC 825-10 — Financial Instruments: Fair Value Option election and accounting",
	],

	commonMisconceptions: [
		"Confusing fair value (exit price, the amount to sell today) with historical cost (entry price, the amount paid in the past). Fair value is forward-looking from the measurement date, not a record of a prior transaction.",
		"Believing that transaction costs are included in fair value. They are excluded — transaction costs are a friction of executing a transaction and are not a characteristic of the asset or liability itself. The principal-vs-most-advantageous-market comparison is made net of transaction costs, but the fair value measurement itself does not adjust for them.",
		"Applying highest-and-best-use to financial assets. HBU applies only to nonfinancial assets. Financial instruments do not have alternative physical uses — their value is determined by contractual cash flows and market conditions.",
		"Classifying an overall fair value measurement at the highest level of input used. The rule is the opposite — the overall classification is the LOWEST level of any input that is significant to the measurement ('weakest link' rule).",
		"Using entity-specific assumptions in Level 3. Even when inputs are unobservable, they must reflect what market participants would use — not the entity's own plans, synergies, or intended holding period.",
		"Believing the fair value option under ASC 825 can be revoked after election. It is irrevocable and made on an instrument-by-instrument basis at the initial recognition date (or on specified trigger events).",
		"Assuming all fair value option changes flow through net income. Changes attributable to the instrument-specific credit risk of a liability are recognized in OCI, not net income, to prevent booking a gain when the entity's credit deteriorates.",
		"Adjusting Level 1 quoted prices for blockage discounts (when the holding is large relative to typical trading volume) or control premiums (when a minority-interest price is extrapolated to a controlling interest). Level 1 prices are used without adjustment.",
		"Confusing the principal market with the most advantageous market. The principal market (the one with the greatest volume and activity for the asset or liability that the entity can access) is used by default. The most advantageous market is used only when there is no principal market.",
		"Believing ASC 820 determines WHEN fair value must be used. ASC 820 only tells you HOW to measure fair value when another standard requires or permits its use.",
		"Confusing the fair value option (an election available under ASC 825) with required fair value measurement under other standards (e.g., derivatives under ASC 815, trading securities under ASC 320).",
		"Believing that a measurement using only Level 1 inputs still requires a sensitivity analysis. Sensitivity analyses are required only for Level 3 measurements; Level 1 quoted prices do not require one.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "Black-Scholes",
			pattern: "Black[-\\s]Scholes",
			category: "valuation mechanics",
			why: "Black-Scholes option pricing model mechanics are graduate-level derivatives material and belong to BAR Financial Valuation Methods, not FAR/III/E. The conceptual existence of option pricing models within the income approach is in scope; the formula and its inputs are not.",
		},
		{
			term: "binomial model",
			pattern: "binomial\\s+(?:tree|model|lattice|option)",
			category: "valuation mechanics",
			why: "Binomial / lattice option pricing model mechanics — graduate material, belongs to BAR Financial Valuation.",
		},
		{
			term: "lattice model",
			pattern: "lattice\\s+(?:model|valuation|approach)",
			category: "valuation mechanics",
			why: "Lattice option pricing model — graduate material, belongs to BAR Financial Valuation.",
		},
		{
			term: "WACC",
			pattern: "\\bWACC\\b|weighted\\s+average\\s+cost\\s+of\\s+capital",
			category: "BAR territory",
			why: "WACC derivation is a BAR Capital Structure and Valuation topic. Fair value questions should treat a discount rate as a given, not derive it.",
		},
		{
			term: "CAPM",
			pattern: "\\bCAPM\\b|capital\\s+asset\\s+pricing\\s+model",
			category: "BAR territory",
			why: "Capital Asset Pricing Model — BAR Financial Valuation Methods topic.",
		},
		{
			term: "beta coefficient",
			pattern: "\\bbeta\\s+(?:coefficient|value|of\\s+(?:the\\s+)?(?:stock|equity|asset|firm))|levered\\s+beta|unlevered\\s+beta",
			category: "BAR territory",
			why: "Beta as a computed CAPM input is a BAR Financial Valuation Methods concept.",
		},
		{
			term: "terminal value",
			pattern: "terminal\\s+value",
			category: "DCF mechanics",
			why: "Multi-stage DCF terminal value (Gordon growth or exit multiple) is a BAR Financial Valuation Methods concept. Fair value questions should stop at 'an income approach projects future cash flows and discounts them at a risk-adjusted rate'.",
		},
		{
			term: "Gordon growth",
			pattern: "Gordon\\s+growth|perpetuity\\s+growth\\s+(?:model|formula)",
			category: "DCF mechanics",
			why: "Gordon growth perpetuity formula — BAR Financial Valuation Methods.",
		},
		{
			term: "exit multiple",
			pattern: "exit\\s+multiple\\s+method|exit\\s+multiple\\s+approach",
			category: "DCF mechanics",
			why: "Terminal value via exit multiple is BAR Financial Valuation Methods territory.",
		},
		{
			term: "risk-neutral probability",
			pattern: "risk[-\\s]neutral\\s+(?:probability|probabilities|pricing|measure)",
			category: "valuation mechanics",
			why: "Risk-neutral pricing is graduate derivatives theory — out of scope for ASC 820 application.",
		},
		{
			term: "implied volatility",
			pattern: "implied\\s+volatility",
			category: "valuation mechanics",
			why: "Volatility calibration for option pricing — out of scope for FAR fair value.",
		},
		{
			term: "volatility surface",
			pattern: "volatility\\s+(?:surface|smile|skew)",
			category: "valuation mechanics",
			why: "Graduate-level option volatility modeling — out of scope.",
		},
		{
			term: "contributory asset charge",
			pattern: "contributory\\s+asset\\s+charge",
			category: "valuation mechanics",
			why: "The contributory-asset-charge construction is the mechanics marker for multi-period excess earnings method (MPEEM) computation. Classification questions that use the MPEEM NAME are in scope per AICPA task #1 ('Identify valuation techniques'); questions that teach CAC computation are out of scope. This pattern catches the mechanics without false-flagging legitimate classification questions on MPEEM or Monte Carlo.",
		},
		{
			term: "CECL",
			pattern: "\\bCECL\\b|current\\s+expected\\s+credit\\s+loss",
			category: "adjacent topic",
			why: "Current expected credit loss under ASC 326 is a separate topic with its own measurement framework — not ASC 820 fair value.",
		},
		{
			term: "OTTI",
			pattern: "\\bOTTI\\b|other[-\\s]than[-\\s]temporary\\s+impairment",
			category: "adjacent topic",
			why: "Other-than-temporary impairment — Investments topic, not ASC 820.",
		},
		{
			term: "credit valuation adjustment",
			pattern: "credit\\s+valuation\\s+adjustment|\\bCVA\\b",
			category: "valuation mechanics",
			why: "CVA for derivative fair value — graduate material.",
		},
		{
			term: "debit valuation adjustment",
			pattern: "debit\\s+valuation\\s+adjustment|\\bDVA\\b",
			category: "valuation mechanics",
			why: "DVA for liability fair value — graduate material.",
		},
		{
			term: "IFRS 13",
			pattern: "\\bIFRS\\s*13\\b",
			category: "IFRS territory",
			why: "IFRS 13 is the international equivalent of ASC 820. Specific IFRS 13 provisions beyond 'the definition is converged' are out of scope.",
		},
		{
			term: "hedge effectiveness",
			pattern: "hedge\\s+effectiveness|highly\\s+effective\\s+hedge",
			category: "adjacent topic",
			why: "ASC 815 hedge effectiveness testing — Derivatives and Hedging topic, not fair value measurement.",
		},
		{
			term: "transfer pricing",
			pattern: "transfer\\s+pricing|arm'?s[-\\s]length\\s+standard",
			category: "tax territory",
			why: "Tax transfer pricing (IRC §482) is a REG/TCP topic and has no connection to ASC 820 fair value.",
		},
	],

	notes:
		"AICPA 2026 Blueprint FAR/III/E has exactly two representative tasks: 'Identify the valuation techniques used to measure fair value' (Remembering and Understanding) and 'Use assumptions (highest and best use, market participant assumptions, unit of account) and approaches (cost, income, market) to measure fair value according to the fair value hierarchy' (Application). The scope is narrower than the typical CPA-prep fair value chapter, which often drifts into deep DCF mechanics, option pricing math, or full BAR-style valuation exercises. The line held by this spec is: conceptual application of ASC 820 (classify inputs by hierarchy level, select among approaches, apply highest-and-best-use, invoke the fair value option) is in scope; computing a DCF with WACC/CAPM/beta/terminal value or pricing an option with Black-Scholes is out. The BAR Financial Valuation Methods spec (BAR/I/B/3) owns the mechanics side. Drift surface is wide because published study material and generators routinely conflate 'fair value' with 'do a full valuation' — defend against this actively.",
};
