import type { StudyFramework } from "./types";

export const tcpFramework: StudyFramework = {
	sectionCode: "tcp",
	sectionTitle: "Tax Compliance and Planning",
	conceptMaps: [
		{
			title: "Stock Option Types — ISO vs. NQSO Tax Treatment",
			root: {
				label: "Compensatory Stock Options",
				children: [
					{
						label: "Incentive Stock Options (ISO)",
						children: [
							{ label: "Grant: no tax consequence" },
							{
								label:
									"Exercise: no regular tax; spread is AMT preference item",
							},
							{
								label:
									"Qualifying disposition (hold 2 yr from grant, 1 yr from exercise)",
								children: [
									{
										label: "Gain = sale price - exercise price, taxed as LTCG",
									},
									{ label: "Employer gets no deduction" },
								],
							},
							{
								label: "Disqualifying disposition",
								children: [
									{ label: "Spread at exercise = ordinary income" },
									{ label: "Remaining gain = capital gain" },
									{
										label:
											"Employer gets deduction equal to ordinary income recognized",
									},
								],
							},
						],
					},
					{
						label: "Nonqualified Stock Options (NQSO)",
						children: [
							{ label: "Grant: no tax if no readily ascertainable FMV" },
							{
								label:
									"Exercise: spread (FMV - exercise price) = ordinary income, subject to withholding",
							},
							{
								label:
									"Sale: gain/loss from FMV at exercise = capital gain/loss",
							},
							{
								label:
									"Employer deduction at exercise equal to employee's ordinary income",
							},
						],
					},
				],
			},
		},
		{
			title: "Loss Limitation Ordering Rules",
			root: {
				label: "Loss Limitation Hierarchy (applied in order)",
				children: [
					{
						label: "1. Tax Basis Limitation",
						children: [
							{ label: "S corp: stock basis + debt basis (direct loans only)" },
							{
								label:
									"Partnership: outside basis (includes partner's share of all liabilities)",
							},
							{
								label:
									"Losses exceeding basis are suspended and carried forward indefinitely",
							},
						],
					},
					{
						label: "2. At-Risk Limitation (IRC 465)",
						children: [
							{
								label:
									"Amount at risk = cash invested + recourse debt + qualified nonrecourse financing (real estate)",
							},
							{ label: "Losses limited to amount at risk" },
							{
								label:
									"Suspended losses freed up when at-risk amount increases",
							},
						],
					},
					{
						label: "3. Passive Activity Loss Limitation (IRC 469)",
						children: [
							{ label: "Passive losses offset only passive income" },
							{
								label:
									"Exception: $25,000 rental real estate allowance (phases out $100K-$150K AGI)",
							},
							{
								label:
									"Real estate professionals exempt if material participation",
							},
							{
								label: "Suspended losses released on fully taxable disposition",
							},
						],
					},
					{
						label: "4. Excess Business Loss Limitation (IRC 461(l))",
						children: [
							{
								label:
									"Noncorporate taxpayers: losses exceeding threshold become NOL carryforward",
							},
							{
								label:
									"Threshold: $313,000 single / $626,000 MFJ (2025, indexed)",
							},
							{ label: "Applied after passive activity rules" },
						],
					},
				],
			},
		},
		{
			title: "Gift and Estate Tax Unified Framework",
			root: {
				label: "Transfer Tax System",
				children: [
					{
						label: "Gift Tax (Lifetime Transfers)",
						children: [
							{ label: "Annual exclusion: $19,000 per donee (2025)" },
							{
								label:
									"Unlimited marital deduction (spouse must be US citizen)",
							},
							{ label: "Unlimited charitable deduction" },
							{ label: "Taxable gifts reduce unified credit at death" },
							{ label: "Donor pays gift tax; donee takes carryover basis" },
						],
					},
					{
						label: "Estate Tax (Transfers at Death)",
						children: [
							{ label: "Gross estate: FMV of all property at date of death" },
							{
								label:
									"Deductions: debts, expenses, marital deduction, charitable deduction",
							},
							{ label: "Unified credit: $13.99M exemption (2025)" },
							{
								label:
									"Portability: unused exemption transfers to surviving spouse (election required)",
							},
							{
								label:
									"Beneficiaries receive stepped-up basis to FMV at date of death",
							},
						],
					},
					{
						label: "Generation-Skipping Transfer Tax (GSTT)",
						children: [
							{
								label:
									"Applies to transfers to skip persons (2+ generations below)",
							},
							{ label: "Separate GST exemption ($13.99M in 2025)" },
							{ label: "Flat rate equal to highest estate tax rate (40%)" },
						],
					},
				],
			},
		},
		{
			title: "Entity Type Comparison",
			root: {
				label: "Business Entity Selection",
				children: [
					{
						label: "C Corporation",
						children: [
							{
								label:
									"Double taxation: corporate rate (21%) + shareholder dividend tax",
							},
							{ label: "Unlimited shareholders, no restrictions" },
							{
								label:
									"Retained earnings accumulation (beware PHC and accumulated earnings tax)",
							},
						],
					},
					{
						label: "S Corporation",
						children: [
							{ label: "Flow-through: income/loss passes to shareholders" },
							{
								label:
									"100 shareholders max, 1 class of stock, no NRA shareholders",
							},
							{
								label:
									"Reasonable compensation required; excess = distributions (no SE tax)",
							},
						],
					},
					{
						label: "Partnership / LLC",
						children: [
							{
								label:
									"Flow-through: special allocations allowed (must have substantial economic effect)",
							},
							{ label: "No entity-level tax (unless elects otherwise)" },
							{ label: "General partners: SE tax on distributive share" },
							{
								label:
									"Flexible: can distribute different items to different partners",
							},
						],
					},
					{
						label: "Sole Proprietorship",
						children: [
							{ label: "Schedule C: all income subject to SE tax" },
							{ label: "No liability protection" },
							{ label: "Simplest formation and compliance" },
						],
					},
				],
			},
		},
		{
			title: "International Tax Provisions",
			root: {
				label: "US International Tax Framework",
				children: [
					{
						label: "Subpart F Income",
						children: [
							{
								label:
									"Certain passive and mobile income of CFCs included currently",
							},
							{ label: "Prevents deferral of easily shifted income" },
							{
								label:
									"Insurance income, FPHCI, foreign base company sales/services",
							},
						],
					},
					{
						label: "GILTI (Global Intangible Low-Taxed Income)",
						children: [
							{
								label:
									"CFC tested income minus 10% of QBAI (tangible asset return)",
							},
							{ label: "Included in US shareholder's income currently" },
							{ label: "50% deduction for C corps (effective 10.5% rate)" },
						],
					},
					{
						label: "FDII (Foreign-Derived Intangible Income)",
						children: [
							{
								label:
									"Incentive for domestic corporations serving foreign markets",
							},
							{ label: "37.5% deduction (effective 13.125% rate)" },
							{ label: "Only available to C corporations" },
						],
					},
					{
						label: "Foreign Tax Credit (FTC)",
						children: [
							{ label: "Credit for taxes paid to foreign governments" },
							{
								label:
									"Limitation: US tax x (foreign source income / worldwide income)",
							},
							{ label: "Separate baskets: general, passive, GILTI" },
						],
					},
					{
						label: "BEAT (Base Erosion and Anti-Abuse Tax)",
						children: [
							{
								label:
									"Minimum tax on large corporations (>$500M gross receipts)",
							},
							{
								label: "Targets deductible payments to related foreign persons",
							},
							{
								label:
									"10% of modified taxable income (after adding back base erosion payments)",
							},
						],
					},
				],
			},
		},
		{
			title: "Section 302 Stock Redemption Tests",
			root: {
				label: "Section 302 Redemption Analysis",
				children: [
					{
						label: "Constructive Ownership (IRC 318)",
						children: [
							{
								label:
									"Family attribution: spouse, children, grandchildren, parents",
							},
							{
								label:
									"Entity attribution: partnerships, corporations, trusts, estates",
							},
							{ label: "Must apply before testing redemption treatment" },
						],
					},
					{
						label: "Sale/Exchange Treatment Tests (any one is sufficient)",
						children: [
							{
								label: "Substantially disproportionate (302(b)(2))",
								children: [
									{ label: "After: <50% of total voting power" },
									{ label: "After: voting stock % < 80% of before %" },
									{ label: "After: common stock % < 80% of before %" },
								],
							},
							{
								label:
									"Complete termination (302(b)(3)) — all stock redeemed; family attribution can be waived",
							},
							{
								label:
									"Not essentially equivalent to a dividend (302(b)(1)) — meaningful reduction in interest (facts and circumstances)",
							},
						],
					},
					{
						label: "Dividend Treatment (Default)",
						children: [
							{ label: "If no test is met: treated as IRC 301 distribution" },
							{ label: "Taxable as dividend to extent of E&P" },
							{ label: "Basis of redeemed shares added to remaining shares" },
						],
					},
				],
			},
		},
		{
			title: "Trust Types and Taxation",
			root: {
				label: "Trust Classification and Tax Treatment",
				children: [
					{
						label: "Grantor Trust",
						children: [
							{ label: "Grantor retains certain powers (IRC 671-679)" },
							{
								label:
									"All income taxed to grantor (disregarded entity for income tax)",
							},
							{
								label:
									"Common: revocable living trusts, intentionally defective grantor trusts (IDGTs)",
							},
						],
					},
					{
						label: "Simple Trust",
						children: [
							{ label: "Required to distribute all income currently" },
							{ label: "Cannot distribute corpus" },
							{ label: "Cannot make charitable contributions" },
							{
								label:
									"Beneficiaries taxed on DNI; trust gets distribution deduction",
							},
						],
					},
					{
						label: "Complex Trust",
						children: [
							{
								label:
									"May accumulate income, distribute corpus, make charitable gifts",
							},
							{
								label:
									"Distributions carry out DNI to beneficiaries (tier system)",
							},
							{
								label:
									"Undistributed income taxed to trust at compressed rates",
							},
							{ label: "Highest bracket (37%) reached at ~$15,650 (2025)" },
						],
					},
				],
			},
		},
		{
			title: "Entity Formation and Liquidation — Key IRC Sections",
			root: {
				label: "Tax-Deferred Formation and Taxable Liquidation",
				children: [
					{
						label: "Formation (Tax-Deferred)",
						children: [
							{
								label: "IRC 351 — Corporate Formation",
								children: [
									{
										label:
											"Property for stock; transferors must have 80% control immediately after",
									},
									{ label: "Boot received triggers gain recognition" },
									{ label: "Basis: substituted (carryover) basis in stock" },
								],
							},
							{
								label: "IRC 721 — Partnership Formation",
								children: [
									{
										label:
											"No gain/loss recognized on contribution of property",
									},
									{ label: "No control requirement (unlike 351)" },
									{ label: "Basis: carryover basis; holding period tacks" },
								],
							},
						],
					},
					{
						label: "Liquidation",
						children: [
							{
								label: "IRC 331 — Shareholder Treatment",
								children: [
									{ label: "Treated as sale/exchange of stock" },
									{ label: "Gain/loss = FMV of distribution - stock basis" },
								],
							},
							{
								label: "IRC 332 — Subsidiary Liquidation",
								children: [
									{ label: "Tax-free to 80%+ parent corporation" },
									{
										label:
											"Parent takes carryover basis in assets (IRC 334(b)(1))",
									},
									{ label: "Minority shareholders use IRC 331 rules" },
								],
							},
							{
								label: "IRC 336 — Corporate-Level Gain/Loss",
								children: [
									{
										label:
											"Corporation recognizes gain/loss as if assets sold at FMV",
									},
									{
										label:
											"Exception: no gain/loss in IRC 332 liquidation to parent (IRC 337)",
									},
								],
							},
						],
					},
				],
			},
		},
		{
			title: "Constructive Ownership Rules (Section 267/318)",
			root: {
				label: "Constructive Ownership Attribution",
				children: [
					{
						label: "Family Attribution (Section 267(c)(4))",
						children: [
							{
								label: "Spouse — stock attributed in both directions",
							},
							{
								label:
									"Siblings (whole and half-blood) — attributed to taxpayer",
							},
							{
								label:
									"Ancestors (parents, grandparents) — attributed to taxpayer",
							},
							{
								label:
									"Lineal descendants (children, grandchildren) — attributed to taxpayer",
							},
							{
								label:
									"NOT included: cousins, in-laws, step-relations (unless adopted), aunts, uncles",
							},
						],
					},
					{
						label: "Entity Attribution",
						children: [
							{
								label: "Corporation → 50%+ shareholder (proportional)",
							},
							{
								label: "Partnership → partners (proportional to interest)",
							},
							{
								label: "Trust/estate → beneficiaries (proportional)",
							},
							{
								label:
									"Reverse: 50%+ shareholder → corporation; partner → partnership; beneficiary → trust",
							},
						],
					},
					{
						label: "Option Attribution",
						children: [
							{
								label: "Option holder treated as owning the underlying stock",
							},
							{
								label: "Applies to all types of options (calls, warrants)",
							},
						],
					},
					{
						label: "Key Threshold: More Than 50%",
						children: [
							{
								label:
									"Section 267: direct + constructive > 50% = related party",
							},
							{
								label: "Exactly 50% does NOT trigger related party status",
							},
						],
					},
				],
			},
		},
	],
	decisionTrees: [
		{
			title: "Entity Choice Decision Tree",
			root: {
				question:
					"Does the business need to retain earnings for growth and access public capital markets?",
				yes: "C corporation — 21% flat rate, unlimited shareholders, public offering capability, but double taxation on distributions",
				no: {
					question:
						"Are there 100 or fewer US-resident shareholders, and is one class of stock acceptable?",
					yes: {
						question:
							"Is avoiding self-employment tax on distributed profits a priority?",
						yes: "S corporation — flow-through taxation, reasonable salary required, excess distributions avoid SE tax",
						no: {
							question:
								"Do the owners need flexible profit/loss allocations (special allocations)?",
							yes: "Partnership / LLC (partnership-taxed) — maximum flexibility, special allocations, but GP has SE tax",
							no: "S corporation — simpler compliance than partnership, SE tax savings on distributions",
						},
					},
					no: {
						question:
							"Are there foreign owners, multiple classes of equity, or more than 100 investors?",
						yes: "Partnership / LLC or C corporation — S election not available; choose based on double taxation tolerance vs. flexibility needs",
						no: "Sole proprietorship — simplest option for single owner; all income subject to SE tax",
					},
				},
			},
		},
		{
			title: "ISO vs. NQSO — Qualifying vs. Disqualifying Disposition",
			root: {
				question: "Is the stock option an Incentive Stock Option (ISO)?",
				yes: {
					question:
						"Did the employee hold the stock for at least 2 years from grant date AND 1 year from exercise date?",
					yes: "Qualifying disposition — entire gain (sale price - exercise price) taxed as LTCG; no employer deduction",
					no: "Disqualifying disposition — spread at exercise = ordinary income; additional gain = capital gain; employer gets deduction",
				},
				no: "NQSO — spread at exercise is always ordinary income (W-2); subsequent gain/loss is capital; employer always gets deduction at exercise",
			},
		},
		{
			title: "Section 302 Redemption — Dividend vs. Sale Treatment",
			root: {
				question:
					"After applying IRC 318 constructive ownership rules, was the shareholder's entire interest completely terminated (302(b)(3))?",
				yes: "Sale/exchange treatment — gain/loss = redemption proceeds minus stock basis",
				no: {
					question:
						"Is the redemption substantially disproportionate (302(b)(2))? (After: <50% voting power AND voting % < 80% of before %)",
					yes: "Sale/exchange treatment — gain/loss = redemption proceeds minus stock basis",
					no: {
						question:
							"Is the redemption not essentially equivalent to a dividend (302(b)(1))? (Meaningful reduction in proportionate interest — facts and circumstances)",
						yes: "Sale/exchange treatment — gain/loss = redemption proceeds minus stock basis",
						no: "Dividend treatment (IRC 301) — distribution taxed as dividend to extent of E&P; basis of redeemed shares transfers to remaining shares",
					},
				},
			},
		},
		{
			title: "NOL Utilization — Pre-TCJA vs. Post-TCJA Rules",
			root: {
				question:
					"Was the net operating loss generated in a tax year beginning before January 1, 2018?",
				yes: "Pre-TCJA NOL — 2-year carryback (or election to waive), 20-year carryforward, can offset 100% of taxable income",
				no: {
					question: "Was the NOL generated in tax years 2018, 2019, or 2020?",
					yes: "CARES Act exception — 5-year carryback allowed, can offset 100% of taxable income in carryback years",
					no: "Post-TCJA NOL (2021+) — no carryback, indefinite carryforward, limited to 80% of taxable income (before NOL deduction)",
				},
			},
		},
		{
			title: "Passive vs. Active — Material Participation Test Flow",
			root: {
				question:
					"Did the taxpayer participate in the activity for more than 500 hours during the tax year?",
				yes: "Material participation met — income/loss is nonpassive (active)",
				no: {
					question:
						"Was the taxpayer's participation substantially all of the participation by all individuals (including non-owners)?",
					yes: "Material participation met — income/loss is nonpassive",
					no: {
						question:
							"Did the taxpayer participate more than 100 hours AND at least as much as any other individual?",
						yes: "Material participation met — income/loss is nonpassive",
						no: {
							question:
								"Did the taxpayer materially participate in any 5 of the prior 10 tax years?",
							yes: "Material participation met — income/loss is nonpassive",
							no: "Material participation NOT met — activity is passive (losses subject to PAL rules under IRC 469)",
						},
					},
				},
			},
		},
		{
			title: "Trust Classification — Simple vs. Complex vs. Grantor",
			root: {
				question:
					"Does the grantor retain a prohibited power or interest under IRC 671-679 (e.g., power to revoke, control beneficial enjoyment, borrow without adequate security)?",
				yes: "Grantor trust — all income taxed to grantor on the grantor's individual return; trust is disregarded for income tax",
				no: {
					question:
						"Is the trust required to distribute all income currently, prohibited from distributing corpus, and does it make no charitable contributions?",
					yes: "Simple trust — income distribution deduction equals DNI; beneficiaries report income; $300 personal exemption",
					no: "Complex trust — may accumulate income, distribute corpus, or make charitable gifts; undistributed income taxed at trust rates; $100 personal exemption",
				},
			},
		},
		{
			title: "Is the Interest Deductible Under Section 163(j)?",
			root: {
				question:
					"Does the taxpayer meet the small business exception (average annual gross receipts of $30 million or less for 3 prior tax years)?",
				yes: "Section 163(j) does NOT apply — all business interest expense is fully deductible without limitation",
				no: {
					question:
						"Is the taxpayer a real property trade or business or farming business that has elected out of Section 163(j)?",
					yes: "Section 163(j) does NOT apply — interest is fully deductible, but ADS depreciation is required (40-yr nonresidential real property, 30-yr residential, 20-yr QIP). Election is irrevocable.",
					no: {
						question:
							"Does the business interest expense exceed the sum of business interest income + 30% of ATI (EBIT basis for 2022+)?",
						yes: "Excess interest is DISALLOWED in the current year — carried forward indefinitely to future years (subject to same 30% limitation). For partnerships: allocated to and tracked at partner level.",
						no: "All business interest expense is DEDUCTIBLE — the 163(j) limitation is not binding in the current year",
					},
				},
			},
		},
	],
	formulas: [
		{
			name: "GILTI Computation",
			formula:
				"GILTI = Tested Income - (10% x QBAI) - Specified Interest Expense",
			description:
				"Global Intangible Low-Taxed Income. QBAI = qualified business asset investment (average adjusted bases of tangible depreciable property). C corps get a 50% deduction, resulting in an effective 10.5% rate.",
		},
		{
			name: "Foreign Tax Credit Limitation",
			formula:
				"FTC Limit = US Tax x (Foreign Source Taxable Income / Worldwide Taxable Income)",
			description:
				"Maximum foreign tax credit claimable. Computed separately for each basket (general, passive, GILTI). Excess credits carry back 1 year, forward 10 years.",
		},
		{
			name: "Gift Tax — Taxable Gifts",
			formula:
				"Taxable Gifts = Total Gifts - Annual Exclusions - Marital Deduction - Charitable Deduction",
			description:
				"Annual exclusion is $19,000 per donee (2025). Unlimited marital deduction for US citizen spouses. Gift-splitting available for married couples. Taxable gifts reduce lifetime unified credit.",
		},
		{
			name: "Self-Employment Tax",
			formula:
				"SE Tax = 92.35% x Net SE Income x 15.3% (up to SS wage base); 2.9% on excess",
			description:
				"92.35% adjustment approximates the employer half. 15.3% = 12.4% Social Security (up to $176,100 in 2025) + 2.9% Medicare (no cap). Additional 0.9% Medicare on earned income above $200K/$250K.",
		},
		{
			name: "S Corp Stock Basis Ordering",
			formula:
				"Basis = Beginning + Income + Contributions - Distributions - Nondeductible Expenses - Losses/Deductions",
			description:
				"Order matters: increase for income items first, then decrease for distributions, then nondeductible expenses, then losses. Distributions are tax-free to extent of basis; excess is capital gain.",
		},
		{
			name: "Distributable Net Income (DNI)",
			formula:
				"DNI = Taxable Income + Personal Exemption + Tax-Exempt Interest - Capital Gains Allocated to Corpus + Capital Losses",
			description:
				"DNI caps the trust's distribution deduction and the amount taxable to beneficiaries. Prevents double taxation of trust income. Tax-exempt interest retains its character.",
		},
		{
			name: "Section 199A QBI Deduction (Simplified)",
			formula:
				"QBI Deduction = Lesser of: (a) 20% of QBI, or (b) 20% of taxable income before QBI deduction (minus net capital gain)",
			description:
				"Available to noncorporate taxpayers from pass-through entities. Phase-out for SSTBs above $197,300/$394,600 (2025). W-2/UBIA limitation applies above threshold: greater of 50% of W-2 wages or 25% of W-2 wages + 2.5% of UBIA.",
		},
		{
			name: "Section 199A W-2/UBIA Limitation",
			formula:
				"QBI Deduction (above threshold) = 20% of QBI, limited to greater of: (a) 50% of W-2 wages, or (b) 25% of W-2 wages + 2.5% of UBIA of qualified property",
			description:
				"Applies when taxable income exceeds $191,950 single / $383,900 MFJ (2024). UBIA = unadjusted basis immediately after acquisition of qualified property. Phases in over $50K/$100K range.",
		},
		{
			name: "Estate Tax Computation",
			formula:
				"Estate Tax = (Gross Estate - Deductions) x Tax Rate - Unified Credit - Prior Gift Tax Credits",
			description:
				"Gross estate includes all property at FMV (date of death or alternate valuation date). Unified credit shelters $13.99M (2025). Top marginal rate is 40%. Portability allows surviving spouse to use deceased spouse's unused exemption.",
		},
		{
			name: "Installment Sale Gross Profit Percentage",
			formula:
				"Gross Profit % = (Selling Price - Adjusted Basis - Selling Expenses) / Contract Price",
			description:
				"Applied to each installment payment to determine taxable gain. Contract Price = Selling Price - Mortgage Assumed (to extent not exceeding basis). If mortgage exceeds basis, excess is treated as Year 1 payment and added to contract price. Depreciation recapture (Section 1245/1250) is recognized in full in Year 1 regardless.",
		},
		{
			name: "Section 163(j) Business Interest Limitation",
			formula:
				"Deductible Interest = Business Interest Income + (30% x ATI) + Floor Plan Financing Interest",
			description:
				"ATI is computed on EBIT basis (2022+): depreciation and amortization NOT added back. Disallowed interest carries forward indefinitely. Small business exception for taxpayers with average annual gross receipts ≤ $30M. Partnerships allocate disallowed interest to partners.",
		},
	],
	referenceTables: [
		{
			title: "Entity Comparison Table",
			headers: [
				"Feature",
				"C Corporation",
				"S Corporation",
				"Partnership",
				"Sole Proprietorship",
			],
			rows: [
				[
					"Formation",
					"IRC 351 (tax-free if 80% control)",
					"IRC 351 + S election",
					"IRC 721 (tax-free, no control test)",
					"No formal formation",
				],
				[
					"Taxation",
					"Double: 21% corporate + dividend tax",
					"Flow-through to shareholders",
					"Flow-through to partners",
					"Schedule C on Form 1040",
				],
				[
					"SE tax",
					"Not applicable (salary + dividends)",
					"Salary only; distributions exempt",
					"GP: SE tax on distributive share; LP: generally exempt",
					"All net income subject to SE tax",
				],
				[
					"Owners",
					"Unlimited; any type",
					"Max 100; US individuals/certain trusts/estates only",
					"Unlimited; any type",
					"Single owner only",
				],
				[
					"Liability",
					"Limited (corporate veil)",
					"Limited (corporate veil)",
					"GP: unlimited; LP/LLC members: limited",
					"Unlimited personal liability",
				],
				[
					"Special allocations",
					"Not available",
					"Not available (1 class of stock)",
					"Allowed (substantial economic effect)",
					"N/A",
				],
				[
					"Basis includes debt",
					"No",
					"Direct shareholder loans only",
					"Yes — all partnership liabilities",
					"N/A",
				],
				[
					"Liquidation",
					"IRC 331/336 (double tax)",
					"IRC 331/336 (single tax — flow-through)",
					"IRC 731 (generally tax-free)",
					"No separate event",
				],
			],
		},
		{
			title: "Retirement Plan Comparison",
			headers: [
				"Plan",
				"Contribution Limit (2025)",
				"Employer Match",
				"Key Rules",
			],
			rows: [
				[
					"Traditional 401(k)",
					"$23,500 employee + $70,000 total (with employer)",
					"Discretionary; subject to ADP/ACP testing",
					"Pre-tax contributions; RMDs at 73; 10% early withdrawal penalty before 59.5",
				],
				[
					"Roth 401(k)",
					"$23,500 employee (same total limit)",
					"Employer match goes to pre-tax account",
					"After-tax contributions; qualified distributions tax-free; no income limit",
				],
				[
					"Traditional IRA",
					"$7,000 ($8,000 if 50+)",
					"N/A",
					"Deductible if no employer plan or below income limits; RMDs at 73",
				],
				[
					"Roth IRA",
					"$7,000 ($8,000 if 50+)",
					"N/A",
					"After-tax; tax-free growth; no RMDs for owner; income phase-out $150K-$165K single (2025)",
				],
				[
					"SEP IRA",
					"25% of compensation, max $70,000",
					"Employer contributes (must be uniform %)",
					"Employer-only contributions; easy setup; no catch-up contributions",
				],
				[
					"SIMPLE IRA",
					"$16,500 employee ($20,000 if 50+)",
					"Required: 2% nonelective or 3% match",
					"For employers with 100 or fewer employees; 25% early withdrawal penalty in first 2 years",
				],
			],
		},
		{
			title: "IRC Section Quick Reference",
			headers: ["Section", "Topic", "Key Rule"],
			rows: [
				[
					"IRC 83(b)",
					"Property transferred for services",
					"Election to recognize income at grant (not vesting); must file within 30 days",
				],
				[
					"IRC 199A",
					"QBI deduction",
					"20% deduction for pass-through income; W-2/UBIA limitation above threshold; SSTB phase-out",
				],
				[
					"IRC 267",
					"Related party losses",
					"Losses disallowed between related parties; deferred until gain recognition by transferee",
				],
				[
					"IRC 302",
					"Stock redemptions",
					"Sale treatment if substantially disproportionate, complete termination, or meaningful reduction",
				],
				[
					"IRC 318",
					"Constructive ownership",
					"Family, entity, and option attribution rules for determining stock ownership",
				],
				[
					"IRC 332",
					"Subsidiary liquidation",
					"Tax-free liquidation to 80%+ parent corporation; carryover basis under 334(b)(1)",
				],
				[
					"IRC 336",
					"Liquidating distributions",
					"Corporation recognizes gain/loss as if sold at FMV; exception for 332 liquidations (IRC 337)",
				],
				[
					"IRC 351",
					"Corporate formation",
					"Tax-free transfer of property for stock if transferors have 80% control immediately after",
				],
				[
					"IRC 409A",
					"Deferred compensation",
					"Strict timing rules for deferral elections and distributions; 20% penalty + interest for violations",
				],
				[
					"IRC 465",
					"At-risk rules",
					"Losses limited to amount taxpayer has at risk (cash + recourse debt + qualified nonrecourse for real estate)",
				],
				[
					"IRC 469",
					"Passive activity losses",
					"Passive losses only offset passive income; $25K rental allowance; released on disposition",
				],
				[
					"IRC 704(c)",
					"Partnership contributed property",
					"Built-in gain/loss allocated to contributing partner; prevents shifting pre-contribution gain/loss",
				],
				[
					"IRC 721",
					"Partnership formation",
					"No gain/loss on contribution of property to partnership; carryover basis",
				],
				[
					"IRC 743(b)",
					"Partnership basis adjustment",
					"Optional step-up in basis of partnership assets on transfer of partnership interest (requires 754 election)",
				],
				[
					"IRC 754",
					"Basis adjustment election",
					"Partnership election for inside basis adjustments on transfers (743b) and distributions (734b)",
				],
			],
		},
		{
			title: "Gift and Estate Tax Exemption Amounts (2025)",
			headers: ["Item", "Amount", "Notes"],
			rows: [
				[
					"Annual gift exclusion",
					"$19,000 per donee",
					"Indexed for inflation; doubles with gift-splitting",
				],
				[
					"Lifetime unified credit exemption",
					"$13.99 million",
					"Scheduled to sunset to ~$7M after 2025 (pre-TCJA level, indexed)",
				],
				[
					"Top estate/gift tax rate",
					"40%",
					"Applied to taxable estate/gifts above exemption",
				],
				[
					"GST exemption",
					"$13.99 million",
					"Separate from estate tax exemption; same sunset provision",
				],
				[
					"Marital deduction",
					"Unlimited",
					"Spouse must be US citizen; QDOT required for non-citizen spouse",
				],
				[
					"Charitable deduction",
					"Unlimited",
					"Available for both gift and estate tax purposes",
				],
				[
					"Portability",
					"Deceased spouse's unused exemption (DSUE)",
					"Must file estate tax return (Form 706) to elect; not available for GST exemption",
				],
			],
		},
		{
			title: "Material Participation Tests (IRC 469)",
			headers: ["Test #", "Description", "Hours/Criteria"],
			rows: [
				[
					"1",
					"Participation exceeds 500 hours",
					"500+ hours during the tax year",
				],
				[
					"2",
					"Substantially all participation",
					"Taxpayer's participation constitutes substantially all participation by all individuals",
				],
				[
					"3",
					"Significant participation + most of any person",
					"100+ hours AND not less than any other individual",
				],
				[
					"4",
					"Significant participation activities aggregate",
					"All significant participation activities (100+ hrs each) total 500+ hours",
				],
				[
					"5",
					"Material participation in 5 of prior 10 years",
					"5 of the 10 preceding tax years",
				],
				[
					"6",
					"Personal service activity — 3 prior years",
					"Any 3 preceding tax years (for personal service activities only)",
				],
				[
					"7",
					"Facts and circumstances",
					"Regular, continuous, and substantial involvement (100+ hours, but never if <100 hours)",
				],
			],
		},
		{
			title: "International Tax Provision Comparison",
			headers: ["Provision", "Applies To", "Rate / Mechanism", "Purpose"],
			rows: [
				[
					"Subpart F",
					"US shareholders of CFCs",
					"Current inclusion of passive/mobile income",
					"Prevent deferral of easily shifted income",
				],
				[
					"GILTI",
					"US shareholders of CFCs",
					"Tested income - 10% QBAI; 50% deduction for C corps",
					"Minimum tax on CFC earnings above routine return on assets",
				],
				[
					"FDII",
					"Domestic C corporations",
					"37.5% deduction (effective 13.125% rate)",
					"Incentive to earn and keep IP income in the US",
				],
				[
					"FTC",
					"US taxpayers with foreign income",
					"Credit limited by (foreign income / worldwide income) x US tax",
					"Prevent double taxation of foreign-source income",
				],
				[
					"BEAT",
					"Corps with $500M+ gross receipts",
					"10% of modified taxable income",
					"Minimum tax targeting base erosion through related-party payments",
				],
			],
		},
		{
			title: "Debt vs. Equity Tax Characteristics",
			headers: ["Characteristic", "Debt", "Equity"],
			rows: [
				[
					"Returns to holder",
					"Interest (deductible by payor)",
					"Dividends (not deductible by payor)",
				],
				["Maturity", "Fixed date for repayment", "No maturity; perpetual"],
				[
					"Payment obligation",
					"Unconditional; enforceable",
					"Contingent on earnings and board discretion",
				],
				[
					"Priority in liquidation",
					"Senior to equity",
					"Residual claimant after all debt",
				],
				[
					"Holder voting rights",
					"None (typically)",
					"Voting rights on governance",
				],
				[
					"Reclassification risk",
					"May be reclassified as equity if factors point to disguised equity",
					"N/A",
				],
				[
					"Section 385 documentation",
					"Required for related-party debt (written obligation, creditor rights, repayment evidence)",
					"Not applicable",
				],
				[
					"Proportionality concern",
					"High risk if debt held in same ratio as stock",
					"N/A",
				],
			],
		},
		{
			title: "Involuntary Conversion Replacement Periods (Section 1033)",
			headers: [
				"Type of Conversion",
				"Replacement Period",
				"Property Standard",
			],
			rows: [
				[
					"General (casualty, theft, destruction)",
					"2 years from close of first tax year gain is realized",
					"Similar or related in service or use",
				],
				[
					"Condemned real property (productive use/investment)",
					"3 years from close of first tax year gain is realized",
					"Like-kind (more relaxed standard)",
				],
				[
					"Presidentially declared disaster (business/investment real property)",
					"4 years from close of first tax year gain is realized",
					"Like-kind",
				],
				[
					"Livestock (disease)",
					"2 years from close of first tax year gain is realized",
					"Similar or related in service or use",
				],
				[
					"Livestock (drought/weather)",
					"4 years from close of first tax year gain is realized",
					"Like-kind (other livestock)",
				],
			],
		},
		{
			title: "Section 267 Related Party Categories",
			headers: ["Category", "Relationship", "Ownership Threshold"],
			rows: [
				[
					"Family members",
					"Siblings (whole/half), spouse, ancestors, lineal descendants",
					"N/A — automatically related",
				],
				[
					"Individual & corporation",
					"Individual owns stock in a corporation",
					"More than 50% (by value, direct + constructive)",
				],
				[
					"Two corporations (controlled group)",
					"Common ownership in both corporations",
					"More than 50% common ownership",
				],
				[
					"Grantor & trust",
					"Grantor and fiduciary of trust created by grantor",
					"N/A — automatically related",
				],
				[
					"Trust fiduciary & beneficiary",
					"Fiduciary and beneficiary of the same trust",
					"N/A — automatically related",
				],
				[
					"Corporation & partnership",
					"Same persons own both entities",
					"More than 50% of each",
				],
				[
					"Two partnerships",
					"Same persons own capital/profits in both",
					"More than 50% of each",
				],
				[
					"Executor & beneficiary",
					"Executor of estate and beneficiary of same estate",
					"N/A — automatically related",
				],
			],
		},
	],
	mnemonics: [
		{
			acronym: "BAP-E",
			expansion: "Basis, At-risk, Passive activity, Excess business loss",
			explanation:
				"The mandatory ordering of loss limitation rules. Each limitation is applied in sequence: losses must first pass the basis test, then at-risk, then passive activity, and finally excess business loss.",
		},
		{
			acronym: "100-1-No NRA",
			expansion: "100 shareholders, 1 class of stock, No Nonresident Aliens",
			explanation:
				"The three key S corporation eligibility requirements. Also: shareholders must be individuals, certain trusts, or estates (no C corps or partnerships). Must be a domestic corporation.",
		},
		{
			acronym: "CPS-80",
			expansion: "Control, Property, Stock, 80%",
			explanation:
				"Section 351 tax-free corporate formation requirements: transferors must transfer Property solely for Stock and have 80% Control immediately after the exchange. Boot received triggers gain recognition.",
		},
		{
			acronym: "DNI-DD",
			expansion: "DNI Determines Distribution Deduction",
			explanation:
				"Distributable Net Income caps both the trust's distribution deduction and the amount taxable to beneficiaries. DNI is the ceiling for the distribution deduction — distributions in excess of DNI are tax-free return of corpus.",
		},
		{
			acronym: "GILTI-Q",
			expansion: "GILTI = Tested Income minus 10% of QBAI",
			explanation:
				"Quick GILTI formula: subtract 10% of qualified business asset investment (deemed tangible return) from CFC tested income. The excess is GILTI, included currently in US shareholder income. C corps get a 50% deduction.",
		},
		{
			acronym: "FACETS",
			expansion:
				"Five hundred hours, All participation, Cent (100) hours + most, Earlier 5 of 10 years, Three prior years (PSA), Substantial involvement (facts)",
			explanation:
				"Memory aid for the material participation tests under IRC 469. Meeting any single test establishes material participation and makes the activity nonpassive.",
		},
		{
			acronym: "ISO-21",
			expansion: "2 years from grant, 1 year from exercise",
			explanation:
				"The holding period requirements for ISO qualifying disposition treatment. Both periods must be met for the entire gain to be taxed as long-term capital gain. Failing either period results in a disqualifying disposition with ordinary income on the spread.",
		},
		{
			acronym: "SLED",
			expansion:
				"Stock basis, Loans (direct only), E&P (AAA ordering), Distributions",
			explanation:
				"S corporation shareholder basis framework. Unlike partnerships, only direct loans from the shareholder increase debt basis. Distributions reduce stock basis first (tax-free to extent of basis), then loan basis.",
		},
	],
};
