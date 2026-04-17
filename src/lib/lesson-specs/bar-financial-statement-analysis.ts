import type { LessonSpec } from "./types";

// Eleventh authored spec. Slayer's "Financial Statement Analysis" topic maps
// cleanly to AICPA BAR/I/A/1 "Financial statement analysis" (not the full
// BAR/I/A group, which in AICPA also includes non-financial/non-GAAP measures
// and managerial/cost accounting). The AICPA representative tasks for this
// topic are tightly focused on ratio and trend analysis:
//
//   - Determine data attributes, format, sources for FS analysis
//   - Compare current period to prior periods or budget and explain variances
//   - Interpret financial statement fluctuations and ratios (profitability,
//     liquidity, solvency, performance)
//   - Use data analytics outputs to identify patterns, trends, correlations
//   - Derive the impact of transactions on the financial statements
//
// In scope: classic ratio analysis across the four ratio families (liquidity,
// solvency, profitability, activity), horizontal/vertical analysis, period-
// over-period and budget-variance explanation, concept-level 3-component
// DuPont decomposition (ROE = Net Margin x Asset Turnover x Equity
// Multiplier), transaction-impact-on-ratios analysis.
//
// Out of scope: graduate corporate finance models that belong to BAR
// Financial Valuation Methods (BAR/I/B/3) — Economic Value Added (EVA),
// Market Value Added (MVA), residual income valuation, Cash Flow Return on
// Investment (CFROI), extended 5-factor DuPont decomposition, Altman Z-score
// bankruptcy prediction models. Also out: variance analysis mechanics
// (price/quantity/volume variance computation) which belongs to BAR/I/A/3
// managerial and cost accounting, and CVP analysis which belongs to the
// Prospective Analysis and Forecasting topic (BAR/I/A/3 in Slayer's
// numbering, BAR/I/B/1 in AICPA).
//
// The drift surface is relatively narrow compared to the C Corporations or
// Owner-Entity topics because ratio analysis is well-defined and CPA-prep
// material rarely drifts far from the standard ratio taxonomies. The main
// drift risks from the rollout handoff: DuPont decomposition at multi-level
// depth and EVA/MVA formula mechanics.

