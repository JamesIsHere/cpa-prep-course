import type { LessonSpec } from "./types";

// TCP/II/D — "Trusts."
//
// DB topic: "Trusts and Estates" (50 questions).
//
// AICPA topics: TCP/II/D/1 (types of trusts) and TCP/II/D/2 (income
// and deductions). Representative tasks cover trust classification
// (simple vs. complex, grantor vs. non-grantor), distributable net
// income (DNI), income distribution deduction, and trust accounting
// income vs. taxable income.

export const spec: LessonSpec = {
	topic: "Trusts and Estates",
	section: "tcp",
	primaryRef: "TCP/II/D",
	secondaryRefs: [],

	inScope: [
		"Trust classification — simple trust (must distribute all income currently, no charitable deduction, no corpus distributions) vs. complex trust (accumulates income or makes charitable contributions or distributes corpus)",
		"Grantor trust rules at concept level under §671–§679 — when the grantor is treated as the owner for income tax purposes (retained powers: revocability, power to control beneficial enjoyment, certain reversionary interests); income/deductions/credits reported on grantor's Form 1040",
		"Non-grantor trust taxation — trust as a separate taxpayer filing Form 1041, compressed tax brackets (37% rate reached at ~$14,450 in 2024), incentive to distribute income",
		"Distributable net income (DNI) — computation at concept level (trust taxable income + tax-exempt interest - capital gains allocated to corpus + distribution deduction adjustments), role as a ceiling on the distribution deduction and as a character-preservation mechanism",
		"Income distribution deduction under §661 — the trust deducts amounts distributed (or required to be distributed) to beneficiaries, limited to DNI; beneficiaries include the distributed amount in income under §662",
		"Trust accounting income (TAI) vs. taxable income — the fiduciary accounting distinction (TAI determined by trust instrument and state law, governing what 'income' means for distribution purposes) vs. federal taxable income",
		"Character preservation — DNI carries the character of trust income (ordinary, capital, tax-exempt) through to beneficiaries proportionally",
		"Separate share rule for trusts with multiple beneficiaries — each beneficiary's share of trust income computed separately when the trust has substantially separate shares",
		"Estate as a taxable entity — decedent's estate filing Form 1041, fiscal year election, §642(b) personal exemption ($600 for estates), income in respect of a decedent (IRD) under §691 at concept level",
		"Trust and estate deductions — fiduciary fees (§212 deduction or §67 miscellaneous), charitable deduction under §642(c) (no percentage limitation for trusts, unlike individuals), depreciation/depletion allocation between entity and beneficiary",
		"Termination of trust or estate — final year excess deductions passing through to beneficiaries under §642(h), unused capital loss carryovers and NOLs passing to beneficiaries",
	],

	outOfScope: [
		"Detailed grantor trust planning strategies (intentionally defective grantor trusts, sales to grantor trusts) — estate planning at depth beyond TCP scope",
		"Charitable remainder trust (CRT) and charitable lead trust (CLT) payout calculations and income tax deduction computation",
		"Generation-skipping transfer tax (GSTT) as applied to trusts at computation depth — concept-level only in TCP/I/C",
		"Trust accounting under the Uniform Principal and Income Act at depth — specific allocation rules for receipts and disbursements between income and principal",
		"Qualified terminable interest property (QTIP) trust marital deduction mechanics at depth",
		"Special needs trust and supplemental needs trust rules",
		"Subchapter J at depth — throwback rules for accumulation distributions (§665–§668), largely repealed for domestic trusts",
		"State fiduciary income tax computation and state-specific trust situs rules",
		"Crummey power mechanics at depth — covered in TCP/I/C gift taxation spec",
		"Electing small business trust (ESBT) and qualified subchapter S trust (QSST) mechanics — S corp eligibility topic",
	],

	keyStandards: [
		"IRC §641–§692 — Subchapter J (Estates, Trusts, Beneficiaries, and Decedents)",
		"IRC §651–§652 — Simple trust income distribution rules",
		"IRC §661–§663 — Complex trust income distribution deduction",
		"IRC §671–§679 — Grantor trust rules",
		"IRC §691 — Income in respect of a decedent",
		"IRC §642(b) — Personal exemption for estates and trusts",
		"IRC §642(c) — Charitable deduction for trusts and estates",
		"IRC §642(h) — Unused loss carryovers on termination",
		"Form 1041 — U.S. Income Tax Return for Estates and Trusts",
		"Schedule K-1 (Form 1041) — Beneficiary's share of income",
	],

	commonMisconceptions: [
		"Believing a simple trust can make charitable contributions. By definition, a simple trust distributes all income to beneficiaries and makes no charitable contributions. A trust that makes charitable contributions is a complex trust.",
		"Applying individual tax brackets to trust income. Trusts reach the top marginal rate (37%) at approximately $14,450 of taxable income — far faster than individuals. This compressed bracket structure is a key planning consideration.",
		"Believing capital gains are always included in DNI. Capital gains allocated to corpus (the default under most trust instruments) are excluded from DNI and taxed at the trust level. Capital gains are included in DNI only when allocated to income, distributed to a beneficiary, or used for charitable purposes.",
		"Confusing trust accounting income with taxable income. TAI (governed by the trust instrument and state law) determines what must be distributed; taxable income (governed by the IRC) determines the tax. The two amounts frequently differ.",
		"Believing the distribution deduction can exceed DNI. The income distribution deduction is capped at DNI. Even if the trust distributes more than DNI (e.g., distributes corpus), the deduction is limited to DNI.",
		"Treating a grantor trust as a separate taxpayer. When grantor trust rules apply, the trust is disregarded for income tax purposes — all items are reported on the grantor's personal return. The trust may still file an informational Form 1041.",
	],

	representativeDifficulty: "medium",

	notes:
		"TCP/II/D covers trust and estate income taxation — Subchapter J. The key computational skill is DNI computation and the income distribution deduction. Questions should test whether candidates understand the flow: trust income → DNI computation → distribution deduction → beneficiary inclusion. The compressed brackets are a frequent testing point for planning questions.",
};
