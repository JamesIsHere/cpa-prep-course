"use client";

import Link from "next/link";
import { useState } from "react";
import { DownloadStudyGuide } from "@/components/download-study-guide";
import FeedbackWidget from "@/components/feedback-widget";
import LessonNav from "@/components/lesson-nav";
import { StudyPipeline } from "@/components/study-pipeline";
import type { Lesson, Section } from "@/lib/sections";

export default function LessonPageClient({
	section,
	lesson,
	children,
}: {
	section: Section;
	lesson: Lesson;
	children: React.ReactNode;
}) {
	const [collapsed, setCollapsed] = useState(true);

	const currentIndex = section.lessons.findIndex((l) => l.slug === lesson.slug);
	const prev = currentIndex > 0 ? section.lessons[currentIndex - 1] : null;
	const next =
		currentIndex < section.lessons.length - 1
			? section.lessons[currentIndex + 1]
			: null;

	return (
		<main className="max-w-6xl mx-auto px-4 py-8">
			<Link
				href={`/sections/${section.slug}`}
				className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
			>
				&larr; {section.title}
			</Link>

			<div className="flex flex-col lg:flex-row gap-8">
				<LessonNav
					section={section}
					collapsed={collapsed}
					onToggle={() => setCollapsed(!collapsed)}
				/>

				<article className="flex-1 bg-white rounded-xl border border-gray-200 p-6 sm:p-10 min-w-0">
					<StudyPipeline variant="compact" activeStep={2} />
					{children}

					{/* What's Next */}
					<div className="mt-12 pt-6 border-t border-gray-200">
						<h3 className="text-lg font-semibold text-gray-900 mb-4">
							What&apos;s next
						</h3>
						<div className="grid sm:grid-cols-2 gap-4">
							<div className="border border-gray-200 rounded-lg p-4">
								<p className="text-sm font-medium text-gray-900 mb-1">
									Drill the mental model
								</p>
								<p className="text-xs text-gray-500 mb-3">
									Download the study framework — concept maps, decision trees,
									and formulas for {section.title}.
								</p>
								<DownloadStudyGuide sectionSlug={section.slug} />
							</div>
							<div className="border border-gray-200 rounded-lg p-4">
								<p className="text-sm font-medium text-gray-900 mb-1">
									Test your understanding
								</p>
								<p className="text-xs text-gray-500 mb-3">
									Take a quiz on {section.title} topics to see how well you
									retained the material.
								</p>
								<Link
									href={`/sections/${section.slug}/quizzes`}
									className="inline-flex items-center gap-2 bg-emerald-600 text-white px-4 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors text-sm"
								>
									Take a Quiz
								</Link>
							</div>
						</div>
					</div>

					{/* Prev / Next navigation */}
					<div className="flex justify-between mt-8 pt-6 border-t border-gray-200">
						{prev ? (
							<Link
								href={`/sections/${section.slug}/lessons/${prev.slug}`}
								className="text-sm text-emerald-600 hover:text-emerald-700"
							>
								&larr; {prev.title}
							</Link>
						) : (
							<span />
						)}
						{next ? (
							<Link
								href={`/sections/${section.slug}/lessons/${next.slug}`}
								className="text-sm text-emerald-600 hover:text-emerald-700"
							>
								{next.title} &rarr;
							</Link>
						) : (
							<span />
						)}
					</div>

					<div className="mt-8 pt-6 border-t border-gray-200">
						<FeedbackWidget />
					</div>
				</article>
			</div>
		</main>
	);
}
