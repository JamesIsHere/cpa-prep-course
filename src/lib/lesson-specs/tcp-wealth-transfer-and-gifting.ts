import type { LessonSpec } from "./types";

// TCP/I/C — "Gift taxation compliance and planning."
//
// DB topic: "Wealth Transfer and Gifting Strategies" (129 questions).
//
// AICPA representative tasks cover annual exclusion computation, gift
// splitting, gift tax return (Form 709) requirements, lifetime
// exemption utilization, and valuation discounts at concept level.

export const spec: LessonSpec = {
	topic: "Wealth Transfer and Gifting Strategies",
	section: "tcp",
	primaryRef: "TCP/I/C",
	secondaryRefs: [],

	inScope: [
		"Annual gift tax exclusion — current amount ($18,000/2024), per-donee application, present interest requirement for exclusion eligibility",
		"Gift splitting between spouses under §2513 — election mechanics, requirement that both spouses consent, effect of doubling the annual exclusion per donee",
		"Taxable gift computation — total gifts minus annual exclusions minus marital deduction minus charitable deduction equals taxable gifts for the period",
		"Unified credit / lifetime exemption — current exemption amount, cumulative nature across all gift tax periods, interaction with estate tax exemption",
		"Gift tax return (Form 709) filing requirements — when filing is required (gifts exceeding annual exclusion, gift splitting election, gifts of future interests), filing deadline",
		"Valuation of gifts at concept level — fair market value at date of gift, valuation discounts for lack of marketability and minority interest at concept level (existence, not detailed discount computation)",
		"Basis rules for gifted property — carryover basis from donor (§1015), dual basis rule when FMV < donor's basis at date of gift, tacking of donor's holding period",
		"Gifts of present vs. future interests — Crummey powers at concept level (withdrawal right converts future interest to present interest for exclusion eligibility)",
		"Qualified transfers under §2503(e) — direct payments for tuition and medical expenses are excluded from gift tax without using annual exclusion or lifetime exemption",
		"Net gift technique at concept level — donee agrees to pay the gift tax, reducing the taxable gift amount",
		"Generation-skipping transfer tax (GSTT) at concept level — existence and purpose, GST exemption, direct skips vs. taxable distributions vs. taxable terminations at definitional level only",
	],

	outOfScope: [
		"Estate tax computation at depth — estate tax return (Form 706), gross estate inclusion rules, estate tax deductions, portability election mechanics — covered separately or in REG",
		"Irrevocable life insurance trust (ILIT) mechanics at depth — trust administration, Crummey notice procedures, three-year lookback under §2035",
		"Grantor retained annuity trust (GRAT) mechanics — annuity computation, remainder interest valuation, §7520 rate application",
		"Qualified personal residence trust (QPRT) mechanics",
		"Family limited partnership (FLP) valuation discount strategies at depth — discount quantification, IRS challenge patterns",
		"Charitable remainder trust (CRT) and charitable lead trust (CLT) mechanics — payout rates, income tax deduction computation",
		"§529 plan front-loading (5-year election) at mechanics depth beyond concept-level mention",
		"Detailed generation-skipping transfer tax computation — tax rate application, inclusion ratio, applicable fraction",
		"Gift tax audit and controversy procedures",
		"International gift reporting (Form 3520) for gifts from foreign persons",
	],

	keyStandards: [
		"IRC §2501–§2524 — Gift tax provisions",
		"IRC §2503(b) — Annual exclusion",
		"IRC §2503(e) — Qualified transfers (tuition/medical)",
		"IRC §2513 — Gift splitting",
		"IRC §2505 — Unified credit against gift tax",
		"IRC §1015 — Basis of property acquired by gift",
		"IRC §2601–§2664 — Generation-skipping transfer tax (concept level)",
		"Form 709 — United States Gift (and Generation-Skipping Transfer) Tax Return",
	],

	commonMisconceptions: [
		"Believing the annual exclusion is per donor total rather than per donee. The annual exclusion applies separately to each donee — a donor can give $18,000 to any number of donees without gift tax consequences.",
		"Confusing the annual exclusion with the lifetime exemption. The annual exclusion is a per-donee, per-year amount that does not reduce the lifetime exemption. Only gifts exceeding the annual exclusion consume lifetime exemption.",
		"Believing gift splitting requires a joint gift tax return. Each spouse files a separate Form 709 (or only the donor spouse files with the consenting spouse's signature); there is no joint Form 709.",
		"Applying the standard basis rules to gifted property when FMV is below donor's basis. When FMV at date of gift is less than donor's adjusted basis, the donee uses a dual basis: donor's basis for gain and FMV for loss, with a no-gain/no-loss zone between.",
		"Believing qualified tuition and medical payments under §2503(e) consume the annual exclusion. These payments are entirely separate — they must be made directly to the institution/provider and are excluded from gift tax without reducing the annual exclusion or lifetime exemption.",
		"Treating gifts of future interests as eligible for the annual exclusion. Only gifts of present interests qualify for the annual exclusion; future interests require a Crummey withdrawal power or similar mechanism to convert to present interests.",
	],

	representativeDifficulty: "medium",

	notes:
		"Gift taxation is tested heavily in TCP as a planning topic — the AICPA tasks emphasize compliance (when to file Form 709) and planning (how to structure transfers to minimize gift/estate tax). The GSTT is tested at concept level only. The 2025 sunset of the doubled exemption amount is a current planning consideration but specific dollar amounts should not be hardcoded in questions.",
};
