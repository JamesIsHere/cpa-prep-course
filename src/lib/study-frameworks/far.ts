import type { StudyFramework } from "./types";

export const farFramework: StudyFramework = {
	sectionCode: "far",
	sectionTitle: "Financial Accounting and Reporting",
	conceptMaps: [
		{
			title: "Financial Statements Overview",
			root: {
				label: "Financial Statements",
				children: [
					{
						label: "Balance Sheet",
						children: [
							{ label: "Current & non-current assets" },
							{ label: "Current & long-term liabilities" },
							{ label: "Stockholders' equity" },
						],
					},
					{
						label: "Income Statement",
						children: [
							{ label: "Revenue" },
							{ label: "Cost of goods sold" },
							{ label: "Operating expenses" },
							{ label: "Other income/expenses" },
							{ label: "Income tax expense" },
						],
					},
					{
						label: "Statement of Cash Flows",
						children: [
							{ label: "Operating activities" },
							{ label: "Investing activities" },
							{ label: "Financing activities" },
						],
					},
					{
						label: "Statement of Stockholders' Equity",
						children: [
							{ label: "Common/preferred stock" },
							{ label: "APIC" },
							{ label: "Retained earnings" },
							{ label: "Treasury stock" },
							{ label: "AOCI" },
						],
					},
				],
			},
		},
		{
			title: "Revenue Recognition (ASC 606)",
			root: {
				label: "ASC 606 — Five-Step Model",
				children: [
					{ label: "Step 1: Identify the contract" },
					{ label: "Step 2: Identify performance obligations" },
					{
						label: "Step 3: Determine transaction price",
						children: [
							{ label: "Variable consideration" },
							{ label: "Significant financing component" },
							{ label: "Non-cash consideration" },
							{ label: "Consideration payable to customer" },
						],
					},
					{ label: "Step 4: Allocate to performance obligations" },
					{
						label: "Step 5: Recognize when/as obligations are satisfied",
						children: [{ label: "Point in time" }, { label: "Over time" }],
					},
				],
			},
		},
		{
			title: "Lease Classification (ASC 842)",
			root: {
				label: "Lease Accounting",
				children: [
					{
						label: "Lessee",
						children: [
							{
								label: "Finance Lease",
								children: [
									{ label: "ROU asset + lease liability" },
									{ label: "Amortization + interest expense" },
									{ label: "Front-loaded expense pattern" },
								],
							},
							{
								label: "Operating Lease",
								children: [
									{ label: "ROU asset + lease liability" },
									{ label: "Single straight-line lease expense" },
								],
							},
						],
					},
					{
						label: "Lessor",
						children: [
							{ label: "Sales-type" },
							{ label: "Direct financing" },
							{ label: "Operating" },
						],
					},
				],
			},
		},
		{
			title: "Governmental Accounting Fund Structure",
			root: {
				label: "Government Funds",
				children: [
					{
						label: "Governmental Funds",
						children: [
							{ label: "General Fund" },
							{ label: "Special Revenue" },
							{ label: "Capital Projects" },
							{ label: "Debt Service" },
							{ label: "Permanent" },
						],
					},
					{
						label: "Proprietary Funds",
						children: [{ label: "Enterprise" }, { label: "Internal Service" }],
					},
					{
						label: "Fiduciary Funds",
						children: [
							{ label: "Pension Trust" },
							{ label: "Investment Trust" },
							{ label: "Private-Purpose Trust" },
							{ label: "Custodial" },
						],
					},
				],
			},
		},
		{
			title: "Income Tax Accounting (ASC 740)",
			root: {
				label: "Income Tax Provision",
				children: [
					{
						label: "Current Tax Expense",
						children: [
							{ label: "Taxable income × tax rate" },
							{ label: "Based on tax return amounts" },
						],
					},
					{
						label: "Deferred Tax",
						children: [
							{
								label: "Deferred Tax Asset (DTA)",
								children: [
									{ label: "Future deductible amounts" },
									{ label: "NOL/credit carryforwards" },
									{ label: "Valuation allowance if needed" },
								],
							},
							{
								label: "Deferred Tax Liability (DTL)",
								children: [
									{ label: "Future taxable amounts" },
									{ label: "Accelerated depreciation" },
								],
							},
						],
					},
				],
			},
		},
	],
	decisionTrees: [
		{
			title: "Lease Classification (Lessee — ASC 842)",
			root: {
				question:
					"Does the lease transfer ownership to the lessee by the end of the lease term?",
				yes: "Finance lease",
				no: {
					question:
						"Does the lease contain a purchase option the lessee is reasonably certain to exercise?",
					yes: "Finance lease",
					no: {
						question:
							"Is the lease term for the major part (≥75%) of the asset's remaining economic life?",
						yes: "Finance lease",
						no: {
							question:
								"Is the present value of lease payments ≥ substantially all (≥90%) of the asset's fair value?",
							yes: "Finance lease",
							no: "Operating lease",
						},
					},
				},
			},
		},
		{
			title: "Impairment Testing — Indefinite-Lived Intangible Assets",
			root: {
				question: "Is a qualitative assessment performed first? (optional)",
				yes: {
					question:
						"Is it more likely than not (>50%) that fair value is less than carrying amount?",
					yes: {
						question: "Does fair value < carrying amount in quantitative test?",
						yes: "Recognize impairment loss = Carrying Amount − Fair Value",
						no: "No impairment",
					},
					no: "No impairment — stop here",
				},
				no: {
					question: "Does fair value < carrying amount?",
					yes: "Recognize impairment loss = Carrying Amount − Fair Value",
					no: "No impairment",
				},
			},
		},
		{
			title: "Cash Flow Classification",
			root: {
				question:
					"Does the cash flow relate to buying/selling long-term assets or investments?",
				yes: "Investing activity",
				no: {
					question:
						"Does the cash flow relate to issuing/repaying debt or equity?",
					yes: "Financing activity",
					no: "Operating activity (default — if it doesn't fit investing or financing)",
				},
			},
		},
		{
			title: "Inventory: Lower of Cost or Net Realizable Value",
			root: {
				question:
					"Is the inventory's Net Realizable Value (NRV) less than its cost?",
				yes: "Write down to NRV; recognize loss in COGS",
				no: {
					question: "Was the inventory previously written down?",
					yes: "Recovery allowed up to original cost (under ASC 330 for non-LIFO methods); LIFO/retail — no recovery",
					no: "No adjustment needed — carry at cost",
				},
			},
		},
	],
	formulas: [
		{
			name: "Basic EPS",
			formula:
				"(Net Income − Preferred Dividends) / Weighted-Average Common Shares Outstanding",
		},
		{
			name: "Diluted EPS",
			formula:
				"(Net Income − Pref. Dividends + Convertible Adjustments) / (WACSO + Dilutive Potential Shares)",
			description:
				"Include effects of stock options (treasury stock method), convertible bonds, and convertible preferred stock if dilutive",
		},
		{
			name: "Straight-Line Depreciation",
			formula: "(Cost − Salvage Value) / Useful Life",
		},
		{
			name: "Double-Declining Balance",
			formula: "Book Value × (2 / Useful Life)",
			description: "Ignore salvage value until BV reaches salvage",
		},
		{
			name: "Sum-of-Years-Digits",
			formula: "(Cost − Salvage) × (Remaining Life / Sum of Years Digits)",
			description: "Sum of years digits = n(n+1)/2",
		},
		{
			name: "Weighted-Average Cost (Inventory)",
			formula: "Total Cost of Goods Available / Total Units Available",
		},
		{
			name: "COGS (Periodic)",
			formula: "Beginning Inventory + Purchases − Ending Inventory",
		},
		{
			name: "Bond Carrying Amount",
			formula: "Face Value ± Unamortized Premium/Discount",
			description:
				"Premium: stated rate > market rate. Discount: stated rate < market rate.",
		},
		{
			name: "Effective Interest (Bond Amort.)",
			formula: "Interest Expense = Carrying Amount × Market Rate at Issuance",
		},
		{
			name: "Right-of-Use Asset (Initial)",
			formula:
				"Lease Liability + Initial Direct Costs + Prepaid Lease Payments − Lease Incentives",
		},
		{
			name: "Deferred Tax Asset/Liability",
			formula: "Temporary Difference × Enacted Tax Rate",
			description: "Use rate expected to be in effect when difference reverses",
		},
		{
			name: "Pension Expense (Defined Benefit)",
			formula:
				"Service Cost + Interest Cost − Expected Return on Plan Assets + Amortization of Prior Service Cost ± Amortization of Net Gain/Loss",
		},
		{
			name: "Governmental — Change in Fund Balance",
			formula:
				"Revenues + Other Financing Sources − Expenditures − Other Financing Uses",
		},
	],
	referenceTables: [
		{
			title: "Inventory Methods Comparison",
			headers: [
				"Method",
				"COGS in Rising Prices",
				"Ending Inventory",
				"Tax Effect",
			],
			rows: [
				[
					"FIFO",
					"Lowest (oldest costs)",
					"Highest (newest costs)",
					"Highest taxable income",
				],
				[
					"LIFO",
					"Highest (newest costs)",
					"Lowest (oldest costs)",
					"Lowest taxable income",
				],
				["Weighted Average", "Middle", "Middle", "Middle"],
				[
					"Specific Identification",
					"Actual cost of item sold",
					"Actual cost of item remaining",
					"Varies",
				],
			],
		},
		{
			title: "Governmental vs. Commercial Accounting",
			headers: [
				"Feature",
				"Governmental Funds",
				"Proprietary Funds",
				"Commercial",
			],
			rows: [
				[
					"Measurement focus",
					"Current financial resources",
					"Economic resources",
					"Economic resources",
				],
				[
					"Basis of accounting",
					"Modified accrual",
					"Full accrual",
					"Full accrual",
				],
				[
					"Revenues recognized when",
					"Measurable & available",
					"Earned",
					"Earned",
				],
				[
					"Long-term assets/debt",
					"Not reported in fund",
					"Reported in fund",
					"Reported",
				],
				["Budget integration", "Yes (legally required)", "Optional", "No"],
			],
		},
		{
			title: "ASC 606 Variable Consideration Methods",
			headers: ["Method", "When to Use", "Calculation"],
			rows: [
				[
					"Expected value",
					"Large number of similar contracts",
					"Probability-weighted sum of possible amounts",
				],
				[
					"Most likely amount",
					"Binary outcomes (e.g., bonus met or not)",
					"Single most likely outcome in the range",
				],
			],
		},
		{
			title: "Stock Compensation — Key Entries",
			headers: ["Event", "Debit", "Credit"],
			rows: [
				["Grant date (options)", "No entry", "No entry"],
				["Each vesting period", "Compensation Expense", "APIC — Stock Options"],
				[
					"Exercise of options",
					"Cash + APIC — Stock Options",
					"Common Stock + APIC",
				],
				[
					"Forfeiture (actual)",
					"APIC — Stock Options",
					"Compensation Expense (reverse)",
				],
			],
		},
	],
	mnemonics: [
		{
			acronym: "DR DIGS",
			expansion:
				"Depreciation, Rent, Depletion, Interest (on bonds), Goodwill (amortization/impairment), Start-up costs",
			explanation:
				"Common items that create deferred tax liabilities — book expense is less than tax deduction, so tax is deferred.",
		},
		{
			acronym: "GRaSPP",
			expansion:
				"General, Special Revenue, Debt Service, Capital Projects, Permanent",
			explanation:
				"The five governmental fund types. Remember: the government GRaSPPs your tax money.",
		},
		{
			acronym: "SE-PIC",
			expansion:
				"Service cost, Expected return (subtract), Prior service cost amortization, Interest cost, Corridor amortization (gains/losses)",
			explanation:
				"Components of defined benefit pension expense. Think: the SEPIC order of pension costs.",
		},
		{
			acronym: "OWES LIFE",
			expansion:
				"Ownership transfer, Written purchase option, Economic life ≥75%, Substantially all FV ≥90%, Lessee — If any of the First Four apply → finance, Else → operating",
			explanation:
				"ASC 842 lessee lease classification criteria. If the lessee OWES LIFE, it's a finance lease.",
		},
		{
			acronym: "RICE",
			expansion: "Revenue, Inventory changes, COGS adjustments, Expenses",
			explanation:
				"Order of indirect method operating cash flow adjustments: start with net income, then adjust for non-cash items using RICE.",
		},
		{
			acronym: "CARINV",
			expansion:
				"Contract identified, Approval/commitment, Rights identifiable, IN-substance commercial, Variable/fixed consideration measurable",
			explanation:
				"The five criteria that must all be met to identify a contract under ASC 606 Step 1.",
		},
	],
};
