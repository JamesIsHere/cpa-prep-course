export interface BlogPost {
	slug: string;
	title: string;
	description: string;
	date: string;
	contentPath: string;
}

const blogPosts: BlogPost[] = [
	{
		slug: "slayer-cpa-vs-becker",
		title: "Slayer CPA vs Becker: Full Comparison",
		description:
			"An honest comparison of Slayer CPA and Becker covering pricing, content depth, study approach, and who each course is best for.",
		date: "2026-02-20",
		contentPath: "blog/slayer-cpa-vs-becker",
	},
	{
		slug: "how-much-does-cpa-exam-prep-cost",
		title: "How Much Does CPA Exam Prep Really Cost?",
		description:
			"A full breakdown of CPA exam costs including exam fees, review courses, study materials, and hidden expenses most candidates overlook.",
		date: "2026-02-20",
		contentPath: "blog/how-much-does-cpa-exam-prep-cost",
	},
	{
		slug: "slayer-cpa-vs-surgent",
		title: "Slayer CPA vs Surgent: Which Is Better?",
		description:
			"A detailed comparison of Slayer CPA and Surgent covering pricing, adaptive learning vs self-directed study, question banks, and who each course fits best.",
		date: "2026-02-21",
		contentPath: "blog/slayer-cpa-vs-surgent",
	},
	{
		slug: "which-cpa-section-first",
		title: "Which CPA Section Should You Take First?",
		description:
			"A practical guide to choosing your first CPA exam section with three proven study order strategies based on your background and goals.",
		date: "2026-02-21",
		contentPath: "blog/which-cpa-section-first",
	},
];

export function getAllPosts(): BlogPost[] {
	return [...blogPosts].sort(
		(a, b) => new Date(b.date).getTime() - new Date(a.date).getTime(),
	);
}

export function getPostBySlug(slug: string): BlogPost | undefined {
	return blogPosts.find((p) => p.slug === slug);
}
