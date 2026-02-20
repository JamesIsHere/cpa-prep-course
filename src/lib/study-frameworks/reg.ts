import type { StudyFramework } from "./types";

export const regFramework: StudyFramework = {
	sectionCode: "reg",
	sectionTitle: "Taxation and Regulation",
	conceptMaps: [
		{
			title: "Individual Tax Formula",
			root: {
				label: "Individual Income Tax Computation",
				children: [
					{
						label: "Gross Income (§61)",
						children: [
							{ label: "Wages, salaries, tips" },
							{ label: "Interest and dividends" },
							{ label: "Business income (Sch C)" },
							{ label: "Capital gains/losses" },
							{ label: "Rental income (Sch E)" },
							{ label: "Alimony (pre-2019 agreements)" },
						],
					},
					{
						label: "Adjustments (Above the Line)",
						children: [
							{ label: "IRA contributions" },
							{ label: "Student loan interest" },
							{ label: "Self-employment tax (50%)" },
							{ label: "HSA contributions" },
							{ label: "Alimony paid (pre-2019)" },
						],
					},
					{
						label: "= Adjusted Gross Income (AGI)",
					},
					{
						label: "Deductions (Below the Line)",
						children: [
							{ label: "Standard deduction OR" },
							{ label: "Itemized deductions (Sch A)" },
						],
					},
					{
						label: "= Taxable Income",
					},
					{
						label: "Tax Computation",
						children: [
							{ label: "Apply tax rate brackets" },
							{ label: "− Credits (nonrefundable, then refundable)" },
							{ label: "+ Self-employment tax, AMT, etc." },
							{ label: "− Payments and withholding" },
							{ label: "= Tax due or refund" },
						],
					},
				],
			},
		},
		{
			title: "Business Entity Taxation",
			root: {
				label: "Entity Types",
				children: [
					{
						label: "C Corporation",
						children: [
							{ label: "Taxed at entity level (21% flat)" },
							{ label: "Double taxation on dividends" },
							{ label: "Unlimited shareholders" },
						],
					},
					{
						label: "S Corporation",
						children: [
							{ label: "Pass-through (K-1)" },
							{ label: "≤100 shareholders" },
							{ label: "One class of stock" },
							{ label: "Shareholder basis: stock + debt to shareholder" },
						],
					},
					{
						label: "Partnership",
						children: [
							{ label: "Pass-through (K-1)" },
							{ label: "Flexible allocations" },
							{ label: "Basis: capital + share of all liabilities" },
							{ label: "No entity-level tax" },
						],
					},
					{
						label: "Sole Proprietorship",
						children: [
							{ label: "Schedule C" },
							{ label: "Self-employment tax" },
							{ label: "No separate entity" },
						],
					},
				],
			},
		},
		{
			title: "Property Transactions — Basis Concepts",
			root: {
				label: "Basis Determination",
				children: [
					{
						label: "Purchased Property",
						children: [{ label: "Cost basis = Price + acquisition costs" }],
					},
					{
						label: "Gifted Property",
						children: [
							{ label: "Gain basis: Donor's adjusted basis" },
							{
								label:
									"Loss basis: Lower of donor's basis or FMV at date of gift",
							},
							{ label: "Add gift tax paid on appreciation" },
						],
					},
					{
						label: "Inherited Property",
						children: [
							{ label: "Stepped-up basis to FMV at date of death" },
							{ label: "Alternate valuation: FMV 6 months after death" },
							{ label: "Holding period always long-term" },
						],
					},
					{
						label: "Like-Kind Exchange (§1031)",
						children: [
							{ label: "Basis of old property" },
							{ label: "− Boot received + Boot paid" },
							{ label: "+ Gain recognized" },
							{ label: "= Basis in new property" },
						],
					},
				],
			},
		},
		{
			title: "Tax Credits Overview",
			root: {
				label: "Tax Credits",
				children: [
					{
						label: "Nonrefundable Credits",
						children: [
							{ label: "Child and Dependent Care Credit" },
							{ label: "Lifetime Learning Credit" },
							{ label: "Adoption Credit" },
							{ label: "Foreign Tax Credit" },
							{ label: "General Business Credit" },
						],
					},
					{
						label: "Refundable Credits",
						children: [
							{ label: "Earned Income Credit (EIC)" },
							{ label: "Child Tax Credit (refundable portion)" },
							{ label: "American Opportunity Credit (40%)" },
							{ label: "Premium Tax Credit" },
						],
					},
				],
			},
		},
		{
			title: "Circular 230 — Enforcement and Penalties",
			root: {
				label: "IRS Enforcement Framework",
				children: [
					{
						label: "Practitioner Sanctions (OPR)",
						children: [
							{ label: "Censure (public reprimand)" },
							{ label: "Suspension from practice" },
							{ label: "Disbarment from practice" },
							{ label: "Monetary penalty" },
						],
					},
					{
						label: "Preparer Penalties",
						children: [
							{
								label:
									"§6694(a): Unreasonable position — $1,000 or 50% of income",
							},
							{
								label: "§6694(b): Willful/reckless — $5,000 or 75% of income",
							},
							{ label: "§6695: Failure to sign/PTIN — $50 per return" },
						],
					},
					{
						label: "Statute of Limitations",
						children: [
							{ label: "General: 3 years from filing/due date" },
							{ label: "25% omission: 6 years" },
							{ label: "Fraud or no return filed: unlimited" },
						],
					},
				],
			},
		},
		{
			title: "Passive Activity Loss System",
			root: {
				label: "Loss Limitation Tiers (S Corp / Partnership)",
				children: [
					{
						label: "Tier 1 — Basis Limitation",
						children: [
							{ label: "S Corp: stock basis + direct loans" },
							{ label: "Partnership: outside basis (incl. liabilities)" },
						],
					},
					{
						label: "Tier 2 — At-Risk Limitation (§465)",
						children: [
							{ label: "Cash + basis of property contributed" },
							{ label: "+ Recourse borrowing" },
							{ label: "+ Qualified nonrecourse real estate financing" },
						],
					},
					{
						label: "Tier 3 — Passive Activity Limitation (§469)",
						children: [
							{ label: "Passive losses offset passive income only" },
							{ label: "$25K rental allowance (active participation)" },
							{ label: "Full release on complete disposition" },
						],
					},
					{
						label: "Tier 4 — Excess Business Loss (§461(l))",
						children: [
							{ label: "$322K single / $644K MFJ (2026)" },
							{ label: "Excess becomes NOL carryforward" },
						],
					},
				],
			},
		},
		{
			title: "Bankruptcy Chapters — Key Features",
			root: {
				label: "Bankruptcy (Title 11, U.S. Code)",
				children: [
					{
						label: "Chapter 7 — Liquidation",
						children: [
							{ label: "Trustee sells nonexempt assets" },
							{ label: "Individuals must pass means test" },
							{ label: "Discharge of most debts (3–6 months)" },
							{ label: "Corporations do not receive discharge" },
							{
								label:
									"Nondischargeable: student loans, alimony, recent taxes, fraud debts",
							},
						],
					},
					{
						label: "Chapter 11 — Reorganization",
						children: [
							{ label: "Debtor continues operating as DIP" },
							{ label: "Plan of reorganization proposed by debtor" },
							{
								label:
									"Creditor vote: majority in number + 2/3 in dollar amount per class",
							},
							{ label: "Court can confirm via cramdown" },
							{ label: "Available to individuals and businesses" },
						],
					},
					{
						label: "Chapter 13 — Individual Repayment",
						children: [
							{ label: "Individuals with regular income only" },
							{
								label: "Unsecured debts below $2,830,000 (2026)",
							},
							{ label: "3–5 year repayment plan" },
							{ label: "Debtor retains all property" },
							{ label: "Must pass best interests test" },
							{ label: "Broader discharge than Chapter 7" },
						],
					},
					{
						label: "Common to All Chapters",
						children: [
							{
								label: "Automatic stay on filing (§362)",
							},
							{
								label: "Exceptions: criminal proceedings, domestic support",
							},
							{
								label:
									"Priority: secured → admin → wages → taxes → general unsecured",
							},
						],
					},
				],
			},
		},
		{
			title: "Tax-Exempt Organizations — Section 501(c)(3)",
			root: {
				label: "501(c)(3) Tax-Exempt Organizations",
				children: [
					{
						label: "Qualification",
						children: [
							{ label: "Organizational test (governing documents)" },
							{ label: "Operational test (primarily exempt activities)" },
							{ label: "Dissolution clause required" },
							{ label: "No private inurement" },
						],
					},
					{
						label: "Public Charity vs. Private Foundation",
						children: [
							{ label: "Public charity: broad public support (1/3 test)" },
							{ label: "Private foundation: presumed unless proved otherwise" },
							{
								label:
									"Churches, schools, hospitals = automatic public charity",
							},
						],
					},
					{
						label: "Prohibited Activities",
						children: [
							{ label: "Political campaign activity — absolute prohibition" },
							{ label: "Lobbying — limited (not substantial part)" },
							{ label: "Private inurement — no earnings to insiders" },
						],
					},
					{
						label: "Private Foundation Excise Taxes",
						children: [
							{ label: "§4940: 1.39% on net investment income" },
							{ label: "§4941: Self-dealing (10% on self-dealer)" },
							{ label: "§4942: Failure to distribute 5% of assets" },
							{ label: "§4943: Excess business holdings (>20%)" },
							{ label: "§4944: Jeopardizing investments" },
							{ label: "§4945: Taxable expenditures" },
						],
					},
					{
						label: "UBIT (Three-Part Test)",
						children: [
							{ label: "Trade or business" },
							{ label: "Regularly carried on" },
							{ label: "Not substantially related to exempt purpose" },
							{ label: "$1,000 specific deduction" },
						],
					},
				],
			},
		},
	],
	decisionTrees: [
		{
			title: "Capital vs. Ordinary Gain/Loss",
			root: {
				question:
					"Is the asset a capital asset (not inventory, receivables, depreciable business property, or §1231 asset)?",
				yes: {
					question: "Was the asset held for more than one year?",
					yes: "Long-term capital gain/loss (LTCG/LTCL) — preferential rates (0%/15%/20%)",
					no: "Short-term capital gain/loss (STCG/STCL) — ordinary rates",
				},
				no: {
					question:
						"Is the asset §1231 property (depreciable business property held >1 year)?",
					yes: {
						question: "Is the net of all §1231 gains and losses a gain?",
						yes: "Treat as long-term capital gain (subject to §1245/§1250 depreciation recapture on ordinary portion)",
						no: "Treat as ordinary loss",
					},
					no: "Ordinary income/loss",
				},
			},
		},
		{
			title: "Like-Kind Exchange Qualification (§1031)",
			root: {
				question: "Is the property real property (land or buildings)?",
				yes: {
					question:
						"Is the property held for use in a trade/business or for investment (not personal use or inventory)?",
					yes: {
						question: "Is the exchange for other real property of like kind?",
						yes: "Qualifies for §1031 — gain deferred to extent no boot received",
						no: "Does not qualify — fully taxable exchange",
					},
					no: "Does not qualify — must be business/investment property",
				},
				no: "Does not qualify — §1031 applies only to real property (after TCJA 2017)",
			},
		},
		{
			title: "S Corporation Eligibility",
			root: {
				question: "Is the entity a domestic corporation?",
				yes: {
					question:
						"Does it have ≤100 shareholders (family members count as one)?",
					yes: {
						question:
							"Are all shareholders individuals, estates, certain trusts, or tax-exempt organizations?",
						yes: {
							question: "Does it have only one class of stock?",
							yes: "Eligible for S election — file Form 2553",
							no: "Not eligible — only one class of stock allowed",
						},
						no: "Not eligible — no C corps, partnerships, or nonresident aliens as shareholders",
					},
					no: "Not eligible — exceeds 100-shareholder limit",
				},
				no: "Not eligible — must be a domestic corporation",
			},
		},
		{
			title: "Passive vs. Active vs. Portfolio Income",
			root: {
				question:
					"Is the income from rental activity or a business in which the taxpayer does NOT materially participate?",
				yes: {
					question:
						"Is it rental activity (regardless of participation level)?",
					yes: {
						question:
							"Does the taxpayer qualify as a real estate professional (>750 hrs, >50% of services)?",
						yes: "Active income if the taxpayer materially participates in each rental; otherwise passive",
						no: "Passive income — subject to §469 passive loss limits ($25K rental allowance may apply)",
					},
					no: "Passive income — losses limited to passive income only",
				},
				no: {
					question:
						"Is the income from interest, dividends, annuities, or capital gains on investment property?",
					yes: "Portfolio income — not passive, cannot be offset by passive losses",
					no: "Active (nonpassive) income — wages, active business income, material participation income",
				},
			},
		},
		{
			title: "Involuntary Conversion Deferral (§1033)",
			root: {
				question:
					"Was property destroyed, stolen, seized, or condemned (involuntary conversion)?",
				yes: {
					question:
						"Did the taxpayer receive insurance proceeds or condemnation award exceeding adjusted basis (gain realized)?",
					yes: {
						question:
							"Did the taxpayer reinvest in qualified replacement property within the replacement period?",
						yes: {
							question:
								"Was the full amount reinvested (cost of replacement ≥ amount realized)?",
							yes: "No gain recognized — full deferral; new basis = cost − deferred gain",
							no: "Gain recognized = amount realized − cost of replacement (partial deferral)",
						},
						no: "Full gain recognized — no deferral available",
					},
					no: "No gain to defer — loss may be deductible (casualty loss rules apply)",
				},
				no: "§1033 does not apply — consider §1031 or other provisions",
			},
		},
		{
			title: "UBIT Three-Part Test",
			root: {
				question:
					"Is the activity a trade or business (carried on for the production of income)?",
				yes: {
					question:
						"Is the trade or business regularly carried on (frequency and continuity comparable to commercial activity)?",
					yes: {
						question:
							"Is the trade or business NOT substantially related to the organization's exempt purpose?",
						yes: {
							question:
								"Does a statutory exclusion apply (volunteers, donated goods, passive income, convenience)?",
							yes: "Excluded from UBIT despite meeting the three-part test",
							no: "Subject to UBIT — net income taxed at corporate or trust rates",
						},
						no: "Not subject to UBIT — activity is related to exempt purpose",
					},
					no: "Not subject to UBIT — activity is not regularly carried on",
				},
				no: "Not subject to UBIT — not a trade or business",
			},
		},
		{
			title: "Which Court to File In — Tax Litigation",
			root: {
				question:
					"Can the taxpayer pay the full disputed tax amount before filing suit?",
				yes: {
					question: "Does the taxpayer want a jury trial?",
					yes: "File in U.S. District Court (only court offering jury trials; appeals to geographic circuit)",
					no: {
						question:
							"Is there favorable precedent in the Federal Circuit (as opposed to the taxpayer's geographic circuit)?",
						yes: "File in Court of Federal Claims (Washington, D.C. only; appeals to Federal Circuit)",
						no: "File in U.S. District Court (local venue; appeals to geographic circuit) or Court of Federal Claims based on strategic preference",
					},
				},
				no: {
					question:
						"Is the disputed amount $50,000 or less and the taxpayer willing to waive appeal rights?",
					yes: "File in Tax Court — Small Case Division (simplified procedures, no appeal, no prepayment required)",
					no: "File in U.S. Tax Court — Regular Division (no prepayment required; specialized judges; appeals to geographic circuit)",
				},
			},
		},
		{
			title: "Is the Communication Privileged? — Tax Practitioner Analysis",
			root: {
				question:
					"Is the practitioner an attorney (with attorney-client privilege)?",
				yes: "Attorney-client privilege applies in both civil and criminal tax matters (broadest protection)",
				no: {
					question:
						"Is the practitioner a CPA, enrolled agent, or enrolled actuary (federally authorized)?",
					yes: {
						question:
							"Does the communication involve tax advice (not merely return preparation)?",
						yes: {
							question:
								"Is the matter a noncriminal tax proceeding (before IRS or in federal court)?",
							yes: {
								question:
									"Does the communication relate to promoting or participating in a tax shelter?",
								yes: "Section 7525 privilege does NOT apply — tax shelter exception",
								no: "Section 7525 privilege APPLIES — communication is protected in this noncriminal proceeding",
							},
							no: "Section 7525 privilege does NOT apply — criminal matters and state proceedings are excluded",
						},
						no: "Section 7525 privilege does NOT apply — only tax advice is protected, not return preparation activities",
					},
					no: "No practitioner privilege available — only attorneys and federally authorized practitioners have privilege protections",
				},
			},
		},
		{
			title: "Filing Status Determination",
			root: {
				question: "Is the taxpayer married on December 31 of the tax year?",
				yes: {
					question: "Does the taxpayer want to file jointly with the spouse?",
					yes: "Married Filing Jointly (MFJ) — $30,750 standard deduction (2026); joint and several liability",
					no: {
						question:
							"Did the taxpayer live apart from the spouse for the last 6 months of the year, maintain a home for a qualifying child, and file separately?",
						yes: "Head of Household (considered unmarried) — $23,100 standard deduction (2026)",
						no: "Married Filing Separately (MFS) — $15,375 standard deduction (2026); if one spouse itemizes, the other must also itemize",
					},
				},
				no: {
					question:
						"Did the taxpayer's spouse die in one of the two prior tax years, and does the taxpayer maintain a home for a dependent child?",
					yes: "Qualifying Surviving Spouse (QSS) — $30,750 standard deduction (2026); available for 2 years after year of death",
					no: {
						question:
							"Does the taxpayer pay more than half the cost of a home for a qualifying person (child, parent, or qualifying relative)?",
						yes: "Head of Household (HOH) — $23,100 standard deduction (2026); parent need not live with taxpayer",
						no: "Single — $15,375 standard deduction (2026)",
					},
				},
			},
		},
	],
	formulas: [
		{
			name: "Adjusted Gross Income (AGI)",
			formula: "Gross Income − Above-the-Line Deductions",
		},
		{
			name: "Taxable Income",
			formula:
				"AGI − (Standard Deduction or Itemized Deductions) − QBI Deduction",
		},
		{
			name: "Self-Employment Tax",
			formula:
				"Net SE Income × 92.35% × 15.3% (first $176,100 SS + unlimited Medicare)",
			description:
				"50% is deductible above-the-line. Additional 0.9% Medicare on SE income over $200K/$250K.",
		},
		{
			name: "QBI Deduction (§199A — simplified)",
			formula:
				"Lesser of: 20% of QBI OR 20% of Taxable Income before QBI deduction",
			description:
				"Subject to W-2 wage and UBIA limits for taxpayers above income thresholds",
		},
		{
			name: "Child Tax Credit",
			formula: "$2,000 per qualifying child under 17",
			description:
				"Phases out at $200K (single) / $400K (MFJ). Up to $1,700 refundable as Additional CTC.",
		},
		{
			name: "Gain on Property Sale",
			formula: "Amount Realized − Adjusted Basis",
		},
		{
			name: "Amount Realized",
			formula:
				"Cash + FMV of Property Received + Liabilities Assumed by Buyer − Selling Expenses",
		},
		{
			name: "Adjusted Basis",
			formula:
				"Original Basis + Improvements − Depreciation Allowed or Allowable",
		},
		{
			name: "Gift Basis (for gain)",
			formula: "Donor's Adjusted Basis + Gift Tax on Appreciation",
			description: "For loss, use lower of donor's basis or FMV at gift date",
		},
		{
			name: "Like-Kind Exchange — Boot Gain",
			formula: "Gain Recognized = Lesser of (Gain Realized, Boot Received)",
			description: "Losses are never recognized in a §1031 exchange",
		},
		{
			name: "Like-Kind Exchange — New Basis",
			formula:
				"Basis of Old Property − Boot Received + Boot Paid + Gain Recognized",
		},
		{
			name: "§1245 Depreciation Recapture",
			formula:
				"Ordinary Income = Lesser of (Gain Realized, Accumulated Depreciation)",
			description:
				"Applies to personal property — all depreciation recaptured as ordinary income",
		},
		{
			name: "S Corp Shareholder Basis",
			formula:
				"Beginning Basis + Income + Capital Contributions − Distributions − Losses",
			description:
				"Losses limited to stock basis + direct loans to corporation",
		},
		{
			name: "Partnership Outside Basis",
			formula:
				"Beginning Basis + Income + Contributions + Share of Liabilities − Distributions − Losses",
			description:
				"Partners include their share of all partnership liabilities (recourse and nonrecourse)",
		},
		{
			name: "AMT Formula",
			formula:
				"AMTI − AMT Exemption × 26%/28% = Tentative Minimum Tax; AMT = TMT − Regular Tax (if positive)",
		},
		{
			name: "Foreign Tax Credit Limitation",
			formula:
				"(Foreign Source Taxable Income ÷ Worldwide Taxable Income) × U.S. Tax Liability",
			description:
				"Computed separately for each basket (general and passive). Excess credits carry back 1 year, forward 10 years.",
		},
		{
			name: "Net Investment Income Tax (NIIT)",
			formula: "3.8% × Lesser of (Net Investment Income, MAGI − Threshold)",
			description:
				"Thresholds: $200K single, $250K MFJ, $125K MFS. Not indexed for inflation.",
		},
		{
			name: "Social Security Taxability",
			formula:
				"Provisional Income = AGI + Tax-Exempt Interest + 50% of SS Benefits",
			description:
				"Single: <$25K = 0%, $25K–$34K = up to 50%, >$34K = up to 85%. MFJ: <$32K = 0%, $32K–$44K = up to 50%, >$44K = up to 85%.",
		},
		{
			name: "Section 382 NOL Limitation",
			formula:
				"Annual Limit = FMV of Loss Corp Stock (pre-change) × Long-Term Tax-Exempt Rate",
			description:
				"Triggered by >50 percentage point ownership change in 3-year period. Limits post-change use of pre-change NOLs.",
		},
	],
	referenceTables: [
		{
			title: "Filing Status — Standard Deduction (2026)",
			headers: [
				"Filing Status",
				"Standard Deduction",
				"Additional (Age 65+ / Blind)",
			],
			rows: [
				["Single", "$15,000", "$2,000 each"],
				["Married Filing Jointly", "$30,000", "$1,600 each"],
				["Married Filing Separately", "$15,000", "$1,600 each"],
				["Head of Household", "$22,500", "$2,000 each"],
			],
		},
		{
			title: "Entity Comparison — Key Tax Characteristics",
			headers: ["Feature", "C Corp", "S Corp", "Partnership", "Sole Prop"],
			rows: [
				["Tax form", "1120", "1120-S", "1065", "Schedule C"],
				["Entity-level tax", "Yes (21%)", "No", "No", "No"],
				["Pass-through", "No", "Yes (K-1)", "Yes (K-1)", "Yes (Sch C)"],
				[
					"SE tax on owners",
					"No",
					"No (wages instead)",
					"Yes (general partners)",
					"Yes",
				],
				[
					"Loss limitations",
					"NOL rules",
					"Stock + debt basis",
					"Outside basis + at-risk + PAL",
					"At-risk + PAL",
				],
				["Max shareholders/partners", "Unlimited", "100", "Unlimited", "1"],
				[
					"Basis includes entity debt",
					"N/A",
					"No (direct loans only)",
					"Yes (all liabilities)",
					"N/A",
				],
			],
		},
		{
			title: "Property Transaction — Characterization",
			headers: [
				"Asset Type",
				"Holding Period",
				"Gain Treatment",
				"Loss Treatment",
			],
			rows: [
				["Capital asset", "≤1 year", "STCG (ordinary rates)", "STCL"],
				["Capital asset", ">1 year", "LTCG (preferential rates)", "LTCL"],
				["§1231 property", ">1 year (net gain)", "LTCG", "N/A"],
				["§1231 property", ">1 year (net loss)", "N/A", "Ordinary loss"],
				[
					"§1245 property",
					"Any",
					"Ordinary (up to depr.); excess is §1231",
					"Ordinary loss",
				],
				["Inventory / AR", "Any", "Ordinary income", "Ordinary loss"],
			],
		},
		{
			title: "Key Itemized Deductions (Schedule A)",
			headers: ["Category", "Deduction", "Limitation"],
			rows: [
				["Medical", "Unreimbursed medical expenses", "Exceeds 7.5% of AGI"],
				[
					"Taxes",
					"State/local income or sales + property taxes",
					"SALT cap: $10,000",
				],
				[
					"Interest",
					"Home mortgage interest",
					"On up to $750K of acquisition debt",
				],
				["Charitable", "Cash to public charities", "60% of AGI"],
				[
					"Charitable",
					"Capital gain property to public charities",
					"30% of AGI",
				],
				[
					"Casualty",
					"Federally declared disaster losses",
					"Exceeds $100 per event + 10% AGI",
				],
			],
		},
		{
			title: "MACRS Recovery Periods — Common Property Classes",
			headers: ["Class", "Property Examples", "Method", "Convention"],
			rows: [
				[
					"3-year",
					"Tractor units, racehorses, qualified rent-to-own property",
					"200% DB",
					"Half-year",
				],
				[
					"5-year",
					"Automobiles, computers, office machinery, research equipment",
					"200% DB",
					"Half-year",
				],
				[
					"7-year",
					"Office furniture, fixtures, agricultural structures",
					"200% DB",
					"Half-year",
				],
				[
					"15-year",
					"Land improvements (fences, parking lots, landscaping)",
					"150% DB",
					"Half-year",
				],
				[
					"27.5-year",
					"Residential rental property",
					"Straight-line",
					"Mid-month",
				],
				[
					"39-year",
					"Nonresidential real property (office, warehouse, store)",
					"Straight-line",
					"Mid-month",
				],
			],
		},
		{
			title: "Seven Material Participation Tests (Reg. §1.469-5T)",
			headers: ["Test", "Requirement"],
			rows: [
				["1", "More than 500 hours during the tax year"],
				[
					"2",
					"Taxpayer's participation constitutes substantially all participation",
				],
				["3", "More than 100 hours and no other individual participated more"],
				[
					"4",
					"Significant participation activities (>100 hrs each) aggregate to >500 hrs",
				],
				["5", "Materially participated in any 5 of the prior 10 tax years"],
				[
					"6",
					"Personal service activity — materially participated in any 3 prior years",
				],
				[
					"7",
					"Based on all facts and circumstances, regular, continuous, and substantial participation",
				],
			],
		},
		{
			title: "AET vs. PHC Tax Comparison",
			headers: [
				"Feature",
				"Accumulated Earnings Tax",
				"Personal Holding Company Tax",
			],
			rows: [
				["Rate", "20%", "20%"],
				[
					"Trigger",
					"Accumulating E&P beyond reasonable business needs",
					"Stock + income tests met",
				],
				["Stock test", "None specific", ">50% owned by 5 or fewer individuals"],
				["Income test", "None specific", "≥60% of AOGI is PHC income"],
				[
					"Avoidance",
					"Demonstrate reasonable business needs or pay dividends",
					"Pay dividends to reduce undistributed PHC income",
				],
				[
					"Self-assessed",
					"No — IRS asserts",
					"Yes — self-reported on Schedule PH",
				],
			],
		},
		{
			title: "S Corp AAA Ordering Rules (with Accumulated E&P)",
			headers: ["Priority", "Source", "Tax Treatment"],
			rows: [
				[
					"1st",
					"Accumulated Adjustments Account (AAA)",
					"Tax-free (previously taxed S corp income)",
				],
				["2nd", "Accumulated E&P (from C corp years)", "Taxable dividend"],
				["3rd", "Remaining stock basis", "Tax-free return of capital"],
				["4th", "Excess over basis", "Capital gain"],
			],
		},
		{
			title: "Statute of Limitations — Assessment Periods",
			headers: ["Scenario", "Period", "Key Rule"],
			rows: [
				[
					"General rule",
					"3 years",
					"From later of filing date or due date (with extensions)",
				],
				[
					"Early-filed return",
					"3 years from due date",
					"Statute runs from due date, not early filing date",
				],
				[
					">25% gross income omission",
					"6 years",
					"Gross income = gross receipts for business; adequate disclosure prevents extension",
				],
				[
					"Fraudulent return filed",
					"Unlimited",
					"Intent to evade tax — IRS can assess at any time",
				],
				["No return filed", "Unlimited", "Statute never begins to run"],
				[
					"Refund claim by taxpayer",
					"Later of 3 years from filing or 2 years from payment",
					"Refund limited to tax paid within applicable lookback period",
				],
				["Collection after assessment", "10 years", "From date of assessment"],
			],
		},
		{
			title: "Preparer Penalty Summary — Sections 6694 and 6695",
			headers: ["Penalty", "Trigger", "Amount", "Defense"],
			rows: [
				[
					"§6694(a)",
					"Unreasonable position (undisclosed: fails substantial authority ~40%)",
					"Greater of $1,000 or 50% of preparer income",
					"Reasonable cause and good faith",
				],
				[
					"§6694(a) — disclosed",
					"Disclosed position fails reasonable basis (~20%)",
					"Greater of $1,000 or 50% of preparer income",
					"Reasonable cause and good faith",
				],
				[
					"§6694(a) — tax shelter",
					"Tax shelter position fails more likely than not (>50%)",
					"Greater of $1,000 or 50% of preparer income",
					"Reasonable cause and good faith",
				],
				[
					"§6694(b)",
					"Willful or reckless conduct",
					"Greater of $5,000 or 75% of preparer income (reduced by 6694(a))",
					"No defense available",
				],
				[
					"§6695 — admin",
					"Failure to sign, furnish PTIN, provide copy, retain records",
					"$55 per failure (max $28,000/year per category)",
					"Reasonable cause",
				],
				[
					"§6695(g) — due diligence",
					"Failure to meet EIC/CTC/AOTC/HOH due diligence",
					"$600 per credit per return",
					"Reasonable cause",
				],
			],
		},
		{
			title: "UCC Article 9 — Priority Rules Summary",
			headers: ["Competing Interests", "Rule", "Winner"],
			rows: [
				[
					"Perfected vs. unperfected",
					"Perfected always wins",
					"Perfected creditor",
				],
				[
					"Perfected vs. perfected",
					"First to file or perfect (whichever earlier)",
					"Earlier filer/perfecter",
				],
				[
					"Unperfected vs. unperfected",
					"First to attach",
					"Earlier attachment",
				],
				[
					"PMSI (non-inventory) vs. prior perfected",
					"PMSI perfected within 20 days of debtor's possession",
					"PMSI holder (super-priority)",
				],
				[
					"PMSI (inventory) vs. prior perfected",
					"PMSI perfected before delivery + notice to prior secured parties",
					"PMSI holder (super-priority)",
				],
				[
					"Perfected vs. lien creditor",
					"Perfected before lien attaches",
					"Perfected creditor",
				],
				[
					"Buyer in ordinary course (BIOC) vs. perfected",
					"BIOC takes free of SI created by seller",
					"BIOC (regardless of knowledge)",
				],
			],
		},
		{
			title: "Filing Status — Requirements and Benefits (2026)",
			headers: [
				"Filing Status",
				"Key Requirement",
				"Standard Deduction",
				"Best For",
			],
			rows: [
				[
					"Single",
					"Unmarried on Dec 31, not HOH/QSS eligible",
					"$15,375",
					"Unmarried with no qualifying person",
				],
				[
					"MFJ",
					"Married on Dec 31; both agree to file jointly",
					"$30,750",
					"Most married couples (widest brackets)",
				],
				[
					"MFS",
					"Married on Dec 31; files separate return",
					"$15,375",
					"Limiting liability; high medical deductions",
				],
				[
					"HOH",
					"Unmarried + >50% home costs + qualifying person",
					"$23,100",
					"Unmarried parent or caretaker",
				],
				[
					"QSS",
					"Spouse died in prior 2 years + dependent child at home",
					"$30,750",
					"Recent widow(er) with dependent child",
				],
			],
		},
		{
			title: "Dependency Tests — Qualifying Child vs. Qualifying Relative",
			headers: ["Test", "Qualifying Child", "Qualifying Relative"],
			rows: [
				[
					"Relationship",
					"Son, daughter, sibling, step/foster, or their descendants",
					"Related person OR member of household for full year",
				],
				[
					"Age",
					"Under 19 (or under 24 if full-time student; any age if disabled)",
					"No age requirement",
				],
				[
					"Residency",
					"Lived with taxpayer more than half the year",
					"Relationship OR lived with taxpayer full year",
				],
				[
					"Support",
					"Child did NOT provide more than half own support",
					"Taxpayer provided MORE than 50% of support",
				],
				[
					"Gross income",
					"No gross income test",
					"Person’s gross income < $5,200 (2026)",
				],
				[
					"Joint return",
					"Cannot file joint return (with exceptions)",
					"Cannot file joint return (with exceptions)",
				],
				[
					"Citizenship",
					"U.S. citizen/national/resident or Canada/Mexico resident",
					"U.S. citizen/national/resident or Canada/Mexico resident",
				],
			],
		},
	],
	mnemonics: [
		{
			acronym: "I SAID",
			expansion:
				"Interest (tax-exempt), State/local tax refunds (if didn't itemize), Alimony (post-2018), Inheritances, Damages (physical injury)",
			explanation:
				"Common exclusions from gross income under §61. If you I SAID it's excluded, it's not taxable.",
		},
		{
			acronym: "ACID",
			expansion:
				"Alimony (pre-2019), Contributions to IRA, Interest on student loans, Deduction for 50% SE tax",
			explanation:
				"Major above-the-line deductions (adjustments to gross income). These reduce AGI like ACID dissolves income.",
		},
		{
			acronym: "HIT DISC",
			expansion:
				"Holding period >1 year, Investment or business use, Title to real property, Domestic property, In exchange for like-kind, Same taxpayer, Contemporaneous identification (45 days)",
			explanation: "Requirements for §1031 like-kind exchange qualification.",
		},
		{
			acronym: "DUST",
			expansion:
				"Domestic corporation, Under 100 shareholders, Single class of stock, The right type of shareholders (individuals, estates, certain trusts)",
			explanation:
				"S Corporation eligibility requirements. If you can't pass the DUST test, you can't elect S status.",
		},
		{
			acronym: "DIME",
			expansion:
				"Distributions reduce basis, Income increases basis, Minus losses (limited to basis), Excess losses suspended",
			explanation:
				"S Corp shareholder basis ordering rules. Remember to follow the DIME when tracking basis.",
		},
		{
			acronym: "SID BURNS",
			expansion:
				"Salary/wages, Interest, Dividends, Business income, Unemployment comp, Rents/royalties, Notional income (partnerships K-1), Social security (up to 85%)",
			explanation:
				"Common items included in gross income. SID BURNS through your money with taxes.",
		},
		{
			acronym: "WATER",
			expansion:
				"Wages (administrative expenses first), Alimony/child support, Taxes (federal and state), Employee claims (up to statutory limit), Remaining general unsecured creditors",
			explanation:
				"Simplified priority of claims in Chapter 7 bankruptcy distribution. WATER flows downhill — pay from the top.",
		},
		{
			acronym: "BARP",
			expansion:
				"Basis limitation, At-risk limitation, (Passive) activity loss rules, (Excess business loss) Post-TCJA cap",
			explanation:
				"The four-tier loss limitation order for S corp and partnership losses. Losses must pass each BARP gate before deduction.",
		},
		{
			acronym: "HOT",
			expansion:
				"Highly appreciated inventory (>120% of basis), Ordinary income recapture (§1245/§1250 depreciation), Trade receivables (unrealized receivables)",
			explanation:
				"Section 751 hot assets in a partnership that trigger ordinary income treatment on sale of a partnership interest.",
		},
		{
			acronym: "ERS",
			expansion:
				"Exoneration (compel debtor to pay first), Reimbursement (recover from debtor after paying), Subrogation (step into creditor's shoes)",
			explanation:
				"The three rights of a surety. ERS follows the timeline: Exoneration is pre-payment, Reimbursement is post-payment, Subrogation is post-full-payment.",
		},
		{
			acronym: "VRAP",
			expansion:
				"Value given, Rights in collateral, Authenticated security Agreement, (then) Perfect by filing",
			explanation:
				"UCC Article 9 security interest lifecycle. First the interest attaches (VRA), then it is perfected (P) by filing a UCC-1 financing statement.",
		},
	],
};
