import type { StudyFramework } from "./types";

export const farFramework: StudyFramework = {
	sectionCode: "far",
	sectionTitle: "Financial Accounting and Reporting",
	conceptMaps: [
		{
			title: "Financial Statements Overview",
			blueprintGroups: ["far.1.A", "far.1.B", "far.2.I"],
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
			blueprintGroups: ["far.3.C"],
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
			blueprintGroups: ["far.3.F"],
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
			blueprintGroups: ["far.1.C"],
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
			title: "Intangible Asset Classification and Measurement",
			blueprintGroups: ["far.2.F"],
			root: {
				label: "Intangible Assets (ASC 350)",
				children: [
					{
						label: "Finite-Lived",
						children: [
							{ label: "Amortize over useful life (straight-line default)" },
							{ label: "Review for impairment when events indicate (ASC 360)" },
							{ label: "Examples: patents, copyrights, customer lists, licenses" },
						],
					},
					{
						label: "Indefinite-Lived",
						children: [
							{ label: "No amortization" },
							{ label: "Annual impairment test (or triggering event)" },
							{ label: "Examples: trade names, FCC licenses, goodwill" },
						],
					},
					{
						label: "Goodwill (Acquisition Only)",
						children: [
							{ label: "Never amortized (public); optional amort (private)" },
							{ label: "One-step impairment: FV of reporting unit vs. carrying" },
							{ label: "Impairment loss capped at carrying amount of goodwill" },
						],
					},
					{
						label: "Internally Developed",
						children: [
							{ label: "R&D costs: expense as incurred" },
							{ label: "Software for sale: capitalize after tech feasibility" },
							{ label: "Internal-use software: capitalize in app dev stage" },
						],
					},
				],
			},
		},
		{
			title: "Accounting Changes and Error Corrections (ASC 250)",
			blueprintGroups: ["far.3.A"],
			root: {
				label: "ASC 250 — Accounting Changes",
				children: [
					{
						label: "Change in Accounting Principle",
						children: [
							{ label: "Retrospective application (restate prior periods)" },
							{ label: "Cumulative-effect adjustment to opening retained earnings" },
							{ label: "Examples: FIFO→weighted average, new revenue standard" },
						],
					},
					{
						label: "Change in Accounting Estimate",
						children: [
							{ label: "Prospective application only (current + future periods)" },
							{ label: "No restatement of prior periods" },
							{ label: "Examples: useful life, salvage value, bad debt %" },
						],
					},
					{
						label: "Change in Reporting Entity",
						children: [
							{ label: "Retrospective application (restate all prior periods)" },
							{ label: "Examples: new subsidiary consolidated, entity restructuring" },
						],
					},
					{
						label: "Error Correction",
						children: [
							{ label: "Prior period adjustment (restate affected periods)" },
							{ label: "Adjust opening retained earnings of earliest period" },
							{ label: "Not a change — it is a correction of a mistake" },
						],
					},
				],
			},
		},
		{
			title: "Subsequent Events (ASC 855)",
			blueprintGroups: ["far.3.G"],
			root: {
				label: "Subsequent Events",
				children: [
					{
						label: "Type I — Recognized (Adjusting)",
						children: [
							{ label: "Conditions existed at the balance sheet date" },
							{ label: "Adjust the financial statements" },
							{ label: "Examples: settlement of litigation filed before year-end, customer bankruptcy confirming year-end AR impairment" },
						],
					},
					{
						label: "Type II — Nonrecognized (Disclosing)",
						children: [
							{ label: "Conditions arose after the balance sheet date" },
							{ label: "Disclose only — do not adjust the statements" },
							{ label: "Examples: fire destroying a plant after year-end, business combination after year-end" },
						],
					},
					{
						label: "Evaluation Window",
						children: [
							{ label: "SEC filer: evaluate through date FS are issued" },
							{ label: "Non-SEC: evaluate through date FS are available to be issued" },
							{ label: "Do not recognize events after the evaluation date" },
						],
					},
				],
			},
		},
		{
			title: "Financial Ratio Taxonomy",
			blueprintGroups: ["far.1.F"],
			root: {
				label: "Financial Statement Analysis",
				children: [
					{
						label: "Profitability",
						children: [
							{ label: "Gross profit margin = Gross Profit / Net Sales" },
							{ label: "Return on sales = Net Income / Net Sales" },
							{ label: "Return on assets = Net Income / Avg Total Assets" },
							{ label: "Return on equity = Net Income / Avg Equity" },
						],
					},
					{
						label: "Liquidity",
						children: [
							{ label: "Current ratio = Current Assets / Current Liabilities" },
							{ label: "Quick ratio = (Cash + ST Investments + Receivables) / CL" },
							{ label: "AR turnover = Net Credit Sales / Avg AR" },
							{ label: "Inventory turnover = COGS / Avg Inventory" },
						],
					},
					{
						label: "Solvency",
						children: [
							{ label: "Debt-to-equity = Total Debt / Total Equity" },
							{ label: "Total debt ratio = Total Liabilities / Total Assets" },
							{ label: "Times interest earned = EBIT / Interest Expense" },
						],
					},
					{
						label: "Performance Metrics",
						children: [
							{ label: "EBITDA = Net Income + Interest + Tax + Dep + Amort" },
							{ label: "Price-to-earnings = Market Price / EPS" },
							{ label: "Dividend payout = Dividends / Net Income" },
							{ label: "Asset turnover = Net Sales / Avg Total Assets" },
						],
					},
				],
			},
		},
		{
			title: "NFP Financial Statements vs. For-Profit",
			blueprintGroups: ["far.1.B"],
			root: {
				label: "NFP Financial Reporting (ASC 958)",
				children: [
					{
						label: "Statement of Financial Position",
						children: [
							{ label: "Net assets with donor restrictions" },
							{ label: "Net assets without donor restrictions" },
							{ label: "No stockholders' equity section" },
						],
					},
					{
						label: "Statement of Activities",
						children: [
							{ label: "Change in net assets (replaces net income)" },
							{ label: "Revenues, gains, expenses, losses by net asset class" },
							{ label: "Reclassifications when restrictions are met" },
						],
					},
					{
						label: "Statement of Functional Expenses",
						children: [
							{ label: "Required for voluntary health and welfare orgs" },
							{ label: "Optional for other NFPs (can disclose in notes)" },
							{ label: "Expenses by nature (salaries, rent) AND function (program, admin, fundraising)" },
						],
					},
					{
						label: "Statement of Cash Flows",
						children: [
							{ label: "Same three categories as for-profit" },
							{ label: "Donor-restricted cash for long-term purposes → financing activity" },
						],
					},
				],
			},
		},
		{
			title: "Cash and Cash Equivalents — Classification",
			blueprintGroups: ["far.2.A"],
			root: {
				label: "Cash and Cash Equivalents",
				children: [
					{
						label: "Cash",
						children: [
							{ label: "Currency on hand" },
							{ label: "Demand deposits (checking/savings)" },
							{ label: "Negotiable instruments (checks, money orders)" },
						],
					},
					{
						label: "Cash Equivalents",
						children: [
							{ label: "Short-term, highly liquid investments" },
							{ label: "Original maturity ≤ 3 months from purchase" },
							{ label: "Examples: T-bills, commercial paper, money market funds" },
						],
					},
					{
						label: "NOT Cash or Cash Equivalents",
						children: [
							{ label: "Restricted cash (report separately or disclose)" },
							{ label: "Certificates of deposit > 3 months" },
							{ label: "Postdated checks received" },
							{ label: "Compensating balances (disclose; may be restricted)" },
							{ label: "Bank overdrafts (reclassify to current liabilities)" },
						],
					},
				],
			},
		},
		{
			title: "Trade Receivables — Recognition and Transfer",
			blueprintGroups: ["far.2.B"],
			root: {
				label: "Trade Receivables",
				children: [
					{
						label: "Initial Recognition",
						children: [
							{ label: "Record at transaction price (ASC 606)" },
							{ label: "Establish allowance for credit losses at origination (CECL)" },
						],
					},
					{
						label: "Subsequent Measurement",
						children: [
							{ label: "Amortized cost less allowance for credit losses" },
							{ label: "Update allowance each period (historical + forecast)" },
							{ label: "Write off when uncollectible; recover if later collected" },
						],
					},
					{
						label: "Transfer of Receivables",
						children: [
							{
								label: "Sale (derecognize)",
								children: [
									{ label: "Factoring without recourse" },
									{ label: "Securitization (control surrendered)" },
								],
							},
							{
								label: "Secured Borrowing (keep on books)",
								children: [
									{ label: "Factoring with recourse" },
									{ label: "Assignment" },
									{ label: "Pledging" },
								],
							},
						],
					},
				],
			},
		},
		{
			title: "Investment Classification and Measurement",
			blueprintGroups: ["far.2.E"],
			root: {
				label: "Investments in Financial Assets",
				children: [
					{
						label: "Fair Value through Net Income (Default)",
						children: [
							{ label: "Trading debt securities" },
							{ label: "Equity securities (no significant influence)" },
							{ label: "Unrealized gains/losses → income statement" },
						],
					},
					{
						label: "Fair Value through OCI (FV-OCI)",
						children: [
							{ label: "Available-for-sale debt securities" },
							{ label: "Equity securities with FV-OCI election (no recycling)" },
							{ label: "Unrealized gains/losses → OCI; reclassify to income on sale (debt only)" },
						],
					},
					{
						label: "Amortized Cost",
						children: [
							{ label: "Held-to-maturity debt securities" },
							{ label: "Intent and ability to hold to maturity" },
							{ label: "Impairment via CECL model (ASC 326)" },
						],
					},
					{
						label: "Equity Method (20-50% ownership)",
						children: [
							{ label: "Initial: record at cost" },
							{ label: "Adjust for share of investee income/loss" },
							{ label: "Reduce for dividends received" },
							{ label: "Test for impairment (OTTI — other than temporary)" },
						],
					},
				],
			},
		},
		{
			title: "Payables and Accrued Liabilities — Classification",
			blueprintGroups: ["far.2.G"],
			root: {
				label: "Payables and Accrued Liabilities",
				children: [
					{
						label: "Trade Payables",
						children: [
							{ label: "Record when goods/services received" },
							{ label: "Subledger → GL reconciliation" },
						],
					},
					{
						label: "Accrued Liabilities",
						children: [
							{ label: "Wages and bonuses payable" },
							{ label: "Vacation / compensated absences" },
							{ label: "Self-insurance liabilities" },
							{ label: "Dividends payable (after declaration)" },
						],
					},
					{
						label: "Asset Retirement Obligations (ASC 410)",
						children: [
							{ label: "PV of estimated future retirement cost" },
							{ label: "Capitalize as part of asset cost" },
							{ label: "Accrete liability to full amount over time" },
						],
					},
					{
						label: "Exit and Disposal Activities (ASC 420)",
						children: [
							{ label: "One-time termination benefits" },
							{ label: "Contract termination costs" },
							{ label: "Recognize at fair value when liability is incurred" },
						],
					},
				],
			},
		},
		{
			title: "Fair Value Measurement Framework (ASC 820)",
			blueprintGroups: ["far.3.E"],
			root: {
				label: "Fair Value Measurement",
				children: [
					{
						label: "Definition",
						children: [
							{ label: "Exit price in an orderly transaction" },
							{ label: "Between market participants" },
							{ label: "At the measurement date" },
						],
					},
					{
						label: "Hierarchy (Inputs)",
						children: [
							{ label: "Level 1: Quoted prices in active markets (identical assets)" },
							{ label: "Level 2: Observable inputs (similar assets, inactive markets)" },
							{ label: "Level 3: Unobservable inputs (entity's own assumptions)" },
						],
					},
					{
						label: "Valuation Approaches",
						children: [
							{ label: "Market approach — comparable transactions" },
							{ label: "Income approach — DCF or option pricing" },
							{ label: "Cost approach — replacement cost less obsolescence" },
						],
					},
					{
						label: "Key Principles",
						children: [
							{ label: "Highest and best use (nonfinancial assets)" },
							{ label: "Principal or most advantageous market" },
							{ label: "Maximize observable inputs, minimize unobservable" },
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
			title: "NFP Contribution: With or Without Donor Restrictions?",
			blueprintGroups: ["far.1.B"],
			root: {
				question:
					"Does the donor impose a restriction on how or when the contribution can be used?",
				yes: {
					question:
						"Is the restriction perpetual (principal must be maintained indefinitely)?",
					yes: "Net assets with donor restrictions (endowment) — only investment return is available for spending per donor stipulation",
					no: {
						question:
							"Is the restriction a purpose restriction (must be used for a specified activity)?",
						yes: "Net assets with donor restrictions (purpose) — reclassify to without restrictions when the purpose is fulfilled",
						no: "Net assets with donor restrictions (time) — reclassify to without restrictions when the time period expires",
					},
				},
				no: "Net assets without donor restrictions — available for general use immediately",
			},
		},
		{
			title: "EPS Dilution: Include Potential Shares?",
			blueprintGroups: ["far.1.D"],
			root: {
				question:
					"Are there potentially dilutive securities outstanding (stock options, convertible bonds, convertible preferred)?",
				yes: {
					question:
						"For stock options: is the average market price > exercise price (in-the-money)?",
					yes: {
						question:
							"Treasury stock method: Incremental shares = Shares from exercise − Shares repurchased with proceeds. Is the net effect dilutive (reduces EPS)?",
						yes: "Include in diluted EPS denominator",
						no: "Antidilutive — exclude from diluted EPS",
					},
					no: {
						question:
							"For convertible securities: does the if-converted method reduce EPS (add back interest/dividends to numerator, add converted shares to denominator)?",
						yes: "Include in diluted EPS using if-converted method",
						no: "Antidilutive — exclude from diluted EPS",
					},
				},
				no: "Diluted EPS = Basic EPS (no potentially dilutive securities)",
			},
		},
		{
			title: "Special Purpose Framework Selection",
			blueprintGroups: ["far.1.E"],
			root: {
				question:
					"Is the entity required to use a regulatory basis of accounting by a government agency?",
				yes: "Regulatory basis — follow prescribed rules of the regulatory agency",
				no: {
					question:
						"Does a contract or agreement specify the basis of accounting to be used?",
					yes: "Contractual basis — follow terms of the specific contract",
					no: {
						question:
							"Does the entity primarily need financial statements aligned with its tax return?",
						yes: "Tax basis (income tax basis) — recognize income and deductions per IRC rules",
						no: {
							question:
								"Does the entity want to track only cash inflows and outflows with some accrual modifications?",
							yes: "Modified cash basis — cash basis plus selected logical accruals (depreciation, debt)",
							no: "Cash basis — recognize revenue when cash received, expenses when cash paid",
						},
					},
				},
			},
		},
		{
			title: "Debt Modification vs. Extinguishment (ASC 470-50)",
			blueprintGroups: ["far.2.H"],
			root: {
				question:
					"Has the creditor changed (i.e., new creditor has replaced the original creditor)?",
				yes: "Extinguishment — derecognize old debt, record new debt at fair value, recognize gain/loss",
				no: {
					question:
						"Do the cash flows under the new terms differ by more than 10% from the original terms (present value test)?",
					yes: "Extinguishment (substantially different terms) — derecognize old debt, record new at FV, recognize gain/loss. New fees capitalized",
					no: "Modification — keep the old debt on the books. Adjust effective interest rate prospectively. Expense third-party fees; adjust carrying amount for creditor fees",
				},
			},
		},
		{
			title: "Treasury Stock: Cost Method or Par Value Method?",
			blueprintGroups: ["far.2.I"],
			root: {
				question:
					"Which method does the entity use for treasury stock?",
				yes: {
					question:
						"Cost method (most common): Record treasury stock at the price paid to reacquire. On reissuance, is the reissuance price > cost?",
					yes: "DR Cash, CR Treasury Stock (at cost), CR APIC — Treasury Stock (excess)",
					no: "DR Cash, DR APIC — Treasury Stock (to extent of prior gains on same class), DR Retained Earnings (remainder), CR Treasury Stock (at cost)",
				},
				no: {
					question:
						"Par value method: Record treasury stock at par value on acquisition. Was the reacquisition price > original issuance price?",
					yes: "DR Treasury Stock (at par), DR APIC (original excess over par), DR Retained Earnings (excess of reacquisition over original issue price), CR Cash",
					no: "DR Treasury Stock (at par), DR APIC (original excess over par), CR APIC — Treasury Stock (if reacquisition < original issue price), CR Cash",
				},
			},
		},
		{
			title: "Revenue Recognition: Over Time or Point in Time? (ASC 606 Step 5)",
			blueprintGroups: ["far.3.C"],
			root: {
				question:
					"Does the customer simultaneously receive and consume the benefits as the entity performs (e.g., routine services)?",
				yes: "Recognize revenue over time",
				no: {
					question:
						"Does the entity's performance create or enhance an asset that the customer controls as it is created (e.g., building on customer's land)?",
					yes: "Recognize revenue over time",
					no: {
						question:
							"Does the entity's performance create an asset with no alternative use to the entity, AND does the entity have an enforceable right to payment for performance completed to date?",
						yes: "Recognize revenue over time (measure progress using input or output method)",
						no: "Recognize revenue at a point in time — when control transfers to the customer",
					},
				},
			},
		},
		{
			title: "Transfer of Receivables: Sale or Secured Borrowing?",
			blueprintGroups: ["far.2.B"],
			root: {
				question:
					"Has the transferor surrendered control of the receivables? (All three conditions: isolated from transferor, transferee can pledge/exchange, no effective control retained)",
				yes: "Sale — derecognize the receivables. Record cash received, any retained interest at FV, and recognize gain or loss",
				no: "Secured borrowing — keep receivables on the books. Record cash received as a liability. Continue to collect and remit",
			},
		},
		{
			title: "Investment Classification: How to Account for a Financial Asset",
			blueprintGroups: ["far.2.E"],
			root: {
				question:
					"Does the investor have significant influence (typically 20-50% ownership) over the investee?",
				yes: "Equity method — record at cost, adjust for share of income/loss, reduce for dividends",
				no: {
					question: "Is it a debt security?",
					yes: {
						question:
							"Does the entity have the intent and ability to hold to maturity?",
						yes: "Held-to-maturity — amortized cost. Impairment via CECL (ASC 326)",
						no: {
							question:
								"Is the entity actively trading the security for short-term profit?",
							yes: "Trading — fair value through net income. Unrealized gains/losses in earnings",
							no: "Available-for-sale — fair value through OCI. Reclassify to income on sale; impairment via CECL",
						},
					},
					no: {
						question:
							"Is it an equity security with a readily determinable fair value (or no practicability exception)?",
						yes: {
							question:
								"Has the entity made an irrevocable FV-OCI election (equity without readily determinable FV)?",
							yes: "FV-OCI (no recycling) — unrealized changes in OCI, dividends in income",
							no: "Fair value through net income (default for equity). All changes in earnings",
						},
						no: "Measurement alternative — cost minus impairment ± observable price changes (ASC 321)",
					},
				},
			},
		},
		{
			title: "Exit or Disposal Activity: When to Recognize a Liability (ASC 420)",
			blueprintGroups: ["far.2.G"],
			root: {
				question:
					"Is this a one-time employee termination benefit under a plan that is not an ongoing benefit arrangement?",
				yes: {
					question:
						"Have the employees been communicated the termination plan and the plan meets the criteria for a liability?",
					yes: {
						question:
							"Are employees required to render future service beyond a minimum retention period to receive the benefit?",
						yes: "Recognize ratably over the future service period",
						no: "Recognize the full liability at the communication date",
					},
					no: "Do not recognize — liability has not been incurred yet",
				},
				no: {
					question:
						"Is this a cost to terminate a contract before its end (e.g., lease termination penalty)?",
					yes: "Recognize when the entity terminates the contract in accordance with its terms (at FV)",
					no: {
						question:
							"Is this another cost associated with the exit activity (e.g., relocation, employee retraining)?",
						yes: "Recognize when the liability is incurred (not at the plan commitment date)",
						no: "Not an ASC 420 item — evaluate under other applicable guidance",
					},
				},
			},
		},
		{
			title: "Fair Value Hierarchy: Which Level?",
			blueprintGroups: ["far.3.E"],
			root: {
				question:
					"Are there quoted prices in active markets for identical assets or liabilities?",
				yes: "Level 1 — use the quoted price (unadjusted). Most reliable",
				no: {
					question:
						"Are there observable inputs other than Level 1 prices (quoted prices for similar assets, yield curves, interest rates, credit spreads)?",
					yes: "Level 2 — use observable inputs, with adjustments if needed",
					no: "Level 3 — use unobservable inputs (entity's own assumptions about market participant assumptions). Least reliable; requires most disclosure",
				},
			},
		},
		{
			title: "Intangible Asset: Amortize or Test for Impairment?",
			blueprintGroups: ["far.2.F"],
			root: {
				question: "Does the intangible asset have a finite useful life?",
				yes: {
					question:
						"Amortize over useful life. Are there triggering events suggesting the carrying amount may not be recoverable (ASC 360)?",
					yes: {
						question:
							"Is the undiscounted future cash flow from the asset less than its carrying amount?",
						yes: "Impairment loss = Carrying Amount − Fair Value",
						no: "No impairment — continue amortizing",
					},
					no: "No impairment test needed this period — continue amortizing",
				},
				no: {
					question:
						"Is the entity electing the qualitative assessment (Step 0)?",
					yes: {
						question:
							"Is it more likely than not (>50%) that FV < carrying amount?",
						yes: {
							question:
								"Quantitative test: Is fair value < carrying amount?",
							yes: "Impairment loss = Carrying Amount − Fair Value",
							no: "No impairment",
						},
						no: "No impairment — stop here",
					},
					no: {
						question:
							"Quantitative test: Is fair value < carrying amount?",
						yes: "Impairment loss = Carrying Amount − Fair Value",
						no: "No impairment",
					},
				},
			},
		},
		{
			title: "Accounting Change Classification (ASC 250)",
			blueprintGroups: ["far.3.A"],
			root: {
				question:
					"Is this a correction of an error in previously issued financial statements?",
				yes: "Error correction — prior period adjustment: restate affected prior periods and adjust opening retained earnings",
				no: {
					question:
						"Is this a change from one acceptable accounting principle to another (e.g., FIFO to weighted average)?",
					yes: {
						question:
							"Is it impracticable to determine the cumulative effect on all prior periods?",
						yes: "Apply prospectively from the earliest period practicable",
						no: "Retrospective application — restate all prior periods presented and adjust opening retained earnings for cumulative effect",
					},
					no: {
						question:
							"Is this a change in an accounting estimate (e.g., useful life, salvage value, warranty %)?",
						yes: "Prospective application — adjust current and future periods only. No restatement of prior periods",
						no: "Change in reporting entity — retrospective application: restate all prior periods as if the new entity structure had always existed",
					},
				},
			},
		},
		{
			title: "Subsequent Event Classification (ASC 855)",
			blueprintGroups: ["far.3.G"],
			root: {
				question:
					"Did the event occur between the balance sheet date and the date the financial statements were issued (or available to be issued)?",
				yes: {
					question:
						"Did the condition that caused the event exist at the balance sheet date?",
					yes: "Type I (Recognized) — adjust the financial statements to reflect the event",
					no: "Type II (Nonrecognized) — disclose the nature and estimated financial effect in the notes; do not adjust the statements",
				},
				no: "Not a subsequent event — outside the evaluation window. No recognition or disclosure required",
			},
		},
		{
			title: "Lease Classification (Lessee — ASC 842)",
			blueprintGroups: ["far.3.F"],
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
			blueprintGroups: ["far.1.A"],
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
			blueprintGroups: ["far.3.F"],
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
			name: "Gross Profit Margin",
			blueprintGroups: ["far.1.F"],
			formula: "Gross Profit / Net Sales",
		},
		{
			name: "Return on Assets (ROA)",
			blueprintGroups: ["far.1.F"],
			formula: "Net Income / Average Total Assets",
		},
		{
			name: "Return on Equity (ROE)",
			blueprintGroups: ["far.1.F"],
			formula: "Net Income / Average Stockholders' Equity",
		},
		{
			name: "Current Ratio",
			blueprintGroups: ["far.1.F"],
			formula: "Current Assets / Current Liabilities",
		},
		{
			name: "Quick (Acid-Test) Ratio",
			blueprintGroups: ["far.1.F"],
			formula:
				"(Cash + Short-Term Investments + Net Receivables) / Current Liabilities",
		},
		{
			name: "Accounts Receivable Turnover",
			blueprintGroups: ["far.1.F"],
			formula: "Net Credit Sales / Average Accounts Receivable",
			description:
				"Days sales outstanding = 365 / AR Turnover",
		},
		{
			name: "Inventory Turnover",
			blueprintGroups: ["far.1.F"],
			formula: "Cost of Goods Sold / Average Inventory",
			description:
				"Days in inventory = 365 / Inventory Turnover",
		},
		{
			name: "Accounts Payable Turnover",
			blueprintGroups: ["far.1.F"],
			formula: "Cost of Goods Sold / Average Accounts Payable",
			description:
				"Days payable outstanding = 365 / AP Turnover",
		},
		{
			name: "Debt-to-Equity Ratio",
			blueprintGroups: ["far.1.F"],
			formula: "Total Liabilities / Total Stockholders' Equity",
		},
		{
			name: "Times Interest Earned",
			blueprintGroups: ["far.1.F"],
			formula:
				"Earnings Before Interest and Taxes (EBIT) / Interest Expense",
		},
		{
			name: "EBITDA",
			blueprintGroups: ["far.1.F"],
			formula:
				"Net Income + Interest Expense + Income Tax Expense + Depreciation + Amortization",
			description:
				"Non-GAAP metric used as a proxy for operating cash flow before capital structure and tax effects",
		},
		{
			name: "Price-to-Earnings (P/E) Ratio",
			blueprintGroups: ["far.1.F"],
			formula: "Market Price per Share / Earnings per Share",
		},
		{
			name: "Asset Turnover",
			blueprintGroups: ["far.1.F"],
			formula: "Net Sales / Average Total Assets",
			description:
				"Measures how efficiently assets generate revenue. Component of DuPont analysis",
		},
		{
			name: "Budget Variance",
			blueprintGroups: ["far.1.F"],
			formula: "Actual Results − Budgeted Amount",
			description:
				"Favorable if revenue variance is positive or expense variance is negative. Unfavorable if the opposite",
		},
		{
			name: "Cash-to-Accrual Revenue Conversion",
			blueprintGroups: ["far.1.E"],
			formula:
				"Accrual Revenue = Cash Collected + Ending AR − Beginning AR + Beginning Unearned Revenue − Ending Unearned Revenue",
			description:
				"Converts cash basis revenue to accrual basis. Add receivables earned but not yet collected; remove cash received in advance that hasn't been earned",
		},
		{
			name: "Cash-to-Accrual Expense Conversion",
			blueprintGroups: ["far.1.E"],
			formula:
				"Accrual Expense = Cash Paid + Ending Prepaid − Beginning Prepaid + Beginning AP − Ending AP",
			description:
				"Converts cash basis expense to accrual basis. Add expenses incurred but not yet paid; remove cash paid in advance for future benefit",
		},
		{
			name: "Warranty Expense Accrual",
			blueprintGroups: ["far.3.B"],
			formula:
				"Warranty Expense = Units Sold × Estimated Warranty Cost per Unit",
			description:
				"Accrue estimated warranty cost in the period of sale (matching principle). DR Warranty Expense, CR Warranty Liability. Reduce liability as claims are paid",
		},
		{
			name: "Gain on Extinguishment of Debt",
			blueprintGroups: ["far.2.H"],
			formula:
				"Gain (Loss) = Carrying Amount of Debt − Reacquisition Price",
			description:
				"Carrying amount = Face ± unamortized premium/discount − unamortized issuance costs. Positive result = gain; negative = loss. Reported in income from continuing operations",
		},
		{
			name: "Equity Method Investment Carrying Amount",
			blueprintGroups: ["far.2.E"],
			formula:
				"Cost + Share of Investee Income − Dividends Received − Impairment",
			description:
				"Adjust the investment account each period for the investor's proportionate share of investee net income (increase) and dividends received (decrease). Test for OTTI if indicators present",
		},
		{
			name: "Bond Investment Premium/Discount Amortization (Effective Interest)",
			blueprintGroups: ["far.2.E"],
			formula:
				"Interest Revenue = Carrying Amount × Market Rate at Purchase",
			description:
				"Cash received = Face × Stated Rate. Difference between interest revenue and cash received amortizes the premium or discount. Applies to HTM and AFS debt securities",
		},
		{
			name: "Days Sales Outstanding (DSO)",
			blueprintGroups: ["far.2.B"],
			formula: "365 / Accounts Receivable Turnover",
			description:
				"Average number of days to collect receivables. AR Turnover = Net Credit Sales / Average AR",
		},
		{
			name: "Accretion Expense (ARO)",
			blueprintGroups: ["far.2.G"],
			formula:
				"Beginning ARO Liability × Credit-Adjusted Risk-Free Rate",
			description:
				"Recognized each period as the ARO liability accretes toward its full settlement amount. DR Accretion Expense, CR ARO Liability",
		},
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
			blueprintGroups: ["far.3.F"],
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
			blueprintGroups: ["far.1.C"],
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
			blueprintGroups: ["far.1.C"],
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
			title: "NFP vs. For-Profit Financial Statements",
			blueprintGroups: ["far.1.B"],
			headers: ["For-Profit Statement", "NFP Equivalent", "Key Difference"],
			rows: [
				["Balance Sheet", "Statement of Financial Position", "Net assets classified by donor restrictions (with/without) instead of stockholders' equity"],
				["Income Statement", "Statement of Activities", "Reports change in net assets by class instead of net income. Includes reclassifications when restrictions are met"],
				["(No equivalent)", "Statement of Functional Expenses", "Required for voluntary health and welfare orgs. Expenses by nature AND function (program, management, fundraising)"],
				["Statement of Cash Flows", "Statement of Cash Flows", "Same three categories. Donor-restricted contributions for long-term purposes classified as financing activities"],
				["Statement of Stockholders' Equity", "(No equivalent)", "NFPs have no equity owners — net asset classes replace equity categories"],
			],
		},
		{
			title: "SEC Periodic Filing Requirements",
			blueprintGroups: ["far.1.D"],
			headers: ["Form", "Frequency", "Key Contents", "Filing Deadline (Large Accelerated)"],
			rows: [
				["10-K", "Annual", "Audited financial statements, MD&A (Item 7), market risk disclosures (7A), FS and supplementary data (Item 8), business description, risk factors", "60 days after fiscal year-end"],
				["10-Q", "Quarterly (Q1-Q3)", "Unaudited financial statements (reviewed), MD&A, quantitative/qualitative market risk disclosures. No Q4 filing (covered by 10-K)", "40 days after quarter-end"],
				["8-K", "Event-driven (within 4 business days)", "Material events: acquisitions/dispositions, bankruptcy, auditor changes, officer departures, delisting, material agreements", "4 business days after the triggering event"],
			],
		},
		{
			title: "Bond Issuance — Premium vs. Discount",
			blueprintGroups: ["far.2.H"],
			headers: ["Feature", "Premium", "Discount"],
			rows: [
				["Condition", "Stated rate > Market rate at issuance", "Stated rate < Market rate at issuance"],
				["Issue price", "Above face value", "Below face value"],
				["Carrying amount over time", "Decreases toward face value", "Increases toward face value"],
				["Interest expense vs. cash paid", "Interest expense < Cash paid", "Interest expense > Cash paid"],
				["Amortization effect", "Reduces interest expense below coupon", "Increases interest expense above coupon"],
				["At maturity", "Carrying amount = Face value", "Carrying amount = Face value"],
			],
		},
		{
			title: "Equity Transactions — Journal Entry Summary",
			blueprintGroups: ["far.2.I"],
			headers: ["Transaction", "Debit", "Credit", "Key Note"],
			rows: [
				["Issue stock at par", "Cash", "Common/Preferred Stock", "Rare — usually issued above par"],
				["Issue stock above par", "Cash", "Common Stock + APIC", "APIC = excess over par"],
				["Stock dividend (small, <20-25%)", "Retained Earnings (at FV)", "Common Stock + APIC", "Capitalize at fair value of shares distributed"],
				["Stock dividend (large, ≥20-25%)", "Retained Earnings (at par)", "Common Stock", "Capitalize at par value only; no APIC entry"],
				["Stock split", "No journal entry", "No journal entry", "Memo entry — par value per share decreases, shares increase"],
				["Purchase treasury (cost method)", "Treasury Stock (at cost)", "Cash", "Contra-equity; reduces total equity"],
				["Reissue treasury above cost", "Cash", "Treasury Stock + APIC-TS", "Excess over cost to APIC-Treasury Stock"],
				["Reissue treasury below cost", "Cash + APIC-TS (+ RE if needed)", "Treasury Stock", "Deficit first reduces APIC-TS from prior transactions, then RE"],
				["Cash dividend declared", "Retained Earnings", "Dividends Payable", "Record on declaration date; payable is current liability"],
			],
		},
		{
			title: "Contingency Treatment — Gains vs. Losses",
			blueprintGroups: ["far.3.B"],
			headers: ["Type", "Probable + Estimable", "Reasonably Possible", "Remote"],
			rows: [
				["Loss contingency", "Accrue (debit expense, credit liability) AND disclose", "Disclose only (nature + estimate of range)", "No accrual or disclosure (except debt guarantees)"],
				["Gain contingency", "NEVER accrue — disclose if probable", "Disclose if material", "No disclosure"],
			],
		},
		{
			title: "Revenue Recognition — Contract Assets and Liabilities",
			blueprintGroups: ["far.3.C"],
			headers: ["Situation", "Balance Sheet Classification", "Explanation"],
			rows: [
				["Performance satisfied BEFORE payment due", "Contract Asset (receivable if unconditional)", "Entity has earned revenue but right to payment is conditional on something other than passage of time"],
				["Performance satisfied AND payment is unconditional", "Accounts Receivable", "Entity has an unconditional right to consideration — only passage of time before payment is due"],
				["Payment received BEFORE performance", "Contract Liability (deferred/unearned revenue)", "Entity has obligation to transfer goods/services for consideration already received"],
				["Costs to obtain a contract (e.g., sales commissions)", "Contract Cost Asset (capitalize if >1 year benefit)", "Amortize on a systematic basis consistent with transfer of goods/services; expense if amortization period ≤ 1 year (practical expedient)"],
			],
		},
		{
			title: "Receivable Transfer Methods Comparison",
			blueprintGroups: ["far.2.B"],
			headers: ["Method", "Derecognize AR?", "Who Bears Credit Risk?", "Key Feature"],
			rows: [
				["Factoring without recourse", "Yes (sale)", "Factor (buyer)", "Clean transfer — factor assumes all collection risk"],
				["Factoring with recourse", "No (secured borrowing)", "Transferor retains risk", "Transferor must repurchase or make up for bad debts"],
				["Assignment", "No (secured borrowing)", "Transferor", "Specific receivables pledged as collateral; transferor collects and remits"],
				["Pledging", "No (secured borrowing)", "Transferor", "General pool of receivables pledged; least formal arrangement"],
				["Securitization (control surrendered)", "Yes (sale)", "SPE / investors", "Receivables transferred to SPE that issues securities to investors"],
			],
		},
		{
			title: "Investment Categories — Measurement and Income Recognition",
			blueprintGroups: ["far.2.E"],
			headers: ["Category", "Measurement", "Unrealized Gains/Losses", "Impairment Model"],
			rows: [
				["Trading (debt)", "Fair value", "Net income", "CECL (ASC 326)"],
				["Available-for-sale (debt)", "Fair value", "OCI (reclassify on sale)", "CECL (ASC 326)"],
				["Held-to-maturity (debt)", "Amortized cost", "Not recognized", "CECL (ASC 326)"],
				["Equity (default)", "Fair value", "Net income", "N/A (FV measurement)"],
				["Equity (FV-OCI election)", "Fair value", "OCI (no recycling)", "N/A (FV measurement)"],
				["Equity (measurement alt.)", "Cost − impairment ± observable changes", "Adjust for observable price changes", "Qualitative, then quantitative if indicated"],
				["Equity method (20-50%)", "Cost + share of income − dividends", "Not applicable", "OTTI assessment"],
			],
		},
		{
			title: "Accrued Liabilities — Recognition Triggers",
			blueprintGroups: ["far.2.G"],
			headers: ["Liability Type", "When to Recognize", "Measurement", "Key ASC"],
			rows: [
				["Accounts payable", "When goods/services received", "Invoice amount", "General GAAP"],
				["Accrued wages/bonuses", "As employees render service", "Estimated amount earned", "ASC 710"],
				["Compensated absences (vacation)", "As employees earn the right", "Estimated cost when taken", "ASC 710-10"],
				["Asset retirement obligation", "When legal obligation incurred (e.g., at asset acquisition)", "PV of estimated future cost", "ASC 410-20"],
				["One-time termination benefits", "When plan communicated to employees", "FV of benefits; ratably if future service required", "ASC 420"],
				["Contract termination costs", "When contract is terminated", "FV of remaining obligation", "ASC 420"],
				["Self-insurance liability", "When loss is probable and estimable", "Estimated undiscounted claims", "ASC 450"],
				["Dividends payable", "On declaration date (not record or payment date)", "Declared amount per share × shares", "General GAAP"],
			],
		},
		{
			title: "Financial Ratio Quick Reference",
			blueprintGroups: ["far.1.F"],
			headers: ["Category", "Ratio", "Formula", "What It Measures"],
			rows: [
				["Profitability", "Gross profit margin", "Gross Profit / Net Sales", "Pricing power and production efficiency"],
				["Profitability", "Return on assets", "Net Income / Avg Total Assets", "How efficiently assets generate profit"],
				["Profitability", "Return on equity", "Net Income / Avg Equity", "Return to shareholders"],
				["Liquidity", "Current ratio", "CA / CL", "Short-term debt coverage"],
				["Liquidity", "Quick ratio", "(Cash + ST Invest + AR) / CL", "Immediate debt coverage (no inventory)"],
				["Liquidity", "AR turnover", "Net Credit Sales / Avg AR", "Collection speed"],
				["Liquidity", "Inventory turnover", "COGS / Avg Inventory", "Inventory sell-through speed"],
				["Solvency", "Debt-to-equity", "Total Liabilities / Equity", "Leverage and financial risk"],
				["Solvency", "Times interest earned", "EBIT / Interest Expense", "Ability to service debt"],
				["Performance", "Asset turnover", "Net Sales / Avg Total Assets", "Revenue efficiency per dollar of assets"],
				["Performance", "P/E ratio", "Price per Share / EPS", "Market valuation relative to earnings"],
			],
		},
		{
			title: "Accounting Changes and Error Corrections — Treatment Summary",
			blueprintGroups: ["far.3.A"],
			headers: ["Type", "Application Method", "Prior Periods", "Current Period Effect"],
			rows: [
				["Change in accounting principle", "Retrospective", "Restate all presented periods", "Cumulative-effect adjustment to opening RE"],
				["Change in accounting estimate", "Prospective", "No restatement", "Adjust current and future periods only"],
				["Change in estimate effected by change in principle", "Prospective", "No restatement", "Treated as change in estimate (prospective)"],
				["Change in reporting entity", "Retrospective", "Restate all presented periods", "Present as if new entity always existed"],
				["Error correction", "Restatement", "Restate affected periods", "Prior period adjustment to opening RE"],
			],
		},
		{
			title: "Intangible Assets — Recognition and Measurement",
			blueprintGroups: ["far.2.F"],
			headers: ["Category", "Amortization", "Impairment Test", "Key Rule"],
			rows: [
				["Finite-lived (patent, copyright, customer list)", "Straight-line over useful life (or pattern of benefit)", "Trigger-based (ASC 360 — undiscounted CF test first)", "Impairment = Carrying Amt − FV when undiscounted CF < carrying"],
				["Indefinite-lived (trade name, FCC license)", "None", "Annual or trigger-based (FV vs. carrying)", "Impairment = Carrying Amt − FV (one-step)"],
				["Goodwill (acquisition only)", "None (public) or optional 10-year SL (private)", "Annual or trigger-based (reporting unit level)", "Impairment capped at carrying amount of goodwill"],
				["Software for external sale (ASC 985)", "Greater of revenue ratio or straight-line", "NRV test each period", "Capitalize after technological feasibility established"],
				["Internal-use software (ASC 350-40)", "Straight-line over useful life", "Trigger-based (ASC 360)", "Capitalize costs in application development stage only"],
			],
		},
		{
			title: "Subsequent Events — Type I vs. Type II",
			blueprintGroups: ["far.3.G"],
			headers: ["Feature", "Type I (Recognized)", "Type II (Nonrecognized)"],
			rows: [
				["Condition timing", "Existed at balance sheet date", "Arose after balance sheet date"],
				["Financial statement treatment", "Adjust the statements", "Disclose in notes only"],
				["Rationale", "Statements should reflect conditions that existed", "New conditions should not alter the historical snapshot"],
				["Example — litigation", "Settlement of lawsuit filed before year-end confirms a loss", "New lawsuit filed after year-end"],
				["Example — asset value", "Customer bankruptcy confirming year-end AR impairment", "Fire destroys warehouse after year-end"],
				["Example — business", "Resolution of tax dispute pending at year-end", "Business combination completed after year-end"],
			],
		},
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
			blueprintGroups: ["far.1.C"],
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
			blueprintGroups: ["far.3.C"],
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
			blueprintGroups: ["far.3.F"],
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
			blueprintGroups: ["far.1.C"],
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
			blueprintGroups: ["far.3.F"],
			expansion:
				"Ownership transfer, Written purchase option, Economic life ≥75%, Substantially all FV ≥90%, Lessee — If any of the First Four apply → finance, Else → operating",
			explanation:
				"ASC 842 lessee lease classification criteria. If the lessee OWES LIFE, it's a finance lease.",
		},
		{
			acronym: "RICE",
			blueprintGroups: ["far.1.A"],
			expansion: "Revenue, Inventory changes, COGS adjustments, Expenses",
			explanation:
				"Order of indirect method operating cash flow adjustments: start with net income, then adjust for non-cash items using RICE.",
		},
		{
			acronym: "CARINV",
			blueprintGroups: ["far.3.C"],
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
		{
			acronym: "SOAR",
			blueprintGroups: ["far.3.C"],
			expansion:
				"Simultaneous receive/consume, Or asset customer controls, Alternative use none + Right to payment → Over time",
			explanation:
				"The three criteria for recognizing revenue over time under ASC 606 Step 5. If any one is met, recognize over time. If none are met, recognize at a point in time when control transfers. SOAR: if the performance obligation can SOAR over time, revenue does too.",
		},
		{
			acronym: "DRIP",
			blueprintGroups: ["far.2.I"],
			expansion:
				"Dividends (cash), Retained earnings impact, Issuances of stock, Purchases of treasury stock",
			explanation:
				"The four major categories of equity transactions that flow through the Statement of Stockholders' Equity. DRIP captures what DRIPs equity value: distributions out (dividends, treasury purchases) and additions in (retained earnings from income, stock issuances).",
		},
		{
			acronym: "SAFE",
			blueprintGroups: ["far.2.B"],
			expansion:
				"Surrendered control? → Account as sale. Failed? → Secured borrowing (Encumbered)",
			explanation:
				"For receivable transfers under ASC 860, the key question is whether the transferor has surrendered control. Three conditions must be met: assets are isolated, transferee can pledge/exchange freely, and transferor does not maintain effective control. If all three are met, it is a sale (derecognize). If any fails, it is a secured borrowing.",
		},
		{
			acronym: "THAT",
			blueprintGroups: ["far.2.E"],
			expansion:
				"Trading, HTM, AFS, Twenty-percent (equity method)",
			explanation:
				"The four main investment classifications for financial assets. Trading and AFS are at fair value (through income or OCI respectively). HTM is at amortized cost. Twenty-percent (20-50%) triggers the equity method. Classification drives measurement, income recognition, and impairment treatment.",
		},
		{
			acronym: "HBUM",
			blueprintGroups: ["far.3.E"],
			expansion:
				"Highest and Best Use for nonfinancial assets, Market participant assumptions",
			explanation:
				"Two key ASC 820 principles: (1) Fair value of nonfinancial assets is based on highest and best use — the use that maximizes value to market participants, which may differ from current use. (2) All fair value measurements use market participant assumptions, not entity-specific assumptions, even for Level 3 inputs.",
		},
		{
			acronym: "PREP",
			blueprintGroups: ["far.3.A"],
			expansion:
				"Principle → Retrospective, Estimate → Prospective",
			explanation:
				"The two core rules for accounting changes under ASC 250. Changes in principle go backward (retrospective restatement). Changes in estimate go forward (prospective adjustment). Error corrections are restatements (like principle). A change in estimate effected by a change in principle is treated as prospective.",
		},
		{
			acronym: "RACED",
			blueprintGroups: ["far.3.G"],
			expansion:
				"Recognized events = conditions Already existed at balance sheet Date",
			explanation:
				"For subsequent events under ASC 855, Type I (recognized/adjusting) events are those where the underlying condition already existed at the balance sheet date — the post-year-end event merely provides evidence. If the condition arose after the date, it is Type II (disclose only).",
		},
		{
			acronym: "PLSPE",
			blueprintGroups: ["far.1.F"],
			expansion:
				"Profitability, Liquidity, Solvency, Performance, Efficiency",
			explanation:
				"The five categories of financial ratios. Profitability measures earnings power. Liquidity measures short-term cash adequacy. Solvency measures long-term debt coverage. Performance measures market valuation and operating output. Efficiency measures asset utilization (turnover ratios).",
		},
	],
};