export const spec: LessonSpec = {
	topic: "Financial Statement Analysis",
	section: "bar",
	primaryRef: "BAR/I/A/1",
	secondaryRefs: [],

	inScope: [
		"Liquidity ratios: current ratio (current assets / current liabilities), quick ratio / acid-test ratio (cash + marketable securities + net receivables / current liabilities), cash ratio (cash + marketable securities / current liabilities); their interpretation as measures of short-term ability to meet obligations",
		"Solvency ratios: debt-to-equity ratio (total debt / total equity), debt-to-assets ratio (total debt / total assets), debt-to-capital ratio, times interest earned / interest coverage ratio (EBIT / interest expense), equity multiplier (total assets / total equity); their interpretation as measures of long-term solvency and financial leverage",
		"Profitability ratios: gross profit margin (gross profit / revenue), operating margin (operating income / revenue), net profit margin (net income / revenue), return on assets — ROA (net income / average total assets), return on equity — ROE (net income / average stockholders' equity), return on invested capital at concept level; their interpretation as measures of operational and investment performance",
		"Activity / efficiency ratios: inventory turnover (COGS / average inventory), days inventory outstanding / days in inventory (365 / inventory turnover), accounts receivable turnover (net credit sales / average A/R), days sales outstanding — DSO (365 / A/R turnover), accounts payable turnover (purchases / average A/P), days payables outstanding — DPO, total asset turnover (revenue / average total assets), fixed asset turnover, cash conversion cycle (DSO + DIO − DPO); their interpretation as measures of working-capital efficiency",
		"Performance / market ratios at the basic level: earnings per share (basic), price-to-earnings ratio (P/E), dividend yield, dividend payout ratio, book value per share; their interpretation at the concept level (not the full EPS calculation with dilution, which is FAR territory)",
		"Three-component DuPont decomposition of ROE: ROE = Net Profit Margin × Total Asset Turnover × Equity Multiplier; interpretation of which component drove an ROE change; the concept that higher leverage (equity multiplier) amplifies ROE but also amplifies risk",
		"Horizontal analysis (period-over-period comparison) — computing and interpreting year-over-year percentage changes in line items and subtotals; identifying unusual fluctuations for further investigation",
		"Vertical analysis (common-size statements) — expressing income statement line items as a percentage of revenue and balance sheet line items as a percentage of total assets; interpreting changes in the mix of expenses or asset composition",
		"Budget-to-actual variance explanation at the concept level — identifying that an unfavorable variance exists, describing its magnitude, and explaining plausible business causes (not computing the statistical variance breakdown into price × quantity components, which is cost-accounting territory)",
		"Ratio interpretation across time — recognizing when an improving ratio reflects improved performance vs. a change in accounting method, a one-time event, or a change in capital structure; recognizing when a declining ratio masks underlying strength or weakness",
		"Transaction-impact-on-ratios analysis: given a proposed transaction, predict the directional impact on key ratios (e.g., issuing long-term debt decreases the current ratio if proceeds repay current debt; purchasing inventory on account decreases the current ratio when current ratio was initially above 1)",
		"Data analytics output interpretation at the concept level — reading ratio trend visualizations, period-over-period variance reports, and peer benchmark comparisons to identify patterns, outliers, and correlations; the concept-level understanding that analytics tools augment but do not replace judgment",
		"Non-financial and non-GAAP performance measures at the concept level — EBITDA, free cash flow, adjusted net income, same-store sales, customer retention rate, employee turnover, labor productivity; recognition that these supplement GAAP measures and their limitations",
		"Recognition that ratios are most informative when compared against industry benchmarks, prior periods, budgets, or peer companies — a ratio in isolation has limited interpretive value",
		"The interaction between income statement, balance sheet, and cash flow statement when analyzing financial performance (e.g., ratios are built from inputs on multiple statements and the analyst must trace the cause of a ratio change to the underlying transaction or accounting treatment)",
	],

	outOfScope: [
		"Extended DuPont decomposition beyond the standard 3-component form — the 5-factor decomposition that breaks ROE into tax burden × interest burden × operating margin × asset turnover × equity multiplier, or any variant with more than 3 multiplicative components",
		"Economic Value Added (EVA) computation: NOPAT − (WACC × Invested Capital); EVA as a performance measurement framework, EVA drivers analysis, EVA-based incentive compensation (graduate corporate finance, belongs to BAR Financial Valuation Methods)",
		"Market Value Added (MVA): the difference between market value of equity and book value of equity; MVA as a long-term wealth measure",
		"Residual income valuation method — the computation of residual income (earnings − equity charge) and its use as a performance or valuation metric (belongs to BAR Financial Valuation Methods)",
		"Cash Flow Return on Investment (CFROI) — the gross cash flow and gross investment calculation, inflation adjustments, real vs. nominal returns",
		"Altman Z-score bankruptcy prediction model — the 5-variable or 4-variable Z-score formula, the safe/gray/distress zone thresholds, Z'-score for private firms, Z''-score for non-manufacturers",
		"Full EPS calculation with dilution (weighted-average shares outstanding, treasury stock method for options and warrants, if-converted method for convertible debt and preferred) — this is FAR territory under ASC 260",
		"Variance analysis computation mechanics — price variance, quantity variance, mix variance, volume variance, spending variance, efficiency variance, flexible budget variance; the formulas and favorable/unfavorable sign conventions (belongs to BAR/I/A/3 managerial and cost accounting)",
		"Cost accounting method mechanics beyond the bare names — absorption costing, variable costing, activity-based costing (ABC), process costing, job order costing, standard costing (belongs to BAR/I/A/3 managerial and cost accounting)",
		"Cost-volume-profit (CVP) analysis mechanics — contribution margin computation, contribution margin ratio, breakeven point in units or dollars, target profit analysis, margin of safety, operating leverage; CVP belongs to the Prospective Analysis and Forecasting topic",
		"Discounted cash flow (DCF) valuation — WACC derivation, terminal value, multi-stage growth models, dividend discount models (belongs to BAR Capital Structure / Financial Valuation)",
		"Beta derivation and CAPM application — computing cost of equity from risk-free rate, beta, and market risk premium (belongs to BAR Capital Structure and Valuation)",
		"Industry-specific ratios that require specialized knowledge — banking net interest margin, insurance combined ratio, REIT FFO/AFFO, same-store sales with segment breakdowns",
		"Financial modeling beyond ratio interpretation — sensitivity analysis, scenario analysis, Monte Carlo simulation for financial projections, multi-period cash flow modeling",
		"Credit scoring models (Altman, Piotroski F-score, Beneish M-score, Ohlson O-score)",
		"Operational efficiency metrics at mechanics depth — Overall Equipment Effectiveness (OEE), Six Sigma metrics, total factor productivity",
		"Fundamental vs. technical analysis frameworks beyond the concept that both exist",
		"Free cash flow to equity (FCFE) vs. free cash flow to firm (FCFF) distinction and computation — corporate finance valuation, not ratio analysis",
		"Hedge accounting and derivative impact on ratios at mechanics depth — ASC 815 hedge documentation, hedge effectiveness testing (belongs to Derivatives and Hedging)",
	],

	keyStandards: [
		"ASC 205 — Presentation of Financial Statements (comparative statements basis)",
		"ASC 280 — Segment Reporting (segment-level financial analysis)",
		"ASC 260 — Earnings Per Share (basic EPS concept only — full mechanics are FAR)",
		"SEC Regulation G — Non-GAAP financial measures disclosure",
		"SEC Regulation S-K Item 303 — Management's Discussion and Analysis (MD&A)",
	],

	commonMisconceptions: [
		"Interpreting a higher current ratio as always better. A current ratio that is too high can indicate overinvestment in working capital (excess inventory, slow-paying customers, idle cash) and suboptimal use of capital.",
		"Believing a lower debt-to-equity ratio is always better. Low leverage may indicate under-utilization of the tax shield on debt and suboptimal return on equity. The optimal level depends on the business risk profile and industry norms.",
		"Confusing gross margin with operating margin. Gross margin is revenue minus cost of goods sold divided by revenue; operating margin is operating income (after SG&A) divided by revenue. Both appear in profitability analysis but measure different levels of cost recovery.",
		"Computing ROE or ROA using end-of-period balance sheet amounts instead of average balances. Return ratios should use average balances when the balance sheet amount changed significantly during the period, to match the income statement's period measurement.",
		"Attributing a change in ROE to a single factor without DuPont decomposition. A higher ROE could reflect improved margins, higher asset turnover, increased leverage, or a combination — the three-component decomposition is the tool for disentangling these.",
		"Treating the inventory turnover ratio as a profitability measure. Inventory turnover is an efficiency measure — how quickly inventory is sold. High turnover is generally good but can indicate understocking or forced sales.",
		"Confusing days sales outstanding (DSO) with the accounts receivable turnover. DSO is 365 divided by receivables turnover — they are related but expressed differently (days vs. number of times per year).",
		"Believing all variances from budget are unfavorable or always require action. Variances can be favorable (actual better than budget) or unfavorable (actual worse than budget), and the materiality threshold determines whether investigation is warranted.",
		"Treating EBITDA as a substitute for cash flow. EBITDA ignores changes in working capital, capital expenditures, and taxes — it is a proxy for operating profitability but not for cash generation.",
		"Ignoring the difference between cash flow from operations and net income when analyzing quality of earnings. A growing gap between the two can signal accrual-based manipulation or changes in working capital that affect the sustainability of reported profits.",
		"Using a single period's ratio in isolation. A ratio derives meaning from comparison — against prior periods (trend), against budget (variance), against peers (benchmark), or against the industry (norms).",
		"Believing horizontal analysis and trend analysis are distinct techniques. Horizontal analysis (period-over-period percentage changes) is trend analysis applied across multiple periods.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "EVA",
			pattern: "\\bEVA\\b|economic\\s+value\\s+added",
			category: "graduate corporate finance",
			why: "Economic Value Added (NOPAT − WACC × Invested Capital) is a BAR Financial Valuation Methods framework. Ratio analysis in this topic stops at profitability/solvency/activity measures, not spread-over-capital-cost performance metrics.",
		},
		{
			term: "MVA",
			pattern: "\\bMVA\\b|market\\s+value\\s+added",
			category: "graduate corporate finance",
			why: "Market Value Added — BAR Financial Valuation Methods, out of scope.",
		},
		{
			term: "residual income",
			pattern: "residual\\s+income\\s+(?:method|model|valuation|approach)",
			category: "graduate corporate finance",
			why: "Residual income valuation method — BAR Financial Valuation Methods.",
		},
		{
			term: "CFROI",
			pattern: "\\bCFROI\\b|cash\\s+flow\\s+return\\s+on\\s+investment",
			category: "graduate corporate finance",
			why: "Cash Flow Return on Investment — advanced corporate finance, out of scope.",
		},
		{
			term: "Altman Z-score",
			pattern: "Altman\\s+Z[-\\s]score|\\bZ[-\\s]score\\s+(?:model|formula)",
			category: "credit scoring",
			why: "Altman Z-score bankruptcy prediction model — credit analysis methodology, out of scope for foundational FSA.",
		},
		{
			term: "Piotroski F-score",
			pattern: "Piotroski\\s+F[-\\s]score",
			category: "credit scoring",
			why: "Piotroski F-score — out of scope.",
		},
		{
			term: "Beneish M-score",
			pattern: "Beneish\\s+M[-\\s]score",
			category: "credit scoring",
			why: "Beneish M-score — out of scope.",
		},
		{
			term: "Ohlson O-score",
			pattern: "Ohlson\\s+O[-\\s]score",
			category: "credit scoring",
			why: "Ohlson O-score — out of scope.",
		},
		{
			term: "tax burden",
			pattern: "tax\\s+burden\\s+ratio",
			category: "DuPont mechanics",
			why: "Tax burden ratio is a component of the extended 5-factor DuPont decomposition. The 3-factor decomposition (margin × turnover × leverage) is in scope; extended forms are not.",
		},
		{
			term: "interest burden",
			pattern: "interest\\s+burden\\s+ratio",
			category: "DuPont mechanics",
			why: "Interest burden ratio — extended DuPont decomposition, out of scope.",
		},
		{
			term: "5-factor DuPont",
			pattern: "(?:five[-\\s]factor|5[-\\s]factor|extended)\\s+DuPont|(?:five|5)[-\\s]component\\s+DuPont",
			category: "DuPont mechanics",
			why: "Extended DuPont decomposition — out of scope. The 3-component version (NPM x ATO x EM) is in scope.",
		},
		{
			term: "WACC",
			pattern: "\\bWACC\\b|weighted\\s+average\\s+cost\\s+of\\s+capital",
			category: "BAR territory",
			why: "WACC derivation and use — BAR Capital Structure and Valuation topic. Ratio analysis does not require computing a cost of capital.",
		},
		{
			term: "CAPM",
			pattern: "\\bCAPM\\b|capital\\s+asset\\s+pricing\\s+model",
			category: "BAR territory",
			why: "CAPM — BAR Financial Valuation Methods topic.",
		},
		{
			term: "beta coefficient",
			pattern: "\\bbeta\\s+(?:coefficient|of\\s+(?:the\\s+)?(?:stock|equity))|levered\\s+beta|unlevered\\s+beta",
			category: "BAR territory",
			why: "Beta as a computed input — BAR Financial Valuation Methods.",
		},
		{
			term: "Black-Scholes",
			pattern: "Black[-\\s]Scholes",
			category: "valuation mechanics",
			why: "Option pricing models — BAR Financial Valuation Methods.",
		},
		{
			term: "terminal value",
			pattern: "terminal\\s+value",
			category: "DCF mechanics",
			why: "Terminal value is DCF valuation — BAR Financial Valuation Methods.",
		},
		{
			term: "Gordon growth",
			pattern: "Gordon\\s+growth|perpetuity\\s+growth\\s+(?:model|formula)",
			category: "DCF mechanics",
			why: "Gordon growth model — BAR Financial Valuation Methods.",
		},
		{
			term: "dividend discount",
			pattern: "dividend\\s+discount\\s+model|\\bDDM\\b",
			category: "valuation mechanics",
			why: "Dividend discount model — BAR Financial Valuation Methods.",
		},
		{
			term: "free cash flow to equity",
			pattern: "free\\s+cash\\s+flow\\s+to\\s+equity|\\bFCFE\\b",
			category: "valuation mechanics",
			why: "FCFE vs. FCFF distinction — corporate finance valuation, not ratio analysis.",
		},
		{
			term: "free cash flow to firm",
			pattern: "free\\s+cash\\s+flow\\s+to\\s+firm|\\bFCFF\\b",
			category: "valuation mechanics",
			why: "FCFF — corporate finance valuation, not ratio analysis.",
		},
		{
			term: "price variance",
			pattern: "price\\s+variance|material\\s+price\\s+variance|labor\\s+rate\\s+variance",
			category: "cost accounting mechanics",
			why: "Price variance computation — BAR/I/A/3 managerial and cost accounting, not FSA.",
		},
		{
			term: "quantity variance",
			pattern: "quantity\\s+variance|efficiency\\s+variance|usage\\s+variance",
			category: "cost accounting mechanics",
			why: "Quantity/efficiency variance computation — BAR managerial and cost accounting.",
		},
		{
			term: "volume variance",
			pattern: "volume\\s+variance|production\\s+volume\\s+variance",
			category: "cost accounting mechanics",
			why: "Volume variance — BAR managerial and cost accounting.",
		},
		{
			term: "spending variance",
			pattern: "spending\\s+variance|flexible\\s+budget\\s+variance",
			category: "cost accounting mechanics",
			why: "Spending variance — BAR managerial and cost accounting.",
		},
		{
			term: "contribution margin",
			pattern: "contribution\\s+margin\\s+(?:ratio|per\\s+unit|computation|formula)",
			category: "CVP territory",
			why: "Contribution margin mechanics — Prospective Analysis and Forecasting / CVP topic, not FSA.",
		},
		{
			term: "breakeven point",
			pattern: "break[-\\s]?even\\s+(?:point|analysis|units|dollars)",
			category: "CVP territory",
			why: "Breakeven analysis — Prospective Analysis and Forecasting / CVP topic, not FSA.",
		},
		{
			term: "operating leverage",
			pattern: "degree\\s+of\\s+operating\\s+leverage|\\bDOL\\b",
			category: "CVP territory",
			why: "Degree of operating leverage — CVP / Prospective Analysis territory.",
		},
		{
			term: "Monte Carlo simulation",
			pattern: "Monte\\s+Carlo",
			category: "modeling mechanics",
			why: "Monte Carlo simulation for financial modeling — out of scope for ratio-focused FSA.",
		},
	],

	notes:
		"AICPA BAR/I/A/1 'Financial statement analysis' is one of three topics under BAR/I/A 'Current period/historical analysis.' The other two (BAR/I/A/2 non-financial / non-GAAP measures, BAR/I/A/3 managerial and cost accounting) are separate Slayer topics or are folded into other Slayer topics. This spec covers Slayer's 'Financial Statement Analysis' topic only, which is the ratio-and-trend-analysis slice. The drift surface is relatively narrow: classic ratio families are well-defined, and published CPA-prep material generally stays within the standard taxonomy. The main drift risks are into graduate corporate finance (EVA, MVA, residual income, CFROI, Altman Z-score, extended DuPont) and into adjacent BAR topics (WACC/CAPM/beta for BAR Capital Structure; Black-Scholes/terminal value/DDM for BAR Financial Valuation; CVP/breakeven/operating leverage for Prospective Analysis; variance analysis mechanics for BAR managerial/cost accounting).",
};
