export interface Lesson {
	slug: string;
	title: string;
	contentPath: string;
	isFree: boolean;
	/** AICPA blueprint anchor (group or topic level). Populated per Direction W. */
	aicpaRef?: string;
}

export interface Section {
	code: string;
	title: string;
	description: string;
	slug: string;
	lessons: Lesson[];
}

// All sections (always complete — not filtered by NEXT_PUBLIC_ACTIVE_SECTIONS)
export const allSections: Section[] = [
	{
		code: "aud",
		title: "Auditing and Attestation",
		description:
			"Ethics, risk assessment, audit evidence, and forming conclusions. Covers the full audit lifecycle from engagement acceptance through reporting.",
		slug: "aud",
		lessons: [
			{
				slug: "01-intro",
				title: "Introduction to Auditing and Attestation",
				contentPath: "aud/01-intro",
				isFree: true,
			},
			{
				slug: "02-ethics-and-independence",
				title: "Ethics and Independence",
				contentPath: "aud/02-ethics-and-independence",
				isFree: false,
			},
			{
				slug: "03-audit-planning",
				title: "Audit Planning",
				contentPath: "aud/03-audit-planning",
				isFree: false,
			},
			{
				slug: "04-risk-assessment",
				title: "Risk Assessment",
				contentPath: "aud/04-risk-assessment",
				isFree: false,
			},
			{
				slug: "05-internal-controls",
				title: "Internal Controls",
				contentPath: "aud/05-internal-controls",
				isFree: false,
			},
			{
				slug: "06-audit-evidence",
				title: "Audit Evidence",
				contentPath: "aud/06-audit-evidence",
				isFree: false,
			},
			{
				slug: "07-sampling",
				title: "Audit Sampling",
				contentPath: "aud/07-sampling",
				isFree: false,
			},
			{
				slug: "08-substantive-procedures",
				title: "Substantive Procedures",
				contentPath: "aud/08-substantive-procedures",
				isFree: false,
			},
			{
				slug: "09-audit-reports",
				title: "Audit Reports",
				contentPath: "aud/09-audit-reports",
				isFree: false,
			},
			{
				slug: "10-review-compilation",
				title: "Review and Compilation Engagements",
				contentPath: "aud/10-review-compilation",
				isFree: false,
			},
			{
				slug: "11-attestation-engagements",
				title: "Attestation Engagements",
				contentPath: "aud/11-attestation-engagements",
				isFree: false,
			},
			{
				slug: "12-quality-management",
				title: "Quality Management",
				contentPath: "aud/12-quality-management",
				isFree: false,
			},
			{
				slug: "13-government-auditing",
				title: "Government Auditing Standards",
				contentPath: "aud/13-government-auditing",
				isFree: false,
			},
		],
	},
	{
		code: "far",
		title: "Financial Accounting and Reporting",
		description:
			"Financial statement preparation, select transactions, and governmental accounting. The most content-heavy section of the CPA exam.",
		slug: "far",
		lessons: [
			// Area I: Financial Reporting (30-40%) — AICPA Groups A-F
			{
				slug: "01-financial-reporting-for-profit",
				title: "Financial Reporting: For-Profit Entities",
				contentPath: "far/01-intro",
				isFree: true,
			},
			{
				slug: "02-statement-of-cash-flows",
				title: "Statement of Cash Flows",
				contentPath: "far/03-statement-of-cash-flows",
				isFree: true,
			},
			{
				slug: "03-consolidated-financial-statements",
				title: "Consolidated Financial Statements",
				contentPath: "far/19-consolidations",
				isFree: true,
			},
			{
				slug: "04-not-for-profit",
				title: "Financial Reporting: Not-for-Profit Entities",
				contentPath: "far/21-not-for-profit",
				isFree: true,
			},
			{
				slug: "05-state-local-government",
				title: "State and Local Government Concepts",
				contentPath: "far/22-governmental-accounting-fundamentals",
				isFree: true,
			},
			{
				slug: "06-public-company-reporting",
				title: "Public Company Reporting and EPS",
				contentPath: "far/04-earnings-per-share",
				isFree: true,
			},
			{
				slug: "07-special-purpose-frameworks",
				title: "Special Purpose Frameworks",
				contentPath: "far/06-special-purpose-frameworks",
				isFree: true,
			},
			{
				slug: "08-financial-statement-ratios",
				title: "Financial Statement Ratios and Performance Metrics",
				contentPath: "far/08-financial-statement-ratios",
				isFree: true,
			},
			// Area II: Select Balance Sheet Accounts (30-40%) — AICPA Groups A-I
			{
				slug: "09-cash-and-cash-equivalents",
				title: "Cash and Cash Equivalents",
				contentPath: "far/07-cash-and-receivables",
				isFree: true,
			},
			{
				slug: "10-trade-receivables",
				title: "Trade Receivables",
				contentPath: "far/10-trade-receivables",
				isFree: true,
			},
			{
				slug: "11-inventory",
				title: "Inventory",
				contentPath: "far/09-inventory",
				isFree: true,
			},
			{
				slug: "12-property-plant-equipment",
				title: "Property, Plant and Equipment",
				contentPath: "far/10-fixed-assets",
				isFree: true,
			},
			{
				slug: "13-investments",
				title: "Investments",
				contentPath: "far/13-investments",
				isFree: true,
			},
			{
				slug: "14-intangible-assets",
				title: "Intangible Assets",
				contentPath: "far/11-intangible-assets",
				isFree: true,
			},
			{
				slug: "15-payables-and-accrued-liabilities",
				title: "Payables and Accrued Liabilities",
				contentPath: "far/12-payables-and-accrued-liabilities",
				isFree: true,
			},
			{
				slug: "16-debt",
				title: "Debt",
				contentPath: "far/14-bonds-and-debt",
				isFree: true,
			},
			{
				slug: "17-equity",
				title: "Equity",
				contentPath: "far/15-equity",
				isFree: true,
			},
			// Area III: Select Transactions (25-35%) — AICPA Groups A-G
			{
				slug: "18-accounting-changes",
				title: "Accounting Changes and Error Corrections",
				contentPath: "far/16-accounting-changes",
				isFree: true,
			},
			{
				slug: "19-contingencies",
				title: "Contingencies and Commitments",
				contentPath: "far/17-contingencies",
				isFree: true,
			},
			{
				slug: "20-revenue-recognition",
				title: "Revenue Recognition",
				contentPath: "far/08-revenue-recognition",
				isFree: true,
			},
			{
				slug: "21-income-taxes",
				title: "Income Taxes",
				contentPath: "far/18-income-taxes",
				isFree: true,
			},
			{
				slug: "22-fair-value",
				title: "Fair Value Measurements",
				contentPath: "far/20-fair-value",
				isFree: true,
			},
			{
				slug: "23-lessee-accounting",
				title: "Lessee Accounting",
				contentPath: "far/13-leases",
				isFree: true,
			},
			{
				slug: "24-subsequent-events",
				title: "Subsequent Events",
				contentPath: "far/24-subsequent-events",
				isFree: true,
			},
		],
	},
	{
		code: "reg",
		title: "Taxation and Regulation",
		description:
			"Federal taxation for individuals and entities, business law, and ethics. Covers tax compliance, planning, and professional responsibilities.",
		slug: "reg",
		lessons: [
			{
				slug: "01-intro",
				title: "Introduction to Taxation and Regulation",
				contentPath: "reg/01-intro",
				isFree: true,
			},
			{
				slug: "02-circular-230",
				title: "Circular 230 and Professional Responsibilities",
				contentPath: "reg/02-circular-230",
				isFree: false,
			},
			{
				slug: "03-business-law-contracts",
				title: "Business Law: Contracts",
				contentPath: "reg/03-business-law-contracts",
				isFree: false,
			},
			{
				slug: "04-agency-and-regulation",
				title: "Agency and Business Regulation",
				contentPath: "reg/04-agency-and-regulation",
				isFree: false,
			},
			{
				slug: "05-business-structures",
				title: "Business Structures",
				contentPath: "reg/05-business-structures",
				isFree: false,
			},
			{
				slug: "06-property-transactions-basis",
				title: "Property Transactions: Basis",
				contentPath: "reg/06-property-transactions-basis",
				isFree: false,
			},
			{
				slug: "07-property-transactions-gains",
				title: "Property Transactions: Gains and Losses",
				contentPath: "reg/07-property-transactions-gains",
				isFree: false,
			},
			{
				slug: "08-like-kind-exchanges",
				title: "Like-Kind Exchanges",
				contentPath: "reg/08-like-kind-exchanges",
				isFree: false,
			},
			{
				slug: "09-individual-taxation-income",
				title: "Individual Taxation: Income",
				contentPath: "reg/09-individual-taxation-income",
				isFree: false,
			},
			{
				slug: "10-individual-taxation-credits",
				title: "Individual Taxation: Credits and AMT",
				contentPath: "reg/10-individual-taxation-credits",
				isFree: false,
			},
			{
				slug: "11-c-corporations",
				title: "C Corporations",
				contentPath: "reg/11-c-corporations",
				isFree: false,
			},
			{
				slug: "12-s-corporations",
				title: "S Corporations",
				contentPath: "reg/12-s-corporations",
				isFree: false,
			},
			{
				slug: "13-partnerships",
				title: "Partnerships",
				contentPath: "reg/13-partnerships",
				isFree: false,
			},
			{
				slug: "14-federal-tax-procedures",
				title: "Federal Tax Procedures",
				contentPath: "reg/14-federal-tax-procedures",
				isFree: false,
			},
			{
				slug: "15-legal-duties",
				title: "Legal Duties and Responsibilities",
				contentPath: "reg/15-legal-duties",
				isFree: false,
			},
			{
				slug: "16-debtor-creditor",
				title: "Debtor-Creditor Relationships",
				contentPath: "reg/16-debtor-creditor",
				isFree: false,
			},
			{
				slug: "17-filing-status-dependents",
				title: "Filing Status and Dependents",
				contentPath: "reg/17-filing-status-dependents",
				isFree: false,
			},
			{
				slug: "18-tax-exempt-organizations",
				title: "Tax-Exempt Organizations",
				contentPath: "reg/18-tax-exempt-organizations",
				isFree: false,
			},
		],
	},
	{
		code: "bar",
		title: "Business Analysis and Reporting",
		description:
			"Financial analysis, valuation, advanced accounting, and governmental reporting. A discipline section for candidates pursuing corporate finance and advisory careers.",
		slug: "bar",
		lessons: [
			{
				slug: "01-intro",
				title: "Introduction to Business Analysis and Reporting",
				contentPath: "bar/01-intro",
				isFree: true,
			},
			{
				slug: "02-financial-analysis",
				title: "Financial Statement Analysis",
				contentPath: "bar/02-financial-analysis",
				isFree: false,
			},
			{
				slug: "03-prospective-analysis",
				title: "Prospective Analysis and Forecasting",
				contentPath: "bar/03-prospective-analysis",
				isFree: false,
			},
			{
				slug: "04-capital-structure",
				title: "Capital Structure and Valuation",
				contentPath: "bar/04-capital-structure",
				isFree: false,
			},
			{
				slug: "05-financial-valuation",
				title: "Financial Valuation Methods",
				contentPath: "bar/05-financial-valuation",
				isFree: false,
			},
			{
				slug: "06-risk-management",
				title: "Risk Management and Economics",
				contentPath: "bar/06-risk-management",
				isFree: false,
			},
			{
				slug: "07-advanced-revenue",
				title: "Advanced Revenue and Intangibles",
				contentPath: "bar/07-advanced-revenue",
				isFree: false,
			},
			{
				slug: "08-stock-compensation",
				title: "Stock Compensation and Business Combinations",
				contentPath: "bar/08-stock-compensation",
				isFree: false,
			},
			{
				slug: "09-consolidations-advanced",
				title: "Advanced Consolidations",
				contentPath: "bar/09-consolidations-advanced",
				isFree: false,
			},
			{
				slug: "10-derivatives",
				title: "Derivatives and Hedging",
				contentPath: "bar/10-derivatives",
				isFree: false,
			},
			{
				slug: "11-government-advanced",
				title: "State and Local Government Reporting",
				contentPath: "bar/11-government-advanced",
				isFree: false,
			},
			{
				slug: "12-internal-use-software",
				title: "Internal-Use Software and Cloud Computing",
				contentPath: "bar/12-internal-use-software",
				isFree: false,
			},
			{
				slug: "13-advanced-leases",
				title: "Advanced Lease Transactions",
				contentPath: "bar/13-advanced-leases",
				isFree: false,
			},
			{
				slug: "14-employee-benefit-plans",
				title: "Employee Benefit Plans",
				contentPath: "bar/14-employee-benefit-plans",
				isFree: false,
			},
			{
				slug: "15-fund-reconciliation",
				title: "Fund-to-Government-Wide Reconciliation",
				contentPath: "bar/15-fund-reconciliation",
				isFree: false,
			},
			{
				slug: "16-interfund-transactions",
				title: "Interfund Transactions",
				contentPath: "bar/16-interfund-transactions",
				isFree: false,
			},
		],
	},
	{
		code: "isc",
		title: "Information Systems and Controls",
		description:
			"IT infrastructure, cybersecurity, data management, and SOC engagements. A discipline section for candidates pursuing IT audit and technology advisory careers.",
		slug: "isc",
		lessons: [
			{
				slug: "01-intro",
				title: "Introduction to Information Systems and Controls",
				contentPath: "isc/01-intro",
				isFree: true,
			},
			{
				slug: "02-it-infrastructure",
				title: "IT Infrastructure and Architecture",
				contentPath: "isc/02-it-infrastructure",
				isFree: false,
			},
			{
				slug: "03-erp-accounting-systems",
				title: "ERP and Accounting Information Systems",
				contentPath: "isc/03-erp-accounting-systems",
				isFree: false,
			},
			{
				slug: "04-data-management",
				title: "Data Management and Lifecycle",
				contentPath: "isc/04-data-management",
				isFree: false,
			},
			{
				slug: "05-system-availability",
				title: "System Availability and Change Management",
				contentPath: "isc/05-system-availability",
				isFree: false,
			},
			{
				slug: "06-security-frameworks",
				title: "Security and Control Frameworks",
				contentPath: "isc/06-security-frameworks",
				isFree: false,
			},
			{
				slug: "07-threats-vulnerabilities",
				title: "Threats, Attacks, and Vulnerabilities",
				contentPath: "isc/07-threats-vulnerabilities",
				isFree: false,
			},
			{
				slug: "08-security-controls",
				title: "Security Controls and Monitoring",
				contentPath: "isc/08-security-controls",
				isFree: false,
			},
			{
				slug: "09-privacy",
				title: "Privacy Requirements and Data Protection",
				contentPath: "isc/09-privacy",
				isFree: false,
			},
			{
				slug: "10-incident-response",
				title: "Incident Response and Recovery",
				contentPath: "isc/10-incident-response",
				isFree: false,
			},
			{
				slug: "11-soc-engagements",
				title: "SOC Engagements",
				contentPath: "isc/11-soc-engagements",
				isFree: false,
			},
			{
				slug: "12-soc-reporting",
				title: "SOC Reporting and Trust Services Criteria",
				contentPath: "isc/12-soc-reporting",
				isFree: false,
			},
			{
				slug: "13-it-general-controls",
				title: "IT General Controls",
				contentPath: "isc/13-it-general-controls",
				isFree: false,
			},
			{
				slug: "14-it-audit-frameworks",
				title: "IT Audit Frameworks",
				contentPath: "isc/14-it-audit-frameworks",
				isFree: false,
			},
			{
				slug: "15-soc-testing-controls",
				title: "SOC Testing Controls",
				contentPath: "isc/15-soc-testing-controls",
				isFree: false,
			},
			{
				slug: "16-soc-reporting",
				title: "SOC Reporting",
				contentPath: "isc/16-soc-reporting",
				isFree: false,
			},
		],
	},
	{
		code: "tcp",
		title: "Tax Compliance and Planning",
		description:
			"Advanced tax planning, international tax, entity compliance, and specialized transactions. A discipline section for candidates pursuing tax practice careers.",
		slug: "tcp",
		lessons: [
			{
				slug: "01-intro",
				title: "Introduction to Tax Compliance and Planning",
				contentPath: "tcp/01-intro",
				isFree: true,
			},
			{
				slug: "02-individual-planning",
				title: "Individual Tax Planning: Compensation",
				contentPath: "tcp/02-individual-planning",
				isFree: false,
			},
			{
				slug: "03-passive-at-risk",
				title: "Passive Activity and At-Risk Rules",
				contentPath: "tcp/03-passive-at-risk",
				isFree: false,
			},
			{
				slug: "04-wealth-transfer",
				title: "Wealth Transfer and Gifting Strategies",
				contentPath: "tcp/04-wealth-transfer",
				isFree: false,
			},
			{
				slug: "05-retirement-education",
				title: "Retirement Plans and Education Savings",
				contentPath: "tcp/05-retirement-education",
				isFree: false,
			},
			{
				slug: "06-entity-compliance",
				title: "Entity Tax Compliance: NOLs and Consolidated Returns",
				contentPath: "tcp/06-entity-compliance",
				isFree: false,
			},
			{
				slug: "07-international-tax",
				title: "International Tax",
				contentPath: "tcp/07-international-tax",
				isFree: false,
			},
			{
				slug: "08-owner-entity",
				title: "Owner-Entity Transactions",
				contentPath: "tcp/08-owner-entity",
				isFree: false,
			},
			{
				slug: "09-basis-calculations",
				title: "Advanced Basis Calculations",
				contentPath: "tcp/09-basis-calculations",
				isFree: false,
			},
			{
				slug: "10-trusts-estates",
				title: "Trusts and Estates",
				contentPath: "tcp/10-trusts-estates",
				isFree: false,
			},
			{
				slug: "11-formation-liquidation",
				title: "Entity Formation and Liquidation",
				contentPath: "tcp/11-formation-liquidation",
				isFree: false,
			},
			{
				slug: "12-entity-choice",
				title: "Entity Choice and Planning",
				contentPath: "tcp/12-entity-choice",
				isFree: false,
			},
			{
				slug: "13-capital-structure-tax",
				title: "Capital Structure Tax Planning",
				contentPath: "tcp/13-capital-structure-tax",
				isFree: false,
			},
			{
				slug: "14-nontaxable-dispositions",
				title: "Nontaxable Dispositions",
				contentPath: "tcp/14-nontaxable-dispositions",
				isFree: false,
			},
			{
				slug: "15-related-party-transactions",
				title: "Related Party Transactions",
				contentPath: "tcp/15-related-party-transactions",
				isFree: false,
			},
		],
	},
];

// Filter to active sections (set NEXT_PUBLIC_ACTIVE_SECTIONS=far,aud to control)
const activeCodes = (process.env.NEXT_PUBLIC_ACTIVE_SECTIONS ?? "")
	.split(",")
	.map((s) => s.trim().toLowerCase())
	.filter(Boolean);

export const sections: Section[] =
	activeCodes.length > 0
		? allSections.filter((s) => activeCodes.includes(s.code))
		: allSections;

export function getSection(slug: string): Section | undefined {
	return allSections.find((s) => s.slug === slug);
}

export function getLesson(
	sectionSlug: string,
	lessonSlug: string,
): { section: Section; lesson: Lesson } | undefined {
	const section = getSection(sectionSlug);
	if (!section) return undefined;
	const lesson = section.lessons.find((l) => l.slug === lessonSlug);
	if (!lesson) return undefined;
	return { section, lesson };
}
