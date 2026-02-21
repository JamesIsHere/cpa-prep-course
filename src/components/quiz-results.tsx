"use client";

import { useState } from "react";
import type { ExamResult, ExamTopicScore } from "@/lib/quiz";

interface QuizResultsProps {
	result: ExamResult;
	sectionSlug: string;
	onRetry: () => void;
}

export default function QuizResults({
	result,
	sectionSlug,
	onRetry,
}: QuizResultsProps) {
	const [expandedId, setExpandedId] = useState<number | null>(null);
	const percentage = Math.round((result.score / result.total) * 100);
	const passed = percentage >= 75;

	return (
		<div>
			{/* Score summary */}
			<div
				className={`rounded-xl p-8 text-center mb-8 ${
					passed
						? "bg-emerald-50 border border-emerald-200"
						: "bg-red-50 border border-red-200"
				}`}
			>
				<div
					className={`text-5xl font-bold mb-2 ${
						passed ? "text-emerald-700" : "text-red-700"
					}`}
				>
					{percentage}%
				</div>
				<p className="text-gray-600">
					{result.score} of {result.total} correct
				</p>
				<p
					className={`text-sm font-medium mt-2 ${
						passed ? "text-emerald-600" : "text-red-600"
					}`}
				>
					{passed ? "Passing score" : "Below passing (75%)"}
				</p>
			</div>

			{/* Topic breakdown */}
			{result.topicScores && result.topicScores.length > 1 && (
				<>
					<h3 className="text-lg font-semibold text-gray-800 mb-4">
						Score by Topic
					</h3>
					<div className="border border-gray-200 rounded-xl overflow-hidden mb-8">
						<table className="w-full text-sm">
							<thead>
								<tr className="bg-gray-50 border-b border-gray-200">
									<th className="text-left px-4 py-3 font-medium text-gray-600">
										Topic
									</th>
									<th className="text-right px-4 py-3 font-medium text-gray-600">
										Score
									</th>
									<th className="text-right px-4 py-3 font-medium text-gray-600">
										%
									</th>
								</tr>
							</thead>
							<tbody>
								{result.topicScores.map((t: ExamTopicScore) => {
									const topicPct = Math.round((t.correct / t.total) * 100);
									const topicPassed = topicPct >= 75;
									return (
										<tr
											key={t.topic}
											className="border-b border-gray-100 last:border-0"
										>
											<td className="px-4 py-3 text-gray-900">{t.topic}</td>
											<td className="px-4 py-3 text-right text-gray-600">
												{t.correct}/{t.total}
											</td>
											<td
												className={`px-4 py-3 text-right font-bold ${
													topicPassed ? "text-emerald-700" : "text-red-700"
												}`}
											>
												{topicPct}%
											</td>
										</tr>
									);
								})}
							</tbody>
						</table>
					</div>
				</>
			)}

			{/* Per-question review */}
			<h3 className="text-lg font-semibold text-gray-800 mb-4">
				Question Review
			</h3>
			<div className="space-y-3">
				{result.questions.map((q, i) => {
					const isExpanded = expandedId === q.id;
					const letter = (index: number) => String.fromCharCode(65 + index);
					return (
						<div
							key={q.id}
							className={`border rounded-lg overflow-hidden ${
								q.correct ? "border-emerald-200" : "border-red-200"
							}`}
						>
							<button
								onClick={() => setExpandedId(isExpanded ? null : q.id)}
								className="w-full text-left flex items-center gap-3 p-4 hover:bg-gray-50 transition-colors"
							>
								<span
									className={`flex-shrink-0 w-7 h-7 flex items-center justify-center rounded-full text-xs font-bold ${
										q.correct
											? "bg-emerald-100 text-emerald-700"
											: "bg-red-100 text-red-700"
									}`}
								>
									{q.correct ? "\u2713" : "\u2717"}
								</span>
								<span className="text-sm text-gray-500 font-mono w-6">
									{i + 1}.
								</span>
								<span className="text-gray-900 text-sm flex-1 truncate">
									{q.stem}
								</span>
								<span className="text-gray-400 text-sm">
									{isExpanded ? "\u25B2" : "\u25BC"}
								</span>
							</button>

							{isExpanded && (
								<div className="px-4 pb-4 border-t border-gray-100 pt-4">
									<div className="space-y-2 mb-4">
										{q.choices.map((choice, ci) => {
											const isUserChoice = ci === q.selectedIndex;
											const isCorrect = ci === q.correctIndex;
											let style = "border-gray-100 text-gray-500";
											if (isCorrect)
												style =
													"border-emerald-200 bg-emerald-50 text-emerald-900";
											if (isUserChoice && !isCorrect)
												style = "border-red-200 bg-red-50 text-red-900";
											return (
												<div
													key={ci}
													className={`flex items-start gap-2 border rounded-lg p-3 text-sm ${style}`}
												>
													<span className="font-bold flex-shrink-0">
														{letter(ci)}.
													</span>
													<span>{choice}</span>
													{isCorrect && (
														<span className="ml-auto text-emerald-600 text-xs font-medium flex-shrink-0">
															Correct
														</span>
													)}
													{isUserChoice && !isCorrect && (
														<span className="ml-auto text-red-600 text-xs font-medium flex-shrink-0">
															Your answer
														</span>
													)}
												</div>
											);
										})}
									</div>
									<div className="bg-gray-50 rounded-lg p-3">
										<p className="text-sm text-gray-700">
											<span className="font-medium">Explanation:</span>{" "}
											{q.explanation}
										</p>
									</div>
								</div>
							)}
						</div>
					);
				})}
			</div>

			{/* Actions */}
			<div className="flex flex-col sm:flex-row gap-3 mt-8">
				<button
					onClick={onRetry}
					className="bg-emerald-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
				>
					Try Again
				</button>
				<a
					href={`/sections/${sectionSlug}`}
					className="border border-gray-300 text-gray-700 px-6 py-2 rounded-lg font-medium hover:bg-gray-50 transition-colors text-center"
				>
					Back to Section
				</a>
			</div>
		</div>
	);
}
