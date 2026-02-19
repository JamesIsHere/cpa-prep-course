"use client";

import type { QuizQuestion } from "@/lib/quiz";

interface QuizQuestionProps {
	question: QuizQuestion;
	questionNumber: number;
	totalQuestions: number;
	selectedIndex: number | null;
	onSelect: (index: number) => void;
}

export default function QuizQuestionCard({
	question,
	questionNumber,
	totalQuestions,
	selectedIndex,
	onSelect,
}: QuizQuestionProps) {
	return (
		<div>
			<div className="flex items-center justify-between mb-6">
				<span className="text-sm font-medium text-gray-500">
					Question {questionNumber} of {totalQuestions}
				</span>
				<div className="flex-1 mx-4 bg-gray-200 rounded-full h-2">
					<div
						className="bg-emerald-500 h-2 rounded-full transition-all"
						style={{ width: `${(questionNumber / totalQuestions) * 100}%` }}
					/>
				</div>
			</div>

			<h3 className="text-lg font-semibold text-gray-900 mb-6">
				{question.stem}
			</h3>

			<div className="space-y-3">
				{question.choices.map((choice, i) => {
					const isSelected = selectedIndex === i;
					const letter = String.fromCharCode(65 + i); // A, B, C, D
					return (
						<button
							key={i}
							onClick={() => onSelect(i)}
							className={`w-full text-left flex items-start gap-3 border rounded-lg p-4 transition-all ${
								isSelected
									? "border-emerald-500 bg-emerald-50 shadow-sm"
									: "border-gray-200 hover:border-gray-300 hover:bg-gray-50"
							}`}
						>
							<span
								className={`flex-shrink-0 w-8 h-8 flex items-center justify-center rounded-full text-sm font-bold ${
									isSelected
										? "bg-emerald-500 text-white"
										: "bg-gray-100 text-gray-500"
								}`}
							>
								{letter}
							</span>
							<span className="text-gray-900 pt-1">{choice}</span>
						</button>
					);
				})}
			</div>
		</div>
	);
}
