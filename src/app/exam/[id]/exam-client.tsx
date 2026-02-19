"use client";

import { useRouter } from "next/navigation";
import { useCallback, useState } from "react";
import ExamNavGrid from "@/components/exam-nav-grid";
import ExamResults from "@/components/exam-results";
import ExamTimer from "@/components/exam-timer";
import QuizQuestionCard from "@/components/quiz-question";
import type { ExamResult, QuizAnswer, QuizQuestion } from "@/lib/quiz";

type ExamClientProps =
	| {
			mode: "active";
			attemptId: number;
			questions: QuizQuestion[];
			startedAt: string;
			timeLimitMinutes: number;
			sectionCode: string;
			result?: undefined;
	  }
	| {
			mode: "results";
			result: ExamResult;
			attemptId?: undefined;
			questions?: undefined;
			startedAt?: undefined;
			timeLimitMinutes?: undefined;
			sectionCode?: undefined;
	  };

export default function ExamClient(props: ExamClientProps) {
	const router = useRouter();
	const [state, setState] = useState<"active" | "results">(props.mode);
	const [currentIndex, setCurrentIndex] = useState(0);
	const [answers, setAnswers] = useState<Map<number, number>>(new Map());
	const [flagged, setFlagged] = useState<Set<number>>(new Set());
	const [result, setResult] = useState<ExamResult | null>(
		props.mode === "results" ? props.result : null,
	);
	const [loading, setLoading] = useState(false);
	const [error, setError] = useState<string | null>(null);

	const submitExam = useCallback(async () => {
		if (!props.attemptId || !props.questions) return;
		if (loading) return;
		setLoading(true);
		setError(null);
		try {
			const quizAnswers: QuizAnswer[] = props.questions
				.filter((q) => answers.has(q.id))
				.map((q) => ({
					questionId: q.id,
					selectedIndex: answers.get(q.id)!,
				}));

			const res = await fetch(`/api/exams/${props.attemptId}/submit`, {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ answers: quizAnswers }),
			});

			if (!res.ok) {
				const data = await res.json();
				throw new Error(data.error || "Failed to submit exam");
			}

			const data: ExamResult = await res.json();
			setResult(data);
			setState("results");
		} catch (err) {
			setError(err instanceof Error ? err.message : "Something went wrong");
		} finally {
			setLoading(false);
		}
	}, [props.attemptId, props.questions, answers, loading]);

	const handleTimeExpired = useCallback(() => {
		submitExam();
	}, [submitExam]);

	// RESULTS state
	if (state === "results" && result) {
		return <ExamResults result={result} />;
	}

	// ACTIVE state
	if (
		state === "active" &&
		props.questions &&
		props.startedAt &&
		props.timeLimitMinutes
	) {
		const question = props.questions[currentIndex];
		const questionIds = props.questions.map((q) => q.id);

		const answeredIds = new Set(
			props.questions.filter((q) => answers.has(q.id)).map((q) => q.id),
		);

		const isFlagged = flagged.has(question.id);

		function toggleFlag() {
			setFlagged((prev) => {
				const next = new Set(prev);
				if (next.has(question.id)) {
					next.delete(question.id);
				} else {
					next.add(question.id);
				}
				return next;
			});
		}

		return (
			<div>
				{/* Header: timer + section badge */}
				<div className="flex items-center justify-between mb-6">
					<div className="flex items-center gap-3">
						<span className="bg-emerald-100 text-emerald-700 text-sm font-bold px-3 py-1 rounded-full">
							{props.sectionCode?.toUpperCase()}
						</span>
						<span className="text-sm text-gray-500">Practice Exam</span>
					</div>
					<ExamTimer
						startedAt={props.startedAt}
						timeLimitMinutes={props.timeLimitMinutes}
						onTimeExpired={handleTimeExpired}
					/>
				</div>

				{/* Nav grid */}
				<div className="border border-gray-200 rounded-xl p-4 mb-6">
					<ExamNavGrid
						totalQuestions={props.questions.length}
						currentIndex={currentIndex}
						answeredIds={answeredIds}
						flaggedIds={flagged}
						questionIds={questionIds}
						onNavigate={setCurrentIndex}
					/>
				</div>

				{/* Question card */}
				<div className="border border-gray-200 rounded-xl p-6 mb-6">
					<QuizQuestionCard
						question={question}
						questionNumber={currentIndex + 1}
						totalQuestions={props.questions.length}
						selectedIndex={answers.get(question.id) ?? null}
						onSelect={(index) => {
							setAnswers(new Map(answers).set(question.id, index));
						}}
					/>
				</div>

				{/* Controls */}
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
								setCurrentIndex(
									Math.min(props.questions!.length - 1, currentIndex + 1),
								)
							}
							disabled={currentIndex === props.questions.length - 1}
							className="border border-gray-300 text-gray-700 px-4 py-2 rounded-lg font-medium hover:bg-gray-50 transition-colors disabled:opacity-30"
						>
							Next
						</button>
					</div>

					<div className="flex gap-2">
						<button
							onClick={toggleFlag}
							className={`px-4 py-2 rounded-lg font-medium text-sm transition-colors ${
								isFlagged
									? "bg-amber-100 text-amber-700 border border-amber-300"
									: "border border-gray-300 text-gray-600 hover:bg-gray-50"
							}`}
						>
							{isFlagged ? "Unflag" : "Flag"}
						</button>
						<button
							onClick={submitExam}
							disabled={loading}
							className="bg-emerald-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
						>
							{loading ? "Submitting\u2026" : "Submit Exam"}
						</button>
					</div>
				</div>

				{error && <p className="text-sm text-red-600 mt-4">{error}</p>}
			</div>
		);
	}

	return null;
}
