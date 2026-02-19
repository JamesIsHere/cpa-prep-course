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
