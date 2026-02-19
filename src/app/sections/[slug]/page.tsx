import Link from "next/link";
import { notFound } from "next/navigation";
import { getSection, sections } from "@/lib/sections";

export function generateStaticParams() {
	return sections.map((s) => ({ slug: s.slug }));
}

export async function generateMetadata({
	params,
}: {
	params: Promise<{ slug: string }>;
}) {
	const { slug } = await params;
	const section = getSection(slug);
	if (!section) return {};
	return { title: `${section.title} — CPA Prep Course` };
}

export default async function SectionDetailPage({
	params,
}: {
	params: Promise<{ slug: string }>;
}) {
	const { slug } = await params;
	const section = getSection(slug);
	if (!section) notFound();

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<Link
				href="/sections"
				className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
			>
				&larr; All sections
			</Link>

			<h1 className="text-3xl font-bold text-gray-900 mb-2">{section.title}</h1>
			<p className="text-gray-500 mb-8">{section.description}</p>

			<div className="flex gap-3 mb-8">
				<Link
					href={`/sections/${section.slug}/quizzes`}
					className="inline-flex items-center gap-2 bg-emerald-600 text-white px-5 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors text-sm"
				>
					Take a Quiz
				</Link>
				<Link
					href={`/exam?section=${section.code}`}
					className="inline-flex items-center gap-2 border border-emerald-600 text-emerald-700 px-5 py-2 rounded-lg font-medium hover:bg-emerald-50 transition-colors text-sm"
				>
					Practice Exam
				</Link>
			</div>

			<h2 className="text-lg font-semibold text-gray-800 mb-4">Lessons</h2>
			<ul className="space-y-2">
				{section.lessons.map((lesson, i) => (
					<li key={lesson.slug}>
						<Link
							href={`/sections/${section.slug}/lessons/${lesson.slug}`}
							className="flex items-center gap-3 border border-gray-200 rounded-lg p-4 hover:border-emerald-500 hover:shadow-sm transition-all group"
						>
							<span className="bg-gray-100 text-gray-500 text-sm font-mono w-8 h-8 flex items-center justify-center rounded-full group-hover:bg-emerald-50 group-hover:text-emerald-600">
								{i + 1}
							</span>
							<span className="text-gray-900 group-hover:text-emerald-700 transition-colors">
								{lesson.title}
							</span>
							{lesson.isFree && (
								<span className="ml-auto text-xs bg-emerald-100 text-emerald-700 px-2 py-0.5 rounded-full">
									Free
								</span>
							)}
						</Link>
					</li>
				))}
			</ul>
		</main>
	);
}
