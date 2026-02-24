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
	{
		slug: "how-to-study-for-the-cpa-exam",
		title: "How to Study for the CPA Exam: A Complete Guide",
		description:
			"A step-by-step study approach covering section order, Blueprint-based prioritization, practice questions, spaced repetition, and realistic scheduling.",
		date: "2026-02-24",
		contentPath: "blog/how-to-study-for-the-cpa-exam",
	},
	{
		slug: "is-the-cpa-exam-hard",
		title: "Is the CPA Exam Hard? What to Actually Expect",
		description:
			"An honest look at CPA exam difficulty — pass rates, what makes each section hard, adaptive testing, and what separates candidates who pass from those who don't.",
		date: "2026-02-24",
		contentPath: "blog/is-the-cpa-exam-hard",
	},
	{
		slug: "how-long-to-pass-the-cpa-exam",
		title: "How Long Does It Take to Pass the CPA Exam?",
		description:
			"Realistic CPA exam timelines based on weekly study hours, with per-section hour estimates, common delays, and a sample 12-month plan.",
		date: "2026-02-24",
		contentPath: "blog/how-long-to-pass-the-cpa-exam",
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
