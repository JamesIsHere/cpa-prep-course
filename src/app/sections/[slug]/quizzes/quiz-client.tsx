"use client";

import { useState } from "react";
import QuizQuestionCard from "@/components/quiz-question";
import QuizResults from "@/components/quiz-results";
import type { ExamResult, QuizAnswer, QuizQuestion } from "@/lib/quiz";

interface RecentAttempt {
	id: number;
	score: number;
	total: number;
	completed_at: string;
}

interface QuizClientProps {
	sectionCode: string;
	sectionSlug: string;
	sectionTitle: string;
	recentAttempts: RecentAttempt[];
	topics?: string[];
}

type QuizState = "config" | "active" | "results";

export default function QuizClient({
	sectionCode,
	sectionSlug,
	recentAttempts,
	topics,
}: QuizClientProps) {
	const [state, setState] = useState<QuizState>("config");
	const [count, setCount] = useState(10);
	const [attemptId, setAttemptId] = useState<number | null>(null);
	const [questions, setQuestions] = useState<QuizQuestion[]>([]);
	const [currentIndex, setCurrentIndex] = useState(0);
	const [answers, setAnswers] = useState<Map<number, number>>(new Map());
	const [result, setResult] = useState<ExamResult | null>(null);
	const [loading, setLoading] = useState(false);
	const [error, setError] = useState<string | null>(null);

	async function startQuiz() {
		setLoading(true);
		setError(null);
		try {
			const res = await fetch("/api/quizzes/start", {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ sectionCode, count, topics }),
			});
			if (!res.ok) {
				const data = await res.json();
				throw new Error(data.error || "Failed to start quiz");
			}
			const data = await res.json();
			setAttemptId(data.attemptId);
			setQuestions(data.questions);
			setCurrentIndex(0);
			setAnswers(new Map());
			setState("active");
		} catch (err) {
			setError(err instanceof Error ? err.message : "Something went wrong");
		} finally {
			setLoading(false);
		}
	}

	async function submitQuiz() {
		if (!attemptId) return;
		setLoading(true);
		setError(null);
		try {
			const quizAnswers: QuizAnswer[] = questions.map((q) => ({
				questionId: q.id,
				selectedIndex: answers.get(q.id) ?? -1,
			}));
			const res = await fetch(`/api/quizzes/${attemptId}/submit`, {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ answers: quizAnswers }),
			});
			if (!res.ok) {
				const data = await res.json();
				throw new Error(data.error || "Failed to submit quiz");
			}
			const data: ExamResult = await res.json();
			setResult(data);
			setState("results");
		} catch (err) {
			setError(err instanceof Error ? err.message : "Something went wrong");
		} finally {
			setLoading(false);
		}
	}

	async function startReviewQuiz(missedIds: number[]) {
		setLoading(true);
		setError(null);
		try {
			const res = await fetch("/api/quizzes/review", {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ questionIds: missedIds, sectionCode }),
			});
			if (!res.ok) {
				const data = await res.json();
				throw new Error(data.error || "Failed to start review quiz");
			}
			const data = await res.json();
			setAttemptId(data.attemptId);
			setQuestions(data.questions);
			setCurrentIndex(0);
			setAnswers(new Map());
			setResult(null);
			setState("active");
		} catch (err) {
			setError(err instanceof Error ? err.message : "Something went wrong");
		} finally {
			setLoading(false);
		}
	}

	function handleRetry() {
		setResult(null);
		setAttemptId(null);
		setQuestions([]);
		setAnswers(new Map());
		setCurrentIndex(0);
		setState("config");
	}

	// CONFIG state
	if (state === "config") {
		return (
			<div>
				<div className="border border-gray-200 rounded-xl p-6 mb-8">
					<h2 className="text-lg font-semibold text-gray-800 mb-4">
						Quiz Settings
					</h2>
					<label className="block text-sm text-gray-600 mb-2">
						Number of questions
					</label>
					<div className="flex gap-3 mb-6">
						{[10, 20, 30].map((n) => (
							<button
								key={n}
								onClick={() => setCount(n)}
								className={`px-4 py-2 rounded-lg font-medium text-sm transition-colors ${
									count === n
										? "bg-emerald-600 text-white"
										: "border border-gray-200 text-gray-700 hover:bg-gray-50"
								}`}
							>
								{n}
							</button>
						))}
					</div>
					{error && <p className="text-sm text-red-600 mb-4">{error}</p>}
					<button
						onClick={startQuiz}
						disabled={loading}
						className="bg-emerald-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
					>
						{loading ? "Starting\u2026" : "Start Quiz"}
					</button>
				</div>

				{recentAttempts.length > 0 && (
					<div>
						<h2 className="text-lg font-semibold text-gray-800 mb-4">
							Recent Attempts
						</h2>
						<div className="space-y-2">
							{recentAttempts.map((a) => {
								const pct = Math.round((a.score / a.total) * 100);
								const passed = pct >= 75;
								return (
									<div
										key={a.id}
										className="flex items-center justify-between border border-gray-200 rounded-lg p-4"
									>
										<div>
											<span
												className={`text-sm font-bold ${passed ? "text-emerald-700" : "text-red-700"}`}
											>
												{pct}%
											</span>
											<span className="text-sm text-gray-500 ml-2">
												({a.score}/{a.total})
											</span>
										</div>
										<span className="text-sm text-gray-400">
											{new Date(a.completed_at).toLocaleDateString()}
										</span>
									</div>
								);
							})}
						</div>
					</div>
				)}
			</div>
		);
	}

	// ACTIVE state
	if (state === "active") {
		const question = questions[currentIndex];
		const isLast = currentIndex === questions.length - 1;
		const hasAnswer = answers.has(question.id);

		return (
			<div>
				<QuizQuestionCard
					question={question}
					questionNumber={currentIndex + 1}
					totalQuestions={questions.length}
					selectedIndex={answers.get(question.id) ?? null}
					onSelect={(index) => {
						setAnswers(new Map(answers).set(question.id, index));
					}}
				/>
				<div className="flex justify-between mt-8">
					<button
						onClick={() => setCurrentIndex(currentIndex - 1)}
						disabled={currentIndex === 0}
						className="border border-gray-300 text-gray-700 px-4 py-2 rounded-lg font-medium hover:bg-gray-50 transition-colors disabled:opacity-30"
					>
						Previous
					</button>
					{isLast ? (
						<button
							onClick={submitQuiz}
							disabled={loading || !hasAnswer}
							className="bg-emerald-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
						>
							{loading ? "Submitting\u2026" : "Submit Quiz"}
						</button>
					) : (
						<button
							onClick={() => setCurrentIndex(currentIndex + 1)}
							disabled={!hasAnswer}
							className="bg-emerald-600 text-white px-4 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
						>
							Next
						</button>
					)}
				</div>
				{error && <p className="text-sm text-red-600 mt-4">{error}</p>}
			</div>
		);
	}

	// RESULTS state
	if (state === "results" && result) {
		return (
			<QuizResults
				result={result}
				sectionSlug={sectionSlug}
				onRetry={handleRetry}
				onReviewMissed={startReviewQuiz}
			/>
		);
	}

	return null;
}
