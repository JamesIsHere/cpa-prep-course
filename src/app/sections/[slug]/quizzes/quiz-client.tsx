"use client";

import { useEffect, useState } from "react";
import QuizQuestionCard from "@/components/quiz-question";
import QuizResults from "@/components/quiz-results";
import ExamNavGrid from "@/components/exam-nav-grid";
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
	preloadedAttemptId?: number;
}

type QuizState = "config" | "active" | "results";

export default function QuizClient({
	sectionCode,
	sectionSlug,
	recentAttempts,
	topics,
	preloadedAttemptId,
}: QuizClientProps) {
	const [state, setState] = useState<QuizState>("config");
	const [count, setCount] = useState(10);
	const [attemptId, setAttemptId] = useState<number | null>(null);
	const [questions, setQuestions] = useState<QuizQuestion[]>([]);
	const [currentIndex, setCurrentIndex] = useState(0);
	const [answers, setAnswers] = useState<Map<number, number>>(new Map());
	const [flagged, setFlagged] = useState<Set<number>>(new Set());
	const [startTime, setStartTime] = useState<number | null>(null);
	const [focusMode, setFocusMode] = useState(false);
	const [result, setResult] = useState<ExamResult | null>(null);
	const [loading, setLoading] = useState(false);
	const [error, setError] = useState<string | null>(null);

	// Fetch preloaded attempt for review
	useEffect(() => {
		if (preloadedAttemptId) {
			const fetchAttempt = async () => {
				setLoading(true);
				try {
					const res = await fetch(`/api/quizzes/${preloadedAttemptId}`);
					if (!res.ok) throw new Error("Failed to fetch attempt");
					const data = await res.json();
					setResult(data);
					setState("results");
				} catch (err) {
					setError(err instanceof Error ? err.message : "Something went wrong");
				} finally {
					setLoading(false);
				}
			};
			fetchAttempt();
		}
	}, [preloadedAttemptId]);

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
			setFlagged(new Set());
			setStartTime(Date.now());
			setState("active");
		} catch (err) {
			setError(err instanceof Error ? err.message : "Something went wrong");
		} finally {
			setLoading(false);
		}
	}

	async function startRemediationQuiz() {
		setLoading(true);
		setError(null);
		try {
			const res = await fetch("/api/quizzes/remediate", {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ sectionCode, count: 10 }),
			});
			if (!res.ok) {
				const data = await res.json();
				throw new Error(data.error || "Failed to start remediation quiz");
			}
			const data = await res.json();
			setAttemptId(data.attemptId);
			setQuestions(data.questions);
			setCurrentIndex(0);
			setAnswers(new Map());
			setFlagged(new Set());
			setStartTime(Date.now());
			setState("active");
		} catch (err) {
			setError(err instanceof Error ? err.message : "No missed questions found. Try a regular quiz!");
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
			const durationSeconds = startTime ? Math.floor((Date.now() - startTime) / 1000) : undefined;
			const res = await fetch(`/api/quizzes/${attemptId}/submit`, {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ answers: quizAnswers, durationSeconds }),
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
			setFlagged(new Set());
			setStartTime(Date.now());
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
		setFlagged(new Set());
		setCurrentIndex(0);
		setState("config");
	}

	function toggleFlag(questionId: number) {
		setFlagged((prev) => {
			const next = new Set(prev);
			if (next.has(questionId)) {
				next.delete(questionId);
			} else {
				next.add(questionId);
			}
			return next;
		});
	}

	// CONFIG state
	if (state === "config") {
		return (
			<div>
				<div className="grid sm:grid-cols-2 gap-6 mb-8">
					<div className="border border-gray-200 rounded-xl p-6 bg-white">
						<h2 className="text-lg font-bold text-gray-900 mb-4">
							Regular Quiz
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
						<button
							onClick={startQuiz}
							disabled={loading}
							className="w-full bg-emerald-600 text-white px-6 py-2.5 rounded-lg font-bold hover:bg-emerald-700 transition-colors disabled:opacity-50"
						>
							{loading ? "Starting\u2026" : "Start Regular Quiz"}
						</button>
					</div>

					<div className="border border-emerald-100 rounded-xl p-6 bg-emerald-50/50 flex flex-col">
						<div className="flex items-center gap-2 mb-2">
							<h2 className="text-lg font-bold text-emerald-900">
								Smart Remediation
							</h2>
							<span className="bg-emerald-100 text-emerald-700 text-[10px] font-bold px-1.5 py-0.5 rounded uppercase">
								Focus
							</span>
						</div>
						<p className="text-sm text-emerald-800/70 mb-6 flex-1">
							We&apos;ll build a custom 10-question quiz pulling only from questions you&apos;ve recently missed in this section.
						</p>
						<button
							onClick={startRemediationQuiz}
							disabled={loading}
							className="w-full bg-white border-2 border-emerald-600 text-emerald-700 px-6 py-2.5 rounded-lg font-bold hover:bg-emerald-50 transition-colors disabled:opacity-50"
						>
							{loading ? "Building\u2026" : "Blast Your Gaps"}
						</button>
					</div>
				</div>

				{error && <p className="text-sm text-red-600 mb-8 p-3 bg-red-50 border border-red-100 rounded-lg">{error}</p>}

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
										<div className="flex items-center gap-4">
											<span className="text-sm text-gray-400">
												{new Date(a.completed_at).toLocaleDateString()}
											</span>
											<button
												onClick={() => {
													setAttemptId(a.id);
													// We need to fetch the attempt to show results
													const fetchAttempt = async () => {
														setLoading(true);
														try {
															const res = await fetch(`/api/quizzes/${a.id}`);
															if (!res.ok) throw new Error("Failed to fetch");
															const data = await res.json();
															setResult(data);
															setState("results");
														} catch (err) {
															setError("Failed to load attempt review");
														} finally {
															setLoading(false);
														}
													};
													fetchAttempt();
												}}
												className="text-xs font-medium text-emerald-600 hover:text-emerald-700"
											>
												Review &rarr;
											</button>
										</div>
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
		const questionIds = questions.map((q) => q.id);
		const answeredIds = new Set(
			questions.filter((q) => answers.has(q.id)).map((q) => q.id),
		);
		const isFlagged = flagged.has(question.id);

		return (
			<div className={focusMode ? "fixed inset-0 z-50 bg-white overflow-y-auto p-4 sm:p-8" : ""}>
				<div className={focusMode ? "max-w-4xl mx-auto" : ""}>
					<div className="flex items-center justify-between mb-6">
						<h2 className="text-sm font-bold text-gray-400 uppercase tracking-widest">
							{focusMode ? `${sectionTitle} — Focus Mode` : "Active Quiz"}
						</h2>
						<button 
							onClick={() => setFocusMode(!focusMode)}
							className={`text-xs font-bold px-3 py-1.5 rounded-lg transition-all ${
								focusMode 
									? "bg-gray-900 text-white hover:bg-gray-800" 
									: "bg-emerald-50 text-emerald-700 hover:bg-emerald-100"
							}`}
						>
							{focusMode ? "Exit Focus" : "✨ Focus Mode"}
						</button>
					</div>

					{/* Nav grid */}
				<div className="border border-gray-200 rounded-xl p-4 mb-6">
					<ExamNavGrid
						totalQuestions={questions.length}
						currentIndex={currentIndex}
						answeredIds={answeredIds}
						flaggedIds={flagged}
						questionIds={questionIds}
						onNavigate={setCurrentIndex}
					/>
				</div>

				<div className="border border-gray-200 rounded-xl p-6 mb-6">
					<QuizQuestionCard
						question={question}
						questionNumber={currentIndex + 1}
						totalQuestions={questions.length}
						selectedIndex={answers.get(question.id) ?? null}
						onSelect={(index) => {
							setAnswers(new Map(answers).set(question.id, index));
						}}
					/>
				</div>

				<div className="flex items-center justify-between">
					<div className="flex gap-2">
						<button
							onClick={() => setCurrentIndex(Math.max(0, currentIndex - 1))}
							disabled={currentIndex === 0}
							className="border border-gray-300 text-gray-700 px-4 py-2 rounded-lg font-medium hover:bg-gray-50 transition-colors disabled:opacity-30"
						>
							Previous
						</button>
						<button
							onClick={() =>
								setCurrentIndex(Math.min(questions.length - 1, currentIndex + 1))
							}
							disabled={currentIndex === questions.length - 1}
							className="border border-gray-300 text-gray-700 px-4 py-2 rounded-lg font-medium hover:bg-gray-50 transition-colors disabled:opacity-30"
						>
							Next
						</button>
					</div>

					<div className="flex gap-2">
						<button
							onClick={() => toggleFlag(question.id)}
							className={`px-4 py-2 rounded-lg font-medium text-sm transition-colors ${
								isFlagged
									? "bg-amber-100 text-amber-700 border border-amber-300"
									: "border border-gray-300 text-gray-600 hover:bg-gray-50"
							}`}
						>
							{isFlagged ? "Unflag" : "Flag"}
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
								className="bg-emerald-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
							>
								Next
							</button>
						)}
					</div>
				</div>
				{error && <p className="text-sm text-red-600 mt-4">{error}</p>}
				</div>
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
