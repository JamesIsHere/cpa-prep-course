"use client";

import { useState } from "react";
import type { ReviewQuestion } from "@/lib/quiz";

const FLAG_TYPES = [
	{ value: "wrong_answer", label: "Wrong Answer" },
	{ value: "unclear_stem", label: "Unclear Stem" },
	{ value: "bad_distractor", label: "Bad Distractor" },
	{ value: "wrong_explanation", label: "Wrong Explanation" },
	{ value: "other", label: "Other" },
] as const;

const DIFFICULTY_COLORS: Record<string, string> = {
	easy: "bg-green-100 text-green-700",
	medium: "bg-amber-100 text-amber-700",
	hard: "bg-red-100 text-red-700",
};

const BLOOMS_LABELS: Record<number, string> = {
	1: "L1 Remember",
	2: "L2 Understand",
	3: "L3 Apply",
	4: "L4 Analyze",
};

interface Props {
	question: ReviewQuestion;
	onFlag: (questionId: number, flagType: string, notes: string) => Promise<void>;
	onRemoveFlag: (questionId: number, flagType: string) => Promise<void>;
	onReveal: (questionId: number) => void;
}

export default function ReviewQuestionCard({ question, onFlag, onRemoveFlag, onReveal }: Props) {
	const [selected, setSelected] = useState<number | null>(null);
	const [revealed, setRevealed] = useState(false);
	const [flagDropdown, setFlagDropdown] = useState(false);
	const [flagNotes, setFlagNotes] = useState("");
	const [flagType, setFlagType] = useState<string>("wrong_answer");
	const [flagging, setFlagging] = useState(false);

	const letters = ["A", "B", "C", "D"];

	function handleReveal() {
		if (selected === null) return;
		setRevealed(true);
		onReveal(question.id);
	}

	async function handleFlag() {
		setFlagging(true);
		await onFlag(question.id, flagType, flagNotes);
		setFlagDropdown(false);
		setFlagNotes("");
		setFlagging(false);
	}

	async function handleRemoveFlag(ft: string) {
		await onRemoveFlag(question.id, ft);
	}

	function choiceClass(index: number): string {
		const base = "w-full text-left px-4 py-3 rounded-lg border transition-colors flex gap-3";
		if (!revealed) {
			if (selected === index) return `${base} border-blue-500 bg-blue-50`;
			return `${base} border-gray-200 hover:border-gray-300 bg-white`;
		}
		// Revealed
		if (index === question.correct_index) return `${base} border-green-500 bg-green-50`;
		if (selected === index && index !== question.correct_index)
			return `${base} border-red-500 bg-red-50`;
		return `${base} border-gray-200 bg-white opacity-60`;
	}

	return (
		<div className="bg-white border border-gray-200 rounded-2xl shadow-sm overflow-hidden">
			{/* Header */}
			<div className="px-6 py-4 bg-gray-50 border-b border-gray-200 flex items-center justify-between flex-wrap gap-2">
				<div className="flex items-center gap-3">
					<span className="text-xs font-mono text-gray-400">#{question.id}</span>
					<span className="text-xs text-gray-500 truncate max-w-[200px]">
						{question.topic}
					</span>
				</div>
				<div className="flex items-center gap-2">
					<span
						className={`text-[10px] font-bold px-2 py-0.5 rounded-full ${DIFFICULTY_COLORS[question.difficulty] ?? "bg-gray-100 text-gray-600"}`}
					>
						{question.difficulty}
					</span>
					{question.cognitive_level && (
						<span className="text-[10px] font-bold px-2 py-0.5 rounded-full bg-blue-100 text-blue-700">
							{BLOOMS_LABELS[question.cognitive_level] ?? `L${question.cognitive_level}`}
						</span>
					)}
					{question.reviewed && (
						<span className="text-[10px] font-bold px-2 py-0.5 rounded-full bg-gray-200 text-gray-600">
							Reviewed
						</span>
					)}
				</div>
			</div>

			{/* Stem */}
			<div className="px-6 py-5">
				<p className="text-gray-900 leading-relaxed whitespace-pre-wrap">{question.stem}</p>
			</div>

			{/* Choices */}
			<div className="px-6 pb-4 space-y-2">
				{question.choices.map((choice, i) => (
					<button
						key={i}
						className={choiceClass(i)}
						onClick={() => !revealed && setSelected(i)}
						disabled={revealed}
					>
						<span className="font-bold text-gray-400 shrink-0">{letters[i]}.</span>
						<span className="text-gray-800">{choice}</span>
						{revealed && i === question.correct_index && (
							<span className="ml-auto text-green-600 shrink-0">&#10003;</span>
						)}
						{revealed && selected === i && i !== question.correct_index && (
							<span className="ml-auto text-red-600 shrink-0">&#10007;</span>
						)}
					</button>
				))}
			</div>

			{/* Reveal button */}
			{!revealed && (
				<div className="px-6 pb-5">
					<button
						onClick={handleReveal}
						disabled={selected === null}
						className="w-full py-2.5 rounded-lg font-medium transition-colors bg-emerald-600 text-white hover:bg-emerald-700 disabled:bg-gray-200 disabled:text-gray-400 disabled:cursor-not-allowed"
					>
						Reveal Answer
					</button>
				</div>
			)}

			{/* Explanation (after reveal) */}
			{revealed && (
				<div className="px-6 pb-5 space-y-4">
					<div className="bg-gray-50 rounded-lg p-4 border border-gray-100">
						<h4 className="text-xs font-bold text-gray-400 uppercase tracking-wide mb-2">
							Explanation
						</h4>
						<p className="text-sm text-gray-700 leading-relaxed whitespace-pre-wrap">
							{question.explanation}
						</p>
					</div>

					{/* Active flags */}
					{question.flags.length > 0 && (
						<div className="flex flex-wrap gap-2">
							{question.flags.map((f) => (
								<button
									key={f.flag_type}
									onClick={() => handleRemoveFlag(f.flag_type)}
									className="text-xs px-2.5 py-1 rounded-full bg-red-100 text-red-700 hover:bg-red-200 transition-colors"
									title={`${f.notes || f.flag_type} — click to remove`}
								>
									{FLAG_TYPES.find((ft) => ft.value === f.flag_type)?.label ?? f.flag_type}
									{f.notes && `: ${f.notes.slice(0, 30)}`}
									<span className="ml-1 opacity-60">&times;</span>
								</button>
							))}
						</div>
					)}

					{/* Flag controls */}
					<div className="relative">
						<button
							onClick={() => setFlagDropdown(!flagDropdown)}
							className="text-xs text-gray-500 hover:text-red-600 transition-colors flex items-center gap-1"
						>
							<svg viewBox="0 0 20 20" fill="currentColor" className="w-3.5 h-3.5">
								<path d="M3 2a1 1 0 011 1v1h12.28a1 1 0 01.948 1.316l-1.578 4.737A1 1 0 0114.702 11H6v2h7a1 1 0 110 2H5a1 1 0 01-1-1V3a1 1 0 011-1z" />
							</svg>
							Flag Issue
						</button>

						{flagDropdown && (
							<div className="absolute bottom-full left-0 mb-2 bg-white border border-gray-200 rounded-xl shadow-lg p-4 w-80 z-10 space-y-3">
								<select
									value={flagType}
									onChange={(e) => setFlagType(e.target.value)}
									className="w-full text-sm border border-gray-200 rounded-lg px-3 py-2"
								>
									{FLAG_TYPES.map((ft) => (
										<option key={ft.value} value={ft.value}>
											{ft.label}
										</option>
									))}
								</select>
								<textarea
									value={flagNotes}
									onChange={(e) => setFlagNotes(e.target.value)}
									placeholder="Notes (optional)"
									rows={2}
									className="w-full text-sm border border-gray-200 rounded-lg px-3 py-2 resize-none"
								/>
								<div className="flex gap-2">
									<button
										onClick={handleFlag}
										disabled={flagging}
										className="text-sm px-3 py-1.5 rounded-lg bg-red-600 text-white hover:bg-red-700 disabled:opacity-50"
									>
										{flagging ? "Saving..." : "Add Flag"}
									</button>
									<button
										onClick={() => setFlagDropdown(false)}
										className="text-sm px-3 py-1.5 rounded-lg border border-gray-200 text-gray-600 hover:bg-gray-50"
									>
										Cancel
									</button>
								</div>
							</div>
						)}
					</div>
				</div>
			)}
		</div>
	);
}
