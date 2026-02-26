"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";

interface ExamConfigClientProps {
	sections: { code: string; title: string; slug: string }[];
	activeExam: {
		id: number;
		sectionCode: string;
		startedAt: string;
		timeLimitMinutes: number;
	} | null;
	recentAttempts: {
		id: number;
		sectionCode: string;
		score: number;
		total: number;
		completedAt: string;
	}[];
	preselectedSection: string | null;
}

export default function ExamConfigClient({
	sections,
	activeExam,
	recentAttempts,
	preselectedSection,
}: ExamConfigClientProps) {
	const router = useRouter();
	const [selectedSection, setSelectedSection] = useState(
		preselectedSection ?? sections[0]?.code ?? "",
	);
	const [loading, setLoading] = useState(false);
	const [error, setError] = useState<string | null>(null);

	const currentSection = sections.find((s) => s.code === selectedSection);

	async function startExam() {
		setLoading(true);
		setError(null);
		try {
			const res = await fetch("/api/exams/start", {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ sectionCode: selectedSection }),
			});
			if (!res.ok) {
				const data = await res.json();
				throw new Error(data.error || "Failed to start exam");
			}
			const data = await res.json();
			router.push(`/exam/${data.attemptId}`);
		} catch (err) {
			setError(err instanceof Error ? err.message : "Something went wrong");
		} finally {
			setLoading(false);
		}
	}

	return (
		<div>
			{/* Resume card for in-progress exam */}
			{activeExam && (
				<div className="border-2 border-amber-300 bg-amber-50 rounded-xl p-6 mb-8">
					<h2 className="text-lg font-semibold text-amber-800 mb-2">
						Exam in Progress
					</h2>
					<p className="text-sm text-amber-700 mb-4">
						You have an active{" "}
						<span className="font-bold">
							{activeExam.sectionCode.toUpperCase()}
						</span>{" "}
						exam started on {new Date(activeExam.startedAt).toLocaleString()}.
						Resume it or it will expire when the timer runs out.
					</p>
					<a
						href={`/exam/${activeExam.id}`}
						className="inline-block bg-amber-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-amber-700 transition-colors"
					>
						Resume Exam
					</a>
				</div>
			)}

			<div className="mb-8">
				<label className="block text-sm font-semibold text-gray-700 mb-3">
					1. Select a section
				</label>
				<div className="flex flex-wrap gap-2">
					{sections.map((s) => (
						<button
							key={s.code}
							onClick={() => setSelectedSection(s.code)}
							className={`px-4 py-2 rounded-lg font-bold text-sm transition-all ${
								selectedSection === s.code
									? "bg-emerald-600 text-white shadow-md transform scale-105"
									: "bg-white border border-gray-200 text-gray-600 hover:border-emerald-300 hover:bg-emerald-50"
							}`}
						>
							{s.code.toUpperCase()}
						</button>
					))}
				</div>
				{currentSection && (
					<p className="mt-3 text-sm text-gray-600">
						Currently practicing: <span className="font-medium text-gray-900">{currentSection.title}</span>
					</p>
				)}
			</div>

			<div className="grid sm:grid-cols-2 gap-6 mb-12">
				{/* Quick Quiz Card */}
				<div className="border border-gray-200 rounded-xl p-6 bg-white hover:border-emerald-500 transition-colors shadow-sm">
					<div className="w-12 h-12 bg-emerald-100 rounded-full flex items-center justify-center mb-4">
						<svg className="w-6 h-6 text-emerald-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01" />
						</svg>
					</div>
					<h3 className="text-xl font-bold text-gray-900 mb-2">Quick Quiz</h3>
					<p className="text-gray-500 text-sm mb-6">
						Short, focused practice sessions. Choose 10, 20, or 30 questions. Immediate feedback and review.
					</p>
					{currentSection && (
						<a
							href={`/sections/${currentSection.slug}/quizzes`}
							className="block w-full text-center bg-white border-2 border-emerald-600 text-emerald-700 px-6 py-2 rounded-lg font-bold hover:bg-emerald-50 transition-colors"
						>
							Take a Quiz
						</a>
					)}
				</div>

				{/* Full Exam Card */}
				<div className="border border-gray-200 rounded-xl p-6 bg-white hover:border-emerald-500 transition-colors shadow-sm">
					<div className="w-12 h-12 bg-emerald-100 rounded-full flex items-center justify-center mb-4">
						<svg className="w-6 h-6 text-emerald-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
						</svg>
					</div>
					<h3 className="text-xl font-bold text-gray-900 mb-2">Simulated Exam</h3>
					<p className="text-gray-500 text-sm mb-6">
						The full experience. 4 hours, all questions for the section. Test your stamina and timing.
					</p>
					<button
						onClick={startExam}
						disabled={loading || !!activeExam}
						className="w-full bg-emerald-600 text-white px-6 py-2.5 rounded-lg font-bold hover:bg-emerald-700 transition-colors disabled:opacity-50"
					>
						{loading ? "Starting\u2026" : "Start Full Exam"}
					</button>
				</div>
			</div>

			{error && <p className="text-sm text-red-600 mb-4">{error}</p>}
