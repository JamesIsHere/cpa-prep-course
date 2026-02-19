"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";

interface ExamConfigClientProps {
	sections: { code: string; title: string }[];
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

			{/* Section selector + start */}
			<div className="border border-gray-200 rounded-xl p-6 mb-8">
				<h2 className="text-lg font-semibold text-gray-800 mb-4">
					Start New Exam
				</h2>
				<label className="block text-sm text-gray-600 mb-2">
					Select a section
				</label>
				<div className="flex gap-3 mb-6">
					{sections.map((s) => (
						<button
							key={s.code}
							onClick={() => setSelectedSection(s.code)}
							className={`px-4 py-2 rounded-lg font-medium text-sm transition-colors ${
								selectedSection === s.code
									? "bg-emerald-600 text-white"
									: "border border-gray-200 text-gray-700 hover:bg-gray-50"
							}`}
						>
							{s.code.toUpperCase()}
						</button>
					))}
				</div>
				<p className="text-sm text-gray-500 mb-4">
					{sections.find((s) => s.code === selectedSection)?.title} — All
					questions, 4-hour time limit
				</p>
				{error && <p className="text-sm text-red-600 mb-4">{error}</p>}
				<button
					onClick={startExam}
					disabled={loading || !!activeExam}
					className="bg-emerald-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
				>
					{loading ? "Starting\u2026" : "Start Exam"}
				</button>
				{activeExam && (
					<p className="text-xs text-gray-400 mt-2">
						Finish or let your current exam expire before starting a new one.
					</p>
				)}
			</div>

			{/* Recent attempts */}
			{recentAttempts.length > 0 && (
				<div>
					<h2 className="text-lg font-semibold text-gray-800 mb-4">
						Recent Exams
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
									<div className="flex items-center gap-3">
										<span className="bg-emerald-100 text-emerald-700 text-xs font-bold px-2 py-0.5 rounded-full">
											{a.sectionCode.toUpperCase()}
										</span>
										<span
											className={`text-sm font-bold ${passed ? "text-emerald-700" : "text-red-700"}`}
										>
											{pct}%
											<span className="font-normal text-gray-500 ml-1">
												({a.score}/{a.total})
											</span>
										</span>
									</div>
									<div className="flex items-center gap-3">
										<span className="text-sm text-gray-400">
											{new Date(a.completedAt).toLocaleDateString()}
										</span>
										<a
											href={`/exam/${a.id}`}
											className="text-xs text-emerald-600 hover:text-emerald-700"
										>
											Review &rarr;
										</a>
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
