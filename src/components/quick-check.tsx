"use client";

import { useState } from "react";

interface MultipleChoiceProps {
	question: string;
	choices: string[];
	correctIndex: number;
	explanation?: string;
	answer?: never;
}

interface FreeResponseProps {
	question: string;
	answer: string;
	choices?: never;
	correctIndex?: never;
	explanation?: never;
}

type QuickCheckProps = MultipleChoiceProps | FreeResponseProps;

export default function QuickCheck(props: QuickCheckProps) {
	if ("answer" in props && props.answer) {
		return <FreeResponseCheck question={props.question} answer={props.answer} />;
	}
	return (
		<MultipleChoiceCheck
			question={props.question}
			choices={props.choices!}
			correctIndex={props.correctIndex!}
			explanation={props.explanation}
		/>
	);
}

function FreeResponseCheck({ question, answer }: { question: string; answer: string }) {
	const [revealed, setRevealed] = useState(false);

	return (
		<div className="my-8 border-2 border-emerald-100 rounded-xl bg-emerald-50/30 p-6 sm:p-8">
			<div className="flex items-center gap-2 mb-4">
				<span className="bg-emerald-600 text-white text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider">
					Quick Check
				</span>
				<span className="text-sm font-medium text-emerald-800">
					Test your understanding
				</span>
			</div>

			<h4 className="text-lg font-bold text-gray-900 mb-4">{question}</h4>

			{!revealed ? (
				<button
					onClick={() => setRevealed(true)}
					className="bg-emerald-600 text-white px-8 py-3 rounded-xl font-bold hover:bg-emerald-700 transition-all shadow-sm"
				>
					Reveal Answer
				</button>
			) : (
				<div className="mt-2 p-4 rounded-lg border-l-4 bg-emerald-100/50 border-emerald-500">
					<p className="text-sm text-gray-700 leading-relaxed">{answer}</p>
					<button
						onClick={() => setRevealed(false)}
						className="mt-4 text-xs font-bold text-emerald-700 hover:text-emerald-800 uppercase tracking-wider"
					>
						Hide answer
					</button>
				</div>
			)}
		</div>
	);
}

function MultipleChoiceCheck({
	question,
	choices,
	correctIndex,
	explanation,
}: {
	question: string;
	choices: string[];
	correctIndex: number;
	explanation?: string;
}) {
	const [selectedIndex, setSelectedIndex] = useState<number | null>(null);
	const [revealed, setRevealed] = useState(false);

	const isCorrect = selectedIndex === correctIndex;

	return (
		<div className="my-8 border-2 border-emerald-100 rounded-xl bg-emerald-50/30 p-6 sm:p-8">
			<div className="flex items-center gap-2 mb-4">
				<span className="bg-emerald-600 text-white text-[10px] font-bold px-2 py-0.5 rounded uppercase tracking-wider">
					Quick Check
				</span>
				<span className="text-sm font-medium text-emerald-800">
					Test your understanding
				</span>
			</div>

			<h4 className="text-lg font-bold text-gray-900 mb-6">{question}</h4>

			<div className="space-y-3">
				{choices.map((choice, i) => {
					const isSelected = selectedIndex === i;
					const isAnswerCorrect = i === correctIndex;

					let buttonClass = "border-gray-200 bg-white text-gray-700 hover:border-emerald-300 hover:bg-emerald-50";
					let dotClass = "bg-gray-100 text-gray-400";

					if (revealed) {
						if (isAnswerCorrect) {
							buttonClass = "border-emerald-500 bg-emerald-100 text-emerald-900";
							dotClass = "bg-emerald-500 text-white";
						} else if (isSelected) {
							buttonClass = "border-red-500 bg-red-100 text-red-900";
							dotClass = "bg-red-500 text-white";
						} else {
							buttonClass = "border-gray-100 bg-white text-gray-300 opacity-60";
							dotClass = "bg-gray-50 text-gray-200";
						}
					} else if (isSelected) {
						buttonClass = "border-emerald-500 bg-emerald-50 text-emerald-700";
						dotClass = "bg-emerald-500 text-white";
					}

					return (
						<button
							key={i}
							disabled={revealed}
							onClick={() => setSelectedIndex(i)}
							className={`w-full text-left flex items-start gap-3 border-2 rounded-xl p-4 transition-all ${buttonClass}`}
						>
							<span className={`flex-shrink-0 w-6 h-6 flex items-center justify-center rounded-full text-xs font-bold ${dotClass}`}>
								{String.fromCharCode(65 + i)}
							</span>
							<span className="text-sm sm:text-base">{choice}</span>
						</button>
					);
				})}
			</div>

			{!revealed ? (
				<button
					onClick={() => setRevealed(true)}
					disabled={selectedIndex === null}
					className="mt-6 w-full sm:w-auto bg-emerald-600 text-white px-8 py-3 rounded-xl font-bold hover:bg-emerald-700 transition-all disabled:opacity-50 disabled:cursor-not-allowed shadow-sm"
				>
					Check Answer
				</button>
			) : (
				<div className={`mt-6 p-4 rounded-lg border-l-4 ${isCorrect ? "bg-emerald-100/50 border-emerald-500" : "bg-red-100/50 border-red-500"}`}>
					<p className={`font-bold mb-1 ${isCorrect ? "text-emerald-800" : "text-red-800"}`}>
						{isCorrect ? "Correct!" : "Not quite."}
					</p>
					{explanation && (
						<p className="text-sm text-gray-700 leading-relaxed">
							{explanation}
						</p>
					)}
					<button
						onClick={() => {
							setSelectedIndex(null);
							setRevealed(false);
						}}
						className="mt-4 text-xs font-bold text-emerald-700 hover:text-emerald-800 uppercase tracking-wider"
					>
						Try again
					</button>
				</div>
			)}
		</div>
	);
}
