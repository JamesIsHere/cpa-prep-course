import type { LessonSpec } from "./types";

// REG/IV/F — Computation of tax and credits. Covers individual tax
// credits (CTC, EIC, AOC, LLC, FTC, Dependent Care, Retirement
// Savings), AMT, and the computation of tax liability.
//
// Note 2026-04-19: Re-anchored from IV/D (Loss limitations) to IV/F
// after a REG homeless audit found 100% (54/54) of "Individual
// Taxation: Credits" questions homeless at IV/D. IV/D tasks cover
// capital/ordinary loss netting, wash-sale disallowance, and hobby-
// loss rules — not credits. IV/F has explicit tasks on refundable-vs-
// nonrefundable credits, safe-harbor estimated tax, and tax liability
// computation including AMT. "Alternative Minimum Tax" alias also
// moved here from IV/E (Filing status) — AMT computation is part of
// the tax-liability calculation, not filing status determination.

export const spec: LessonSpec = {
	topic: "Individual Taxation: Credits",
	topicAliases: ["Alternative Minimum Tax"],
	section: "reg",
	primaryRef: "REG/IV/F",
	secondaryRefs: [],

	inScope: [
		"The individual tax return structure from tax before credits to tax after credits: tentative tax from tax tables or schedules, reduced by refundable and nonrefundable credits, equals tax due or refund. Credits are distinct from deductions — credits reduce tax dollar-for-dollar, whereas deductions reduce taxable income.",
		"Refundable vs nonrefundable credits: refundable credits (Earned Income Credit, additional Child Tax Credit, American Opportunity Credit 40% refundable portion, Premium Tax Credit, federal income tax withheld) can produce a refund beyond zero tax liability. Nonrefundable credits (Child Tax Credit nonrefundable portion, Lifetime Learning Credit, Retirement Savings Contribution Credit, Foreign Tax Credit for individuals, Dependent Care Credit) can reduce tax to zero but not below.",
		"The Child Tax Credit (CTC): generally $2,000 per qualifying child under age 17, with $1,600-$1,700 refundable (inflation-adjusted). The qualifying child must be a US citizen or resident, have a SSN, and meet the relationship/age/residency/support tests. The credit phases out at higher AGI levels (single and MFJ thresholds). A separate $500 Credit for Other Dependents applies to qualifying relatives and children age 17 or older who do not qualify for CTC.",
		"Earned Income Credit (EIC): a refundable credit for low-to-moderate income workers. Amount depends on earned income, AGI, filing status, and number of qualifying children (zero to three or more). The credit phases in from zero earned income, reaches a maximum, and phases out at higher income levels. Investment income in excess of a statutory threshold disqualifies the taxpayer.",
		"American Opportunity Credit (AOC): up to $2,500 per eligible student in the first four years of postsecondary education, covering 100% of the first $2,000 of qualified education expenses plus 25% of the next $2,000. 40% of the credit is refundable. Requirements include full-time or half-time enrollment, a degree or credential program, no prior felony drug conviction, and AGI phase-out thresholds ($80K-$90K single / $160K-$180K MFJ).",
		"Lifetime Learning Credit (LLC): 20% of up to $10,000 of qualified education expenses ($2,000 maximum per return, not per student). Available for any post-secondary education (including graduate school, professional development, and job skills courses) and has no requirement of degree programs or minimum enrollment. Nonrefundable. AGI phase-out similar to AOC.",
		"The coordination of education credits: AOC and LLC cannot be claimed for the same student in the same year. The taxpayer chooses the more beneficial credit. AOC is generally better for undergraduate students in their first four years; LLC is for graduate students, part-time students, or students beyond the fourth year.",
		"Foreign Tax Credit (FTC) for individuals: a nonrefundable credit for foreign income taxes paid on foreign-source income, intended to prevent double taxation of the same income by the US and a foreign country. The credit is generally limited to the US tax attributable to the foreign-source income (the FTC limitation concept at high level — the formula at depth belongs to International Tax).",
		"The election between FTC and foreign tax deduction: individuals can either claim the FTC (dollar-for-dollar reduction) or deduct foreign taxes as an itemized deduction. The FTC is almost always better because credits are worth more than deductions at typical marginal rates. The deduction election can be made for a specific year and reversed in later years.",
		"Retirement Savings Contribution Credit (Saver's Credit): a nonrefundable credit for low-to-moderate income taxpayers contributing to qualified retirement plans (IRAs, 401(k)s, etc.). The credit rate (10%, 20%, or 50%) depends on filing status and AGI. Maximum credit is $1,000 single / $2,000 MFJ on up to $2,000 of contributions per person.",
		"Premium Tax Credit (PTC): a refundable credit for taxpayers who purchase health insurance through the Health Insurance Marketplace and have household income between 100% and 400% of the federal poverty level. The credit is typically paid in advance directly to the insurance company as Advance Premium Tax Credit (APTC), reducing monthly premiums. At tax time, the taxpayer reconciles the APTC with the actual credit based on final income.",
		"Child and Dependent Care Credit: a nonrefundable credit for employment-related care of a qualifying child under age 13 or a disabled dependent/spouse. The credit percentage (20% to 35%) decreases with AGI. Maximum eligible expenses are $3,000 for one qualifying individual or $6,000 for two or more. The care must enable the taxpayer (and spouse if married) to work or actively look for work.",
		"Adoption Credit: a nonrefundable credit (up to a statutory cap, inflation-adjusted) for qualifying adoption expenses. The credit phases out at higher AGI levels. Carryforward of unused credit is permitted for up to five years.",
		"Credit for the Elderly or Disabled: a modest nonrefundable credit for taxpayers 65 and older or those under 65 who are retired on permanent and total disability. Strict income limits and base amounts apply; few taxpayers qualify.",
		"Energy-related credits: Residential Clean Energy Credit (formerly Residential Energy Efficient Property Credit) for solar, wind, geothermal, and similar systems. Energy Efficient Home Improvement Credit for insulation, windows, doors, and similar improvements. Both are nonrefundable but have recent expansions under the Inflation Reduction Act. The credit amounts and eligible improvements change over time as Congress updates the provisions.",
		"The order of application of credits: nonrefundable credits are applied first, generally in a specific statutory order (personal nonrefundable credits before business credits). Refundable credits are applied after nonrefundable credits have reduced tax to zero. Excess credit amounts (from nonrefundable credits) are generally lost, though a few credits allow carryforward.",
		"H.R. 1 / One Big Beautiful Bill Act provisions affecting individual credits (2026 tax year): the legislation may have modified specific credit amounts, phase-outs, or refundability thresholds. Candidates should be aware of current-law amounts as of the testing window.",
	],

	outOfScope: [
		"Alternative Minimum Tax (AMT) computation, AMT adjustments, AMT preference items, AMT exemption amounts, AMT credit carryforward — AMT is tested but belongs to a separate Individual Taxation AMT topic (or Individual Taxation: Credits/AMT if combined)",
		"Detailed foreign tax credit limitation computation at the §904 formula depth — FTC basket system (general, passive, GILTI, branch), look-through rules, allocation and apportionment of deductions, carryback/carryforward of excess credits. International Tax (TCP) territory. The CONCEPT that FTC exists and the election between credit vs deduction is in scope here; the §904 computation mechanics are not",
		"GILTI, FDII, BEAT, Subpart F — International Tax territory",
		"Business credits at depth — General Business Credit components (research credit, work opportunity credit, low-income housing credit, disabled access credit, renewable energy credits for businesses). Business taxation topics at depth; this spec covers individual-level credits",
		"Estate and gift tax credits — unified credit, state death tax credit. Estate and Gift Tax topic",
		"QBI deduction — not a credit but often confused with one. Individual Taxation: Deductions topic",
		"Deductions from AGI (above-the-line adjustments) and itemized deductions — Individual Taxation: Deductions topic",
		"Self-employment tax computation — separate topic territory",
		"Kiddie tax and unearned income of minors — Individual Taxation: Income or separate topic",
		"Net investment income tax (NIIT) — separate topic territory",
		"Additional Medicare tax on high-income wages and self-employment income — separate topic territory",
		"State tax credits — Multi-Jurisdictional Tax Planning or state tax topics",
		"Trust and estate credits — Trusts and Estates topic",
	],

	keyStandards: [
		"IRC §21 — Expenses for household and dependent care services (Child and Dependent Care Credit)",
		"IRC §22 — Credit for the elderly and permanently and totally disabled",
		"IRC §23 — Adoption expenses",
		"IRC §24 — Child tax credit",
		"IRC §25A — American Opportunity Credit and Lifetime Learning Credit",
		"IRC §25B — Retirement Savings Contribution Credit (Saver's Credit)",
		"IRC §32 — Earned Income Credit",
		"IRC §36B — Premium Tax Credit",
		"IRC §27 — Foreign Tax Credit (referenced for the individual-level concept; §901 and §904 are International Tax territory at computation depth)",
		"IRC §25C — Energy Efficient Home Improvement Credit",
		"IRC §25D — Residential Clean Energy Credit",
	],

	commonMisconceptions: [
		"Confusing credits with deductions. Credits reduce tax dollar-for-dollar; deductions reduce taxable income. A $1,000 credit is worth $1,000; a $1,000 deduction is worth $1,000 × marginal rate (e.g., $240 at 24% rate).",
		"Thinking all education credits can be claimed for the same student. AOC and LLC cannot be claimed for the same student in the same year — the taxpayer chooses the more beneficial one. AOC is generally better for first-four-year undergraduates; LLC for graduate or part-time.",
		"Believing the FTC allows double benefit. The taxpayer elects EITHER the FTC (credit) OR the foreign tax deduction (itemized deduction) — not both for the same foreign taxes. The FTC is almost always better because credits are worth more than deductions at typical rates.",
		"Thinking the Premium Tax Credit is paid only at tax time. PTC is typically paid in ADVANCE (APTC) directly to the insurance company, reducing monthly premiums. At tax time, the taxpayer reconciles APTC with the actual eligible credit — excess APTC is repaid, deficit is refunded.",
		"Believing refundable and nonrefundable credits are interchangeable in order. Nonrefundable credits are applied FIRST to reduce tax to zero. Refundable credits apply AFTER nonrefundable credits — they can create a refund even when nonrefundable credits are fully absorbed.",
		"Thinking the Child Tax Credit is fully refundable. Only a portion of the CTC is refundable (roughly $1,600-$1,700 per child as inflation-adjusted). The remainder is nonrefundable. A separate $500 Credit for Other Dependents applies to non-CTC-qualifying dependents and is fully nonrefundable.",
		"Believing all education expenses qualify for AOC or LLC. Qualified expenses are tuition, required fees, and required course materials — not room and board, transportation, insurance, or personal expenses. The expenses must be paid to an eligible educational institution.",
		"Thinking the FTC is available to all foreign income. The FTC applies to FOREIGN INCOME TAXES paid on FOREIGN-SOURCE income. Taxes that are not income taxes (VAT, sales tax, customs duty, property tax) are not eligible. US-source income taxed by a foreign country (e.g., a foreign withholding tax on US-source income) is generally not eligible for FTC because the US does not tax that income.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- FTC mechanics depth (International Tax) ---
		{ term: "Section 904", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)904\\b", category: "FTC depth", why: "§904 FTC limitation computation — International Tax (TCP) territory. Concept of limitation is in scope; formula mechanics are not." },
		{ term: "FTC limitation formula", pattern: "FTC\\s+limitation\\s+formula|foreign\\s+tax\\s+credit\\s+limitation\\s+formula", category: "FTC depth", why: "FTC limitation computation — International Tax territory." },
		{ term: "FTC basket", pattern: "(?:FTC|foreign\\s+tax\\s+credit)\\s+basket|separate\\s+basket", category: "FTC depth", why: "FTC basket system — International Tax territory." },
		{ term: "Section 901", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)901\\b", category: "FTC depth", why: "§901 credit for foreign taxes paid — International Tax territory at depth." },
		{ term: "GILTI", pattern: "\\bGILTI\\b", category: "international tax", why: "GILTI — International Tax territory." },
		{ term: "Subpart F", pattern: "Subpart\\s+F\\b", category: "international tax", why: "Subpart F — International Tax territory." },
		{ term: "BEAT", pattern: "\\bBEAT\\b|base\\s+erosion\\s+and\\s+anti[-\\s]abuse\\s+tax", category: "international tax", why: "BEAT — International Tax territory." },

		// --- AMT (separate topic) ---
		{ term: "AMT adjustment", pattern: "AMT\\s+adjustment|alternative\\s+minimum\\s+tax\\s+adjustment", category: "AMT", why: "AMT adjustments — separate Individual AMT topic." },
		{ term: "AMT preference", pattern: "AMT\\s+preference|alternative\\s+minimum\\s+tax\\s+preference", category: "AMT", why: "AMT preference items — separate AMT topic." },
		{ term: "AMTI", pattern: "\\bAMTI\\b|alternative\\s+minimum\\s+taxable\\s+income", category: "AMT", why: "AMTI computation — separate AMT topic." },
		{ term: "incentive stock option bargain", pattern: "incentive\\s+stock\\s+options?.{0,30}bargain\\s+element|bargain\\s+element.{0,30}incentive\\s+stock\\s+option", category: "AMT", why: "ISO bargain element is an AMT preference — AMT topic territory." },

		// --- QBI (separate topic) ---
		{ term: "qualified business income", pattern: "qualified\\s+business\\s+income|\\bQBI\\s+deduction", category: "QBI", why: "QBI is a deduction not a credit — Individual Deductions topic." },
		{ term: "Section 199A", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)199A\\b", category: "QBI", why: "§199A QBI — Individual Deductions topic." },

		// --- Business credits (separate topic) ---
		{ term: "General Business Credit", pattern: "General\\s+Business\\s+Credit", category: "business credits", why: "General Business Credit — business taxation topics." },
		{ term: "Section 41", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)41\\b", category: "business credits", why: "§41 research credit — business credits territory." },
		{ term: "low-income housing credit", pattern: "low[-\\s]income\\s+housing\\s+credit", category: "business credits", why: "LIHC — business credits territory." },

		// --- Estate/gift credits (separate topic) ---
		{ term: "unified credit", pattern: "unified\\s+credit", category: "estate/gift", why: "Estate and gift unified credit — Estate and Gift Tax topic." },
	],

	notes:
		"Individual Taxation: Credits (REG/IV/D) owns the individual-level credit landscape — Child Tax Credit, Earned Income Credit, AOC/LLC education credits, Foreign Tax Credit at concept level, Saver's Credit, Premium Tax Credit, Child and Dependent Care Credit, Adoption Credit, Residential Clean Energy Credit, and Energy Efficient Home Improvement Credit. Census v3 flagged 5/67 at 7.5% — all on `Section 904`, which Individual Deductions and Multi-Jurisdictional Tax Planning both push out as International Tax territory. Clean rightful-owner for FTC at concept level; §904 computation mechanics remain International Tax territory. Out of scope: AMT (separate topic), detailed §904 formula / FTC basket system (International Tax), QBI (Individual Deductions), business credits at depth, estate/gift credits, NIIT, Additional Medicare Tax, state credits, trust/estate credits.",
};
