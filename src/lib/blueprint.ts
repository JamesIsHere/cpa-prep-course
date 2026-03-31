// AICPA CPA Exam Blueprint — structured data with content mappings
// Source: AICPA Blueprints effective January 2026
// Mappings connect blueprint groups to lessons (sections.ts) and question topics (DB)

// --- Types ---

export interface BlueprintTopic {
	id: string;
	name: string;
}

export interface BlueprintGroup {
	letter: string;
	name: string;
	topics: BlueprintTopic[];
	lessonSlugs: string[];
	questionTopics: string[];
}

export interface BlueprintArea {
	area: number;
	name: string;
	weight: [number, number];
	groups: BlueprintGroup[];
}

export interface BlueprintSection {
	code: string;
	title: string;
	areas: BlueprintArea[];
}

export type CpaBlueprint = BlueprintSection[];

// --- Question counts by topic (synced from live DB via `npm run sync-counts`) ---

export const questionCounts: Record<string, number> = {
	// AUD (1,446 total — synced with live DB 2026-03-31)
	"Analytical Procedures": 65,
	"Attestation Engagements": 37,
	"Audit Evidence": 64,
	"Audit Planning": 61,
	"Audit Reports": 38,
	"Audit Sampling": 52,
	"Ethics and Independence": 38,
	"Government Auditing Standards": 34,
	Independence: 37,
	"Internal Controls": 64,
	Materiality: 64,
	"Misstatements and Control Deficiencies": 64,
	"Modifications to the Auditor Report": 35,
	"Nature and Scope of Engagements": 32,
	"Other Information and Supplementary Information": 36,
	"Professional Responsibilities": 37,
	"Professional Skepticism and Judgment": 38,
	"Quality Management": 38,
	"Responding to Assessed Risks": 64,
	"Review and Compilation": 37,
	"Review/Compilation Engagements": 31,
	"Risk Assessment": 64,
	"Specific Areas and Transactions": 65,
	"Substantive Procedures": 58,
	"Terms of Engagement": 38,
	"Tests of Controls": 64,
	"Understanding the Entity and Environment": 64,
	"Using the Work of Others": 64,
	"Written Representations": 63,
	// FAR (1,554 total — synced with live DB 2026-03-31)
	"Accounting Changes and Error Corrections": 58,
	"Cash and Cash Equivalents": 16,
	Consolidations: 58,
	Contingencies: 58,
	Debt: 52,
	Equity: 51,
	"Fair Value": 57,
	"Financial Reporting: For-Profit": 158,
	"Financial Statement Ratios": 90,
	"Income Taxes": 58,
	"Intangible Assets": 51,
	Inventory: 51,
	Investments: 59,
	Leases: 52,
	"Not-for-Profit Accounting": 58,
	"Payables and Accrued Liabilities": 50,
	"Property, Plant and Equipment": 49,
	"Public Company Reporting": 65,
	"Revenue Recognition": 53,
	"Special Purpose Frameworks": 79,
	"State and Local Government": 186,
	"Statement of Cash Flows": 80,
	"Subsequent Events": 29,
	"Trade Receivables": 36,
	// REG (1,446 total — synced with live DB 2026-03-31)
	"Agency and Regulation": 60,
	"Alternative Minimum Tax": 65,
	"Business Law: Contracts": 60,
	"Business Structures": 60,
	"C Corporations": 81,
	"Circular 230": 42,
	"Debtor-Creditor Relationships": 60,
	"Estate and Gift Tax": 78,
	"Federal Tax Procedures": 40,
	"Government Regulation of Business": 58,
	"Individual Taxation: Credits": 67,
	"Individual Taxation: Credits/AMT": 66,
	"Individual Taxation: Deductions": 64,
	"Individual Taxation: Filing/Credits": 68,
	"Individual Taxation: Income": 67,
	"Legal Duties and Responsibilities": 45,
	"Like-Kind Exchanges": 48,
	Partnerships: 79,
	"Professional Ethics in Tax": 45,
	"Property Transactions: Basis": 47,
	"Property Transactions: Gains/Losses": 43,
	"S Corporations": 82,
	"Tax Procedures": 44,
	"Tax-Exempt Organizations": 77,
	// BAR (1,534 total — synced with live DB 2026-03-31)
	"Advanced Consolidations": 49,
	"Advanced Lease Transactions": 54,
	"Advanced Revenue and Intangibles": 47,
	"Business Combinations": 41,
	"Capital Structure and Valuation": 122,
	"Derivatives and Hedging": 50,
	"Financial Statement Analysis": 188,
	"Financial Valuation Methods": 147,
	"Foreign Currency Transactions": 43,
	"Fund-to-Government-Wide Reconciliation": 67,
	"Income Taxes Advanced": 48,
	"Intangible Assets Advanced": 50,
	"Interfund Transactions": 67,
	"Internal-Use Software and Cloud Computing": 38,
	"Pension and Postretirement Benefits": 142,
	"Prospective Analysis and Forecasting": 128,
	"Risk Management and Economics": 130,
	"State and Local Government Reporting": 71,
	"Stock Compensation and Business Combinations": 52,
	// ISC (1,452 total — synced with live DB 2026-03-31)
	"Change Management": 85,
	"Data Management and Lifecycle": 86,
	"Data Protection Technologies": 97,
	"ERP and Accounting Information Systems": 78,
	"Incident Response and Recovery": 100,
	"IT Audit Frameworks": 85,
	"IT General Controls": 79,
	"IT Infrastructure and Architecture": 82,
	"Privacy Requirements and Data Protection": 95,
	"Security and Control Frameworks": 95,
	"Security Controls and Monitoring": 93,
	"SOC Engagements": 58,
	"SOC Report Content and Structure": 59,
	"SOC Reporting": 59,
	"SOC Reporting and Trust Services Criteria": 58,
	"SOC Testing Controls": 60,
	"System Availability and Change Management": 86,
	"Threats, Attacks, and Vulnerabilities": 97,
	// TCP (1,421 total — synced with live DB 2026-03-31)
	"Advanced Basis Calculations": 95,
	"Capital Structure Tax Planning": 52,
	"Entity Choice and Planning": 56,
	"Entity Formation and Liquidation": 94,
	"Entity Formation and Restructuring": 67,
	"Entity Tax Compliance: NOLs and Consolidated Returns": 100,
	"Individual Tax Planning: Compensation": 126,
	"International Tax": 103,
	"Multi-Jurisdictional Tax Planning": 56,
	"Nontaxable Dispositions": 66,
	"Owner-Entity Transactions": 102,
	"Passive Activity and At-Risk Rules": 128,
	"Related Party Transactions": 66,
	"Retirement Plans and Education Savings": 131,
	"Trusts and Estates": 50,
	"Wealth Transfer and Gifting Strategies": 129,
};

export const sectionQuestionTotals: Record<string, number> = {
	aud: 1446,
	far: 1554,
	reg: 1446,
	bar: 1534,
	isc: 1452,
	tcp: 1421,
};

// --- Blueprint Data ---

