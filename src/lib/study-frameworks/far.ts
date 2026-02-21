import type { StudyFramework } from "./types";

export const farFramework: StudyFramework = {
	sectionCode: "far",
	sectionTitle: "Financial Accounting and Reporting",
	conceptMaps: [
		{
			title: "Financial Statements Overview",
			blueprintGroups: ["far.1.B", "far.1.C", "far.2.I"],
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
			blueprintGroups: ["far.2.B"],
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
			blueprintGroups: ["far.2.G"],
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
			blueprintGroups: ["far.3.G", "far.4.A"],
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
			blueprintGroups: ["far.3.C"],
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
		{
			title: "GAAP Hierarchy",
			blueprintGroups: ["far.1.A"],
			root: {
				label: "U.S. GAAP Sources",
				children: [
					{
						label: "Authoritative",
						children: [
							{ label: "FASB ASC (sole source)" },
							{ label: "SEC rules/SABs (public entities)" },
							{ label: "ASUs (updates to codification)" },
						],
					},
					{
						label: "Nonauthoritative",
						children: [
							{ label: "FASB Concepts Statements" },
							{ label: "AICPA Issues Papers" },
							{ label: "Industry practice / textbooks" },
						],
					},
				],
			},
		},
		{
			title: "Consolidation and Investment Hierarchy",
			blueprintGroups: ["far.3.D"],
			root: {
				label: "Level of Influence",
				children: [
					{
						label: "Control (>50%)",
						children: [
							{ label: "Full consolidation" },
							{ label: "Eliminate intercompany transactions" },
							{ label: "Report NCI in equity" },
						],
					},
					{
						label: "Significant Influence (20-50%)",
						children: [
							{ label: "Equity method" },
							{ label: "Single-line balance sheet / income" },
							{ label: "Adjust for share of income/dividends" },
						],
					},
					{
						label: "No Significant Influence (<20%)",
						children: [
							{ label: "Fair value through net income (default)" },
							{ label: "FV-OCI election (equity, no recycling)" },
						],
					},
					{
						label: "VIE (any %)",
						children: [
							{ label: "Primary beneficiary test: power + economics" },
							{ label: "Consolidate if primary beneficiary" },
						],
					},
				],
			},
		},
		{
			title: "NFP Net Asset Classification",
			blueprintGroups: ["far.3.F"],
			root: {
				label: "Net Assets (ASC 958)",
				children: [
					{
						label: "Without Donor Restrictions",
						children: [
							{ label: "Board-designated (internally restricted)" },
							{ label: "Undesignated (fully available)" },
						],
					},
					{
						label: "With Donor Restrictions",
						children: [
							{ label: "Purpose restrictions" },
							{ label: "Time restrictions" },
							{
								label: "Perpetual (endowments)",
								children: [{ label: "Principal maintained permanently" }],
							},
						],
					},
				],
			},
		},
		{
			title: "CECL Expected Credit Loss Model (ASC 326)",
			blueprintGroups: ["far.2.A"],
			root: {
				label: "Current Expected Credit Losses",
				children: [
					{
						label: "Scope",
						children: [
							{ label: "Trade receivables" },
							{ label: "Held-to-maturity debt securities" },
							{ label: "Loan receivables" },
							{ label: "Net investment in leases" },
							{ label: "Off-balance-sheet credit exposures" },
						],
					},
					{
						label: "Measurement Inputs",
						children: [
							{ label: "Historical loss experience" },
							{ label: "Current economic conditions" },
							{ label: "Reasonable and supportable forecasts" },
						],
					},
					{
						label: "Key Principles",
						children: [
							{ label: "Lifetime losses recognized at origination" },
							{ label: "Pool assets with similar risk characteristics" },
							{
								label: "Revert to historical loss rates beyond forecast period",
							},
							{ label: "Contra-asset (allowance) — not direct write-down" },
						],
					},
				],
			},
		},
	],
	decisionTrees: [
		{
			title: "Lease Classification (Lessee — ASC 842)",
			blueprintGroups: ["far.2.G"],
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
			blueprintGroups: ["far.2.E"],
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
			blueprintGroups: ["far.1.C"],
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
			blueprintGroups: ["far.2.C"],
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
		{
			title: "Sale-Leaseback Classification",
			blueprintGroups: ["far.2.G"],
			root: {
				question:
					"Does the transfer of the asset qualify as a sale under ASC 606 (control transferred)?",
				yes: {
					question: "Is the leaseback classified as a finance lease?",
					yes: "Not a sale — record as financing obligation (failed sale-leaseback)",
					no: "Sale recognized — derecognize asset, record ROU asset and lease liability; recognize gain only on rights transferred to buyer",
				},
				no: "Not a sale — record cash received as financing obligation; seller keeps asset on books",
			},
		},
		{
			title: "Uncertain Tax Position (ASC 740-10)",
			blueprintGroups: ["far.3.C"],
			root: {
				question:
					"Is it more likely than not (>50%) that the tax position will be sustained on technical merits?",
				yes: {
					question:
						"Does the largest amount with >50% cumulative likelihood equal the full tax position?",
					yes: "Recognize the full tax benefit — no unrecognized tax benefit liability needed",
					no: "Recognize only the measured amount; record the difference as an unrecognized tax benefit liability",
				},
				no: "No tax benefit recognized — record full unrecognized tax benefit as liability",
			},
		},
		{
			title: "Software Cost Capitalization",
			blueprintGroups: ["far.2.E"],
			root: {
				question:
					"Is the software for internal use or for external sale/licensing?",
				yes: {
					question:
						"Has the application development stage begun (internal-use, ASC 350-40)?",
					yes: "Capitalize development costs until post-implementation stage",
					no: "Expense as incurred (preliminary project stage)",
				},
				no: {
					question:
						"Has technological feasibility been established (external, ASC 985)?",
					yes: "Capitalize until available for general release; amortize at greater of revenue ratio or straight-line",
					no: "Expense as incurred (R&D phase)",
				},
			},
		},
		{
			title: "Bank Reconciliation: Book Adjustment or Bank Adjustment?",
			blueprintGroups: ["far.2.A"],
			root: {
				question: "Is this item already recorded on the company's books?",
				yes: {
					question:
						"Does the item appear on the bank statement but not the bank's records of the company's account?",
					yes: "Bank error — adjust bank balance",
					no: "No adjustment needed — item is properly recorded on both sides",
				},
				no: {
					question:
						"Is this item on the bank statement (e.g., service charges, NSF checks, interest earned, EFT collections)?",
					yes: "Adjust books — record journal entry for items the bank recorded that the company hasn't yet",
					no: "Adjust bank balance — these are outstanding items (deposits in transit, outstanding checks) the company recorded but bank hasn't processed",
				},
			},
		},
		{
			title: "How to Account for a Loss Contingency (ASC 450)",
			blueprintGroups: ["far.3.B"],
			root: {
				question:
					"Is it probable that a loss has been incurred as of the balance sheet date?",
				yes: {
					question: "Can the amount of the loss be reasonably estimated?",
					yes: {
						question:
							"Is a specific amount within the range a better estimate than any other?",
						yes: "Accrue the best estimate amount; disclose the contingency",
						no: "Accrue the minimum of the range; disclose the nature and possible additional loss up to the range maximum",
					},
					no: "Do not accrue — disclose the nature of the contingency and state that an estimate cannot be made",
				},
				no: {
					question: "Is the loss reasonably possible?",
					yes: "Do not accrue — disclose the nature of the contingency and estimate of possible loss (or state estimate cannot be made)",
					no: "Remote — generally no accrual or disclosure required (except guarantees of others' debt)",
				},
			},
		},
	],
	formulas: [
		{
			name: "Basic EPS",
			blueprintGroups: ["far.1.D"],
			formula:
				"(Net Income − Preferred Dividends) / Weighted-Average Common Shares Outstanding",
		},
		{
			name: "Diluted EPS",
			blueprintGroups: ["far.1.D"],
			formula:
				"(Net Income − Pref. Dividends + Convertible Adjustments) / (WACSO + Dilutive Potential Shares)",
			description:
				"Include effects of stock options (treasury stock method), convertible bonds, and convertible preferred stock if dilutive",
		},
		{
			name: "Straight-Line Depreciation",
			blueprintGroups: ["far.2.D"],
			formula: "(Cost − Salvage Value) / Useful Life",
		},
		{
			name: "Double-Declining Balance",
			blueprintGroups: ["far.2.D"],
			formula: "Book Value × (2 / Useful Life)",
			description: "Ignore salvage value until BV reaches salvage",
		},
		{
			name: "Sum-of-Years-Digits",
			blueprintGroups: ["far.2.D"],
			formula: "(Cost − Salvage) × (Remaining Life / Sum of Years Digits)",
			description: "Sum of years digits = n(n+1)/2",
		},
		{
			name: "Weighted-Average Cost (Inventory)",
			blueprintGroups: ["far.2.C"],
			formula: "Total Cost of Goods Available / Total Units Available",
		},
		{
			name: "COGS (Periodic)",
			blueprintGroups: ["far.2.C"],
			formula: "Beginning Inventory + Purchases − Ending Inventory",
		},
		{
			name: "Bond Carrying Amount",
			blueprintGroups: ["far.2.H"],
			formula: "Face Value ± Unamortized Premium/Discount",
			description:
				"Premium: stated rate > market rate. Discount: stated rate < market rate.",
		},
		{
			name: "Effective Interest (Bond Amort.)",
			blueprintGroups: ["far.2.H"],
			formula: "Interest Expense = Carrying Amount × Market Rate at Issuance",
		},
		{
			name: "Right-of-Use Asset (Initial)",
			blueprintGroups: ["far.2.G"],
			formula:
				"Lease Liability + Initial Direct Costs + Prepaid Lease Payments − Lease Incentives",
		},
		{
			name: "Deferred Tax Asset/Liability",
			blueprintGroups: ["far.3.C"],
			formula: "Temporary Difference × Enacted Tax Rate",
			description: "Use rate expected to be in effect when difference reverses",
		},
		{
			name: "Pension Expense (Defined Benefit)",
			blueprintGroups: ["far.1.E"],
			formula:
				"Service Cost + Interest Cost − Expected Return on Plan Assets + Amortization of Prior Service Cost ± Amortization of Net Gain/Loss",
		},
		{
			name: "Governmental — Change in Fund Balance",
			blueprintGroups: ["far.3.G", "far.4.A"],
			formula:
				"Revenues + Other Financing Sources − Expenditures − Other Financing Uses",
		},
		{
			name: "Gross Profit Method (Ending Inventory)",
			blueprintGroups: ["far.2.C"],
			formula:
				"Ending Inventory = Goods Available for Sale − [Net Sales × (1 − Gross Profit %)]",
			description:
				"Estimates ending inventory using historical gross profit percentage applied to sales",
		},
		{
			name: "Asset Retirement Obligation (Initial)",
			blueprintGroups: ["far.2.D"],
			formula: "ARO Liability = Estimated Future Cost / (1 + r)^n",
			description:
				"Present value of estimated retirement cost using credit-adjusted risk-free rate (r) over n periods",
		},
		{
			name: "Goodwill (Acquisition Method)",
			blueprintGroups: ["far.3.D"],
			formula:
				"Goodwill = Consideration Transferred + FV of NCI + FV of Previously Held Interest − FV of Net Identifiable Assets",
			description:
				"If result is negative, recognize a bargain purchase gain after reassessing measurements",
		},
		{
			name: "Net Pension Liability (GASB 68)",
			blueprintGroups: ["far.4.A"],
			formula:
				"Net Pension Liability = Total Pension Liability − Plan Fiduciary Net Position",
			description:
				"Reported on the government-wide Statement of Net Position for employer",
		},
		{
			name: "Net Periodic Pension Cost (ASC 715)",
			blueprintGroups: ["far.1.E"],
			formula:
				"Service Cost + Interest Cost − Expected Return on Plan Assets ± Amortization of Prior Service Cost ± Amortization of Net Gain/Loss",
			description:
				"Service cost is in operating income; all other components reported below the line. Expected return reduces pension expense; actual vs. expected difference deferred in OCI.",
		},
		{
			name: "Allowance for Credit Losses (CECL — ASC 326)",
			blueprintGroups: ["far.2.A"],
			formula:
				"Allowance = Σ (Amortized Cost of Pool × Expected Loss Rate over Remaining Life)",
			description:
				"Current expected credit loss model. Estimate lifetime losses at origination using historical data, current conditions, and reasonable/supportable forecasts. Applies to financial assets at amortized cost.",
		},
	],
	referenceTables: [
		{
			title: "Inventory Methods Comparison",
			blueprintGroups: ["far.2.C"],
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
			blueprintGroups: ["far.3.G", "far.4.A"],
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
			blueprintGroups: ["far.2.B"],
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
			blueprintGroups: ["far.2.I"],
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
		{
			title: "Key IFRS vs. GAAP Differences",
			blueprintGroups: ["far.1.A"],
			headers: ["Topic", "U.S. GAAP", "IFRS"],
			rows: [
				["LIFO inventory", "Permitted", "Prohibited"],
				[
					"Inventory write-down reversal",
					"Not permitted (FIFO/WA)",
					"Permitted up to original cost",
				],
				[
					"Development costs",
					"Expense as incurred",
					"Capitalize if 6 criteria met (IAS 38)",
				],
				[
					"PP&E revaluation",
					"Not permitted (historical cost)",
					"Permitted (revaluation model, IAS 16)",
				],
				[
					"Long-lived asset impairment reversal",
					"Not permitted",
					"Permitted (except goodwill)",
				],
				[
					"Component depreciation",
					"Permitted, not required",
					"Required for significant components",
				],
				[
					"Contingent liability threshold",
					"Probable (>75%)",
					"Probable (>50%)",
				],
			],
		},
		{
			title: "Lessor Lease Classification (ASC 842)",
			blueprintGroups: ["far.2.G"],
			headers: ["Feature", "Sales-Type", "Direct Financing", "Operating"],
			rows: [
				["Asset derecognized", "Yes", "Yes", "No"],
				["Selling profit", "Immediate", "Deferred", "N/A"],
				["Selling loss", "Immediate", "Immediate", "N/A"],
				[
					"Income pattern",
					"Interest (front-loaded)",
					"Interest (front-loaded)",
					"Straight-line",
				],
				[
					"Depreciation",
					"N/A (asset derecognized)",
					"N/A",
					"Lessor depreciates",
				],
			],
		},
		{
			title: "OCI Components",
			blueprintGroups: ["far.1.B"],
			headers: ["Component", "Reclassified to Income?", "When Reclassified"],
			rows: [
				[
					"Unrealized gains/losses — AFS debt securities",
					"Yes",
					"When sold or impaired",
				],
				[
					"Foreign currency translation adjustments",
					"Yes",
					"When foreign entity disposed",
				],
				["Pension/OPEB adjustments", "Yes", "Amortized into pension expense"],
				[
					"Cash flow hedge gains/losses",
					"Yes",
					"When hedged item affects earnings",
				],
				[
					"Credit risk changes (FV option liabilities)",
					"No",
					"Never reclassified",
				],
			],
		},
		{
			title: "Temporary vs. Permanent Differences",
			blueprintGroups: ["far.3.C"],
			headers: ["Item", "Type", "Creates Deferred Tax?"],
			rows: [
				["Accelerated tax depreciation", "Temporary", "DTL"],
				["Warranty accrual (deductible when paid)", "Temporary", "DTA"],
				["Unearned revenue (taxable when received)", "Temporary", "DTA"],
				["Installment sale gain", "Temporary", "DTL"],
				["Municipal bond interest", "Permanent", "No"],
				["Fines and penalties", "Permanent", "No"],
				["Life insurance premiums on officers", "Permanent", "No"],
				["Meals expense (50% nondeductible)", "Permanent", "No"],
			],
		},
		{
			title: "Special Purpose Frameworks Comparison",
			blueprintGroups: ["far.1.F"],
			headers: [
				"Framework",
				"Basis of Accounting",
				"Common Users",
				"Key Feature",
			],
			rows: [
				[
					"Cash basis",
					"Revenue/expense when cash received/paid",
					"Small businesses, sole proprietors",
					"Simplest; no receivables or payables",
				],
				[
					"Modified cash basis",
					"Cash basis + selected accruals (depreciation, debt)",
					"Small businesses wanting some accrual items",
					"Must be logical and consistent modifications",
				],
				[
					"Tax basis",
					"IRC rules for income/deductions",
					"Tax-focused entities, S corps, partnerships",
					"Follows tax return; DTA/DTL not needed",
				],
				[
					"Regulatory basis",
					"Rules prescribed by regulatory agency",
					"Insurance companies, utilities, banks",
					"May differ significantly from GAAP",
				],
				[
					"Contractual basis",
					"Terms specified in a contract or agreement",
					"Loan covenants, joint ventures",
					"Tailored to specific agreement requirements",
				],
			],
		},
		{
			title: "ASC 820 Fair Value Hierarchy",
			blueprintGroups: ["far.3.E"],
			headers: ["Level", "Input Type", "Examples", "Reliability"],
			rows: [
				[
					"Level 1",
					"Quoted prices (unadjusted) in active markets for identical assets/liabilities",
					"Exchange-traded stocks, U.S. Treasury bonds, commodity futures",
					"Highest — most reliable",
				],
				[
					"Level 2",
					"Observable inputs other than Level 1 (similar assets, inactive markets, derived from observable data)",
					"Corporate bonds with comparable trade data, interest rate swaps using yield curves, real estate with comparable sales",
					"Moderate — observable but adjusted",
				],
				[
					"Level 3",
					"Unobservable inputs based on entity's own assumptions about market participant assumptions",
					"DCF models with projected revenues, internal pricing models for complex derivatives, customer relationship valuations",
					"Lowest — most estimation uncertainty",
				],
			],
		},
		{
			title: "Loss Contingency Treatment (ASC 450)",
			blueprintGroups: ["far.3.B"],
			headers: ["Likelihood", "Definition", "Accrue?", "Disclose?"],
			rows: [
				[
					"Probable",
					"Likely to occur",
					"Yes, if reasonably estimable (minimum of range if no best estimate)",
					"Yes — nature and amount",
				],
				[
					"Reasonably possible",
					"More than remote but less than likely",
					"No",
					"Yes — nature and estimate of possible loss or range",
				],
				[
					"Remote",
					"Slight chance",
					"No",
					"Generally no (except guarantees of others' debt)",
				],
			],
		},
	],
	mnemonics: [
		{
			acronym: "DR DIGS",
			blueprintGroups: ["far.3.C"],
			expansion:
				"Depreciation, Rent, Depletion, Interest (on bonds), Goodwill (amortization/impairment), Start-up costs",
			explanation:
				"Common items that create deferred tax liabilities — book expense is less than tax deduction, so tax is deferred.",
		},
		{
			acronym: "GRaSPP",
			blueprintGroups: ["far.3.G", "far.4.A"],
			expansion:
				"General, Special Revenue, Debt Service, Capital Projects, Permanent",
			explanation:
				"The five governmental fund types. Remember: the government GRaSPPs your tax money.",
		},
		{
			acronym: "SE-PIC",
			blueprintGroups: ["far.1.E"],
			expansion:
				"Service cost, Expected return (subtract), Prior service cost amortization, Interest cost, Corridor amortization (gains/losses)",
			explanation:
				"Components of defined benefit pension expense. Think: the SEPIC order of pension costs.",
		},
		{
			acronym: "OWES LIFE",
			blueprintGroups: ["far.2.G"],
			expansion:
				"Ownership transfer, Written purchase option, Economic life ≥75%, Substantially all FV ≥90%, Lessee — If any of the First Four apply → finance, Else → operating",
			explanation:
				"ASC 842 lessee lease classification criteria. If the lessee OWES LIFE, it's a finance lease.",
		},
		{
			acronym: "RICE",
			blueprintGroups: ["far.1.C"],
			expansion: "Revenue, Inventory changes, COGS adjustments, Expenses",
			explanation:
				"Order of indirect method operating cash flow adjustments: start with net income, then adjust for non-cash items using RICE.",
		},
		{
			acronym: "CARINV",
			blueprintGroups: ["far.2.B"],
			expansion:
				"Contract identified, Approval/commitment, Rights identifiable, IN-substance commercial, Variable/fixed consideration measurable",
			explanation:
				"The five criteria that must all be met to identify a contract under ASC 606 Step 1.",
		},
		{
			acronym: "PUFER",
			blueprintGroups: ["far.1.B"],
			expansion:
				"Pensions/OPEB, Unrealized gains on AFS debt, Foreign currency translation, Effective portion of cash flow hedges, Risk (credit) changes on FV option liabilities",
			explanation:
				"The five components of Other Comprehensive Income (OCI). PUFER items bypass net income and accumulate in AOCI on the balance sheet.",
		},
		{
			acronym: "TIPARA",
			blueprintGroups: ["far.1.A"],
			expansion:
				"Technical feasibility, Intention to complete, Probable future benefits, Ability to use/sell, Resources available, Ability to measure costs",
			explanation:
				"The six criteria for capitalizing development costs under IFRS (IAS 38). Under GAAP, development costs are always expensed — this mnemonic is for IFRS differences only.",
		},
		{
			acronym: "WUCC",
			blueprintGroups: ["far.3.C"],
			expansion:
				"Warranties (accrued), Unearned revenue (taxed on receipt), Compensation (accrued), Credit losses (estimated)",
			explanation:
				"Common items that create deferred tax assets — book expense now, tax deduction later, so future tax savings are recognized.",
		},
		{
			acronym: "SIRAE",
			blueprintGroups: ["far.1.E"],
			expansion:
				"Service cost, Interest cost, Return on plan assets (subtract), Amortization of prior service cost, Excess gain/loss amortization (corridor)",
			explanation:
				"The five components of net periodic pension cost under ASC 715. SIRAE walks through each element in order. Only service cost hits operating income; the rest go below the line.",
		},
		{
			acronym: "PRE",
			blueprintGroups: ["far.3.B"],
			expansion: "Probable, Reasonably estimable → Expense (accrue the loss)",
			explanation:
				"The two conditions for accruing a loss contingency under ASC 450. Both must be met: the loss must be Probable AND Reasonably Estimable. If either condition is not met, disclosure may still be required but no accrual is recorded.",
		},
		{
			acronym: "MIC",
			blueprintGroups: ["far.3.E"],
			expansion: "Market approach, Income approach, Cost approach",
			explanation:
				"The three valuation techniques under ASC 820 for measuring fair value. Market uses comparable transactions, Income converts future cash flows to present value, and Cost uses replacement cost adjusted for obsolescence.",
		},
	],
};
