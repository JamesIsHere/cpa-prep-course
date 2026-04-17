import type { LessonSpec } from "./types";

// Forty-third authored spec — twenty-sixth of Stage 3. Census v3
// rank #13: 52 questions, 4 flagged (7.7%) on `Black-Scholes` (3),
// `Monte Carlo simulation` (1). Rightful-owner for Black-Scholes in
// the stock compensation context — Financial Valuation Methods and
// Fair Value specs push Black-Scholes out as "valuation methodology
// depth" territory, but ASC 718 stock compensation EXPLICITLY uses
// Black-Scholes (or lattice models) to value employee stock options
// at grant. This spec is the rightful home for that use.

export const spec: LessonSpec = {
	topic: "Stock Compensation and Business Combinations",
	section: "bar",
	blueprintRef: "BAR/II/F/0",

	inScope: [
		"ASC 718 Stock Compensation accounting framework: share-based payment awards (stock options, restricted stock, RSUs, ESPPs, stock appreciation rights) are recognized as compensation expense over the requisite service period, measured at grant-date fair value for equity-classified awards.",
		"Grant-date fair value measurement for stock options: the fair value is determined using an option-pricing model — most commonly the Black-Scholes-Merton model, or a lattice (binomial) model for more complex features. The fair value reflects the option's intrinsic value plus time value, incorporating the underlying stock price, exercise price, expected term, volatility, risk-free rate, and expected dividends.",
		"The Black-Scholes model's inputs for ASC 718 purposes at concept level: (1) current stock price, (2) exercise price, (3) expected term of the option (shorter of contractual life and expected life based on historical exercise patterns), (4) expected volatility (historical or implied), (5) risk-free interest rate (matching the expected term), and (6) expected dividend yield.",
		"Lattice model (binomial tree) as an alternative: provides greater flexibility for options with complex features (performance conditions, market conditions, early exercise, vesting interactions). ASC 718 permits lattice models and requires them when option features cannot be reasonably approximated by Black-Scholes.",
		"Recognition of compensation expense: the grant-date fair value is allocated over the requisite service period (typically the vesting period) on a straight-line basis for service-condition-only awards. For graded-vesting awards, expense may be recognized using either straight-line or accelerated (tranche-by-tranche) methods depending on the plan's design.",
		"Forfeitures: ASC 718 allows the entity to either (a) estimate forfeitures at grant and adjust expense ratably, or (b) account for forfeitures when they occur (the default since the 2016 ASU update). Forfeitures reduce cumulative compensation expense to the amount attributable to actually vested awards.",
		"Restricted stock awards vs restricted stock units (RSUs): restricted stock is issued at grant (the employee owns the shares but they are subject to forfeiture and transfer restrictions until vesting); RSUs are a promise to issue shares at vesting (no ownership until vest). Grant-date fair value for restricted stock/RSUs equals the current stock price (no option-pricing model needed because there is no exercise price).",
		"Performance conditions vs service conditions: a service condition is satisfied by the employee rendering the required service over the vesting period. A performance condition requires the entity to achieve specified operating or financial targets (revenue, EPS growth, etc.). Performance conditions affect the amount of expense recognized (if the performance is not achieved, no expense is retained) but not the grant-date fair value.",
		"Market conditions: conditions based on the market price of the entity's stock (e.g., total shareholder return relative to an index). Market conditions are INCORPORATED into the grant-date fair value (via a more complex option model like lattice or Monte Carlo) rather than adjusting the number of awards expected to vest. If the market condition is not achieved, expense is still recognized based on the grant-date fair value.",
		"Employee Stock Purchase Plans (ESPPs) under ASC 718: plans that allow employees to purchase stock at a discount from market price. Qualified §423 plans (non-compensatory from a tax perspective) still generate compensation expense for accounting purposes under ASC 718 if the discount exceeds 5% or if a lookback feature exists. The expense is computed as the fair value of the purchase option at grant.",
		"Modifications to share-based awards: if an award is modified (repriced, vesting accelerated, performance condition changed), the difference between the fair value at modification date and the fair value before modification is recognized as incremental compensation expense. Modifications are common in down markets when underwater options are repriced.",
		"Tax accounting for share-based compensation: the deductible amount for tax purposes is the SPREAD at exercise (for NQSOs and RSUs on vesting) or the realized gain on disposition (for ISOs, with AMT implications). The book-tax difference between ASC 718 expense and tax deduction produces deferred tax effects under ASC 740, with excess tax benefits or deficiencies recorded in income tax expense.",
		"ASC 805 Business Combinations — the acquisition method: all business combinations are accounted for using the acquisition method, which identifies the acquirer, determines the acquisition date, recognizes and measures the identifiable assets acquired, liabilities assumed, and any non-controlling interest in the acquiree, and recognizes and measures goodwill or a gain from bargain purchase.",
		"Goodwill computation: goodwill = (consideration transferred + fair value of non-controlling interest + fair value of previously held equity interest) − fair value of identifiable net assets acquired. A bargain purchase (negative goodwill) is recognized immediately as a gain in the income statement of the acquirer.",
		"Fair value measurement of identifiable assets and liabilities: acquired assets and liabilities are measured at fair value on the acquisition date — including identifiable intangible assets (customer lists, patents, trademarks, in-process research and development) that may not have been recognized on the target's historical books. Contingent liabilities are recognized at fair value if they can be measured reliably.",
		"Contingent consideration: consideration that is contingent on future events (earnouts). Initial measurement at fair value on acquisition date. Subsequent accounting depends on classification: if classified as equity, no subsequent remeasurement; if classified as a liability, remeasured at each reporting date with changes in fair value recognized in earnings.",
		"Measurement period adjustments under ASC 805: up to one year from the acquisition date, the acquirer may adjust provisional amounts for new information obtained about facts and circumstances that existed at the acquisition date. Adjustments are made retrospectively to the acquisition date.",
		"Transaction costs in a business combination: direct transaction costs (legal fees, advisory fees, due diligence) are EXPENSED as incurred under ASC 805, not capitalized as part of the cost of acquisition. This differs from the pre-2008 purchase method where such costs were capitalized.",
		"Acquired in-process research and development (IPR&D): recognized at fair value on the acquisition date as an indefinite-lived intangible asset. Subsequently, IPR&D is not amortized until the research is completed (then amortized over useful life) or abandoned (written off).",
	],

	outOfScope: [
		"Stock option valuation theory at finance-theoretical depth — the Black-Scholes partial differential equation derivation, risk-neutral valuation, Itô's lemma, binomial model convergence to Black-Scholes, American vs European option pricing at mathematical depth. BAR Financial Valuation Methods territory at deep theory; this spec uses Black-Scholes and lattice models at APPLIED concept level for ASC 718",
		"Monte Carlo simulation methodology at depth — the underlying random process, variance reduction techniques, convergence analysis. This spec references Monte Carlo only as a permitted alternative for complex option features; the methodology depth is BAR Financial Valuation Methods",
		"Greek letter sensitivities (delta, gamma, theta, vega, rho) at analytical depth — option sensitivity analysis. BAR Financial Valuation Methods",
		"Exotic options (barrier options, Asian options, lookback options) and their valuation — BAR Financial Valuation Methods territory",
		"Stock option TAX implications at depth — ISO vs NQSO distinction, §421 qualified stock options, §83(b) elections for restricted stock, NSO ordinary income timing, ISO AMT preference item. REG Individual Taxation or a dedicated stock comp tax topic",
		"Deferred tax computation under ASC 740 for stock comp at depth — temporary difference tracking, valuation allowance, pre-adoption vs post-adoption rules. FAR Income Taxes territory",
		"Specific pre-ASC 718 transition rules — historical accounting changes from APB 25 intrinsic value method. Historical reference only",
		"Pushdown accounting at depth — the subsidiary-level election to use the acquirer's new basis. FAR Consolidations or Business Combinations depth",
		"Asset acquisition vs business combination determination — the test for whether an acquired set of activities is a 'business' under ASC 805-10. Boundary issues between asset acquisitions (no goodwill) and business combinations (goodwill possible) are in scope at concept level",
		"Variable Interest Entity (VIE) consolidation analysis — FAR Consolidations territory at depth",
		"Reverse acquisitions, common control transactions, step acquisitions at depth — FAR Consolidations or Advanced Consolidations",
		"Pushed-down deferred tax accounting post-combination — FAR territory",
		"Non-controlling interest measurement — fair value vs proportionate share method election, subsequent accounting for changes in ownership that don't result in loss of control. FAR Consolidations territory at depth",
		"Goodwill impairment testing — ASC 350 two-step test, qualitative assessment, quantitative test. FAR Intangibles Advanced territory",
		"Business combinations achieved in stages (step acquisitions) — the remeasurement of the previously held equity interest at fair value with gain/loss recognition. FAR Consolidations at depth",
	],

	keyStandards: [
		"ASC 718 — Compensation — Stock Compensation",
		"ASC 805 — Business Combinations",
		"ASC 820 — Fair Value Measurement (referenced for fair value concepts)",
		"ASC 260 — Earnings Per Share (referenced for diluted EPS treatment of stock options)",
		"ASC 740 — Income Taxes (referenced for deferred tax treatment of book-tax differences)",
	],

	commonMisconceptions: [
		"Thinking the Black-Scholes model is the only permitted option-pricing approach for ASC 718. ASC 718 permits any model that meets specified criteria — Black-Scholes and lattice (binomial) models are both commonly used. Lattice models are required when the option has features that Black-Scholes cannot reasonably approximate (early exercise interactions, complex vesting, path-dependent features).",
		"Believing that restricted stock and stock options have the same fair value measurement. Stock options require an option-pricing model (Black-Scholes or lattice) because they have exercise price and time value. Restricted stock has a fair value equal to the current stock price because it has no exercise price — it is simply a delayed delivery of shares.",
		"Confusing performance conditions with market conditions. A PERFORMANCE condition (internal metric like revenue or EPS) affects the expected number of awards that will vest and is accounted for by adjusting the quantity of awards recognized. A MARKET condition (stock price-based metric) is incorporated into the grant-date fair value and expense is recognized regardless of whether the market condition is achieved.",
		"Thinking stock option compensation expense reverses if the option expires unexercised. Once compensation expense is recognized under ASC 718 based on grant-date fair value over the service period, the expense is NOT reversed if the option expires unexercised. The economic value was transferred at grant; if the employee loses the opportunity later, that is a realized loss to the employee, not a reversal of the entity's compensation cost.",
		"Believing transaction costs in a business combination are capitalized. Under current ASC 805 (post-2008), direct transaction costs are EXPENSED as incurred — a significant change from the pre-2008 purchase method. This is a frequently tested distinction.",
		"Thinking goodwill arises automatically in every business combination. Goodwill exists only when consideration exceeds the fair value of identifiable net assets. A BARGAIN PURCHASE (consideration below fair value of net assets) produces a gain recognized immediately in earnings, not negative goodwill on the balance sheet.",
		"Confusing IPR&D accounting with regular R&D. Acquired in-process research and development is recognized as an INDEFINITE-LIVED INTANGIBLE ASSET on the acquisition date (not expensed as R&D under the general R&D rule). IPR&D is subsequently amortized when the research is completed (becoming a regular intangible) or written off if abandoned.",
		"Thinking contingent consideration is remeasured at the acquisition date in all cases. Contingent consideration is measured at FAIR VALUE on the acquisition date and included in the cost of the acquisition. Subsequent accounting depends on classification: liability-classified earnouts are remeasured each period with changes in fair value through earnings; equity-classified earnouts are NOT remeasured.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Option pricing theory depth (BAR Financial Valuation Methods) ---
		{ term: "risk-neutral probability", pattern: "risk[-\\s]neutral\\s+probability", category: "option theory depth", why: "Risk-neutral valuation — Financial Valuation Methods territory at depth." },
		{ term: "Itô's lemma", pattern: "It[ôo]'?s\\s+lemma", category: "option theory depth", why: "Itô's lemma derivation — advanced option theory, out of scope." },
		{ term: "partial differential equation", pattern: "partial\\s+differential\\s+equation.{0,40}Black[-\\s]Scholes|Black[-\\s]Scholes.{0,40}partial\\s+differential\\s+equation", category: "option theory depth", why: "Black-Scholes PDE derivation — theory depth." },
		{ term: "option Greeks", pattern: "option\\s+Greeks?|delta\\s+gamma\\s+theta|vega\\s+sensitivity", category: "option theory depth", why: "Option sensitivity analysis (Greeks) — Financial Valuation Methods." },
		{ term: "exotic options", pattern: "exotic\\s+options?|barrier\\s+options?|Asian\\s+options?|lookback\\s+options?", category: "option theory depth", why: "Exotic options pricing — Financial Valuation Methods territory." },

		// --- Stock comp tax (REG) ---
		{ term: "ISO AMT preference", pattern: "ISO\\s+AMT\\s+preference|AMT\\s+preference\\s+for\\s+incentive\\s+stock", category: "REG stock comp tax", why: "ISO AMT tax implications — REG Individual Taxation territory." },
		{ term: "Section 83(b) election", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)83\\(b\\)\\s+election", category: "REG stock comp tax", why: "§83(b) election for restricted stock — REG Individual Taxation territory." },
		{ term: "Section 421", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)421\\b", category: "REG stock comp tax", why: "§421 qualified stock options — REG territory." },
		{ term: "Section 422", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)422\\b", category: "REG stock comp tax", why: "§422 ISO tax rules — REG territory." },

		// --- FAR consolidation depth ---
		{ term: "variable interest entity", pattern: "variable\\s+interest\\s+entity|\\bVIE\\b", category: "FAR consolidation", why: "VIE analysis — FAR Consolidations territory." },
		{ term: "pushdown accounting", pattern: "pushdown\\s+accounting|push[-\\s]down\\s+accounting", category: "FAR consolidation", why: "Pushdown accounting — FAR Consolidations territory." },
		{ term: "step acquisition", pattern: "step\\s+acquisition|business\\s+combinations?\\s+achieved\\s+in\\s+stages", category: "FAR consolidation", why: "Step acquisitions with remeasurement — FAR Consolidations depth." },
		{ term: "goodwill impairment test", pattern: "goodwill\\s+impairment\\s+test|two[-\\s]step\\s+impairment\\s+test", category: "FAR intangibles", why: "Goodwill impairment testing — FAR Intangibles Advanced territory." },
	],

	notes:
		"Stock Compensation and Business Combinations (BAR/II/F/0) owns ASC 718 stock compensation (option-pricing models at applied concept level including Black-Scholes and lattice, restricted stock/RSUs, performance vs market conditions, ESPPs, modifications, forfeitures) AND ASC 805 business combinations (acquisition method, goodwill/bargain purchase, fair value measurement of assets and liabilities, contingent consideration, measurement period adjustments, transaction costs, IPR&D). Census v3 flagged 4/52 at 7.7% — 3 on `Black-Scholes`, 1 on `Monte Carlo simulation`. Rightful-owner pattern: Financial Valuation Methods and Fair Value specs push Black-Scholes out as 'valuation methodology depth,' but ASC 718 explicitly requires option-pricing models for grant-date fair value — this spec uses them at APPLIED concept level. Out of scope: option theory depth (risk-neutral valuation, Itô's lemma, PDEs, Greeks, exotic options — Financial Valuation Methods), stock comp TAX implications (REG Individual Taxation), deferred tax accounting depth (FAR Income Taxes), pushdown accounting and VIE analysis (FAR Consolidations), goodwill impairment testing (FAR Intangibles), step acquisitions at depth.",
};
