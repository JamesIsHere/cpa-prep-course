"use client";

import Link from "next/link";
import { useState } from "react";
import FeedbackWidget from "@/components/feedback-widget";
import LessonNav from "@/components/lesson-nav";
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
					{children}

					{/* Prev / Next navigation */}
					<div className="flex justify-between mt-12 pt-6 border-t border-gray-200">
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
