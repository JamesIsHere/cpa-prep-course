"use client";

import { useEffect, useState } from "react";
import { createClient } from "@/lib/supabase/client";

interface DailyProgress {
	questions_done: number;
	lessons_done: number;
	goals: {
		questions: number;
		lessons: number;
	};
	streak: number;
}

export default function DailyGoalsCard() {
	const [progress, setProgress] = useState<DailyProgress | null>(null);
	const [loading, setLoading] = useState(true);

	useEffect(() => {
		async function fetchProgress() {
			const supabase = createClient();
			const { data: { user } } = await supabase.auth.getUser();
			if (!user) return;

			const { data, error } = await supabase.rpc("get_user_daily_progress", {
				p_user_id: user.id,
			});

			if (!error && data) {
				setProgress(data as DailyProgress);
			}
			setLoading(false);
		}
		fetchProgress();
	}, []);

	if (loading) return (
		<div className="bg-white border border-gray-200 rounded-2xl p-6 animate-pulse">
			<div className="h-4 bg-gray-100 rounded w-1/3 mb-4"></div>
			<div className="space-y-3">
				<div className="h-8 bg-gray-50 rounded w-full"></div>
				<div className="h-8 bg-gray-50 rounded w-full"></div>
			</div>
		</div>
	);

	if (!progress) return null;

	const questionPct = Math.min(100, (progress.questions_done / progress.goals.questions) * 100);
	const lessonPct = Math.min(100, (progress.lessons_done / progress.goals.lessons) * 100);
	const allDone = questionPct >= 100 && lessonPct >= 100;

	return (
		<div className={`border-2 transition-all rounded-2xl p-6 ${allDone ? "bg-emerald-50 border-emerald-200 shadow-sm" : "bg-white border-gray-200"}`}>
			<div className="flex items-center justify-between mb-6">
				<div className="flex items-center gap-4">
					{progress.streak > 0 && (
						<div className="flex flex-col items-center">
							<span className="text-2xl animate-pulse">🔥</span>
							<span className="text-[10px] font-black text-orange-600 leading-none">{progress.streak}</span>
						</div>
					)}
					<div>
						<h3 className="text-lg font-bold text-gray-900 leading-tight">Daily Target</h3>
						<p className="text-xs text-gray-500 uppercase tracking-wider font-bold">Today&apos;s Progress</p>
					</div>
				</div>
				{allDone && (
					<span className="bg-emerald-600 text-white text-[10px] font-bold px-2 py-1 rounded-full animate-bounce">
						GOAL HIT! 🚀
					</span>
				)}
			</div>

			<div className="space-y-6">
				{/* Questions Progress */}
				<div>
					<div className="flex justify-between items-end mb-2">
						<span className="text-sm font-bold text-gray-700">Practice Questions</span>
						<span className="text-sm font-mono text-gray-500">
							<span className={questionPct >= 100 ? "text-emerald-600 font-bold" : "text-gray-900"}>{progress.questions_done}</span>
							<span className="mx-1">/</span>
							{progress.goals.questions}
						</span>
					</div>
					<div className="h-3 bg-gray-100 rounded-full overflow-hidden">
						<div 
							className={`h-full transition-all duration-1000 ${questionPct >= 100 ? "bg-emerald-500" : "bg-emerald-400"}`}
							style={{ width: `${questionPct}%` }}
						/>
					</div>
				</div>

				{/* Lessons Progress */}
				<div>
					<div className="flex justify-between items-end mb-2">
						<span className="text-sm font-bold text-gray-700">Lessons Completed</span>
						<span className="text-sm font-mono text-gray-500">
							<span className={lessonPct >= 100 ? "text-emerald-600 font-bold" : "text-gray-900"}>{progress.lessons_done}</span>
							<span className="mx-1">/</span>
							{progress.goals.lessons}
						</span>
					</div>
					<div className="h-3 bg-gray-100 rounded-full overflow-hidden">
						<div 
							className={`h-full transition-all duration-1000 ${lessonPct >= 100 ? "bg-emerald-500" : "bg-emerald-400"}`}
							style={{ width: `${lessonPct}%` }}
						/>
					</div>
				</div>
			</div>

			<p className="mt-6 text-[11px] text-gray-400 leading-relaxed italic">
				Keep your streak alive! Consistent daily practice is the #1 predictor of passing the CPA exam.
			</p>
		</div>
	);
}
