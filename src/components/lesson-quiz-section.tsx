"use client";

import Link from "next/link";
import { useEffect, useState } from "react";
import { createClient } from "@/lib/supabase/client";

interface LessonQuizSectionProps {
	sectionCode: string;
	sectionSlug: string;
	lessonSlug: string;
	topics: string[];
}

interface QuizAttempt {
	id: number;
	score: number;
	total: number;
	completed_at: string;
	topic_scores: { topic: string; correct: number; total: number }[];
}

export default function LessonQuizSection({
	sectionCode,
	sectionSlug,
	topics,
}: LessonQuizSectionProps) {
	const [recentAttempts, setRecentAttempts] = useState<QuizAttempt[]>([]);
	const [loading, setLoading] = useState(true);

	useEffect(() => {
		async function fetchHistory() {
			const supabase = createClient();
			const { data: { user } } = await supabase.auth.getUser();
			if (!user) {
				setLoading(false);
				return;
			}

			// Get section ID
			const { data: section } = await supabase
				.from("sections")
				.select("id")
				.eq("code", sectionCode)
				.single();

			if (!section) {
				setLoading(false);
				return;
			}

			// Fetch attempts that might contain these topics
			// We fetch last 20 and filter in JS to keep it simple without complex JSONB queries for now
			const { data: attempts } = await supabase
				.from("quiz_attempts")
				.select("id, score, total, completed_at, topic_scores")
				.eq("user_id", user.id)
				.eq("section_id", section.id)
				.not("completed_at", "is", null)
				.order("completed_at", { ascending: false })
				.limit(20);

			if (attempts) {
				const filtered = (attempts as unknown as QuizAttempt[]).filter((a) =>
					a.topic_scores?.some((ts) => topics.includes(ts.topic))
				);
				setRecentAttempts(filtered.slice(0, 5));
			}
			setLoading(false);
		}

		fetchHistory();
	}, [sectionCode, topics]);

	if (topics.length === 0) return null;

	return (
		<div className="mt-12 pt-8 border-t border-gray-200">
			<div className="flex flex-col md:flex-row md:items-center justify-between mb-6 gap-4">
				<div>
					<h3 className="text-xl font-bold text-gray-900">Lesson Quiz</h3>
					<p className="text-sm text-gray-500">
						Practice questions specifically for: {topics.join(", ")}
					</p>
				</div>
				<Link
					href={`/sections/${sectionSlug}/quizzes?topics=${encodeURIComponent(topics.join(","))}`}
					className="inline-flex items-center justify-center gap-2 bg-emerald-600 text-white px-6 py-2.5 rounded-xl font-bold hover:bg-emerald-700 transition-all shadow-sm hover:shadow-md"
				>
					Start Lesson Quiz
				</Link>
			</div>

			{loading ? (
				<div className="animate-pulse flex space-y-3 flex-col">
					<div className="h-12 bg-gray-100 rounded-lg w-full"></div>
					<div className="h-12 bg-gray-100 rounded-lg w-full"></div>
				</div>
			) : recentAttempts.length > 0 ? (
				<div className="bg-gray-50 rounded-xl border border-gray-100 overflow-hidden">
					<div className="px-4 py-3 border-b border-gray-100 bg-white/50">
						<h4 className="text-xs font-bold text-gray-400 uppercase tracking-wider">
							Recent Performance
						</h4>
					</div>
					<div className="divide-y divide-gray-100">
						{recentAttempts.map((attempt) => {
							const pct = Math.round((attempt.score / attempt.total) * 100);
							// Calculate score specifically for the lesson topics in this attempt
							const relevantScores = attempt.topic_scores.filter(ts => topics.includes(ts.topic));
							const lessonCorrect = relevantScores.reduce((sum, ts) => sum + ts.correct, 0);
							const lessonTotal = relevantScores.reduce((sum, ts) => sum + ts.total, 0);
							const lessonPct = Math.round((lessonCorrect / lessonTotal) * 100);

							return (
								<div key={attempt.id} className="px-4 py-3 flex items-center justify-between hover:bg-white transition-colors">
									<div className="flex items-center gap-4">
										<div className={`w-10 h-10 rounded-full flex items-center justify-center font-bold text-xs ${
											lessonPct >= 75 ? "bg-emerald-100 text-emerald-700" : "bg-red-100 text-red-700"
										}`}>
											{lessonPct}%
										</div>
										<div>
											<p className="text-sm font-medium text-gray-900">
												{lessonCorrect} / {lessonTotal} correct
											</p>
											<p className="text-xs text-gray-400">
												Overall quiz: {pct}% &middot; {new Date(attempt.completed_at).toLocaleDateString()}
											</p>
										</div>
									</div>
									<Link 
										href={`/sections/${sectionSlug}/quizzes?id=${attempt.id}`}
										className="text-xs font-medium text-emerald-600 hover:text-emerald-700"
									>
										Review &rarr;
									</Link>
								</div>
							);
						})}
					</div>
				</div>
			) : (
				<div className="text-center py-8 bg-gray-50 rounded-xl border border-dashed border-gray-200">
					<p className="text-sm text-gray-400">No attempts yet. Complete a quiz to see your progress!</p>
				</div>
			)}
		</div>
	);
}
