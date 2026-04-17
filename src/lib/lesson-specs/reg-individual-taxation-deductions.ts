import type { LessonSpec } from "./types";

// Twenty-fourth authored spec — seventh spec of Stage 3. Selected
// from census v2 as rank #8: 64 questions, 8 flagged (13%) — all on
// `qualified business income` (8) and `Section 199A` (7). This is a
// clean rightful-owner pairing with the Entity Choice and Planning
// spec just authored: Entity Choice owns QBI at the entity-selection
// comparison level (the 20% deduction as a decision variable); this
// spec owns the QBI deduction at computation depth (the W-2 wage
// limitation formula, UBIA of qualified property, SSTB phase-in
// math, aggregation rules, taxable-income thresholds, rental real
// estate safe harbor).
//
// ## Anchor
//
// AICPA REG/IV/C "Adjustments and deductions to arrive at adjusted
// gross income and taxable income" explicitly lists the task
// "Calculate the qualified business income (QBI) deduction for
// federal income tax purposes" — an unambiguous AICPA mandate to own
// QBI computation here. The scaffolder mis-anchored to REG/IV/B
// (Reporting of items from pass-through entities); corrected to
// REG/IV/C.
//
// ## Scope line
//
// This topic owns the individual-taxation deduction landscape from
// AGI to taxable income: above-the-line adjustments (educator expense,
// HSA contributions, self-employed health insurance, one-half SE tax,
// deductible IRA, student loan interest, alimony under pre-2019
// divorces, and the newer H.R. 1 / One Big Beautiful Bill Act
// provisions for qualifying tips and domestic-vehicle auto-loan
// interest); the standard deduction (current amounts, additional
// amounts for age 65+ and blindness, and rules for dependents); the
// itemized deduction categories on Schedule A (medical expenses
// above the 7.5% AGI floor, the $10,000 SALT cap, qualified residence
// interest, charitable contributions with AGI ceilings by recipient
// and property type, casualty and theft losses limited to federally
// declared disasters, gambling losses to the extent of winnings);
// §199A qualified business income deduction at computation depth
// (the 20% deduction base, the taxable income lower and upper
// thresholds, the W-2 wage limitation, UBIA of qualified property
// and the 25% + 2.5% alternative, SSTB phase-out, aggregation rules
// under Reg. §1.199A-4, rental real estate safe harbor under
// Rev. Proc. 2019-38, taxable income cap on the overall deduction);
// and the §461(l) excess business loss limitation at individual
// level.
//
// Not this topic: entity-level deductions (§162 ordinary-and-necessary
// business expenses on Schedule C at depth belong to individual
// business income topic if specced, or to business taxation); credits
// (separate credits spec); AMT (separate AMT spec); loss mechanics
// under §469 passive activity or §465 at-risk rules (those belong to
// Passive Activity and At-Risk Rules (TCP) or their own loss
// limitations topic); entity-choice comparison of QBI impact (Entity
// Choice and Planning owns the decision framework — this spec owns
// the computation); estate, gift, and trust deductions (separate
// topics); corporate / partnership / S corp entity-level deductions.

