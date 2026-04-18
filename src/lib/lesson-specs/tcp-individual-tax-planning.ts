import type { LessonSpec } from "./types";

// TCP/I/A — "Individual compliance and tax planning considerations for
// gross income, adjusted gross income, taxable income and estimated taxes."
//
// DB topic: "Individual Tax Planning: Compensation" (126 questions).
//
// AICPA representative tasks cover equity compensation (ISOs, NQSOs,
// RSUs), AMT items, estimated tax penalties, AGI planning (timing of
// income/deductions), and the interplay of above-the-line deductions
// with phase-outs. The group is single-topic (topic 0 = direct).

export const spec: LessonSpec = {
	topic: "Individual Tax Planning: Compensation",
	section: "tcp",
	primaryRef: "TCP/I/A",
	secondaryRefs: [],

	inScope: [
		"Equity compensation: incentive stock options (ISOs) — grant, exercise, disqualifying disposition, qualifying disposition, AMT preference on bargain element at exercise",
		"Equity compensation: nonqualified stock options (NQSOs) — ordinary income at exercise equal to bargain element, employer deduction timing, withholding obligations",
		"Equity compensation: restricted stock units (RSUs) — income recognition at vesting, no §83(b) election available for RSUs (only for restricted stock)",
		"Section 83(b) election for restricted property — timing election to recognize income at grant rather than vesting, risk/reward trade-off, 30-day filing deadline",
		"Alternative Minimum Tax (AMT) at concept level — AMTI computation items (ISO bargain element, state/local tax deduction add-back, standard deduction add-back), exemption amount and phase-out, credit for prior-year AMT",
		"Estimated tax penalty rules — safe harbors (100% prior-year tax, 110% for high-income, 90% current-year), annualized income installment method at concept level, penalty computation",
		"AGI planning — timing strategies for income recognition and deduction acceleration, impact of AGI on phase-outs (itemized deductions, credits, Roth IRA contribution eligibility)",
		"Above-the-line deductions relevant to compensation planning — self-employment tax deduction, self-employed health insurance, HSA contributions, IRA deductions",
		"Withholding vs. estimated payments — W-2 withholding treated as paid ratably, estimated payment timing requirements (quarterly deadlines)",
		"Taxable income computation flow — gross income, adjustments (above-the-line), AGI, standard vs. itemized deductions, qualified business income deduction at concept level, taxable income",
	],

	outOfScope: [
		"Detailed partnership/S corp pass-through mechanics — covered in TCP/II/B and TCP/II/C specs",
		"Passive activity and at-risk loss limitations — covered in TCP/I/B spec",
		"Estate and gift tax planning — covered in TCP/I/C spec",
		"Retirement plan contribution limits and distribution rules at depth — covered in TCP/I/D spec",
		"International tax provisions (GILTI, Subpart F, foreign tax credit) — covered in TCP/II/A/4 spec",
		"Net investment income tax (NIIT) at computational depth",
		"Kiddie tax rules and unearned income of minors",
		"Detailed itemized deduction mechanics (medical 7.5% floor, SALT $10K cap, charitable contribution percentage limits) — REG individual taxation",
		"Tax bracket optimization strategies beyond basic timing (e.g., Roth conversion ladders, capital gain harvesting) at advanced depth",
	],

	keyStandards: [
		"IRC §83 — Property transferred in connection with performance of services",
		"IRC §83(b) — Election to include in gross income in year of transfer",
		"IRC §421–§424 — Incentive stock option rules",
		"IRC §55–§59 — Alternative minimum tax",
		"IRC §6654 — Failure to pay estimated income tax",
		"IRC §62 — Adjusted gross income defined (above-the-line deductions)",
		"IRC §199A — Qualified business income deduction (concept level)",
	],

	commonMisconceptions: [
		"Believing ISOs create ordinary income at exercise. ISO exercise creates NO regular tax income — only an AMT preference item equal to the bargain element. Ordinary income arises only on a disqualifying disposition.",
		"Confusing restricted stock with RSUs for §83(b) election purposes. The §83(b) election applies to restricted STOCK (property transferred subject to substantial risk of forfeiture), not to RSUs (which are merely a promise to deliver stock at vesting).",
		"Believing the 110% prior-year safe harbor applies to all taxpayers. The 110% threshold applies only when prior-year AGI exceeds $150,000 ($75,000 MFS). Below that threshold, 100% of prior-year tax is sufficient.",
		"Treating estimated tax payments as ratably applied like withholding. Estimated payments are applied to the quarter in which they are actually paid, while W-2 withholding is treated as paid evenly throughout the year regardless of when actually withheld.",
		"Believing NQSO exercise generates capital gain. NQSO exercise generates ordinary income (W-2 for employees) equal to the bargain element, not capital gain. Capital gain treatment applies only to subsequent appreciation after exercise.",
	],

	representativeDifficulty: "medium",

	notes:
		"This spec covers the broadest TCP individual group — 10 representative tasks spanning equity compensation, AMT, estimated taxes, and AGI planning. The DB topic name 'Individual Tax Planning: Compensation' narrows the focus toward compensation-related planning, but the AICPA group scope is wider (gross income through taxable income). Questions should emphasize planning scenarios and computational application, not pure recall of rate tables.",
};
