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

// --- Question counts by topic (approximate, from seed migrations 00002–00015) ---

export const questionCounts: Record<string, number> = {
	// AUD (755 total)
	"Ethics and Independence": 60,
	"Professional Responsibilities": 50,
	"Quality Management": 45,
	"Audit Planning": 62,
	"Risk Assessment": 62,
	"Internal Controls": 70,
	"Audit Evidence": 65,
	"Audit Sampling": 48,
	"Substantive Procedures": 55,
	"Audit Reports": 62,
	"Review and Compilation": 48,
	"Review/Compilation Engagements": 35,
	"Attestation Engagements": 48,
	"Government Auditing Standards": 45,
	// FAR (780 total)
	"Financial Statements": 50,
	"Statement of Cash Flows": 35,
	"Earnings Per Share": 28,
	"Revenue Recognition": 55,
	Inventory: 45,
	"Fixed Assets": 48,
	"Intangible Assets": 40,
	Leases: 45,
	"Bonds and Debt": 45,
	Equity: 45,
	Contingencies: 28,
	"Income Taxes": 48,
	Consolidations: 48,
	"Fair Value": 38,
	"Not-for-Profit Accounting": 40,
	"Governmental Accounting": 40,
	"Cash and Receivables": 35,
	"Employee Benefit Plans": 35,
	"Special Purpose Frameworks": 32,
	// REG (810 total)
	"Circular 230": 40,
	"Professional Ethics in Tax": 35,
	"Tax Procedures": 28,
	"Business Law: Contracts": 46,
	"Agency and Regulation": 40,
	"Business Structures": 40,
	"Property Transactions: Basis": 55,
	"Property Transactions: Gains/Losses": 40,
	"Like-Kind Exchanges": 28,
	"Individual Taxation: Income": 58,
	"Individual Taxation: Deductions": 42,
	"Individual Taxation: Credits": 35,
	"Individual Taxation: Credits/AMT": 28,
	"Individual Taxation: Filing/Credits": 55,
	"Estate and Gift Tax": 35,
	"C Corporations": 46,
	"S Corporations": 40,
	Partnerships: 35,
	"Legal Duties and Responsibilities": 32,
	"Debtor-Creditor Relationships": 32,
	"Tax-Exempt Organizations": 20,
	// BAR (700 total)
	"Financial Statement Analysis": 60,
	"Prospective Analysis and Forecasting": 48,
	"Capital Structure and Valuation": 55,
	"Financial Valuation Methods": 60,
	"Risk Management and Economics": 42,
	"Advanced Revenue and Intangibles": 50,
	"Stock Compensation and Business Combinations": 55,
	"Advanced Consolidations": 52,
	"Derivatives and Hedging": 52,
	"State and Local Government Reporting": 48,
	"Internal-Use Software and Cloud Computing": 38,
	"Advanced Lease Transactions": 37,
	"Pension and Postretirement Benefits": 37,
	"Fund-to-Government-Wide Reconciliation": 35,
	"Interfund Transactions": 31,
	// ISC (689 total)
	"IT Infrastructure and Architecture": 56,
	"ERP and Accounting Information Systems": 48,
	"Data Management and Lifecycle": 48,
	"System Availability and Change Management": 62,
	"Security and Control Frameworks": 56,
	"Threats, Attacks, and Vulnerabilities": 48,
	"Security Controls and Monitoring": 48,
	"Incident Response and Recovery": 42,
	"Privacy Requirements and Data Protection": 53,
	"SOC Engagements": 46,
	"SOC Reporting and Trust Services Criteria": 42,
	"IT General Controls": 35,
	"IT Audit Frameworks": 35,
	"SOC Testing Controls": 35,
	"SOC Reporting": 35,
	// TCP (671 total)
	"Individual Tax Planning: Compensation": 58,
	"Passive Activity and At-Risk Rules": 50,
	"Wealth Transfer and Gifting Strategies": 58,
	"Retirement Plans and Education Savings": 50,
	"Entity Tax Compliance: NOLs and Consolidated Returns": 50,
	"International Tax": 58,
	"Owner-Entity Transactions": 52,
	"Advanced Basis Calculations": 42,
	"Entity Formation and Liquidation": 42,
	"Trusts and Estates": 52,
	"Entity Choice and Planning": 48,
	"Capital Structure Tax Planning": 36,
	"Nontaxable Dispositions": 38,
	"Related Party Transactions": 37,
};