export const cpaBlueprint: CpaBlueprint = [
	// ─────────────────────────────────────────────────────────
	// AUD — Auditing and Attestation (4 areas, 27 groups)
	// ─────────────────────────────────────────────────────────
	{
		code: "aud",
		title: "Auditing and Attestation",
		areas: [
			{
				area: 1,
				name: "Ethics, Professional Responsibilities, and General Principles",
				weight: [15, 25],
				groups: [
					{
						letter: "A",
						name: "Nature and scope of engagements",
						topics: [
							{ id: "aud.1.A.1", name: "Overall objectives of the auditor" },
							{ id: "aud.1.A.2", name: "Financial statement assertions" },
							{ id: "aud.1.A.3", name: "Reasonable vs. limited assurance" },
						],
						lessonSlugs: ["01-intro"],
						questionTopics: ["Nature and Scope of Engagements"],
					},
					{
						letter: "B",
						name: "Professional ethics and conduct",
						topics: [
							{
								id: "aud.1.B.1",
								name: "AICPA Code of Professional Conduct",
							},
							{ id: "aud.1.B.2", name: "Integrity and objectivity" },
						],
						lessonSlugs: ["02-ethics-and-independence"],
						questionTopics: [
							"Ethics and Independence",
							"Professional Responsibilities",
						],
					},
					{
						letter: "C",
						name: "Independence",
						topics: [
							{
								id: "aud.1.C.1",
								name: "Independence in fact and appearance",
							},
							{ id: "aud.1.C.2", name: "Threats and safeguards" },
							{
								id: "aud.1.C.3",
								name: "Close relative and financial interest rules",
							},
						],
						lessonSlugs: ["02-ethics-and-independence"],
						questionTopics: ["Independence"],
					},
					{
						letter: "D",
						name: "Professional skepticism and judgment",
						topics: [
							{
								id: "aud.1.D.1",
								name: "Application of professional skepticism",
							},
							{
								id: "aud.1.D.2",
								name: "Professional judgment in audit decisions",
							},
						],
						lessonSlugs: ["01-intro"],
						questionTopics: ["Professional Skepticism and Judgment"],
					},
					{
						letter: "E",
						name: "Government Auditing Standards and Single Audit",
						topics: [
							{ id: "aud.1.E.1", name: "Yellow Book requirements" },
							{
								id: "aud.1.E.2",
								name: "Single Audit Act and Uniform Guidance",
							},
							{ id: "aud.1.E.3", name: "Compliance auditing" },
						],
						lessonSlugs: ["13-government-auditing"],
						questionTopics: ["Government Auditing Standards"],
					},
					{
						letter: "F",
						name: "Quality management standards",
						topics: [
							{ id: "aud.1.F.1", name: "SQMS No. 1 and No. 2" },
							{ id: "aud.1.F.2", name: "Engagement quality reviews" },
							{ id: "aud.1.F.3", name: "Monitoring and remediation" },
						],
						lessonSlugs: ["12-quality-management"],
						questionTopics: ["Quality Management"],
					},
					{
						letter: "G",
						name: "Terms of engagement",
						topics: [
							{ id: "aud.1.G.1", name: "Engagement letters" },
							{ id: "aud.1.G.2", name: "Preconditions for an audit" },
						],
						lessonSlugs: ["03-audit-planning"],
						questionTopics: ["Terms of Engagement"],
					},
				],
			},
			{
				area: 2,
				name: "Assessing Risk and Developing a Planned Response",
				weight: [25, 35],
				groups: [
					{
						letter: "A",
						name: "Planning an engagement",
						topics: [
							{ id: "aud.2.A.1", name: "Overall audit strategy" },
							{ id: "aud.2.A.2", name: "Audit plan development" },
							{ id: "aud.2.A.3", name: "Materiality determination" },
						],
						lessonSlugs: ["03-audit-planning"],
						questionTopics: ["Audit Planning"],
					},
					{
						letter: "B",
						name: "Understanding the entity and its environment",
						topics: [
							{
								id: "aud.2.B.1",
								name: "Industry and regulatory factors",
							},
							{
								id: "aud.2.B.2",
								name: "Entity objectives and strategies",
							},
							{ id: "aud.2.B.3", name: "Accounting policies selection" },
						],
						lessonSlugs: ["03-audit-planning"],
						questionTopics: ["Understanding the Entity and Environment"],
					},
					{
						letter: "C",
						name: "Identifying and assessing risks of material misstatement",
						topics: [
							{
								id: "aud.2.C.1",
								name: "Significant risks identification",
							},
							{ id: "aud.2.C.2", name: "Inherent risk factors" },
							{ id: "aud.2.C.3", name: "Fraud risk assessment" },
						],
						lessonSlugs: ["04-risk-assessment"],
						questionTopics: ["Risk Assessment"],
					},
					{
						letter: "D",
						name: "Materiality",
						topics: [
							{ id: "aud.2.D.1", name: "Performance materiality" },
							{ id: "aud.2.D.2", name: "Tolerable misstatement" },
						],
						lessonSlugs: ["03-audit-planning"],
						questionTopics: ["Materiality"],
					},
					{
						letter: "E",
						name: "Responding to assessed risks",
						topics: [
							{
								id: "aud.2.E.1",
								name: "Overall responses to financial statement risks",
							},
							{
								id: "aud.2.E.2",
								name: "Further audit procedures design",
							},
						],
						lessonSlugs: ["04-risk-assessment"],
						questionTopics: ["Responding to Assessed Risks"],
					},
					{
						letter: "F",
						name: "Understanding internal control",
						topics: [
							{
								id: "aud.2.F.1",
								name: "Components of internal control",
							},
							{
								id: "aud.2.F.2",
								name: "Control environment evaluation",
							},
							{
								id: "aud.2.F.3",
								name: "Information system and related controls",
							},
							{
								id: "aud.2.F.4",
								name: "Entity-level controls and ITGC relationship",
							},
						],
						lessonSlugs: ["05-internal-controls"],
						questionTopics: ["Internal Controls"],
					},
					{
						letter: "G",
						name: "Using the work of others",
						topics: [
							{ id: "aud.2.G.1", name: "Using internal auditors" },
							{ id: "aud.2.G.2", name: "Using a specialist" },
							{
								id: "aud.2.G.3",
								name: "Group audits and component auditors",
							},
						],
						lessonSlugs: ["03-audit-planning"],
						questionTopics: ["Using the Work of Others"],
					},
				],
			},
			{
				area: 3,
				name: "Performing Further Procedures and Obtaining Evidence",
				weight: [30, 40],
				groups: [
					{
						letter: "A",
						name: "Substantive procedures",
						topics: [
							{ id: "aud.3.A.1", name: "Tests of details" },
							{
								id: "aud.3.A.2",
								name: "Substantive analytical procedures",
							},
						],
						lessonSlugs: ["08-substantive-procedures"],
						questionTopics: ["Substantive Procedures"],
					},
					{
						letter: "B",
						name: "Tests of controls",
						topics: [
							{
								id: "aud.3.B.1",
								name: "Design and implementation of controls",
							},
							{
								id: "aud.3.B.2",
								name: "Operating effectiveness testing",
							},
						],
						lessonSlugs: ["05-internal-controls"],
						questionTopics: ["Tests of Controls"],
					},
					{
						letter: "C",
						name: "Analytical procedures",
						topics: [
							{
								id: "aud.3.C.1",
								name: "Planning and substantive analytics",
							},
							{ id: "aud.3.C.2", name: "Final analytical review" },
						],
						lessonSlugs: ["08-substantive-procedures"],
						questionTopics: ["Analytical Procedures"],
					},
					{
						letter: "D",
						name: "Audit sampling",
						topics: [
							{
								id: "aud.3.D.1",
								name: "Statistical and nonstatistical sampling",
							},
							{
								id: "aud.3.D.2",
								name: "Sample design and selection",
							},
							{ id: "aud.3.D.3", name: "Evaluating sample results" },
						],
						lessonSlugs: ["07-sampling"],
						questionTopics: ["Audit Sampling"],
					},
					{
						letter: "E",
						name: "Audit evidence evaluation",
						topics: [
							{
								id: "aud.3.E.1",
								name: "Sufficiency and appropriateness",
							},
							{ id: "aud.3.E.2", name: "External confirmations" },
							{
								id: "aud.3.E.3",
								name: "Accounting estimates evaluation",
							},
						],
						lessonSlugs: ["06-audit-evidence"],
						questionTopics: ["Audit Evidence"],
					},
					{
						letter: "F",
						name: "Misstatements and internal control deficiencies",
						topics: [
							{
								id: "aud.3.F.1",
								name: "Evaluating identified misstatements",
							},
							{
								id: "aud.3.F.2",
								name: "Communication of deficiencies",
							},
						],
						lessonSlugs: ["09-audit-reports"],
						questionTopics: ["Misstatements and Control Deficiencies"],
					},
					{
						letter: "G",
						name: "Written representations",
						topics: [
							{
								id: "aud.3.G.1",
								name: "Management representation letters",
							},
							{
								id: "aud.3.G.2",
								name: "Subsequent events evaluation",
							},
						],
						lessonSlugs: ["06-audit-evidence"],
						questionTopics: ["Written Representations"],
					},
					{
						letter: "H",
						name: "Specific areas and transactions",
						topics: [
							{
								id: "aud.3.H.1",
								name: "Related party transactions",
							},
							{ id: "aud.3.H.2", name: "Going concern evaluation" },
							{
								id: "aud.3.H.3",
								name: "Opening balances and comparative information",
							},
						],
						lessonSlugs: ["08-substantive-procedures"],
						questionTopics: ["Specific Areas and Transactions"],
					},
				],
			},
			{
				area: 4,
				name: "Forming Conclusions and Reporting",
				weight: [10, 20],
				groups: [
					{
						letter: "A",
						name: "Reports on financial statement audits",
						topics: [
							{ id: "aud.4.A.1", name: "Unmodified opinion" },
							{ id: "aud.4.A.2", name: "Key audit matters" },
						],
						lessonSlugs: ["09-audit-reports"],
						questionTopics: ["Audit Reports"],
					},
					{
						letter: "B",
						name: "Modifications to the auditor's report",
						topics: [
							{
								id: "aud.4.B.1",
								name: "Qualified, adverse, and disclaimer opinions",
							},
							{
								id: "aud.4.B.2",
								name: "Emphasis-of-matter and other-matter paragraphs",
							},
						],
						lessonSlugs: ["09-audit-reports"],
						questionTopics: ["Modifications to the Auditor Report"],
					},
					{
						letter: "C",
						name: "Other information and supplementary information",
						topics: [
							{
								id: "aud.4.C.1",
								name: "Auditor responsibilities for other information",
							},
							{
								id: "aud.4.C.2",
								name: "Required supplementary information",
							},
						],
						lessonSlugs: ["09-audit-reports"],
						questionTopics: ["Other Information and Supplementary Information"],
					},
					{
						letter: "D",
						name: "Reviews and compilations",
						topics: [
							{ id: "aud.4.D.1", name: "SSARS review engagements" },
							{ id: "aud.4.D.2", name: "Compilation engagements" },
							{
								id: "aud.4.D.3",
								name: "Preparation of financial statements",
							},
						],
						lessonSlugs: ["10-review-compilation"],
						questionTopics: [
							"Review and Compilation",
							"Review/Compilation Engagements",
						],
					},
					{
						letter: "E",
						name: "Attestation engagements",
						topics: [
							{ id: "aud.4.E.1", name: "Examination engagements" },
							{
								id: "aud.4.E.2",
								name: "Review engagements (attestation)",
							},
							{ id: "aud.4.E.3", name: "Agreed-upon procedures" },
						],
						lessonSlugs: ["11-attestation-engagements"],
						questionTopics: ["Attestation Engagements"],
					},
				],
			},
		],
	},

	// ─────────────────────────────────────────────────────────
	// FAR — Financial Accounting and Reporting (4 areas, 23 groups)
	// ─────────────────────────────────────────────────────────
	{
		code: "far",
		title: "Financial Accounting and Reporting",
		areas: [
			// ── Area I: Financial Reporting (30-40%) — AICPA 2026 Blueprint ──
			{
				area: 1,
				name: "Financial Reporting",
				weight: [30, 40],
				groups: [
					{
						letter: "A",
						name: "General-purpose financial reporting: for-profit business entities",
						topics: [
							{
								id: "far.1.A.1",
								name: "Balance sheet / Statement of financial position",
							},
							{
								id: "far.1.A.2",
								name: "Income statement / Statement of profit or loss",
							},
							{
								id: "far.1.A.3",
								name: "Statement of comprehensive income",
							},
							{
								id: "far.1.A.4",
								name: "Statement of changes in equity",
							},
							{
								id: "far.1.A.5",
								name: "Statement of cash flows",
							},
							{
								id: "far.1.A.6",
								name: "Consolidated financial statements (including NCI)",
							},
							{
								id: "far.1.A.7",
								name: "Notes to financial statements",
							},
						],
						lessonSlugs: [
							"01-financial-reporting-for-profit",
							"02-statement-of-cash-flows",
							"03-consolidated-financial-statements",
						],
						questionTopics: [
							"Financial Reporting: For-Profit",
							"Statement of Cash Flows",
							"Consolidations",
						],
					},
					{
						letter: "B",
						name: "General-purpose financial reporting: nongovernmental not-for-profit entities",
						topics: [
							{
								id: "far.1.B.1",
								name: "Statement of financial position",
							},
							{
								id: "far.1.B.2",
								name: "Statement of activities",
							},
							{
								id: "far.1.B.3",
								name: "Statement of cash flows",
							},
							{
								id: "far.1.B.4",
								name: "Notes to the financial statements",
							},
						],
						lessonSlugs: ["04-not-for-profit"],
						questionTopics: ["Not-for-Profit Accounting"],
					},
					{
						letter: "C",
						name: "State and local government concepts",
						topics: [
							{
								id: "far.1.C.1",
								name: "Measurement focus and basis of accounting",
							},
							{
								id: "far.1.C.2",
								name: "Purpose of funds",
							},
						],
						lessonSlugs: ["05-state-local-government"],
						questionTopics: ["State and Local Government"],
					},
					{
						letter: "D",
						name: "Public company reporting topics",
						topics: [
							{
								id: "far.1.D.1",
								name: "SEC Forms 10-Q / 10-K / 8-K",
							},
							{
								id: "far.1.D.2",
								name: "Earnings per share",
							},
						],
						lessonSlugs: ["06-public-company-reporting"],
						questionTopics: ["Public Company Reporting"],
					},
					{
						letter: "E",
						name: "Special purpose frameworks",
						topics: [
							{
								id: "far.1.E.1",
								name: "Cash and modified cash basis",
							},
							{
								id: "far.1.E.2",
								name: "Tax basis financial statements",
							},
						],
						lessonSlugs: ["07-special-purpose-frameworks"],
						questionTopics: ["Special Purpose Frameworks"],
					},
					{
						letter: "F",
						name: "Financial statement ratios and performance metrics",
						topics: [
							{
								id: "far.1.F.1",
								name: "Profitability, liquidity, and solvency ratios",
							},
							{
								id: "far.1.F.2",
								name: "Performance metrics and budget variances",
							},
						],
						lessonSlugs: ["08-financial-statement-ratios"],
						questionTopics: ["Financial Statement Ratios"],
					},
				],
			},
			// ── Area II: Select Balance Sheet Accounts (30-40%) ──
			{
				area: 2,
				name: "Select Balance Sheet Accounts",
				weight: [30, 40],
				groups: [
					{
						letter: "A",
						name: "Cash and cash equivalents",
						topics: [
							{
								id: "far.2.A.1",
								name: "Cash and cash equivalents balances",
							},
							{
								id: "far.2.A.2",
								name: "Bank reconciliations",
							},
						],
						lessonSlugs: ["09-cash-and-cash-equivalents"],
						questionTopics: ["Cash and Cash Equivalents"],
					},
					{
						letter: "B",
						name: "Trade receivables",
						topics: [
							{
								id: "far.2.B.1",
								name: "Trade receivables and allowances (CECL)",
							},
							{
								id: "far.2.B.2",
								name: "Transfer of receivables (factoring, assignment, pledging)",
							},
						],
						lessonSlugs: ["10-trade-receivables"],
						questionTopics: ["Trade Receivables"],
					},
					{
						letter: "C",
						name: "Inventory",
						topics: [
							{
								id: "far.2.C.1",
								name: "Cost flow assumptions (FIFO, LIFO, weighted average)",
							},
							{
								id: "far.2.C.2",
								name: "Lower of cost or net realizable value",
							},
						],
						lessonSlugs: ["11-inventory"],
						questionTopics: ["Inventory"],
					},
					{
						letter: "D",
						name: "Property, plant and equipment",
						topics: [
							{
								id: "far.2.D.1",
								name: "Capitalization and depreciation methods",
							},
							{
								id: "far.2.D.2",
								name: "Impairment of long-lived assets",
							},
							{
								id: "far.2.D.3",
								name: "Assets held for sale",
							},
						],
						lessonSlugs: ["12-property-plant-equipment"],
						questionTopics: ["Property, Plant and Equipment"],
					},
					{
						letter: "E",
						name: "Investments",
						topics: [
							{
								id: "far.2.E.1",
								name: "Financial assets at fair value",
							},
							{
								id: "far.2.E.2",
								name: "Financial assets at amortized cost",
							},
							{
								id: "far.2.E.3",
								name: "Equity method investments",
							},
						],
						lessonSlugs: ["13-investments"],
						questionTopics: ["Investments"],
					},
					{
						letter: "F",
						name: "Intangible assets",
						topics: [
							{
								id: "far.2.F.1",
								name: "Finite vs. indefinite-lived intangibles",
							},
							{
								id: "far.2.F.2",
								name: "Purchased software and cloud computing",
							},
						],
						lessonSlugs: ["14-intangible-assets"],
						questionTopics: ["Intangible Assets"],
					},
					{
						letter: "G",
						name: "Payables and accrued liabilities",
						topics: [
							{
								id: "far.2.G.1",
								name: "Accounts payable and accrued liabilities",
							},
							{
								id: "far.2.G.2",
								name: "Asset retirement obligations",
							},
							{
								id: "far.2.G.3",
								name: "Exit and disposal activities",
							},
						],
						lessonSlugs: ["15-payables-and-accrued-liabilities"],
						questionTopics: ["Payables and Accrued Liabilities"],
					},
					{
						letter: "H",
						name: "Debt (financial liabilities)",
						topics: [
							{
								id: "far.2.H.1",
								name: "Notes and bonds payable",
							},
							{
								id: "far.2.H.2",
								name: "Debt covenant compliance",
							},
						],
						lessonSlugs: ["16-debt"],
						questionTopics: ["Debt"],
					},
					{
						letter: "I",
						name: "Equity",
						topics: [
							{
								id: "far.2.I.1",
								name: "Equity issuance, dividends, splits, and treasury stock",
							},
						],
						lessonSlugs: ["17-equity"],
						questionTopics: ["Equity"],
					},
				],
			},
			// ── Area III: Select Transactions (25-35%) ──
			{
				area: 3,
				name: "Select Transactions",
				weight: [25, 35],
				groups: [
					{
						letter: "A",
						name: "Accounting changes and error corrections",
						topics: [
							{
								id: "far.3.A.1",
								name: "Changes in accounting principle",
							},
							{
								id: "far.3.A.2",
								name: "Changes in estimate and error corrections",
							},
						],
						lessonSlugs: ["18-accounting-changes"],
						questionTopics: ["Accounting Changes and Error Corrections"],
					},
					{
						letter: "B",
						name: "Contingencies and commitments",
						topics: [
							{
								id: "far.3.B.1",
								name: "Loss contingencies (ASC 450)",
							},
							{
								id: "far.3.B.2",
								name: "Gain contingencies",
							},
							{
								id: "far.3.B.3",
								name: "Guarantees and commitments",
							},
						],
						lessonSlugs: ["19-contingencies"],
						questionTopics: ["Contingencies"],
					},
					{
						letter: "C",
						name: "Revenue recognition",
						topics: [
							{
								id: "far.3.C.1",
								name: "ASC 606 five-step model",
							},
							{
								id: "far.3.C.2",
								name: "Contract costs and modifications",
							},
							{
								id: "far.3.C.3",
								name: "NFP contribution recognition",
							},
						],
						lessonSlugs: ["20-revenue-recognition"],
						questionTopics: ["Revenue Recognition"],
					},
					{
						letter: "D",
						name: "Accounting for income taxes",
						topics: [
							{
								id: "far.3.D.1",
								name: "Deferred tax assets and liabilities",
							},
							{
								id: "far.3.D.2",
								name: "Valuation allowances",
							},
							{
								id: "far.3.D.3",
								name: "Uncertainty in income taxes",
							},
						],
						lessonSlugs: ["21-income-taxes"],
						questionTopics: ["Income Taxes"],
					},
					{
						letter: "E",
						name: "Fair value measurements",
						topics: [
							{
								id: "far.3.E.1",
								name: "ASC 820 fair value hierarchy",
							},
							{
								id: "far.3.E.2",
								name: "Valuation techniques and inputs",
							},
						],
						lessonSlugs: ["22-fair-value"],
						questionTopics: ["Fair Value"],
					},
					{
						letter: "F",
						name: "Lessee accounting",
						topics: [
							{
								id: "far.3.F.1",
								name: "Lease classification (operating vs. finance)",
							},
							{
								id: "far.3.F.2",
								name: "Right-of-use assets and lease liabilities",
							},
							{
								id: "far.3.F.3",
								name: "Lease cost recognition",
							},
						],
						lessonSlugs: ["23-lessee-accounting"],
						questionTopics: ["Leases"],
					},
					{
						letter: "G",
						name: "Subsequent events",
						topics: [
							{
								id: "far.3.G.1",
								name: "Identifying and classifying subsequent events",
							},
							{
								id: "far.3.G.2",
								name: "Adjustments and disclosures for subsequent events",
							},
						],
						lessonSlugs: ["24-subsequent-events"],
						questionTopics: ["Subsequent Events"],
					},
				],
			},
		],
	},

	// ─────────────────────────────────────────────────────────
	// REG — Taxation and Regulation (5 areas, 21 groups)
	// ─────────────────────────────────────────────────────────
	{
		code: "reg",
		title: "Taxation and Regulation",
		areas: [
			{
				area: 1,
				name: "Ethics, Professional Responsibilities, and Federal Tax Procedures",
				weight: [10, 20],
				groups: [
					{
						letter: "A",
						name: "Professional ethics for tax practitioners",
						topics: [
							{
								id: "reg.1.A.1",
								name: "AICPA Statements on Standards for Tax Services",
							},
							{
								id: "reg.1.A.2",
								name: "Tax return positions and disclosure",
							},
						],
						lessonSlugs: ["02-circular-230"],
						questionTopics: ["Professional Ethics in Tax"],
					},
					{
						letter: "B",
						name: "Circular 230 and tax practice",
						topics: [
							{
								id: "reg.1.B.1",
								name: "Practice before the IRS",
							},
							{
								id: "reg.1.B.2",
								name: "Covered opinions and due diligence",
							},
							{
								id: "reg.1.B.3",
								name: "Sanctions and disciplinary proceedings",
							},
						],
						lessonSlugs: ["02-circular-230"],
						questionTopics: ["Circular 230"],
					},
					{
						letter: "C",
						name: "Federal tax procedures",
						topics: [
							{
								id: "reg.1.C.1",
								name: "Statute of limitations and assessment",
							},
							{
								id: "reg.1.C.2",
								name: "IRS audit and appeals process",
							},
							{
								id: "reg.1.C.3",
								name: "Penalties and interest provisions",
							},
						],
						lessonSlugs: ["14-federal-tax-procedures"],
						questionTopics: ["Tax Procedures", "Federal Tax Procedures"],
					},
					{
						letter: "D",
						name: "Legal duties and responsibilities",
						topics: [
							{
								id: "reg.1.D.1",
								name: "Privileged communications in tax",
							},
							{
								id: "reg.1.D.2",
								name: "Tax preparer penalties (Section 6694)",
							},
						],
						lessonSlugs: ["15-legal-duties"],
						questionTopics: ["Legal Duties and Responsibilities"],
					},
				],
			},
			{
				area: 2,
				name: "Business Law",
				weight: [15, 25],
				groups: [
					{
						letter: "A",
						name: "Contracts",
						topics: [
							{
								id: "reg.2.A.1",
								name: "Formation, performance, and breach",
							},
							{
								id: "reg.2.A.2",
								name: "UCC Article 2 (sales of goods)",
							},
							{
								id: "reg.2.A.3",
								name: "Third-party rights and remedies",
							},
						],
						lessonSlugs: ["03-business-law-contracts"],
						questionTopics: ["Business Law: Contracts"],
					},
					{
						letter: "B",
						name: "Agency",
						topics: [
							{
								id: "reg.2.B.1",
								name: "Formation and types of agency",
							},
							{
								id: "reg.2.B.2",
								name: "Authority and liability of agents/principals",
							},
						],
						lessonSlugs: ["04-agency-and-regulation"],
						questionTopics: ["Agency and Regulation"],
					},
					{
						letter: "C",
						name: "Business structures and governance",
						topics: [
							{
								id: "reg.2.C.1",
								name: "Sole proprietorships and general partnerships",
							},
							{
								id: "reg.2.C.2",
								name: "LLCs and limited partnerships",
							},
							{
								id: "reg.2.C.3",
								name: "Corporate formation and governance",
							},
						],
						lessonSlugs: ["05-business-structures"],
						questionTopics: ["Business Structures"],
					},
					{
						letter: "D",
						name: "Debtor-creditor relationships",
						topics: [
							{
								id: "reg.2.D.1",
								name: "Secured transactions (UCC Article 9)",
							},
							{
								id: "reg.2.D.2",
								name: "Bankruptcy proceedings (Chapters 7, 11, 13)",
							},
							{
								id: "reg.2.D.3",
								name: "Suretyship and guaranty",
							},
						],
						lessonSlugs: ["16-debtor-creditor"],
						questionTopics: ["Debtor-Creditor Relationships"],
					},
					{
						letter: "E",
						name: "Government regulation of business",
						topics: [
							{
								id: "reg.2.E.1",
								name: "Federal securities regulation",
							},
							{
								id: "reg.2.E.2",
								name: "Employment and labor law",
							},
						],
						lessonSlugs: ["04-agency-and-regulation"],
						questionTopics: ["Government Regulation of Business"],
					},
				],
			},
			{
				area: 3,
				name: "Federal Taxation of Property Transactions",
				weight: [5, 15],
				groups: [
					{
						letter: "A",
						name: "Basis and holding period",
						topics: [
							{
								id: "reg.3.A.1",
								name: "Cost, adjusted, and substituted basis",
							},
							{
								id: "reg.3.A.2",
								name: "Holding period determination",
							},
							{
								id: "reg.3.A.3",
								name: "Basis of gifted and inherited property",
							},
						],
						lessonSlugs: ["06-property-transactions-basis"],
						questionTopics: ["Property Transactions: Basis"],
					},
					{
						letter: "B",
						name: "Gains, losses, and nontaxable exchanges",
						topics: [
							{
								id: "reg.3.B.1",
								name: "Capital gains and losses (Section 1231)",
							},
							{
								id: "reg.3.B.2",
								name: "Depreciation recapture (Sections 1245, 1250)",
							},
							{
								id: "reg.3.B.3",
								name: "Like-kind exchanges (Section 1031)",
							},
						],
						lessonSlugs: [
							"07-property-transactions-gains",
							"08-like-kind-exchanges",
						],
						questionTopics: [
							"Property Transactions: Gains/Losses",
							"Like-Kind Exchanges",
						],
					},
				],
			},
			{
				area: 4,
				name: "Federal Taxation of Individuals",
				weight: [22, 32],
				groups: [
					{
						letter: "A",
						name: "Gross income",
						topics: [
							{
								id: "reg.4.A.1",
								name: "Inclusions and exclusions from gross income",
							},
							{
								id: "reg.4.A.2",
								name: "Compensation, interest, dividends, and rents",
							},
						],
						lessonSlugs: ["09-individual-taxation-income"],
						questionTopics: ["Individual Taxation: Income"],
					},
					{
						letter: "B",
						name: "Adjustments and deductions",
						topics: [
							{
								id: "reg.4.B.1",
								name: "Above-the-line deductions (AGI adjustments)",
							},
							{
								id: "reg.4.B.2",
								name: "Standard vs. itemized deductions",
							},
							{
								id: "reg.4.B.3",
								name: "Qualified business income deduction (Section 199A)",
							},
							{
								id: "reg.4.B.4",
								name: "H.R. 1 AGI adjustments (auto loan interest, tip income)",
							},
						],
						lessonSlugs: ["09-individual-taxation-income"],
						questionTopics: ["Individual Taxation: Deductions"],
					},
					{
						letter: "C",
						name: "Tax credits and payments",
						topics: [
							{
								id: "reg.4.C.1",
								name: "Child tax credit and earned income credit",
							},
							{
								id: "reg.4.C.2",
								name: "Education credits",
							},
							{
								id: "reg.4.C.3",
								name: "Estimated tax payments",
							},
						],
						lessonSlugs: ["10-individual-taxation-credits"],
						questionTopics: [
							"Individual Taxation: Credits",
							"Individual Taxation: Credits/AMT",
						],
					},
					{
						letter: "D",
						name: "Filing status and dependents",
						topics: [
							{
								id: "reg.4.D.1",
								name: "Filing status determination",
							},
							{
								id: "reg.4.D.2",
								name: "Dependency tests and qualifying individuals",
							},
						],
						lessonSlugs: ["17-filing-status-dependents"],
						questionTopics: ["Individual Taxation: Filing/Credits"],
					},
					{
						letter: "E",
						name: "Alternative minimum tax",
						topics: [
							{
								id: "reg.4.E.1",
								name: "AMT calculation and preference items",
							},
							{
								id: "reg.4.E.2",
								name: "AMT credit carryforward",
							},
						],
						lessonSlugs: ["10-individual-taxation-credits"],
						questionTopics: ["Alternative Minimum Tax"],
					},
				],
			},
			{
				area: 5,
				name: "Federal Taxation of Entities",
				weight: [23, 33],
				groups: [
					{
						letter: "A",
						name: "C corporations",
						topics: [
							{
								id: "reg.5.A.1",
								name: "Formation and capitalization",
							},
							{
								id: "reg.5.A.2",
								name: "Taxable income computation",
							},
							{
								id: "reg.5.A.3",
								name: "Distributions and accumulated earnings",
							},
						],
						lessonSlugs: ["11-c-corporations"],
						questionTopics: ["C Corporations"],
					},
					{
						letter: "B",
						name: "S corporations",
						topics: [
							{
								id: "reg.5.B.1",
								name: "S election requirements and termination",
							},
							{
								id: "reg.5.B.2",
								name: "Shareholder basis and distributions",
							},
							{
								id: "reg.5.B.3",
								name: "Built-in gains and passive income",
							},
						],
						lessonSlugs: ["12-s-corporations"],
						questionTopics: ["S Corporations"],
					},
					{
						letter: "C",
						name: "Partnerships",
						topics: [
							{
								id: "reg.5.C.1",
								name: "Formation and contributions",
							},
							{
								id: "reg.5.C.2",
								name: "Partner basis and distributive shares",
							},
							{
								id: "reg.5.C.3",
								name: "Distributions and liquidations",
							},
						],
						lessonSlugs: ["13-partnerships"],
						questionTopics: ["Partnerships"],
					},
					{
						letter: "D",
						name: "Estate and gift tax",
						topics: [
							{
								id: "reg.5.D.1",
								name: "Gift tax computation and exclusions",
							},
							{
								id: "reg.5.D.2",
								name: "Estate tax and unified credit",
							},
							{
								id: "reg.5.D.3",
								name: "Generation-skipping transfer tax",
							},
						],
						lessonSlugs: ["09-individual-taxation-income"],
						questionTopics: ["Estate and Gift Tax"],
					},
					{
						letter: "E",
						name: "Tax-exempt organizations",
						topics: [
							{
								id: "reg.5.E.1",
								name: "Section 501(c)(3) requirements",
							},
							{
								id: "reg.5.E.2",
								name: "Unrelated business income tax (UBIT)",
							},
							{
								id: "reg.5.E.3",
								name: "Private foundation rules",
							},
						],
						lessonSlugs: ["18-tax-exempt-organizations"],
						questionTopics: ["Tax-Exempt Organizations"],
					},
				],
			},
		],
	},

	// ─────────────────────────────────────────────────────────
	// BAR — Business Analysis and Reporting (3 areas, 16 groups)
	// ─────────────────────────────────────────────────────────
	{
		code: "bar",
		title: "Business Analysis and Reporting",
		areas: [
			{
				area: 1,
				name: "Business Analysis",
				weight: [40, 50],
				groups: [
					{
						letter: "A",
						name: "Financial statement analysis and forecasting",
						topics: [
							{
								id: "bar.1.A.1",
								name: "Ratio analysis and trend analysis",
							},
							{
								id: "bar.1.A.2",
								name: "Prospective financial information",
							},
							{
								id: "bar.1.A.3",
								name: "Cost-volume-profit analysis",
							},
						],
						lessonSlugs: ["02-financial-analysis", "03-prospective-analysis"],
						questionTopics: [
							"Financial Statement Analysis",
							"Prospective Analysis and Forecasting",
						],
					},
					{
						letter: "B",
						name: "Valuation and capital structure",
						topics: [
							{
								id: "bar.1.B.1",
								name: "Discounted cash flow models",
							},
							{
								id: "bar.1.B.2",
								name: "Weighted average cost of capital",
							},
							{
								id: "bar.1.B.3",
								name: "Market multiples and asset-based approaches",
							},
							{
								id: "bar.1.B.4",
								name: "Fair value measurement scope (ASC 820 vs. other frameworks)",
							},
						],
						lessonSlugs: [
							"04-capital-structure",
							"05-financial-valuation",
							"06-risk-management",
						],
						questionTopics: [
							"Capital Structure and Valuation",
							"Financial Valuation Methods",
							"Risk Management and Economics",
						],
					},
				],
			},
			{
				area: 2,
				name: "Technical Accounting and Reporting",
				weight: [35, 45],
				groups: [
					{
						letter: "A",
						name: "Revenue recognition (advanced)",
						topics: [
							{
								id: "bar.2.A.1",
								name: "Long-term contracts and multiple elements",
							},
							{
								id: "bar.2.A.2",
								name: "Variable consideration constraints",
							},
						],
						lessonSlugs: ["07-advanced-revenue"],
						questionTopics: ["Advanced Revenue and Intangibles"],
					},
					{
						letter: "B",
						name: "Internal-use software and cloud computing",
						topics: [
							{
								id: "bar.2.B.1",
								name: "ASC 350-40 capitalization stages",
							},
							{
								id: "bar.2.B.2",
								name: "Cloud computing hosting arrangements",
							},
						],
						lessonSlugs: ["12-internal-use-software"],
						questionTopics: ["Internal-Use Software and Cloud Computing"],
					},
					{
						letter: "C",
						name: "Stock-based compensation",
						topics: [
							{
								id: "bar.2.C.1",
								name: "Option and RSU fair value measurement",
							},
							{
								id: "bar.2.C.2",
								name: "Compensation expense recognition",
							},
						],
						lessonSlugs: ["08-stock-compensation"],
						questionTopics: ["Stock Compensation and Business Combinations"],
					},
					{
						letter: "D",
						name: "Business combinations",
						topics: [
							{
								id: "bar.2.D.1",
								name: "Acquisition method (ASC 805)",
							},
							{
								id: "bar.2.D.2",
								name: "Goodwill and bargain purchase gains",
							},
						],
						lessonSlugs: ["08-stock-compensation"],
						questionTopics: ["Business Combinations"],
					},
					{
						letter: "E",
						name: "Consolidations (advanced)",
						topics: [
							{
								id: "bar.2.E.1",
								name: "Variable interest entities",
							},
							{
								id: "bar.2.E.2",
								name: "Intercompany profit eliminations",
							},
							{
								id: "bar.2.E.3",
								name: "Changes in ownership interests",
							},
						],
						lessonSlugs: ["09-consolidations-advanced"],
						questionTopics: ["Advanced Consolidations"],
					},
					{
						letter: "F",
						name: "Derivatives and hedging",
						topics: [
							{
								id: "bar.2.F.1",
								name: "Derivative classification and measurement",
							},
							{
								id: "bar.2.F.2",
								name: "Hedge accounting (ASC 815)",
							},
							{
								id: "bar.2.F.3",
								name: "Fair value and cash flow hedges",
							},
						],
						lessonSlugs: ["10-derivatives"],
						questionTopics: ["Derivatives and Hedging"],
					},
					{
						letter: "G",
						name: "Foreign currency transactions",
						topics: [
							{
								id: "bar.2.G.1",
								name: "Transaction gains and losses",
							},
							{
								id: "bar.2.G.2",
								name: "Translation of foreign subsidiaries",
							},
						],
						lessonSlugs: ["10-derivatives"],
						questionTopics: ["Foreign Currency Transactions"],
					},
					{
						letter: "H",
						name: "Intangible assets (advanced)",
						topics: [
							{
								id: "bar.2.H.1",
								name: "Acquired intangibles in business combinations",
							},
							{
								id: "bar.2.H.2",
								name: "Impairment testing under ASC 350",
							},
						],
						lessonSlugs: ["07-advanced-revenue"],
						questionTopics: ["Intangible Assets Advanced"],
					},
					{
						letter: "I",
						name: "Advanced lease transactions",
						topics: [
							{
								id: "bar.2.I.1",
								name: "Sale-leaseback transactions",
							},
							{
								id: "bar.2.I.2",
								name: "Lease modifications and reassessments",
							},
						],
						lessonSlugs: ["13-advanced-leases"],
						questionTopics: ["Advanced Lease Transactions"],
					},
					{
						letter: "J",
						name: "Income taxes (advanced)",
						topics: [
							{
								id: "bar.2.J.1",
								name: "Uncertain tax positions (ASC 740-10)",
							},
							{
								id: "bar.2.J.2",
								name: "Tax provision in interim periods",
							},
						],
						lessonSlugs: ["09-consolidations-advanced"],
						questionTopics: ["Income Taxes Advanced"],
					},
					{
						letter: "K",
						name: "Employee benefit plans",
						topics: [
							{
								id: "bar.2.K.1",
								name: "Pension obligation components",
							},
							{
								id: "bar.2.K.2",
								name: "Net periodic pension cost",
							},
						],
						lessonSlugs: ["14-employee-benefit-plans"],
						questionTopics: ["Pension and Postretirement Benefits"],
					},
				],
			},
			{
				area: 3,
				name: "State and Local Government Concepts",
				weight: [10, 20],
				groups: [
					{
						letter: "A",
						name: "Government-wide financial statements",
						topics: [
							{
								id: "bar.3.A.1",
								name: "Government-wide reporting model",
							},
							{
								id: "bar.3.A.2",
								name: "Net position categories",
							},
						],
						lessonSlugs: ["11-government-advanced"],
						questionTopics: ["State and Local Government Reporting"],
					},
					{
						letter: "B",
						name: "Reconciliation requirements",
						topics: [
							{
								id: "bar.3.B.1",
								name: "Fund to government-wide reconciliation",
							},
							{
								id: "bar.3.B.2",
								name: "Capital asset and long-term liability adjustments",
							},
						],
						lessonSlugs: ["15-fund-reconciliation"],
						questionTopics: ["Fund-to-Government-Wide Reconciliation"],
					},
					{
						letter: "C",
						name: "Specific transactions and events",
						topics: [
							{
								id: "bar.3.C.1",
								name: "Interfund transactions and transfers",
							},
							{
								id: "bar.3.C.2",
								name: "Non-exchange transactions and derived revenues",
							},
						],
						lessonSlugs: ["16-interfund-transactions"],
						questionTopics: ["Interfund Transactions"],
					},
				],
			},
		],
	},

	// ─────────────────────────────────────────────────────────
	// ISC — Information Systems and Controls (3 areas, 18 groups)
	// ─────────────────────────────────────────────────────────
	{
		code: "isc",
		title: "Information Systems and Controls",
		areas: [
			{
				area: 1,
				name: "Information Systems and Data Management",
				weight: [35, 45],
				groups: [
					{
						letter: "A",
						name: "IT infrastructure and architecture",
						topics: [
							{
								id: "isc.1.A.1",
								name: "Network architecture and components",
							},
							{
								id: "isc.1.A.2",
								name: "Cloud computing models",
							},
							{
								id: "isc.1.A.3",
								name: "Hardware and operating system concepts",
							},
						],
						lessonSlugs: ["02-it-infrastructure"],
						questionTopics: ["IT Infrastructure and Architecture"],
					},
					{
						letter: "B",
						name: "Enterprise systems and applications",
						topics: [
							{
								id: "isc.1.B.1",
								name: "ERP system architecture and modules",
							},
							{
								id: "isc.1.B.2",
								name: "Accounting information systems",
							},
							{
								id: "isc.1.B.3",
								name: "System integration and interfaces",
							},
						],
						lessonSlugs: ["03-erp-accounting-systems"],
						questionTopics: ["ERP and Accounting Information Systems"],
					},
					{
						letter: "C",
						name: "Data management and governance",
						topics: [
							{
								id: "isc.1.C.1",
								name: "Database management systems",
							},
							{
								id: "isc.1.C.2",
								name: "Data lifecycle management",
							},
							{
								id: "isc.1.C.3",
								name: "Data governance frameworks",
							},
						],
						lessonSlugs: ["04-data-management"],
						questionTopics: ["Data Management and Lifecycle"],
					},
					{
						letter: "D",
						name: "System availability and business continuity",
						topics: [
							{
								id: "isc.1.D.1",
								name: "Business continuity planning",
							},
							{
								id: "isc.1.D.2",
								name: "Disaster recovery strategies",
							},
							{
								id: "isc.1.D.3",
								name: "High availability architectures",
							},
						],
						lessonSlugs: ["05-system-availability"],
						questionTopics: ["System Availability and Change Management"],
					},
					{
						letter: "E",
						name: "Change management",
						topics: [
							{
								id: "isc.1.E.1",
								name: "Change management processes",
							},
							{
								id: "isc.1.E.2",
								name: "Configuration and release management",
							},
							{
								id: "isc.1.E.3",
								name: "Emergency change procedures and metrics",
							},
							{
								id: "isc.1.E.4",
								name: "Change management data analytics and CMDB",
							},
						],
						lessonSlugs: ["05-system-availability"],
						questionTopics: ["Change Management"],
					},
					{
						letter: "F",
						name: "IT general controls",
						topics: [
							{
								id: "isc.1.F.1",
								name: "Logical access controls",
							},
							{
								id: "isc.1.F.2",
								name: "Program change controls",
							},
							{
								id: "isc.1.F.3",
								name: "Computer operations controls",
							},
						],
						lessonSlugs: ["13-it-general-controls"],
						questionTopics: ["IT General Controls"],
					},
					{
						letter: "G",
						name: "IT audit frameworks",
						topics: [
							{
								id: "isc.1.G.1",
								name: "COBIT and ITIL frameworks",
							},
							{
								id: "isc.1.G.2",
								name: "IT risk assessment methodologies",
							},
						],
						lessonSlugs: ["14-it-audit-frameworks"],
						questionTopics: ["IT Audit Frameworks"],
					},
				],
			},
			{
				area: 2,
				name: "Security, Confidentiality, and Privacy",
				weight: [35, 45],
				groups: [
					{
						letter: "A",
						name: "Security frameworks and standards",
						topics: [
							{
								id: "isc.2.A.1",
								name: "NIST Cybersecurity Framework",
							},
							{
								id: "isc.2.A.2",
								name: "ISO 27001 and security program elements",
							},
							{
								id: "isc.2.A.3",
								name: "COSO and security integration",
							},
						],
						lessonSlugs: ["06-security-frameworks"],
						questionTopics: ["Security and Control Frameworks"],
					},
					{
						letter: "B",
						name: "Threats and vulnerabilities",
						topics: [
							{
								id: "isc.2.B.1",
								name: "Malware, phishing, and social engineering",
							},
							{
								id: "isc.2.B.2",
								name: "Network-based attacks",
							},
							{
								id: "isc.2.B.3",
								name: "Vulnerability assessment and management",
							},
						],
						lessonSlugs: ["07-threats-vulnerabilities"],
						questionTopics: ["Threats, Attacks, and Vulnerabilities"],
					},
					{
						letter: "C",
						name: "Security controls and countermeasures",
						topics: [
							{
								id: "isc.2.C.1",
								name: "Preventive, detective, and corrective controls",
							},
							{
								id: "isc.2.C.2",
								name: "Encryption and authentication",
							},
							{
								id: "isc.2.C.3",
								name: "Network security controls",
							},
						],
						lessonSlugs: ["08-security-controls"],
						questionTopics: ["Security Controls and Monitoring"],
					},
					{
						letter: "D",
						name: "Monitoring and incident response",
						topics: [
							{
								id: "isc.2.D.1",
								name: "Security monitoring and SIEM",
							},
							{
								id: "isc.2.D.2",
								name: "Incident response planning and execution",
							},
							{
								id: "isc.2.D.3",
								name: "Digital forensics fundamentals",
							},
						],
						lessonSlugs: ["10-incident-response"],
						questionTopics: ["Incident Response and Recovery"],
					},
					{
						letter: "E",
						name: "Privacy requirements",
						topics: [
							{
								id: "isc.2.E.1",
								name: "Privacy regulations (GDPR, CCPA)",
							},
							{
								id: "isc.2.E.2",
								name: "Privacy impact assessments",
							},
							{
								id: "isc.2.E.3",
								name: "Data subject rights and consent",
							},
						],
						lessonSlugs: ["09-privacy"],
						questionTopics: ["Privacy Requirements and Data Protection"],
					},
					{
						letter: "F",
						name: "Data protection technologies",
						topics: [
							{
								id: "isc.2.F.1",
								name: "Data loss prevention",
							},
							{
								id: "isc.2.F.2",
								name: "Data classification and handling",
							},
						],
						lessonSlugs: ["09-privacy"],
						questionTopics: ["Data Protection Technologies"],
					},
				],
			},
			{
				area: 3,
				name: "SOC Engagements",
				weight: [15, 25],
				groups: [
					{
						letter: "A",
						name: "SOC engagement types and scope",
						topics: [
							{
								id: "isc.3.A.1",
								name: "SOC 1, SOC 2, SOC 3 distinctions",
							},
							{
								id: "isc.3.A.2",
								name: "Type I vs. Type II reports",
							},
							{
								id: "isc.3.A.3",
								name: "Engagement planning and scoping",
							},
						],
						lessonSlugs: ["11-soc-engagements"],
						questionTopics: ["SOC Engagements"],
					},
					{
						letter: "B",
						name: "Trust services criteria",
						topics: [
							{
								id: "isc.3.B.1",
								name: "Security, availability, processing integrity",
							},
							{
								id: "isc.3.B.2",
								name: "Confidentiality and privacy criteria",
							},
						],
						lessonSlugs: ["12-soc-reporting"],
						questionTopics: ["SOC Reporting and Trust Services Criteria"],
					},
					{
						letter: "C",
						name: "SOC report content and structure",
						topics: [
							{
								id: "isc.3.C.1",
								name: "Management description and assertions",
							},
							{
								id: "isc.3.C.2",
								name: "Complementary user/subservice controls",
							},
						],
						lessonSlugs: ["12-soc-reporting"],
						questionTopics: ["SOC Report Content and Structure"],
					},
					{
						letter: "D",
						name: "Testing controls in SOC engagements",
						topics: [
							{
								id: "isc.3.D.1",
								name: "Test of design and operating effectiveness",
							},
							{
								id: "isc.3.D.2",
								name: "Sampling in SOC engagements",
							},
						],
						lessonSlugs: ["15-soc-testing-controls"],
						questionTopics: ["SOC Testing Controls"],
					},
					{
						letter: "E",
						name: "Reporting on SOC engagements",
						topics: [
							{
								id: "isc.3.E.1",
								name: "Opinion formation and report elements",
							},
							{
								id: "isc.3.E.2",
								name: "Exceptions and qualified opinions",
							},
						],
						lessonSlugs: ["16-soc-reporting"],
						questionTopics: ["SOC Reporting"],
					},
				],
			},
		],
	},

	// ─────────────────────────────────────────────────────────
	// TCP — Tax Compliance and Planning (4 areas, 16 groups)
	// ─────────────────────────────────────────────────────────
	{
		code: "tcp",
		title: "Tax Compliance and Planning",
		areas: [
			{
				area: 1,
				name: "Individual Tax Planning",
				weight: [30, 40],
				groups: [
					{
						letter: "A",
						name: "Compensation planning and optimization",
						topics: [
							{
								id: "tcp.1.A.1",
								name: "Deferred compensation strategies",
							},
							{
								id: "tcp.1.A.2",
								name: "Stock option planning (ISO/NSO)",
							},
							{
								id: "tcp.1.A.3",
								name: "Fringe benefit optimization",
							},
						],
						lessonSlugs: ["02-individual-planning"],
						questionTopics: ["Individual Tax Planning: Compensation"],
					},
					{
						letter: "B",
						name: "Passive activities and at-risk limitations",
						topics: [
							{
								id: "tcp.1.B.1",
								name: "Passive activity loss rules (Section 469)",
							},
							{
								id: "tcp.1.B.2",
								name: "At-risk limitations (Section 465)",
							},
							{
								id: "tcp.1.B.3",
								name: "Real estate professional exception",
							},
						],
						lessonSlugs: ["03-passive-at-risk"],
						questionTopics: ["Passive Activity and At-Risk Rules"],
					},
					{
						letter: "C",
						name: "Wealth transfer and estate planning",
						topics: [
							{
								id: "tcp.1.C.1",
								name: "Lifetime gifting strategies",
							},
							{
								id: "tcp.1.C.2",
								name: "Estate tax planning techniques",
							},
							{
								id: "tcp.1.C.3",
								name: "Generation-skipping transfer planning",
							},
						],
						lessonSlugs: ["04-wealth-transfer"],
						questionTopics: ["Wealth Transfer and Gifting Strategies"],
					},
					{
						letter: "D",
						name: "Retirement and education savings",
						topics: [
							{
								id: "tcp.1.D.1",
								name: "Qualified plan types and contribution limits",
							},
							{
								id: "tcp.1.D.2",
								name: "IRA strategies and Roth conversions",
							},
							{
								id: "tcp.1.D.3",
								name: "529 plans and education incentives",
							},
						],
						lessonSlugs: ["05-retirement-education"],
						questionTopics: ["Retirement Plans and Education Savings"],
					},
				],
			},
			{
				area: 2,
				name: "Entity Tax Compliance",
				weight: [30, 40],
				groups: [
					{
						letter: "A",
						name: "Entity tax compliance and reporting",
						topics: [
							{
								id: "tcp.2.A.1",
								name: "NOL rules and carryover provisions",
							},
							{
								id: "tcp.2.A.2",
								name: "Consolidated return mechanics",
							},
							{
								id: "tcp.2.A.3",
								name: "Multi-entity compliance coordination",
							},
						],
						lessonSlugs: ["06-entity-compliance"],
						questionTopics: [
							"Entity Tax Compliance: NOLs and Consolidated Returns",
						],
					},
					{
						letter: "B",
						name: "International tax provisions",
						topics: [
							{
								id: "tcp.2.B.1",
								name: "Subpart F and GILTI",
							},
							{
								id: "tcp.2.B.2",
								name: "Foreign tax credit mechanics",
							},
						],
						lessonSlugs: ["07-international-tax"],
						questionTopics: ["International Tax"],
					},
					{
						letter: "C",
						name: "Owner-entity transactions",
						topics: [
							{
								id: "tcp.2.C.1",
								name: "Guaranteed payments and self-employment",
							},
							{
								id: "tcp.2.C.2",
								name: "Reasonable compensation analysis",
							},
							{
								id: "tcp.2.C.3",
								name: "Loans and property transactions with entities",
							},
						],
						lessonSlugs: ["08-owner-entity"],
						questionTopics: ["Owner-Entity Transactions"],
					},
					{
						letter: "D",
						name: "Advanced basis calculations",
						topics: [
							{
								id: "tcp.2.D.1",
								name: "Partnership inside/outside basis",
							},
							{
								id: "tcp.2.D.2",
								name: "S corporation stock and debt basis",
							},
							{
								id: "tcp.2.D.3",
								name: "Section 754 elections",
							},
						],
						lessonSlugs: ["09-basis-calculations"],
						questionTopics: ["Advanced Basis Calculations"],
					},
					{
						letter: "E",
						name: "Entity formation and liquidation",
						topics: [
							{
								id: "tcp.2.E.1",
								name: "Section 351 transfers and boot",
							},
							{
								id: "tcp.2.E.2",
								name: "Section 721 contributions",
							},
							{
								id: "tcp.2.E.3",
								name: "Corporate and partnership liquidations",
							},
						],
						lessonSlugs: ["11-formation-liquidation"],
						questionTopics: ["Entity Formation and Liquidation"],
					},
				],
			},
			{
				area: 3,
				name: "Advanced Tax Concepts",
				weight: [10, 20],
				groups: [
					{
						letter: "A",
						name: "Trust and estate taxation",
						topics: [
							{
								id: "tcp.3.A.1",
								name: "Trust types and taxation",
							},
							{
								id: "tcp.3.A.2",
								name: "Distributable net income",
							},
							{
								id: "tcp.3.A.3",
								name: "Estate income tax (Form 1041)",
							},
						],
						lessonSlugs: ["10-trusts-estates"],
						questionTopics: ["Trusts and Estates"],
					},
					{
						letter: "B",
						name: "Entity choice and planning strategies",
						topics: [
							{
								id: "tcp.3.B.1",
								name: "Entity selection factors",
							},
							{
								id: "tcp.3.B.2",
								name: "Conversion between entity types",
							},
							{
								id: "tcp.3.B.3",
								name: "Multi-entity structuring",
							},
						],
						lessonSlugs: ["12-entity-choice"],
						questionTopics: ["Entity Choice and Planning"],
					},
					{
						letter: "C",
						name: "Capital structure optimization",
						topics: [
							{
								id: "tcp.3.C.1",
								name: "Debt vs. equity classification",
							},
							{
								id: "tcp.3.C.2",
								name: "Section 385 regulations",
							},
							{
								id: "tcp.3.C.3",
								name: "Interest expense limitations (Section 163(j))",
							},
						],
						lessonSlugs: ["13-capital-structure-tax"],
						questionTopics: ["Capital Structure Tax Planning"],
					},
					{
						letter: "D",
						name: "Multi-jurisdictional planning",
						topics: [
							{
								id: "tcp.3.D.1",
								name: "State and local tax considerations",
							},
							{
								id: "tcp.3.D.2",
								name: "Nexus and apportionment",
							},
						],
						lessonSlugs: ["07-international-tax"],
						questionTopics: ["Multi-Jurisdictional Tax Planning"],
					},
				],
			},
			{
				area: 4,
				name: "Special Tax Transactions",
				weight: [10, 20],
				groups: [
					{
						letter: "A",
						name: "Entity formation and restructuring",
						topics: [
							{
								id: "tcp.4.A.1",
								name: "Tax-free reorganizations (Type A-G)",
							},
							{
								id: "tcp.4.A.2",
								name: "Section 338 elections",
							},
						],
						lessonSlugs: ["11-formation-liquidation"],
						questionTopics: ["Entity Formation and Restructuring"],
					},
					{
						letter: "B",
						name: "Nontaxable dispositions",
						topics: [
							{
								id: "tcp.4.B.1",
								name: "Installment sales (Section 453)",
							},
							{
								id: "tcp.4.B.2",
								name: "Involuntary conversions (Section 1033)",
							},
						],
						lessonSlugs: ["14-nontaxable-dispositions"],
						questionTopics: ["Nontaxable Dispositions"],
					},
					{
						letter: "C",
						name: "Related party transactions",
						topics: [
							{
								id: "tcp.4.C.1",
								name: "Section 267 loss disallowance",
							},
							{
								id: "tcp.4.C.2",
								name: "Constructive ownership rules",
							},
						],
						lessonSlugs: ["15-related-party-transactions"],
						questionTopics: ["Related Party Transactions"],
					},
				],
			},
		],
	},
];
