import type { StudyFramework } from "./types";

export const barFramework: StudyFramework = {
	sectionCode: "bar",
	sectionTitle: "Business Analysis and Reporting",
	conceptMaps: [
		{
			title: "Financial Ratio Framework",
			root: {
				label: "Financial Statement Analysis",
				children: [
					{
						label: "Liquidity Ratios",
						children: [
							{ label: "Current ratio = CA / CL" },
							{ label: "Quick ratio = (Cash + ST Inv + AR) / CL" },
							{ label: "Cash ratio = Cash / CL" },
						],
					},
					{
						label: "Solvency Ratios",
						children: [
							{ label: "Debt-to-equity = Total liabilities / Equity" },
							{ label: "Times interest earned = EBIT / Interest" },
							{ label: "Equity multiplier = Assets / Equity" },
						],
					},
					{
						label: "Profitability Ratios",
						children: [
							{ label: "Gross margin = (Rev − COGS) / Rev" },
							{ label: "Operating margin = Operating income / Rev" },
							{ label: "ROA = NI / Avg assets" },
							{ label: "ROE = NI / Avg equity" },
						],
					},
					{
						label: "Activity Ratios",
						children: [
							{ label: "Inventory turnover = COGS / Avg inventory" },
							{ label: "Receivables turnover = Net credit sales / Avg AR" },
							{ label: "Asset turnover = Revenue / Avg assets" },
						],
					},
				],
			},
		},
		{
			title: "Cost of Capital and WACC",
			root: {
				label: "Weighted Average Cost of Capital",
				children: [
					{
						label: "Cost of Debt",
						children: [
							{ label: "Pre-tax rate × (1 − Tax rate)" },
							{ label: "Interest is tax-deductible (tax shield)" },
						],
					},
					{
						label: "Cost of Preferred Stock",
						children: [
							{ label: "Preferred dividend / Net issuance price" },
							{ label: "No tax deduction for preferred dividends" },
						],
					},
					{
						label: "Cost of Equity (CAPM)",
						children: [
							{ label: "Risk-free rate + β(Market risk premium)" },
							{ label: "β measures systematic risk only" },
						],
					},
					{
						label: "Cost of Equity (DDM)",
						children: [
							{ label: "(D₁ / P₀) + g" },
							{ label: "Requires stable dividend growth" },
						],
					},
					{
						label: "WACC Blends All Sources",
						children: [
							{
								label: "wᵈ × rᵈ(1−T) + wᵖ × rᵖ + wᵉ × rₑ",
							},
							{ label: "Use market value weights, not book value" },
						],
					},
				],
			},
		},
		{
			title: "DCF Valuation Framework",
			root: {
				label: "Discounted Cash Flow Analysis",
				children: [
					{
						label: "FCFF Approach",
						children: [
							{
								label: "FCFF = EBIT(1−T) + Depr − CapEx − ΔNWC",
							},
							{ label: "Discount at WACC → Enterprise value" },
							{ label: "EV − Debt + Cash = Equity value" },
						],
					},
					{
						label: "FCFE Approach",
						children: [
							{
								label: "FCFE = NI + Depr − CapEx − ΔNWC + Net borrowing",
							},
							{ label: "Discount at cost of equity → Equity value directly" },
						],
					},
					{
						label: "Terminal Value",
						children: [
							{
								label: "Gordon Growth: FCF × (1+g) / (r−g)",
							},
							{ label: "Exit multiple: EBITDA × comparable multiple" },
							{ label: "Typically 60-80% of total value" },
						],
					},
					{
						label: "Market Multiples",
						children: [
							{ label: "P/E = Price / EPS (equity-level)" },
							{ label: "EV/EBITDA = Enterprise value / EBITDA" },
							{ label: "P/B = Price / Book value per share" },
						],
					},
				],
			},
		},
		{
			title: "Derivative and Hedge Accounting (ASC 815)",
			root: {
				label: "Hedge Accounting Framework",
				children: [
					{
						label: "Fair Value Hedge",
						children: [
							{
								label:
									"Hedges FV of recognized asset/liability or firm commitment",
							},
							{ label: "Both derivative and hedged item → Earnings" },
							{ label: "Example: Swap on fixed-rate debt" },
						],
					},
					{
						label: "Cash Flow Hedge",
						children: [
							{ label: "Hedges variability of future cash flows" },
							{
								label:
									"Effective portion → OCI; reclassify to earnings when hedged item affects earnings",
							},
							{ label: "Ineffective portion → Earnings immediately" },
							{ label: "Example: Swap on variable-rate debt" },
						],
					},
					{
						label: "Net Investment Hedge",
						children: [
							{ label: "Hedges FX exposure of foreign subsidiary" },
							{ label: "Effective portion → CTA in OCI" },
						],
					},
					{
						label: "No Designation (Speculation)",
						children: [
							{ label: "All fair value changes → Earnings" },
							{ label: "Default treatment for all derivatives" },
						],
					},
				],
			},
		},
	],
	decisionTrees: [
		{
			title: "Hedge Type Classification",
			root: {
				question:
					"Is the hedge protecting against changes in fair value of a recognized asset/liability or firm commitment?",
				yes: "Fair value hedge — derivative and hedged item both marked to earnings",
				no: {
					question:
						"Is the hedge protecting against variability in expected future cash flows?",
					yes: "Cash flow hedge — effective portion to OCI, reclassify when hedged item affects earnings",
					no: {
						question:
							"Is the hedge protecting a net investment in a foreign operation?",
						yes: "Net investment hedge — effective portion to CTA in OCI",
						no: "Not a hedge designation — derivative changes go to earnings (speculation)",
					},
				},
			},
		},
		{
			title: "Revenue Recognition — Licensing",
			root: {
				question:
					"Does the entity's ongoing activity significantly affect the utility of the IP to the customer?",
				yes: {
					question:
						"Does the customer reasonably expect the entity will undertake activities that significantly affect the IP?",
					yes: "Right to access (symbolic IP) — recognize revenue over time",
					no: "Right to use (functional IP) — recognize revenue at point in time",
				},
				no: "Right to use (functional IP) — recognize revenue at point in time (e.g., software, completed film)",
			},
		},
		{
			title: "Goodwill Impairment Test (ASC 350)",
			root: {
				question:
					"Optional: Does a qualitative assessment indicate it is more likely than not (>50%) that FV < carrying amount?",
				yes: {
					question:
						"Quantitative test: Is the fair value of the reporting unit less than its carrying amount (including goodwill)?",
					yes: "Impairment loss = Carrying amount − Fair value (capped at goodwill balance). Never reversed.",
					no: "No impairment — fair value exceeds carrying amount",
				},
				no: "No impairment — qualitative factors do not indicate likely impairment; skip quantitative test",
			},
		},
		{
			title: "VIE Primary Beneficiary Determination",
			root: {
				question:
					"Does the entity have power to direct the activities that most significantly affect the VIE's economic performance?",
				yes: {
					question:
						"Does the entity have the obligation to absorb losses or the right to receive benefits that could be significant to the VIE?",
					yes: "Entity is the primary beneficiary — must consolidate the VIE",
					no: "Not the primary beneficiary — do not consolidate (disclose involvement)",
				},
				no: "Not the primary beneficiary — do not consolidate (disclose involvement)",
			},
		},
	],
	formulas: [
		{
			name: "WACC",
			formula: "wᵈ × rᵈ(1−T) + wᵖ × rᵖ + wᵉ × rₑ",
			description:
				"Weighted average cost of capital. Use market value weights. Only debt gets the tax shield.",
		},
		{
			name: "CAPM (Cost of Equity)",
			formula: "rₑ = Rᶠ + β(Rₘ − Rᶠ)",
			description:
				"Risk-free rate plus beta times market risk premium. Beta measures systematic risk only.",
		},
		{
			name: "Gordon Growth Model (DDM)",
			formula: "P₀ = D₁ / (rₑ − g)",
			description:
				"Constant-growth dividend discount model. Requires g < rₑ. D₁ = D₀ × (1 + g).",
		},
		{
			name: "FCFF (Free Cash Flow to Firm)",
			formula:
				"EBIT(1 − T) + Depreciation − Capital Expenditures − ΔNet Working Capital",
			description:
				"Cash flow available to all capital providers. Discount at WACC for enterprise value.",
		},
		{
			name: "Terminal Value (Gordon Growth)",
			formula: "TV = FCFₙ × (1 + g) / (r − g)",
			description:
				"Value of all cash flows beyond the forecast period. Small changes in g or r have outsized impact.",
		},
		{
			name: "External Financing Needed (EFN)",
			formula: "(A/S)(ΔS) − (L/S)(ΔS) − PM × S₁ × (1 − d)",
			description:
				"Additional capital needed to support sales growth. Negative EFN means surplus funds.",
		},
		{
			name: "DuPont ROE Decomposition",
			formula: "ROE = Net Profit Margin × Asset Turnover × Equity Multiplier",
			description:
				"Decomposes return on equity into profitability, efficiency, and leverage drivers.",
		},
		{
			name: "NPV (Net Present Value)",
			formula: "Σ [CFₜ / (1 + r)ᵗ] − Initial Investment",
			description:
				"Accept if NPV > 0. Gold standard for capital budgeting. Always preferred over IRR for mutually exclusive projects.",
		},
		{
			name: "Enterprise Value",
			formula:
				"Market Cap + Total Debt + Preferred Stock + Minority Interest − Cash",
			description:
				"Total acquisition cost. Use with EV-based multiples (EV/EBITDA, EV/Revenue).",
		},
		{
			name: "Exponential Smoothing",
			formula: "New Forecast = α(Actual) + (1 − α)(Previous Forecast)",
			description:
				"α closer to 1 = more responsive; α closer to 0 = smoother. 0 < α < 1.",
		},
		{
			name: "Degree of Operating Leverage (DOL)",
			formula: "Contribution Margin / EBIT",
			description:
				"% change in EBIT for a 1% change in sales. Higher DOL = more fixed costs = more operating risk.",
		},
		{
			name: "Degree of Financial Leverage (DFL)",
			formula: "EBIT / (EBIT − Interest Expense)",
			description:
				"% change in EPS for a 1% change in EBIT. Higher DFL = more debt = more financial risk.",
		},
	],
	referenceTables: [
		{
			title: "Hedge Accounting Summary (ASC 815)",
			headers: [
				"Feature",
				"Fair Value Hedge",
				"Cash Flow Hedge",
				"Net Investment Hedge",
			],
			rows: [
				[
					"What is hedged",
					"FV of asset/liability or firm commitment",
					"Variability of future cash flows",
					"FX exposure of foreign subsidiary",
				],
				[
					"Derivative gain/loss",
					"Earnings",
					"OCI (effective), Earnings (ineffective)",
					"CTA in OCI",
				],
				[
					"Hedged item treatment",
					"Adjusted to FV through earnings",
					"No adjustment until reclassification",
					"Translation in CTA",
				],
				[
					"Common example",
					"Swap on fixed-rate debt",
					"Swap on variable-rate debt",
					"Forward on foreign subsidiary equity",
				],
			],
		},
		{
			title: "Economic Indicators Classification",
			headers: ["Type", "Indicator", "Timing"],
			rows: [
				["Leading", "Stock market returns", "Changes before economy"],
				["Leading", "Building permits", "Changes before economy"],
				["Leading", "Consumer confidence", "Changes before economy"],
				["Coincident", "Real GDP", "Moves with economy"],
				["Coincident", "Industrial production", "Moves with economy"],
				["Coincident", "Employment levels", "Moves with economy"],
				["Lagging", "Unemployment rate", "Changes after economy"],
				["Lagging", "CPI", "Changes after economy"],
				["Lagging", "Prime rate", "Changes after economy"],
			],
		},
		{
			title: "Capital Budgeting Methods Comparison",
			headers: ["Method", "Formula / Rule", "Strengths", "Weaknesses"],
			rows: [
				[
					"NPV",
					"Σ PV of CFs − Investment; Accept if > 0",
					"Accounts for TVM, measures $ value added",
					"Requires estimated discount rate",
				],
				[
					"IRR",
					"Rate where NPV = 0; Accept if > WACC",
					"Percentage return, intuitive",
					"Multiple IRRs possible, reinvestment assumption",
				],
				[
					"Payback",
					"Years to recover investment",
					"Simple, measures liquidity risk",
					"Ignores TVM and post-payback CFs",
				],
				[
					"PI",
					"PV of CFs / Investment; Accept if > 1",
					"Value per $ invested, useful for rationing",
					"Same limitations as NPV",
				],
			],
		},
		{
			title: "Government Fund Types",
			headers: ["Category", "Fund", "Measurement Focus", "Basis"],
			rows: [
				[
					"Governmental",
					"General",
					"Current financial resources",
					"Modified accrual",
				],
				[
					"Governmental",
					"Special revenue",
					"Current financial resources",
					"Modified accrual",
				],
				[
					"Governmental",
					"Capital projects",
					"Current financial resources",
					"Modified accrual",
				],
				[
					"Governmental",
					"Debt service",
					"Current financial resources",
					"Modified accrual",
				],
				[
					"Governmental",
					"Permanent",
					"Current financial resources",
					"Modified accrual",
				],
				["Proprietary", "Enterprise", "Economic resources", "Full accrual"],
				[
					"Proprietary",
					"Internal service",
					"Economic resources",
					"Full accrual",
				],
				[
					"Fiduciary",
					"Pension/Investment/Custodial trust",
					"Economic resources",
					"Full accrual",
				],
			],
		},
		{
			title: "GASB vs. FASB Key Differences",
			headers: ["Topic", "GASB", "FASB"],
			rows: [
				[
					"Reporting model",
					"Government-wide + fund statements",
					"Single set of financial statements",
				],
				["Governmental fund basis", "Modified accrual", "N/A (accrual only)"],
				[
					"Revenue recognition",
					"Measurable and available",
					"ASC 606 five-step model",
				],
				["Capital assets in govt funds", "Not reported (expenditure)", "N/A"],
				[
					"Net position categories",
					"Net investment in capital assets, restricted, unrestricted",
					"Common stock, APIC, retained earnings",
				],
				["Budget reporting", "Required (RSI)", "Not required"],
				["Pensions", "GASB 68 (net pension liability)", "ASC 715 (PBO)"],
			],
		},
		{
			title: "ASC 805 — Identifiable Intangibles in Business Combinations",
			headers: ["Category", "Examples", "Useful Life"],
			rows: [
				[
					"Marketing-related",
					"Trademarks, trade names, internet domains",
					"Indefinite or finite",
				],
				[
					"Customer-related",
					"Customer lists, order backlogs, contracts",
					"Finite",
				],
				["Artistic-related", "Copyrights, plays, books, photographs", "Finite"],
				[
					"Contract-based",
					"Licenses, franchise agreements, leases, non-competes",
					"Finite",
				],
				[
					"Technology-based",
					"Patents, trade secrets, software, databases",
					"Finite",
				],
			],
		},
		{
			title: "Valuation Multiples — When to Use",
			headers: ["Multiple", "Formula", "Best For"],
			rows: [
				[
					"P/E",
					"Stock price / EPS",
					"Profitable companies with stable earnings",
				],
				[
					"EV/EBITDA",
					"Enterprise value / EBITDA",
					"Comparing across capital structures",
				],
				[
					"P/B",
					"Stock price / Book value per share",
					"Asset-heavy industries (banks, REITs)",
				],
				[
					"P/S",
					"Stock price / Revenue per share",
					"Early-stage or unprofitable companies",
				],
				[
					"EV/Revenue",
					"Enterprise value / Revenue",
					"SaaS and high-growth sectors",
				],
			],
		},
	],
	mnemonics: [
		{
			acronym: "PLEASE",
			expansion:
				"Profit margin, Leverage (equity multiplier), Efficiency (asset turnover), Analyze, Separate, Evaluate",
			explanation:
				"DuPont analysis components and process. PLEASE decompose ROE into its three drivers before drawing conclusions.",
		},
		{
			acronym: "FCFF",
			expansion:
				"From EBIT, Cut taxes, Fix for depreciation, Fund reinvestment",
			explanation:
				"Steps to calculate free cash flow to the firm: start with EBIT, subtract taxes, add back depreciation, subtract CapEx and working capital changes.",
		},
		{
			acronym: "GASBE",
			expansion:
				"General, special revenue, cApital projects, debt Service, pErmanent",
			explanation:
				"The five governmental fund types. All use modified accrual basis and current financial resources measurement focus.",
		},
		{
			acronym: "COFFee",
			expansion: "Cash flow hedge → OCI, Fair value hedge → Full earnings",
			explanation:
				"Where derivative gains/losses go: Cash flow hedges park the effective portion in OCI; fair value hedges send everything to earnings.",
		},
		{
			acronym: "NIECE",
			expansion: "NPV Is the Exam's Correct Evaluator",
			explanation:
				"When NPV and IRR conflict on mutually exclusive projects, always choose NPV. It maximizes firm value in dollar terms.",
		},
	],
};