export const sectionQuestionTotals: Record<string, number> = {
	aud: 755,
	far: 780,
	reg: 810,
	bar: 700,
	isc: 689,
	tcp: 671,
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
			{
				area: 1,
				name: "Financial Reporting",
				weight: [30, 40],
				groups: [
					{
						letter: "A",
						name: "Conceptual framework and standards",
						topics: [
							{
								id: "far.1.A.1",
								name: "FASB Conceptual Framework",
							},
							{
								id: "far.1.A.2",
								name: "GAAP hierarchy and standard-setting",
							},
						],
						lessonSlugs: ["01-intro"],
						questionTopics: [],
					},
					{
						letter: "B",
						name: "Financial statement presentation",
						topics: [
							{
								id: "far.1.B.1",
								name: "Balance sheet classification and presentation",
							},
							{
								id: "far.1.B.2",
								name: "Income statement formats",
							},
							{
								id: "far.1.B.3",
								name: "Statement of comprehensive income",
							},
						],
						lessonSlugs: ["02-financial-statements"],
						questionTopics: ["Financial Statements"],
					},
					{
						letter: "C",
						name: "Statement of cash flows",
						topics: [
							{
								id: "far.1.C.1",
								name: "Operating, investing, and financing activities",
							},
							{
								id: "far.1.C.2",
								name: "Direct and indirect methods",
							},
						],
						lessonSlugs: ["02-financial-statements"],
						questionTopics: ["Statement of Cash Flows"],
					},
					{
						letter: "D",
						name: "Earnings per share",
						topics: [
							{ id: "far.1.D.1", name: "Basic EPS computation" },
							{
								id: "far.1.D.2",
								name: "Diluted EPS and convertible securities",
							},
						],
						lessonSlugs: ["02-financial-statements"],
						questionTopics: ["Earnings Per Share"],
					},
					{
						letter: "E",
						name: "Employee benefit plans",
						topics: [
							{
								id: "far.1.E.1",
								name: "Defined benefit plan accounting",
							},
							{
								id: "far.1.E.2",
								name: "Defined contribution plan reporting",
							},
							{
								id: "far.1.E.3",
								name: "Postretirement benefits other than pensions",
							},
						],
						lessonSlugs: ["15-employee-benefit-plans"],
						questionTopics: ["Employee Benefit Plans"],
					},
					{
						letter: "F",
						name: "Special purpose frameworks",
						topics: [
							{
								id: "far.1.F.1",
								name: "Cash and modified cash basis",
							},
							{ id: "far.1.F.2", name: "Tax basis financial statements" },
							{
								id: "far.1.F.3",
								name: "Regulatory and contractual bases",
							},
						],
						lessonSlugs: ["16-special-purpose-frameworks"],
						questionTopics: ["Special Purpose Frameworks"],
					},
				],
			},
			{
				area: 2,
				name: "Select Balance Sheet Accounts",
				weight: [30, 40],
				groups: [
					{
						letter: "A",
						name: "Cash and receivables",
						topics: [
							{
								id: "far.2.A.1",
								name: "Cash and bank reconciliations",
							},
							{
								id: "far.2.A.2",
								name: "Allowance for credit losses (CECL)",
							},
						],
						lessonSlugs: ["14-cash-and-receivables"],
						questionTopics: ["Cash and Receivables"],
					},
					{
						letter: "B",
						name: "Revenue recognition",
						topics: [
							{
								id: "far.2.B.1",
								name: "ASC 606 five-step model",
							},
							{
								id: "far.2.B.2",
								name: "Contract modifications and variable consideration",
							},
							{
								id: "far.2.B.3",
								name: "Performance obligations and timing",
							},
						],
						lessonSlugs: ["03-revenue-recognition"],
						questionTopics: ["Revenue Recognition"],
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
						lessonSlugs: ["04-inventory"],
						questionTopics: ["Inventory"],
					},
					{
						letter: "D",
						name: "Fixed assets and depreciation",
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
								name: "Asset retirement obligations",
							},
						],
						lessonSlugs: ["05-fixed-assets"],
						questionTopics: ["Fixed Assets"],
					},
					{
						letter: "E",
						name: "Intangible assets",
						topics: [
							{
								id: "far.2.E.1",
								name: "Finite vs. indefinite-lived intangibles",
							},
							{ id: "far.2.E.2", name: "Goodwill and impairment testing" },
							{ id: "far.2.E.3", name: "Research and development costs" },
						],
						lessonSlugs: ["06-intangible-assets"],
						questionTopics: ["Intangible Assets"],
					},
					{
						letter: "F",
						name: "Payables and accrued liabilities",
						topics: [
							{
								id: "far.2.F.1",
								name: "Accounts payable and accruals",
							},
							{
								id: "far.2.F.2",
								name: "Compensated absences",
							},
						],
						lessonSlugs: ["02-financial-statements"],
						questionTopics: [],
					},
					{
						letter: "G",
						name: "Leases",
						topics: [
							{
								id: "far.2.G.1",
								name: "ASC 842 lessee accounting",
							},
							{
								id: "far.2.G.2",
								name: "Operating vs. finance lease classification",
							},
							{ id: "far.2.G.3", name: "Lessor accounting" },
						],
						lessonSlugs: ["07-leases"],
						questionTopics: ["Leases"],
					},
					{
						letter: "H",
						name: "Bonds and long-term debt",
						topics: [
							{
								id: "far.2.H.1",
								name: "Bond issuance and amortization",
							},
							{
								id: "far.2.H.2",
								name: "Troubled debt restructuring",
							},
							{
								id: "far.2.H.3",
								name: "Debt extinguishment gains/losses",
							},
						],
						lessonSlugs: ["08-bonds-and-debt"],
						questionTopics: ["Bonds and Debt"],
					},
					{
						letter: "I",
						name: "Equity",
						topics: [
							{
								id: "far.2.I.1",
								name: "Common and preferred stock",
							},
							{
								id: "far.2.I.2",
								name: "Treasury stock (cost and par methods)",
							},
							{
								id: "far.2.I.3",
								name: "Retained earnings and dividends",
							},
						],
						lessonSlugs: ["09-equity"],
						questionTopics: ["Equity"],
					},
				],
			},
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
						lessonSlugs: ["02-financial-statements"],
						questionTopics: [],
					},
					{
						letter: "B",
						name: "Contingencies and commitments",
						topics: [
							{
								id: "far.3.B.1",
								name: "Loss contingencies (ASC 450)",
							},
							{ id: "far.3.B.2", name: "Gain contingencies" },
							{
								id: "far.3.B.3",
								name: "Guarantees and commitments",
							},
						],
						lessonSlugs: ["17-contingencies"],
						questionTopics: ["Contingencies"],
					},
					{
						letter: "C",
						name: "Income taxes",
						topics: [
							{
								id: "far.3.C.1",
								name: "Deferred tax assets and liabilities",
							},
							{ id: "far.3.C.2", name: "Valuation allowances" },
							{
								id: "far.3.C.3",
								name: "Intraperiod and interperiod allocation",
							},
						],
						lessonSlugs: ["10-income-taxes"],
						questionTopics: ["Income Taxes"],
					},
					{
						letter: "D",
						name: "Consolidations",
						topics: [
							{
								id: "far.3.D.1",
								name: "Business combinations (ASC 805)",
							},
							{
								id: "far.3.D.2",
								name: "Consolidation procedures and NCI",
							},
							{
								id: "far.3.D.3",
								name: "Intercompany eliminations",
							},
						],
						lessonSlugs: ["13-consolidations"],
						questionTopics: ["Consolidations"],
					},
					{
						letter: "E",
						name: "Fair value measurements",
						topics: [
							{
								id: "far.3.E.1",
								name: "ASC 820 scope and fair value hierarchy",
							},
							{
								id: "far.3.E.2",
								name: "Valuation techniques and inputs",
							},
						],
						lessonSlugs: ["18-fair-value"],
						questionTopics: ["Fair Value"],
					},
					{
						letter: "F",
						name: "Not-for-profit accounting",
						topics: [
							{
								id: "far.3.F.1",
								name: "Net asset classifications",
							},
							{
								id: "far.3.F.2",
								name: "Revenue recognition for contributions",
							},
							{
								id: "far.3.F.3",
								name: "NFP financial statement presentation",
							},
						],
						lessonSlugs: ["12-not-for-profit"],
						questionTopics: ["Not-for-Profit Accounting"],
					},
					{
						letter: "G",
						name: "Governmental accounting fundamentals",
						topics: [
							{
								id: "far.3.G.1",
								name: "GASB standards and modified accrual",
							},
							{
								id: "far.3.G.2",
								name: "Fund types and fund accounting",
							},
							{
								id: "far.3.G.3",
								name: "Budgetary accounting",
							},
						],
						lessonSlugs: ["11-governmental-accounting"],
						questionTopics: [],
					},
				],
			},
			{
				area: 4,
				name: "State and Local Governments",
				weight: [5, 15],
				groups: [
					{
						letter: "A",
						name: "Government-wide and fund financial statements",
						topics: [
							{
								id: "far.4.A.1",
								name: "Government-wide financial statements",
							},
							{
								id: "far.4.A.2",
								name: "Governmental fund statements",
							},
							{
								id: "far.4.A.3",
								name: "Proprietary and fiduciary funds",
							},
						],
						lessonSlugs: ["11-governmental-accounting"],
						questionTopics: ["Governmental Accounting"],
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
						questionTopics: ["Tax Procedures"],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
						questionTopics: [],
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
