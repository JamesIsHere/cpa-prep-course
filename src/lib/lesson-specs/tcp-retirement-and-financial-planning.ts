import type { LessonSpec } from "./types";

// TCP/I/D — "Personal financial planning for individuals."
//
// DB topic: "Retirement Plans and Education Savings" (131 questions).
//
// AICPA representative tasks cover retirement plan selection (defined
// benefit vs. defined contribution), contribution limits, distribution
// rules (RMDs, early withdrawal penalties), Roth conversion analysis,
// education savings vehicles (§529, Coverdell), and basic personal
// financial planning concepts (insurance needs, investment allocation
// at concept level).

export const spec: LessonSpec = {
	topic: "Retirement Plans and Education Savings",
	section: "tcp",
	primaryRef: "TCP/I/D",
	secondaryRefs: [],

	inScope: [
		"Qualified retirement plan types at comparison level — defined benefit (pension), defined contribution (401(k), 403(b), profit sharing), SEP IRA, SIMPLE IRA, traditional IRA, Roth IRA; key differences in contribution limits, employer matching, vesting",
		"Traditional IRA vs. Roth IRA — deductibility of traditional IRA contributions (AGI phase-outs for active participants), Roth contribution income limits, tax treatment of qualified distributions, 5-year rule for Roth",
		"Required minimum distributions (RMDs) — beginning date (age 73 under SECURE 2.0), calculation method (account balance ÷ life expectancy factor), penalty for failure to take RMDs, inherited IRA RMD rules at concept level (10-year rule for most non-spouse beneficiaries)",
		"Early distribution penalty under §72(t) — 10% additional tax on distributions before age 59½, exceptions (death, disability, substantially equal periodic payments, first-time home purchase for IRA, higher education for IRA, medical expenses exceeding 7.5% AGI)",
		"Roth conversion analysis — income recognition on conversion amount, no 10% penalty on conversion (but 5-year rule on converted amounts), strategic considerations (current vs. future tax rate, time horizon, ability to pay tax from outside funds)",
		"Employer-sponsored plan features — §401(k) elective deferrals, employer matching, vesting schedules (cliff vs. graded), catch-up contributions for age 50+, Roth 401(k) option",
		"SEP IRA and SIMPLE IRA for self-employed and small business — contribution limits (25% of compensation for SEP, employee elective deferral + employer match for SIMPLE), establishment deadlines, participation requirements",
		"Education savings vehicles — §529 qualified tuition programs (state tax deduction, federal tax-free growth for qualified expenses, gift tax front-loading), Coverdell ESA (contribution limits, income phase-out, broader qualified expenses than §529)",
		"Rollover rules — 60-day rollover window, one-per-year rule for IRA-to-IRA rollovers, direct trustee-to-trustee transfers (unlimited), rollover eligibility between plan types",
		"Basic personal financial planning concepts — insurance needs analysis at concept level (life, disability, long-term care), emergency fund adequacy, asset allocation principles at concept level (diversification, risk tolerance, time horizon)",
		"SECURE Act and SECURE 2.0 changes at concept level — RMD age increase, elimination of stretch IRA for most non-spouse beneficiaries (10-year rule), Roth catch-up requirement for high earners",
	],

	outOfScope: [
		"ERISA fiduciary duty rules and prohibited transaction rules at depth — plan administration is not tested in TCP",
		"Actuarial calculations for defined benefit plans — pension funding requirements, Pension Benefit Guaranty Corporation (PBGC)",
		"Detailed plan document drafting and IRS determination letter process",
		"Investment portfolio construction and Modern Portfolio Theory at depth — asset pricing models, efficient frontier, beta/alpha analysis",
		"Insurance product mechanics at depth — whole life vs. term life cash value analysis, annuity contract types, variable universal life",
		"Social Security benefit computation and optimization strategies",
		"Medicare enrollment and penalty rules",
		"Nonqualified deferred compensation (§409A) at depth — plan design, substantial risk of forfeiture, distribution triggering events",
		"Employee stock ownership plans (ESOPs) at depth — valuation, leveraged ESOP mechanics, §1042 rollover",
		"Health savings account (HSA) rules at depth beyond concept-level mention as an above-the-line deduction",
	],

	keyStandards: [
		"IRC §401(a) — Qualified pension, profit-sharing, and stock bonus plans",
		"IRC §401(k) — Cash or deferred arrangements",
		"IRC §408 — Individual retirement accounts (traditional IRA)",
		"IRC §408A — Roth IRAs",
		"IRC §72(t) — Early distribution penalty and exceptions",
		"IRC §529 — Qualified tuition programs",
		"IRC §530 — Coverdell education savings accounts",
		"IRC §402(c) — Rollover rules",
		"IRC §408(d)(3) — IRA rollover rules",
		"SECURE Act of 2019 / SECURE 2.0 Act of 2022 (concept level)",
	],

	commonMisconceptions: [
		"Believing Roth IRA contributions are tax-deductible. Roth IRA contributions are made with after-tax dollars — no deduction. The benefit is tax-free qualified distributions.",
		"Confusing the 10% early distribution penalty with income tax. The 10% penalty under §72(t) is IN ADDITION to regular income tax on the distribution, not a substitute for it.",
		"Believing the 60-day rollover rule applies to direct trustee-to-trustee transfers. Direct transfers between trustees are not subject to the 60-day window or the one-per-year limitation — those rules apply only to indirect (check-to-you) rollovers.",
		"Applying the one-per-year IRA rollover rule to each IRA separately. The one-per-year rule applies in aggregate across ALL traditional and Roth IRAs — one indirect rollover per 12-month period total, regardless of how many IRAs the taxpayer owns.",
		"Believing RMDs apply to Roth IRAs during the owner's lifetime. Roth IRAs have NO required minimum distributions during the original owner's lifetime (though inherited Roth IRAs do have distribution requirements under the 10-year rule for most non-spouse beneficiaries).",
		"Believing all §529 distributions are tax-free. Only distributions used for qualified education expenses are tax-free. Non-qualified distributions are subject to income tax on the earnings portion plus a 10% penalty on earnings.",
		"Confusing Roth conversion with Roth contribution for income limit purposes. Roth conversions have NO income limit — anyone can convert. Roth contributions have AGI phase-outs. These are separate transactions with separate rules.",
	],

	representativeDifficulty: "medium",

	notes:
		"This is the broadest personal financial planning group in TCP. The AICPA tasks span retirement plans, education savings, and basic PFP concepts. Questions should emphasize comparison and planning scenarios (which plan type fits a given taxpayer's situation?) rather than memorization of contribution limit dollar amounts, which change annually.",
};
