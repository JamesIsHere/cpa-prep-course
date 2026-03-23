"use client";

import { useCallback, useEffect, useState } from "react";
import { useRouter, useSearchParams } from "next/navigation";
import ReviewQuestionCard from "@/components/review-question-card";
import type { ReviewQuestion, QuestionFlag } from "@/lib/quiz";

interface Props {
	initialQuestions: ReviewQuestion[];
	initialHasMore: boolean;
	initialTotal: number;
	initialReviewed: number;
	sections: { code: string; title: string }[];
	topics: string[];
	currentSection: string;
}

export default function ReviewClient({
	initialQuestions,
	initialHasMore,
	initialTotal,
	initialReviewed,
	sections,
	topics,
	currentSection,
}: Props) {
	const router = useRouter();
	const searchParams = useSearchParams();

	const [questions, setQuestions] = useState(initialQuestions);
	const [hasMore, setHasMore] = useState(initialHasMore);
	const [currentIndex, setCurrentIndex] = useState(0);
	const [total, setTotal] = useState(initialTotal);
	const [reviewed, setReviewed] = useState(initialReviewed);
	const [loading, setLoading] = useState(false);

	// Reset state when initial data changes (filter change)
	useEffect(() => {
		setQuestions(initialQuestions);
		setHasMore(initialHasMore);
		setTotal(initialTotal);
		setReviewed(initialReviewed);
		setCurrentIndex(0);
	}, [initialQuestions, initialHasMore, initialTotal, initialReviewed]);

	const currentQuestion = questions[currentIndex] ?? null;

	// Build query string from current params + overrides
	function buildUrl(overrides: Record<string, string | undefined>) {
		const params = new URLSearchParams(searchParams.toString());
		for (const [key, val] of Object.entries(overrides)) {
			if (val === undefined || val === "") {
				params.delete(key);
			} else {
				params.set(key, val);
			}
		}
		// Always remove cursor when filters change (except when paginating)
		if (!("cursor" in overrides)) {
			params.delete("cursor");
		}
		return `/admin/review?${params.toString()}`;
	}

	function handleFilterChange(key: string, value: string) {
		router.push(buildUrl({ [key]: value || undefined }));
	}

	// Fetch next page
	const fetchMore = useCallback(async () => {
		if (!hasMore || questions.length === 0 || loading) return;
		setLoading(true);
		const lastId = questions[questions.length - 1].id;
		const params = new URLSearchParams(searchParams.toString());
		params.set("cursor", String(lastId));

		const res = await fetch(`/api/admin/review/questions?${params.toString()}`);
		if (res.ok) {
			const data = await res.json();
			setQuestions((prev) => [...prev, ...data.questions]);
			setHasMore(data.hasMore);
		}
		setLoading(false);
	}, [hasMore, questions, loading, searchParams]);

	// Navigate
	function goNext() {
		if (currentIndex < questions.length - 1) {
			setCurrentIndex((i) => i + 1);
		} else if (hasMore) {
			fetchMore();
		}
	}

	function goPrev() {
		if (currentIndex > 0) {
			setCurrentIndex((i) => i - 1);
		}
	}

	// Auto-fetch when near end
	useEffect(() => {
		if (currentIndex >= questions.length - 3 && hasMore && !loading) {
			void fetchMore();
		}
		// eslint-disable-next-line react-hooks/exhaustive-deps
	}, [currentIndex, questions.length, hasMore, loading]);

	// Keyboard shortcuts
	useEffect(() => {
		function handleKey(e: KeyboardEvent) {
			if (e.target instanceof HTMLInputElement || e.target instanceof HTMLTextAreaElement || e.target instanceof HTMLSelectElement) return;
			if (e.key === "ArrowRight" || e.key === "j") goNext();
			if (e.key === "ArrowLeft" || e.key === "k") goPrev();
		}
		window.addEventListener("keydown", handleKey);
		return () => window.removeEventListener("keydown", handleKey);
	});

	// Mark reviewed on reveal
	async function handleReveal(questionId: number) {
		await fetch("/api/admin/review/progress", {
			method: "POST",
			headers: { "Content-Type": "application/json" },
			body: JSON.stringify({ questionId }),
		});
		setReviewed((r) => r + 1);
		setQuestions((qs) =>
			qs.map((q) => (q.id === questionId ? { ...q, reviewed: true } : q)),
		);
	}

	// Flag handlers
	async function handleFlag(questionId: number, flagType: string, notes: string) {
		const res = await fetch("/api/admin/review/flags", {
			method: "POST",
			headers: { "Content-Type": "application/json" },
			body: JSON.stringify({ questionId, flagType, notes }),
		});
		if (res.ok) {
			const newFlag: QuestionFlag = {
				flag_type: flagType,
				notes,
				created_at: new Date().toISOString(),
			};
			setQuestions((qs) =>
				qs.map((q) =>
					q.id === questionId
						? { ...q, flags: [...q.flags.filter((f) => f.flag_type !== flagType), newFlag] }
						: q,
				),
			);
		}
	}

	async function handleRemoveFlag(questionId: number, flagType: string) {
		const res = await fetch("/api/admin/review/flags", {
			method: "DELETE",
			headers: { "Content-Type": "application/json" },
			body: JSON.stringify({ questionId, flagType }),
		});
		if (res.ok) {
			setQuestions((qs) =>
				qs.map((q) =>
					q.id === questionId
						? { ...q, flags: q.flags.filter((f) => f.flag_type !== flagType) }
						: q,
				),
			);
		}
	}

	const pct = total > 0 ? Math.round((reviewed / total) * 100) : 0;

	return (
		<div className="max-w-3xl mx-auto px-4 py-8">
			{/* Header */}
			<div className="mb-6">
				<h1 className="text-2xl font-bold text-gray-900 mb-1">Question Review</h1>
				<p className="text-sm text-gray-500">
					{reviewed.toLocaleString()} / {total.toLocaleString()} reviewed ({pct}%)
				</p>
				<div className="mt-2 h-1.5 bg-gray-200 rounded-full overflow-hidden">
					<div
						className="h-full bg-emerald-500 transition-all duration-300"
						style={{ width: `${pct}%` }}
					/>
				</div>
			</div>

			{/* Filters */}
			<div className="flex flex-wrap gap-3 mb-6">
				<select
					value={currentSection}
					onChange={(e) => handleFilterChange("section", e.target.value)}
					className="text-sm border border-gray-200 rounded-lg px-3 py-2 bg-white"
				>
					{sections.map((s) => (
						<option key={s.code} value={s.code}>
							{s.code.toUpperCase()} — {s.title}
						</option>
					))}
				</select>

				<select
					value={searchParams.get("topic") ?? ""}
					onChange={(e) => handleFilterChange("topic", e.target.value)}
					className="text-sm border border-gray-200 rounded-lg px-3 py-2 bg-white"
				>
					<option value="">All Topics</option>
					{topics.map((t) => (
						<option key={t} value={t}>
							{t}
						</option>
					))}
				</select>

				<select
					value={searchParams.get("difficulty") ?? ""}
					onChange={(e) => handleFilterChange("difficulty", e.target.value)}
					className="text-sm border border-gray-200 rounded-lg px-3 py-2 bg-white"
				>
					<option value="">All Difficulty</option>
					<option value="easy">Easy</option>
					<option value="medium">Medium</option>
					<option value="hard">Hard</option>
				</select>

				<select
					value={searchParams.get("cognitive_level") ?? ""}
					onChange={(e) => handleFilterChange("cognitive_level", e.target.value)}
					className="text-sm border border-gray-200 rounded-lg px-3 py-2 bg-white"
				>
					<option value="">All Bloom&apos;s</option>
					<option value="1">L1 Remember</option>
					<option value="2">L2 Understand</option>
					<option value="3">L3 Apply</option>
					<option value="4">L4 Analyze</option>
				</select>

				<select
					value={searchParams.get("reviewed") ?? ""}
					onChange={(e) => handleFilterChange("reviewed", e.target.value)}
					className="text-sm border border-gray-200 rounded-lg px-3 py-2 bg-white"
				>
					<option value="">All Status</option>
					<option value="false">Unreviewed</option>
					<option value="true">Reviewed</option>
				</select>

				<select
					value={searchParams.get("flagged") ?? ""}
					onChange={(e) => handleFilterChange("flagged", e.target.value)}
					className="text-sm border border-gray-200 rounded-lg px-3 py-2 bg-white"
				>
					<option value="">Any Flags</option>
					<option value="true">Flagged</option>
					<option value="false">Unflagged</option>
				</select>
			</div>

			{/* Question card */}
			{currentQuestion ? (
				<>
					<div className="mb-4 flex items-center justify-between text-xs text-gray-400">
						<span>
							{currentIndex + 1} of {questions.length}
							{hasMore ? "+" : ""}
						</span>
						<span className="font-mono">
							&#8592; &#8594; to navigate
						</span>
					</div>

					<ReviewQuestionCard
						key={currentQuestion.id}
						question={currentQuestion}
						onFlag={handleFlag}
						onRemoveFlag={handleRemoveFlag}
						onReveal={handleReveal}
					/>

					{/* Navigation */}
					<div className="flex justify-between mt-6">
						<button
							onClick={goPrev}
							disabled={currentIndex === 0}
							className="px-4 py-2 rounded-lg border border-gray-200 text-sm text-gray-600 hover:bg-gray-50 disabled:opacity-30 disabled:cursor-not-allowed transition-colors"
						>
							&#8592; Previous
						</button>
						<button
							onClick={goNext}
							disabled={currentIndex >= questions.length - 1 && !hasMore}
							className="px-4 py-2 rounded-lg border border-gray-200 text-sm text-gray-600 hover:bg-gray-50 disabled:opacity-30 disabled:cursor-not-allowed transition-colors"
						>
							Next &#8594;
						</button>
					</div>
				</>
			) : (
				<div className="text-center py-20 text-gray-400">
					{loading ? (
						<p>Loading questions...</p>
					) : (
						<p>No questions match your filters.</p>
					)}
				</div>
			)}
		</div>
	);
}
