"use client";

import Link from "next/link";
import { useState } from "react";
import { DownloadStudyGuide } from "@/components/download-study-guide";
import FeedbackWidget from "@/components/feedback-widget";
import LessonNav from "@/components/lesson-nav";
import LessonQuizSection from "@/components/lesson-quiz-section";
import { StudyPipeline } from "@/components/study-pipeline";
import type { BlueprintGroup } from "@/lib/blueprint";
import type { Lesson, Section } from "@/lib/sections";

export default function LessonPageClient({
	section,
	lesson,
	lessonTopics,
	blueprintGroup,
	children,
}: {
	section: Section;
	lesson: Lesson;
	lessonTopics: string[];
	blueprintGroup?: { area: number; group: BlueprintGroup };
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

					<div className="mt-12 pt-6 border-t border-gray-200">
						<h3 className="text-lg font-semibold text-gray-900 mb-4">
							Step 3: Drill the mental model
						</h3>
						<div className="border border-gray-200 rounded-lg p-4 mb-8">
							<p className="text-sm font-medium text-gray-900 mb-1">
								Download the study framework
							</p>
							<p className="text-xs text-gray-500 mb-3">
								Concept maps, decision trees, and formulas for {section.title}.
							</p>
							<DownloadStudyGuide sectionSlug={section.slug} />
						</div>

						<LessonQuizSection
							sectionCode={section.code}
							sectionSlug={section.slug}
							lessonSlug={lesson.slug}
							topics={lessonTopics}
						/>

						{blueprintGroup && (
							<div className="mt-8 p-6 bg-emerald-50 rounded-xl border border-emerald-100">
								<h3 className="text-sm font-bold text-emerald-800 uppercase tracking-wider mb-2">
									Step 4: Comprehensive Review
								</h3>
								<p className="text-gray-700 text-sm mb-4">
									Feeling confident? Take a major section test on the entire <strong>{blueprintGroup.group.name}</strong> group.
								</p>
								<Link
									href={`/sections/${section.slug}/blueprint/${blueprintGroup.area}-${blueprintGroup.group.letter}/quiz`}
									className="inline-flex items-center gap-2 text-emerald-700 font-bold hover:text-emerald-800 transition-colors"
								>
									Take {blueprintGroup.group.name} Test &rarr;
								</Link>
							</div>
						)}
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
