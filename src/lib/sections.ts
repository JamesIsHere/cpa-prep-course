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
