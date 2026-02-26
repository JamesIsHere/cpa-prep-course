import Link from "next/link";
import { notFound } from "next/navigation";
import { DownloadStudyGuide } from "@/components/download-study-guide";
import { StudyPipeline } from "@/components/study-pipeline";
import { getTopicsForLesson } from "@/lib/blueprint-utils";
import { getSection, sections } from "@/lib/sections";
import { createClient } from "@/lib/supabase/server";

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
	return { title: section.title };
}

export default async function SectionDetailPage({
	params,
}: {
	params: Promise<{ slug: string }>;
}) {
	const { slug } = await params;
	const section = getSection(slug);
	if (!section) notFound();

	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	// Map to store best percentage per topic: Map<topicName, bestPct>
	const topicBestScores = new Map<string, number>();

	if (user) {
		const { data: dbSection } = await supabase
			.from("sections")
			.select("id")
			.eq("code", section.code)
			.single();

		if (dbSection) {
			const { data: attempts } = await supabase
				.from("quiz_attempts")
				.select("topic_scores")
				.eq("user_id", user.id)
				.eq("section_id", dbSection.id)
				.not("completed_at", "is", null);

			if (attempts) {
				for (const attempt of attempts) {
					const scores = attempt.topic_scores as {
						topic: string;
						correct: number;
						total: number;
					}[];
					if (scores && Array.isArray(scores)) {
						for (const s of scores) {
							const pct = Math.round((s.correct / s.total) * 100);
							const currentBest = topicBestScores.get(s.topic) ?? 0;
							if (pct > currentBest) {
								topicBestScores.set(s.topic, pct);
							}
						}
					}
				}
			}
		}
	}

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<Link
				href="/sections"
				className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
			>
				&larr; All sections
			</Link>

			<h1 className="text-3xl font-bold text-gray-900 mb-2">{section.title}</h1>
			<p className="text-gray-500 mb-4">{section.description}</p>

			<StudyPipeline variant="compact" />

			<div className="grid grid-cols-1 sm:grid-cols-2 gap-4 mb-10">
				<Link
					href={`/sections/${section.slug}/quizzes`}
					className="flex flex-col items-center justify-center p-6 bg-white border-2 border-emerald-600 rounded-xl hover:bg-emerald-50 transition-all group"
				>
					<span className="text-2xl mb-2 group-hover:scale-110 transition-transform">📝</span>
					<span className="font-bold text-emerald-700">Take a Quiz</span>
					<span className="text-xs text-gray-500 mt-1">10-30 questions</span>
				</Link>
				<Link
					href={`/exam?section=${section.code}`}
					className="flex flex-col items-center justify-center p-6 bg-white border-2 border-emerald-600 rounded-xl hover:bg-emerald-50 transition-all group"
				>
					<span className="text-2xl mb-2 group-hover:scale-110 transition-transform">⏱️</span>
					<span className="font-bold text-emerald-700">Practice Exam</span>
					<span className="text-xs text-gray-500 mt-1">Full 4-hour simulation</span>
				</Link>
			</div>

			<div className="flex flex-wrap gap-3 mb-8">
				<Link
					href={`/sections/${section.slug}/blueprint`}
					className="inline-flex items-center gap-2 border border-emerald-600 text-emerald-700 px-5 py-2 rounded-lg font-medium hover:bg-emerald-50 transition-colors text-sm"
				>
					Study by Blueprint
				</Link>
				<Link
					href={`/sections/${section.slug}/flashcards`}
					className="inline-flex items-center gap-2 border border-emerald-600 text-emerald-700 px-5 py-2 rounded-lg font-medium hover:bg-emerald-50 transition-colors text-sm"
				>
					🎴 Flashcard Review
				</Link>
				<DownloadStudyGuide sectionSlug={section.slug} />
			</div>

			<h2 className="text-lg font-semibold text-gray-800 mb-4">Lessons</h2>
			<ul className="space-y-2">
				{section.lessons.map((lesson, i) => {
					const lessonTopics = getTopicsForLesson(section.code, lesson.slug);
					let masteryScore: number | null = null;

					if (lessonTopics.length > 0) {
						let totalBest = 0;
						let countedTopics = 0;
						for (const t of lessonTopics) {
							if (topicBestScores.has(t)) {
								totalBest += topicBestScores.get(t)!;
								countedTopics++;
							}
						}
						if (countedTopics > 0) {
							masteryScore = Math.round(totalBest / countedTopics);
						}
					}

					return (
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
								<div className="ml-auto flex items-center gap-3">
									{masteryScore !== null && (
										<span
											className={`text-xs font-bold px-2 py-1 rounded-md ${
												masteryScore >= 75
													? "bg-emerald-100 text-emerald-700"
													: masteryScore >= 50
														? "bg-amber-100 text-amber-700"
														: "bg-red-100 text-red-700"
											}`}
										>
											{masteryScore}% Mastery
										</span>
									)}
									{lesson.isFree && (
										<span className="text-xs bg-emerald-100 text-emerald-700 px-2 py-0.5 rounded-full">
											Free
										</span>
									)}
								</div>
							</Link>
						</li>
					);
				})}
			</ul>
		</main>
	);
}
