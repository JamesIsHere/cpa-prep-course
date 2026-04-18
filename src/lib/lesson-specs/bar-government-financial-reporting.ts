import type { LessonSpec } from "./types";

// BAR/III/A — State and local government financial reporting format.
// 18 representative tasks across 9 topics covering government-wide statements,
// governmental fund statements, proprietary fund statements, fiduciary fund
// statements, note disclosures, MD&A, budgetary comparison, RSI, and
// component units.

export const spec: LessonSpec = {
	topic: "State and Local Government Reporting",
	topicAliases: [],
	section: "bar",
	primaryRef: "BAR/III/A",
	secondaryRefs: [],

	inScope: [
		"Government-wide financial statements: statement of net position and statement of activities — concepts, format, governmental vs. business-type activities, program revenues vs. general revenues",
		"Governmental fund financial statements: balance sheet and statement of revenues, expenditures, and changes in fund balances — general fund, special revenue, capital projects, debt service, permanent funds",
		"Proprietary fund financial statements: statement of net position, statement of revenues/expenses/changes in fund net position, statement of cash flows — enterprise funds and internal service funds",
		"Fiduciary fund financial statements: statement of fiduciary net position and statement of changes in fiduciary net position — pension trust, investment trust, private-purpose trust, custodial funds",
		"Note disclosures, MD&A, budgetary comparison reporting, required supplementary information, and component unit classification (discrete vs. blended presentation criteria)",
	],

	outOfScope: [
		"Federal government accounting and reporting (FASAB standards) — this is state and local (GASB) only",
		"Detailed GASB pronouncement numbers and effective dates beyond the major standards (GASB 34, 54, 63, 84)",
		"Single audit requirements under the Uniform Guidance (2 CFR 200) — AUD territory",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
