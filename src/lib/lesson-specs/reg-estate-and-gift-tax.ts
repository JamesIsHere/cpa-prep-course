import type { LessonSpec } from "./types";

// Forty-second authored spec — twenty-fifth of Stage 3. Census v3
// rank #15: 78 questions, 5 flagged (6.4%) on `Section 7872` (5).
// Clean rightful-owner for below-market loans in the gift tax
// context — Capital Structure Tax Planning explicitly banned §7872
// mechanics depth and pushed it toward "Related Party Transactions
// or Individual Tax Interest Income territory." This spec owns
// below-market loans specifically as they relate to gift tax.

export const spec: LessonSpec = {
	topic: "Estate and Gift Tax",
	section: "reg",
	primaryRef: "REG/V/E",
	secondaryRefs: [],

	inScope: [
		"The federal estate and gift tax framework as an integrated transfer tax system under Chapter 11 (estate tax) and Chapter 12 (gift tax) of the IRC. Both chapters share the unified credit (applicable credit amount) and the progressive transfer tax rate schedule up to 40%.",
		"The unified credit / applicable exclusion amount: the lifetime exclusion from estate and gift tax, which for 2025 is approximately $13.61 million per individual (indexed for inflation). The unified credit eliminates transfer tax on cumulative lifetime gifts and estate transfers up to this amount. Amounts above the exclusion are taxed at up to 40%.",
		"The gift tax annual exclusion: each donor may give up to the annual exclusion amount ($19,000 per donee for 2025/2026, adjusted for inflation) to any number of donees each year without using any of the lifetime exclusion. Gifts within the annual exclusion do NOT require a gift tax return.",
		"Gift splitting between spouses: married taxpayers can elect to treat gifts by one spouse as made half by each spouse, effectively doubling the annual exclusion per donee. The election requires the consent of both spouses and is made on Form 709 gift tax return.",
		"Unlimited marital deduction: transfers between spouses who are US citizens are fully deductible for both gift and estate tax purposes, regardless of amount. Non-US-citizen spouses are subject to a separate annual limit for gift tax and specific rules for estate tax.",
		"Charitable deduction: transfers to qualified charitable organizations are fully deductible for gift and estate tax purposes, with no dollar limit.",
		"Education and medical expense exclusion: unlimited amounts paid directly to a qualified educational institution for tuition OR directly to a medical care provider for medical expenses are excluded from gift tax (no exclusion needed, no gift tax consequences at all), in addition to the annual exclusion.",
		"Taxable gift computation: (total gifts) − (annual exclusions) − (marital deduction) − (charitable deduction) = taxable gift for the year. Gift tax is computed on cumulative lifetime taxable gifts, with credit for prior-year gift tax paid.",
		"Gift tax return filing (Form 709): required when a donor's gifts to any one donee exceed the annual exclusion in a year, when the donor elects gift splitting, or when making certain charitable or education/medical transfers. Due April 15 of the following year (extendable).",
		"Basis of gifted property under §1015: the donee generally takes the donor's carryover basis, increased by a portion of the gift tax paid attributable to the appreciation in the property. For LOSS purposes, the donee's basis is the lesser of the donor's basis OR the FMV at the date of gift (to prevent converting built-in losses into deductible losses at the donee level). For GAIN purposes, the donor's basis applies.",
		"The gift tax paid adjustment under §1015(d): when gift tax is paid on a gift of appreciated property, the donee's basis is increased by the portion of gift tax attributable to the net appreciation (not the entire gift tax). Formula: basis adjustment = gift tax paid × (net appreciation / amount of gift). This preserves the principle that gift tax paid on pre-gift appreciation is a cost of the appreciation.",
		"Estate tax gross estate — items included: property owned at death, certain transfers with retained interests, revocable transfers, jointly owned property, life insurance proceeds if the decedent held incidents of ownership, annuities, general powers of appointment, and property subject to a qualified disclaimer.",
		"Life insurance in the gross estate: proceeds are included if the decedent possessed any incidents of ownership (right to change beneficiary, borrow against cash value, surrender the policy, assign the policy). The three-year rule under §2035 includes proceeds even if transferred in the three years before death.",
		"The three-year rule (§2035): transfers of certain retained-interest property or life insurance made within three years of death are brought back into the gross estate. This prevents deathbed gifts from avoiding estate tax.",
		"Jointly owned property: spouses who own property as tenants by the entirety or joint tenants with right of survivorship — only one-half is included in the decedent's gross estate. Non-spouse joint tenants — the full value is included to the extent of the decedent's contribution to the purchase, subject to the 'percentage contribution' tracing rules.",
		"Deductions from the gross estate: funeral expenses, administration expenses, debts of the decedent, taxes, casualty losses during administration, unlimited marital deduction for property passing to a surviving spouse, and charitable deduction. These reduce the taxable estate to which the transfer tax rate schedule applies.",
		"The generation-skipping transfer (GST) tax: an additional transfer tax imposed on transfers that skip a generation (e.g., grandparent to grandchild). GST tax applies to direct skips (outright gifts to skip persons) and taxable distributions or terminations from trusts. Each donor has a GST exemption equivalent to the unified credit amount; transfers above the exemption are subject to GST tax at the maximum transfer tax rate (40% for 2025).",
		"Irrevocable life insurance trusts (ILITs): a common estate planning technique to remove life insurance proceeds from the gross estate. The insured transfers the policy to an ILIT, which becomes the owner and beneficiary. The three-year rule under §2035 includes proceeds if the insured dies within three years of the transfer.",
		"Grantor Retained Annuity Trusts (GRATs) and Qualified Personal Residence Trusts (QPRTs): planning techniques to transfer property with retained interests. The grantor retains a right (to annuity payments for GRAT or to use the residence for QPRT) for a term of years, with the remainder passing to beneficiaries. The gift is valued using statutory interest rates (§7520), and successful GRATs/QPRTs freeze the transferred value plus appreciation above the §7520 rate.",
		"Below-market loans and gift tax: when a loan to a family member or related party is at below-market interest rates, §7872 imputes interest income to the lender and a deemed gift from lender to borrower of the foregone interest. For gift loans between individuals (as opposed to compensation or corporation-shareholder loans), the imputed interest is treated as a gift each year for gift tax purposes.",
		"The $10,000 and $100,000 de minimis exceptions under §7872 for gift loans: loans under $10,000 are not subject to §7872 if the proceeds are not used to buy or carry income-producing assets. Loans under $100,000 are subject to a limited version based on the borrower's investment income. These exceptions are commonly tested in fact patterns involving intrafamily loans.",
	],

	outOfScope: [
		"Individual income tax — §61 gross income, §62 AGI adjustments, §63 taxable income, §1 rate schedules, §151 personal exemptions (suspended post-TCJA). Individual Taxation topics",
		"Income tax of estates and trusts — §641 fiduciary income tax, §651/§661 distribution deduction, §663 65-day rule, DNI computation. Trusts and Estates (fiduciary income tax) topic — separate from transfer tax",
		"Trust accounting income vs taxable income distinction — fiduciary accounting territory",
		"Grantor trust rules under §671-§679 at depth — the conditions that make a trust a grantor trust, the tax consequences of grantor trust status. Trusts and Estates topic at depth",
		"Qualified Small Business Stock exclusion under §1202 — unrelated to transfer tax",
		"§1014 basis step-up at death — this is an INCOME TAX concept (applicable to the decedent's income tax and to the heirs' basis for future sales), technically separate from the ESTATE TAX valuation. The concept intersects at the date-of-death FMV used for both purposes but belongs conceptually to Individual Taxation: Basis or Gain/Loss",
		"Valuation discounts at deep analytical level — lack of marketability discount quantification, minority interest discount quantification, discount methodology selection. Valuation concepts are in scope at concept level (discounts apply to family limited partnership interests, closely held stock); the quantification mechanics are not",
		"Family limited partnership structures at depth — the FLP planning technique, §2036 retained interest analysis for FLPs. Concept-level mention is in scope; deep structuring analysis is separate",
		"§529 plans and Education Savings Accounts — Individual Taxation or Retirement/Education topics. Education gifts through §529 are in scope at concept level (the five-year spread election for front-loading)",
		"Charitable trust structures at depth — Charitable Remainder Trust (CRT), Charitable Lead Trust (CLT), pooled income fund mechanics. Concept-level reference is fine; detailed structuring is separate",
		"Qualified Domestic Trust (QDOT) for non-citizen spouses at full mechanics depth — the QDOT requirement for the marital deduction when the surviving spouse is not a US citizen. Concept-level in scope; mechanics at depth separate",
		"State-level estate and inheritance taxes — state tax territory",
		"Form 706 line-by-line preparation at depth — compliance/return preparation mechanics",
	],

	keyStandards: [
		"IRC §2001 — Tax imposed on the taxable estate",
		"IRC §2010 — Unified credit against estate tax (applicable credit amount)",
		"IRC §2031 — Definition of gross estate",
		"IRC §2033 — Property in which decedent had interest",
		"IRC §2035 — Adjustments for gifts made within three years of death",
		"IRC §2036 — Transfers with retained life estate",
		"IRC §2037 — Transfers taking effect at death",
		"IRC §2038 — Revocable transfers",
		"IRC §2040 — Joint interests",
		"IRC §2042 — Life insurance proceeds",
		"IRC §2055 — Estate tax charitable deduction",
		"IRC §2056 — Unlimited marital deduction (estate tax)",
		"IRC §2501 — Imposition of gift tax",
		"IRC §2503(b) — Annual exclusion",
		"IRC §2503(e) — Education and medical expense exclusion",
		"IRC §2513 — Gift splitting between spouses",
		"IRC §2522 — Gift tax charitable deduction",
		"IRC §2523 — Gift tax marital deduction",
		"IRC §2601 — GST tax",
		"IRC §1015 — Basis of property acquired by gift (donee carryover basis)",
		"IRC §7872 — Below-market loans (imputed interest and gift tax consequences)",
	],

	commonMisconceptions: [
		"Thinking the annual exclusion can be carried forward unused. The $19,000 (2025/2026) annual exclusion per donee is use-it-or-lose-it each year. Unused exclusion in one year cannot be added to a later year.",
		"Believing the gift tax applies to the donee. Gift tax is imposed on the DONOR, not the donee. The donee receives the gift free of gift tax. The donor files Form 709 and pays any gift tax due.",
		"Confusing the gift tax annual exclusion with the lifetime exclusion. The annual exclusion ($19,000 per donee) applies EACH YEAR PER DONEE and does not count against the lifetime exclusion. The lifetime exclusion (~$13.61M) is a separate cumulative limit for gifts in excess of the annual exclusion.",
		"Thinking that donee's basis is always FMV at the date of gift. Donee's basis under §1015 is the DONOR'S CARRYOVER BASIS for gain purposes, increased by a portion of gift tax paid attributable to appreciation. For LOSS purposes only, the donee's basis is the LESSER of the donor's basis or the FMV at gift date (the 'dual basis' rule), preventing conversion of a built-in loss into a deductible loss.",
		"Believing life insurance proceeds are always excluded from the gross estate. Life insurance proceeds ARE included in the gross estate if the decedent possessed any incidents of ownership at death OR transferred the policy within three years of death. Removing insurance from the estate typically requires an irrevocable life insurance trust (ILIT) established more than three years before death.",
		"Thinking the unlimited marital deduction applies to all spouses. The unlimited marital deduction is available only for transfers to a spouse who is a US citizen. For non-US-citizen spouses, the marital deduction is limited unless the property passes through a Qualified Domestic Trust (QDOT), and the gift tax annual marital deduction has a separate limit.",
		"Believing education and medical expense exclusions require direct payment to the institution or provider. Correct — these exclusions apply ONLY when the donor pays the educational institution or medical care provider DIRECTLY. Paying the child who then pays tuition is a gift to the child (subject to annual exclusion, not the education exclusion).",
		"Thinking the GST tax applies only to trusts. GST tax applies to DIRECT SKIPS (outright gifts to skip persons like grandchildren) AND to taxable distributions/terminations from trusts. Each has different computation and reporting.",
		"Confusing below-market loan imputed interest with the gift itself. §7872 imputes INTEREST income to the lender (which may also trigger interest deduction issues for the borrower), and separately treats the foregone interest as a gift from lender to borrower. Both consequences apply simultaneously.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Income tax of trusts/estates (fiduciary income tax - separate topic) ---
		{ term: "distributable net income", pattern: "distributable\\s+net\\s+income|\\bDNI\\b", category: "fiduciary income", why: "DNI is fiduciary INCOME tax territory — Trusts and Estates topic, not transfer tax." },
		{ term: "Section 651", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)651\\b", category: "fiduciary income", why: "Simple trust distribution deduction — fiduciary income tax." },
		{ term: "Section 661", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)661\\b", category: "fiduciary income", why: "Complex trust distribution deduction — fiduciary income tax." },
		{ term: "Section 663", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)663\\b", category: "fiduciary income", why: "65-day rule — fiduciary income tax." },

		// --- Grantor trust rules (separate topic) ---
		{ term: "Section 671", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)671\\b", category: "grantor trust", why: "Grantor trust rules — separate grantor trust topic." },
		{ term: "Section 675", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)675\\b", category: "grantor trust", why: "Grantor trust powers — separate topic." },

		// --- Individual income tax ---
		{ term: "gross income", pattern: "gross\\s+income.{0,20}\\bdefined\\b|\\bSection\\s*61\\s+gross", category: "individual income", why: "§61 individual income tax — Individual Taxation: Income topic." },
		{ term: "Section 1202", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1202\\b", category: "individual income", why: "QSBS exclusion — unrelated to transfer tax." },

		// --- §1014 basis step-up (income tax concept) ---
		{ term: "Section 1014 step-up", pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1014\\s+step[-\\s]up|step[-\\s]up\\s+in\\s+basis\\s+under\\s+(?:Section\\s*|§\\s*)1014", category: "basis concept", why: "§1014 is INCOME tax basis step-up — Individual Taxation: Basis territory. Concept-level mention of heirs receiving stepped-up basis is in scope." },

		// --- Individual credits ---
		{ term: "Child Tax Credit", pattern: "Child\\s+Tax\\s+Credit", category: "individual credits", why: "Individual Taxation: Credits topic." },
		{ term: "Earned Income Credit", pattern: "Earned\\s+Income\\s+Credit", category: "individual credits", why: "Individual Taxation: Credits topic." },

		// --- AMT ---
		{ term: "AMT", pattern: "\\bAMT\\b|alternative\\s+minimum\\s+tax", category: "AMT", why: "Alternative Minimum Tax — separate Individual AMT topic." },
	],

	notes:
		"Estate and Gift Tax (REG/V/E) owns the federal transfer tax system — unified credit/applicable exclusion, annual exclusion, gift splitting, unlimited marital deduction, charitable deduction, education/medical exclusion, gross estate inclusion rules (§2033-§2042), three-year rule, jointly-owned property treatment, estate deductions, GST tax, donee carryover basis under §1015 with gift tax paid adjustment, life insurance in gross estate and ILITs, GRATs/QPRTs at concept level, and below-market loans under §7872 as they relate to gift tax. Census v3 flagged 5/78 at 6.4% — all on `Section 7872`, which Capital Structure Tax Planning explicitly bans as 'Related Party Transactions or Individual Tax Interest Income territory.' Clean rightful-owner for intrafamily below-market loans in the gift tax context. Out of scope: fiduciary income tax (Trusts and Estates), grantor trust rules at depth, individual income tax, §1014 basis step-up at income tax depth, individual credits (separate topic), AMT, family limited partnership structuring at depth, valuation discount quantification, Form 706 line-by-line preparation, state transfer taxes.",
};
