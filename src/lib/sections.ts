export interface Lesson {
	slug: string;
	title: string;
	contentPath: string;
	isFree: boolean;
}

export interface Section {
	code: string;
	title: string;
	description: string;
	slug: string;
	lessons: Lesson[];
}

export const sections: Section[] = [
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
		],
	},
	{
		code: "far",
		title: "Financial Accounting and Reporting",
		description:
			"Financial statement preparation, select transactions, and governmental accounting. The most content-heavy section of the CPA exam.",
		slug: "far",
		lessons: [
			{
				slug: "01-intro",
				title: "Introduction to Financial Accounting and Reporting",
				contentPath: "far/01-intro",
				isFree: true,
			},
			{
				slug: "02-financial-statements",
				title: "Financial Statements",
				contentPath: "far/02-financial-statements",
				isFree: false,
			},
			{
				slug: "03-revenue-recognition",
				title: "Revenue Recognition",
				contentPath: "far/03-revenue-recognition",
				isFree: false,
			},
			{
				slug: "04-inventory",
				title: "Inventory",
				contentPath: "far/04-inventory",
				isFree: false,
			},
			{
				slug: "05-fixed-assets",
				title: "Fixed Assets",
				contentPath: "far/05-fixed-assets",
				isFree: false,
			},
			{
				slug: "06-intangible-assets",
				title: "Intangible Assets",
				contentPath: "far/06-intangible-assets",
				isFree: false,
			},
			{
				slug: "07-leases",
				title: "Leases",
				contentPath: "far/07-leases",
				isFree: false,
			},
			{
				slug: "08-bonds-and-debt",
				title: "Bonds and Debt",
				contentPath: "far/08-bonds-and-debt",
				isFree: false,
			},
			{
				slug: "09-equity",
				title: "Equity",
				contentPath: "far/09-equity",
				isFree: false,
			},
			{
				slug: "10-income-taxes",
				title: "Income Taxes",
				contentPath: "far/10-income-taxes",
				isFree: false,
			},
			{
				slug: "11-governmental-accounting",
				title: "Governmental Accounting",
				contentPath: "far/11-governmental-accounting",
				isFree: false,
			},
			{
				slug: "12-not-for-profit",
				title: "Not-for-Profit Accounting",
				contentPath: "far/12-not-for-profit",
				isFree: false,
			},
			{
				slug: "13-consolidations",
				title: "Consolidations",
				contentPath: "far/13-consolidations",
				isFree: false,
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
		],
	},
];

export function getSection(slug: string): Section | undefined {
	return sections.find((s) => s.slug === slug);
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
