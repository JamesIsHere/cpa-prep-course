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
				"Net SE Income × 92.35% × 15.3% (first $168,600 SS + unlimited Medicare)",
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
	],
	referenceTables: [
		{
			title: "Filing Status — Standard Deduction (2024)",
			headers: [
				"Filing Status",
				"Standard Deduction",
				"Additional (Age 65+ / Blind)",
			],
			rows: [
				["Single", "$14,600", "$1,950 each"],
				["Married Filing Jointly", "$29,200", "$1,550 each"],
				["Married Filing Separately", "$14,600", "$1,550 each"],
				["Head of Household", "$21,900", "$1,950 each"],
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
	],
};