export const spec: LessonSpec = {
	topic: "Individual Taxation: Deductions",
	section: "reg",
	blueprintRef: "REG/IV/C",

	inScope: [
		"The individual tax return structure from AGI to taxable income: gross income − above-the-line adjustments (for AGI) = adjusted gross income − standard or itemized deductions = taxable income before the QBI deduction − §199A QBI deduction = taxable income.",
		"Above-the-line adjustments (for AGI): deductible traditional IRA contribution (subject to earned income and active-participant phase-outs), health savings account (HSA) contribution (subject to HDHP coverage and annual limits), one-half self-employment tax, self-employed health insurance premiums (limited to SE earnings, not deductible for months the taxpayer is eligible for subsidized employer coverage through a spouse), self-employed retirement plan contributions (SEP, SIMPLE, solo 401(k) at concept level), educator expense deduction (up to the statutory cap, currently $300), student loan interest deduction (up to $2,500, phased out at moderate income), and alimony paid under divorce decrees executed before January 1, 2019.",
		"H.R. 1 / One Big Beautiful Bill Act above-the-line provisions (tested on the 2026 CPA exam cycle): the qualifying tips deduction for service workers receiving cash tips in a qualified service industry, and the auto loan interest deduction for interest on loans used to purchase a U.S.-assembled / domestic-manufactured vehicle. Candidates should know the eligibility criteria and the above-the-line nature of both deductions.",
		"The standard deduction: current statutory amounts by filing status (single, married filing jointly, married filing separately, head of household, qualifying surviving spouse), the additional standard deduction for taxpayers age 65 or older and for blind taxpayers (stacking when both apply), and the limitation on the standard deduction for dependents (greater of the statutory floor or earned income plus the statutory increment, capped at the normal standard deduction for that filing status).",
		"Itemized deduction — medical and dental expenses: deductible to the extent they exceed 7.5% of AGI, must be paid during the tax year (cash method), eligible expenses include medical and dental services, prescription drugs, medical insurance premiums (if paid with after-tax dollars), long-term care services, and transportation for medical care. Cosmetic surgery and general-health items are not deductible.",
		"Itemized deduction — taxes paid: the $10,000 aggregate cap on state and local taxes (SALT) combining state and local income tax (or sales tax election), real property tax, and personal property tax. Foreign income taxes are separately eligible for either a deduction or a credit (credit generally more favorable). The SALT cap limit applies at the $10,000 ceiling regardless of actual amounts paid.",
		"Itemized deduction — home mortgage interest: qualified residence interest on acquisition indebtedness up to $750,000 for loans originated after December 15, 2017 ($1,000,000 grandfathered limit for loans originated on or before that date), limited to interest on debt secured by the taxpayer's principal residence or one additional qualified residence. Home equity indebtedness is not deductible unless the proceeds are used to buy, build, or substantially improve the residence (effectively treating it as acquisition indebtedness). Investment interest expense is separately limited under §163(d) to investment income.",
		"Itemized deduction — charitable contributions: the AGI ceiling depends on the recipient and the property type. Cash contributions to public charities are deductible up to 60% of AGI; long-term capital gain property to public charities (e.g., appreciated publicly traded stock) at FMV up to 30% of AGI; ordinary income property or short-term capital gain property at lesser of basis or FMV; contributions to private non-operating foundations at lower ceilings (generally 30% for cash, 20% for capital gain property). Excess contributions carry forward five years.",
		"The character of donated property: ordinary income property (inventory, art created by the donor, short-term capital gain property) is limited to basis; long-term capital gain property held more than one year is generally deductible at FMV but with a reduced ceiling (30% of AGI for public charities); tangible personal property donated for a use unrelated to the charity's exempt purpose is limited to basis.",
		"Itemized deduction — casualty and theft losses: deductible only for losses attributable to a federally declared disaster (post-TCJA rule). The deductible loss is the lesser of basis or decline in FMV, reduced by any insurance recovery, reduced by a $100-per-casualty floor, reduced further by 10% of AGI. Business casualty losses are separately deductible without these floors.",
		"Itemized deduction — gambling losses: deductible only to the extent of gambling winnings, and only if the taxpayer itemizes. Gambling winnings are included in gross income whether or not the taxpayer itemizes.",
		"Itemized deduction — miscellaneous: post-TCJA, the 2%-of-AGI miscellaneous itemized deduction category is suspended through current law. Unreimbursed employee business expenses, investment advisory fees, tax preparation fees, and similar items are not currently deductible for regular-tax purposes by individuals (though self-employed persons may deduct these as business expenses on Schedule C).",
		"§199A qualified business income deduction — the base computation: 20% of the lesser of (a) qualified business income from a qualified trade or business, or (b) taxable income before the QBI deduction reduced by net capital gain (including qualified dividends). This overall taxable income limitation caps the deduction at 20% of (taxable income − net capital gain) regardless of how much QBI the taxpayer has.",
		"§199A qualified business income definition: the net amount of qualified items of income, gain, deduction, and loss from any qualified trade or business, excluding investment items (dividends, capital gains, interest not properly allocable to a trade or business), reasonable compensation paid to the owner (for S corp shareholders), and guaranteed payments to partners. QBI is determined at the entity level and passes through on K-1.",
		"§199A qualified trade or business: any trade or business other than a specified service trade or business (SSTB) and other than performing services as an employee. The trade or business must rise to the level of a §162 trade or business (regular, continuous, with profit motive), which is the threshold issue for real estate investors deciding whether their activity qualifies.",
		"§199A taxable income thresholds (current-year inflation-adjusted amounts): below the lower threshold (roughly $197,300 single / $394,600 MFJ for 2025), the full 20% deduction applies without the W-2 wage / UBIA limitation and without the SSTB exclusion. Between the lower threshold and upper threshold ($50,000 above for single, $100,000 above for MFJ), the W-2 wage / UBIA limitation phases in and the SSTB phases out proportionally. Above the upper threshold (roughly $247,300 single / $494,600 MFJ for 2025), the full W-2 wage / UBIA limitation applies and SSTB is completely excluded.",
		"§199A W-2 wage and UBIA limitation: for taxpayers above the upper threshold, the QBI deduction for each trade or business is limited to the greater of: (a) 50% of the trade or business's W-2 wages, or (b) 25% of W-2 wages plus 2.5% of the unadjusted basis immediately after acquisition (UBIA) of qualified property held in the trade or business. Candidates should be able to compute both alternatives and select the greater.",
		"UBIA of qualified property: the unadjusted basis (original purchase cost) of tangible property subject to depreciation, held by the trade or business at year-end, and still within its depreciable period (10 years or the property's regular recovery period, whichever is longer). UBIA is NOT reduced by depreciation taken. Land is not depreciable and is excluded.",
		"§199A specified service trade or business (SSTB) definition: a trade or business in the fields of health, law, accounting, actuarial science, performing arts, consulting, athletics, financial services, brokerage services, investing and investment management, trading, or dealing in securities — or any trade or business whose principal asset is the reputation or skill of its employees or owners. Engineering and architecture are specifically excluded from the SSTB list and remain eligible. For high-income SSTB owners (above the upper threshold), the QBI deduction is zero; between thresholds, it phases out proportionally.",
		"§199A aggregation rules (Reg. §1.199A-4): a taxpayer may elect to aggregate multiple trades or businesses for purposes of the W-2 wage / UBIA limitation, provided the businesses share common ownership (50% or more), operate in the same tax year, are not SSTBs, and satisfy at least two of three business-integration factors (product/service similarity, shared facilities or resources, operational interdependence). Aggregation allows W-2 wages and UBIA from one business to support the QBI deduction of another, which can materially increase the overall deduction.",
		"§199A rental real estate safe harbor (Rev. Proc. 2019-38): a rental real estate enterprise is treated as a trade or business for QBI purposes if specified requirements are met — separate books and records for each enterprise, at least 250 hours of rental services per year (by the taxpayer, employees, agents, or independent contractors), and contemporaneous records of services performed. Triple-net leases and residences used by the taxpayer are excluded from the safe harbor.",
		"§199A pass-through computation flow: for partnerships, the QBI, W-2 wages, and UBIA are determined at the partnership level and allocated to partners based on each partner's distributive share. For S corporations, these items are determined at the S corp level and allocated by stock ownership. Each partner or shareholder then applies the individual-level computations (taxable income thresholds, W-2 wage / UBIA limitation for that trade or business, SSTB phase-out, overall taxable income cap).",
		"Qualified REIT dividends and qualified publicly traded partnership (PTP) income: treated as separate-category QBI for §199A purposes with no W-2 wage / UBIA limitation. The deduction is 20% of qualified REIT dividends plus 20% of qualified PTP income, added to the main QBI deduction.",
		"§461(l) excess business loss limitation: for individual taxpayers (post-TCJA), the aggregate trade-or-business losses are deductible only up to the year's trade-or-business income plus a statutory threshold (inflation-indexed, approximately $305,000 single / $610,000 MFJ for 2025). Any excess business loss is carried forward as a net operating loss to the following year rather than absorbed currently. This limitation applies after all other loss limitations (basis, at-risk, passive activity) and is a separate individual-level cap.",
		"The interaction of the overall taxable income limit with other deductions: §199A QBI deduction is computed after above-the-line adjustments, standard or itemized deductions, but before any net-investment-income tax. The 20% of (taxable income − net capital gain) overall cap may reduce the nominal QBI deduction to a smaller amount when a taxpayer has substantial capital gains or qualified dividends.",
	],

	outOfScope: [
		"Schedule C business expense categories at depth — §162 ordinary and necessary business expense analysis, meals and entertainment under §274, vehicle expenses under standard mileage vs actual expense methods, depreciation of business assets under §168 MACRS, §179 expensing and bonus depreciation mechanics, business use of home computation. These are individual business income / Schedule C territory if specced, or business taxation",
		"§469 passive activity loss limitation mechanics at depth — material participation seven-test framework, real estate professional exception, passive activity grouping elections under Reg. §1.469-4, former passive activity rules. Passive Activity and At-Risk Rules (TCP) territory. Individual-level §461(l) excess business loss as a separate outer cap is in scope here",
		"§465 at-risk rules mechanics at depth — qualified nonrecourse financing for real estate, aggregation rules under §465(c), recapture of previously allowed losses. Passive Activity and At-Risk Rules territory",
		"Alternative minimum tax (AMT) depth — AMTI computation, AMT preference items, AMT exemption, AMT credit. Separate Individual Taxation AMT spec",
		"Individual tax credits — Child Tax Credit, Earned Income Credit, American Opportunity Credit, Lifetime Learning Credit, Retirement Savings Contribution Credit, Premium Tax Credit, Foreign Tax Credit. Separate Individual Taxation Credits spec",
		"Estate and gift tax deductions — unified credit, marital deduction, charitable deduction at the estate/gift level. Separate estate/gift topic",
		"Trust and estate deductions — trust administration expenses, distributable net income (DNI) computation, income distribution deduction. Trusts and Estates territory",
		"§199A REIT dividend computation at the REIT-level qualification depth — what constitutes a qualifying REIT dividend, REIT distribution tiers, the 'qualified' vs 'ordinary' REIT distribution split. The individual-level 20% deduction on qualified REIT dividends is in scope; the REIT-level determination of qualification is not",
		"§199A anti-abuse rules — the crack-and-pack prohibition, the specified service trade or business re-characterization tests under Reg. §1.199A-5(c)(2), the 80% attribution rule for SSTB-related non-SSTBs, the de minimis SSTB exception",
		"Section 199A(g) cooperative deduction — the domestic production activities deduction for specified agricultural and horticultural cooperatives. A narrow specialized subset of §199A outside the individual taxation scope for typical exam questions",
		"Business taxation deductions at the entity level — C corporation deductible expenses, dividends received deduction, organizational expenditures amortization, start-up expenses, net operating loss mechanics at entity level. C Corporations (REG) or entity-tax topics",
		"Partnership-level or S-corporation-level deduction mechanics — guaranteed payments to partners (deduction treatment at partnership level), §707(c) guaranteed payments, separately stated items, §179 election at entity vs partner level. Partnerships / S Corporations / Advanced Basis Calculations territory",
		"Foreign earned income exclusion under §911 and the foreign housing exclusion — these are above-the-line exclusions from gross income (not deductions), and the mechanics belong to International Tax (TCP)",
		"Hobby loss analysis at depth — the nine-factor profit-motive analysis under §183, presumptive profit-motive rules, hobby income reporting. Loss limitation territory if specced; conceptual knowledge that hobby losses are non-deductible post-TCJA is in scope",
		"§280A home office deduction mechanics at depth — exclusive use test, regular use test, principal place of business test, simplified method vs actual expense method computation. Business expense territory",
		"§280F luxury auto depreciation caps — the dollar limits on depreciation for listed property including passenger vehicles. Depreciation mechanics territory",
		"Educator expense enhanced deduction for COVID-era PPE — expired provision, not current law",
	],

	keyStandards: [
		"IRC §62 — Adjusted gross income defined (above-the-line adjustments)",
		"IRC §63 — Taxable income defined (standard vs itemized)",
		"IRC §164 — Taxes paid (SALT cap under §164(b)(6))",
		"IRC §163(h) — Qualified residence interest (home mortgage)",
		"IRC §170 — Charitable contributions and AGI ceilings",
		"IRC §213 — Medical and dental expenses (7.5% AGI floor)",
		"IRC §165 — Losses (casualty loss post-TCJA federally declared disaster rule)",
		"IRC §199A — Qualified business income deduction",
		"Reg. §1.199A-1 through -6 — QBI regulations (computation, aggregation, SSTB, W-2 wages, UBIA)",
		"Rev. Proc. 2019-38 — Rental real estate safe harbor for QBI",
		"IRC §461(l) — Excess business loss limitation",
		"IRC §219 — Deductible IRA contribution",
		"IRC §221 — Student loan interest deduction",
		"IRC §223 — Health savings accounts",
		"IRC §164(f) — Deduction for one-half of self-employment tax",
		"IRC §162(l) — Self-employed health insurance deduction",
	],

	commonMisconceptions: [
		"Thinking the $10,000 SALT cap applies separately to state income tax and property tax. The $10,000 cap is an aggregate limit on state and local income tax (or sales tax election), real property tax, and personal property tax combined. A taxpayer paying $12,000 state income tax and $8,000 property tax ($20,000 total) deducts only $10,000, whereas a taxpayer paying $4,000 + $5,000 ($9,000 total) deducts the full $9,000.",
		"Believing the medical expense deduction has no floor. Medical expenses are deductible only to the extent they exceed 7.5% of AGI. A taxpayer with $80,000 AGI and $8,200 medical expenses has a floor of $6,000 and deducts $2,200 (the excess), not the full $8,200.",
		"Conflating appreciated stock donated to a public charity with cash. Long-term appreciated stock (held more than one year) donated to a public charity is deductible at FMV without recognition of the built-in gain — and limited to 30% of AGI, not 60%. Cash to a public charity is limited to 60% of AGI. Identical dollar amounts produce different after-tax outcomes because the stock donation preserves basis while the cash donation does not.",
		"Thinking casualty losses are deductible for any casualty. Post-TCJA, personal casualty losses are deductible only if the loss is attributable to a federally declared disaster. A burglary or a house fire not within a declared disaster area produces no current deduction for an individual.",
		"Conflating the §199A 20% deduction with a reduction in gross income. QBI is an individual-level deduction from taxable income (computed after AGI and after standard or itemized deductions); it does not reduce AGI, does not reduce gross income, does not affect the self-employment tax base, and does not affect the passive activity loss calculation.",
		"Believing the §199A W-2 wage / UBIA limitation always applies. It applies only above the upper taxable income threshold (roughly $247,300 single / $494,600 MFJ). Below the lower threshold, the full 20% of QBI is available without the limitation. Between thresholds, the limitation phases in proportionally.",
		"Thinking engineering and architecture firms are specified service trades or businesses. They are specifically excluded from the SSTB definition and remain eligible for the QBI deduction above the upper threshold, unlike health, law, accounting, actuarial, consulting, performing arts, athletics, financial services, and brokerage.",
		"Confusing the §199A aggregation rules with the §469 passive activity grouping rules. These are separate elections with different tests and different purposes. The §199A aggregation is for the W-2 wage / UBIA limitation; the §469 grouping is for the passive activity loss limitation. A taxpayer may group differently under each.",
		"Treating qualified REIT dividends like ordinary QBI. REIT dividends are a separate-category QBI with NO W-2 wage / UBIA limitation and NO SSTB exclusion — any taxpayer at any income level may deduct 20% of qualified REIT dividends. The main QBI category, by contrast, has the full limitation stack.",
		"Believing the student loan interest deduction is unlimited. The deduction is capped at $2,500 annually and phases out at moderate income levels ($85,000 single / $170,000 MFJ for 2025, roughly). Above the upper phase-out, the deduction is zero.",
		"Thinking excess business losses are permanently disallowed. §461(l) excess business losses are carried forward as a net operating loss to the following year — they are deferred, not lost. Under TCJA rules, NOLs are limited to 80% of taxable income in the carryforward year.",
		"Confusing deductible IRA contributions with Roth IRA contributions. Traditional IRA contributions are deductible (subject to active participant phase-outs if the taxpayer or spouse has an employer retirement plan); Roth contributions are not deductible but grow tax-free. The annual contribution limit combines both — a taxpayer contributing $7,000 to a Roth IRA may not also contribute $7,000 deductible to a traditional IRA.",
		"Thinking the standard deduction and itemized deductions can be combined. A taxpayer elects one or the other for the year — whichever produces the higher deduction. Most taxpayers post-TCJA take the standard deduction because the higher standard deduction, the $10,000 SALT cap, and the suspension of miscellaneous 2% deductions have reduced the itemization threshold for many filers.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Schedule C / business expense depth ---
		{
			term: "Section 162",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)162(?!\\(l\\))",
			category: "business expense depth",
			why: "§162 ordinary and necessary business expense framework at depth — Schedule C / business taxation territory. §162(l) self-employed health insurance is in scope.",
		},
		{
			term: "Section 274",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)274\\b",
			category: "business expense depth",
			why: "§274 meals and entertainment limitation — business expense territory, not individual deductions.",
		},
		{
			term: "Section 179",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)179\\b",
			category: "business expense depth",
			why: "§179 expensing election — depreciation / business expense mechanics, out of scope.",
		},
		{
			term: "bonus depreciation",
			pattern: "bonus\\s+depreciation",
			category: "business expense depth",
			why: "§168(k) bonus depreciation — depreciation mechanics territory.",
		},
		{
			term: "MACRS",
			pattern: "\\bMACRS\\b",
			category: "business expense depth",
			why: "MACRS depreciation system — depreciation mechanics, out of scope for individual itemized/adjustment deductions.",
		},
		{
			term: "Section 280A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)280A\\b",
			category: "business expense depth",
			why: "§280A home office deduction mechanics — business expense territory at depth.",
		},
		{
			term: "Section 280F",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)280F\\b",
			category: "business expense depth",
			why: "§280F luxury auto depreciation caps — listed property depreciation, out of scope.",
		},

		// --- Passive activity / at-risk depth ---
		{
			term: "material participation test",
			pattern: "material\\s+participation\\s+test|seven[-\\s]test",
			category: "passive activity depth",
			why: "§469 material participation seven-test framework — Passive Activity and At-Risk Rules territory.",
		},
		{
			term: "real estate professional",
			pattern: "real\\s+estate\\s+professional",
			category: "passive activity depth",
			why: "§469(c)(7) real estate professional exception — Passive Activity and At-Risk Rules territory.",
		},
		{
			term: "Section 469 grouping",
			pattern: "(?:Section\\s*|§\\s*)469\\s+grouping|Reg\\.?\\s*§?\\s*1\\.469-4",
			category: "passive activity depth",
			why: "§469 passive activity grouping elections — Passive Activity territory.",
		},
		{
			term: "qualified nonrecourse financing",
			pattern: "qualified\\s+nonrecourse\\s+financing",
			category: "at-risk depth",
			why: "§465 at-risk qualified nonrecourse financing — Passive Activity and At-Risk Rules territory.",
		},

		// --- AMT ---
		{
			term: "AMT preference",
			pattern: "AMT\\s+preference|alternative\\s+minimum\\s+tax\\s+preference",
			category: "AMT depth",
			why: "AMT preference items — separate Individual Taxation AMT topic.",
		},
		{
			term: "AMTI",
			pattern: "\\bAMTI\\b|alternative\\s+minimum\\s+taxable\\s+income",
			category: "AMT depth",
			why: "Alternative minimum taxable income computation — separate AMT topic.",
		},

		// --- Credits (separate spec) ---
		{
			term: "Child Tax Credit",
			pattern: "Child\\s+Tax\\s+Credit",
			category: "credits",
			why: "Child Tax Credit — separate Individual Taxation Credits topic.",
		},
		{
			term: "Earned Income Credit",
			pattern: "Earned\\s+Income\\s+Credit|Earned\\s+Income\\s+Tax\\s+Credit|\\bEITC\\b",
			category: "credits",
			why: "EITC — separate Individual Taxation Credits topic.",
		},
		{
			term: "American Opportunity Credit",
			pattern: "American\\s+Opportunity\\s+Credit",
			category: "credits",
			why: "American Opportunity Credit — separate Individual Taxation Credits topic.",
		},
		{
			term: "Premium Tax Credit",
			pattern: "Premium\\s+Tax\\s+Credit",
			category: "credits",
			why: "Premium Tax Credit (ACA) — separate Individual Taxation Credits topic.",
		},

		// --- Entity-level tax mechanics ---
		{
			term: "Section 1374",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1374\\b",
			category: "S corp entity tax",
			why: "§1374 built-in gains tax — S Corporations (REG) territory, not individual deductions.",
		},
		{
			term: "Section 1375",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1375\\b",
			category: "S corp entity tax",
			why: "§1375 passive investment income tax — S Corporations territory.",
		},
		{
			term: "dividends received deduction",
			pattern: "dividends\\s+received\\s+deduction|\\bDRD\\b",
			category: "corporate deduction",
			why: "Corporate dividends received deduction — C Corporations (REG) territory, not individual.",
		},

		// --- Foreign / international ---
		{
			term: "Section 911",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)911\\b",
			category: "international",
			why: "§911 foreign earned income exclusion — International Tax (TCP) territory. Also an exclusion, not a deduction.",
		},
		{
			term: "foreign housing exclusion",
			pattern: "foreign\\s+housing\\s+exclusion|foreign\\s+housing\\s+cost\\s+amount",
			category: "international",
			why: "§911 foreign housing exclusion — International Tax territory.",
		},

		// --- Estate / gift / trust ---
		{
			term: "distributable net income",
			pattern: "distributable\\s+net\\s+income|\\bDNI\\b",
			category: "fiduciary",
			why: "DNI computation for trust income distribution deduction — Trusts and Estates territory.",
		},
		{
			term: "unified credit",
			pattern: "unified\\s+credit",
			category: "estate/gift",
			why: "Estate and gift tax unified credit — Estate / Gift territory.",
		},
	],

	notes:
		"Individual Taxation: Deductions is the REG topic covering the individual tax return from AGI to taxable income. Census v2 flagged 8/64 questions at 13% — all on `qualified business income` and `Section 199A`. Clean rightful-owner: AICPA REG/IV/C task 3 explicitly mandates 'Calculate the qualified business income (QBI) deduction for federal income tax purposes,' and the Entity Choice and Planning spec (just authored) explicitly carves off §199A mechanics depth to this topic while retaining QBI at the entity-choice comparison level. The scaffolder mis-anchored to REG/IV/B (pass-through reporting); corrected to REG/IV/C (adjustments and deductions). Scope: above-the-line adjustments (educator, HSA, SE health, ½ SE tax, deductible IRA, student loan interest, alimony pre-2019, plus H.R. 1 tips/auto loan interest provisions); standard deduction (current amounts, age/blindness addition, dependent rules); itemized deductions (medical 7.5% AGI floor, SALT $10K cap, home mortgage interest $750K acquisition indebtedness, charitable contributions with AGI ceilings by recipient and property type, casualty losses limited to federally declared disasters, gambling losses to extent of winnings); §199A QBI deduction at FULL computation depth (base 20%, taxable income thresholds, W-2 wage / UBIA formula, SSTB phase-out, aggregation rules under Reg. §1.199A-4, rental real estate safe harbor under Rev. Proc. 2019-38, qualified REIT dividends separate category, overall taxable income cap); and §461(l) excess business loss limitation. Out of scope: Schedule C business expense depth (§162/§179/§274/§280A/§280F/MACRS/bonus depreciation), passive activity and at-risk mechanics, AMT, credits, estate/gift/trust deductions, entity-level corporate or pass-through deductions, foreign earned income exclusion / foreign housing, §199A anti-abuse rules and cooperative deduction, and hobby loss analysis at depth.",
};
