import type { Metadata } from "next";
import Link from "next/link";
import SectionCard from "@/components/section-card";
import { sections } from "@/lib/sections";
import { createClient } from "@/lib/supabase/server";

export const metadata: Metadata = {
	title: "Dashboard — CPA Prep Course",
};

export default async function DashboardPage() {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	// Fetch recent quiz attempts per section
	const quizScores: Record<
		string,
		{ score: number; total: number; date: string }[]
	> = {};
	const examScores: Record<
		string,
		{ id: number; score: number; total: number; date: string }[]
	> = {};

	if (user) {
		// Map section_id to section code
		const { data: dbSections } = await supabase
			.from("sections")
			.select("id, code");

		const idToCode = new Map(
			(dbSections ?? []).map((s: { id: number; code: string }) => [
				s.id,
				s.code,
			]),
		);

		const { data: attempts } = await supabase
			.from("quiz_attempts")
			.select("section_id, score, total, completed_at")
			.eq("user_id", user.id)
			.not("completed_at", "is", null)
			.order("completed_at", { ascending: false })
			.limit(15);

		if (attempts) {
			for (const a of attempts) {
				const code = idToCode.get(a.section_id);
				if (!code) continue;
				if (!quizScores[code]) quizScores[code] = [];
				if (quizScores[code].length < 3) {
					quizScores[code].push({
						score: a.score,
						total: a.total,
						date: a.completed_at,
					});
				}
			}
		}

		const { data: examAttempts } = await supabase
			.from("exam_attempts")
			.select("id, section_id, score, total, completed_at")
			.eq("user_id", user.id)
			.not("completed_at", "is", null)
			.order("completed_at", { ascending: false })
			.limit(15);

		if (examAttempts) {
			for (const a of examAttempts) {
				const code = idToCode.get(a.section_id);
				if (!code) continue;
				if (!examScores[code]) examScores[code] = [];
				if (examScores[code].length < 3) {
					examScores[code].push({
						id: a.id,
						score: a.score,
						total: a.total,
						date: a.completed_at,
					});
				}
			}
		}
	}

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<h1 className="text-3xl font-bold text-gray-900 mb-2">Dashboard</h1>
			<p className="text-gray-500 mb-8">
				Welcome back{user?.email ? `, ${user.email}` : ""}. Pick up where you
				left off.
			</p>

			<h2 className="text-lg font-semibold text-gray-800 mb-4">
				Your Sections
			</h2>
			<div className="grid sm:grid-cols-3 gap-6">
				{sections.map((section) => (
					<SectionCard key={section.code} section={section} />
				))}
			</div>

			{Object.keys(quizScores).length > 0 && (
				<div className="mt-12">
					<h2 className="text-lg font-semibold text-gray-800 mb-4">
						Recent Quiz Scores
					</h2>
					<div className="grid sm:grid-cols-3 gap-6">
						{sections.map((section) => {
							const scores = quizScores[section.code];
							if (!scores || scores.length === 0) return null;
							return (
								<div
									key={section.code}
									className="border border-gray-200 rounded-xl p-5"
								>
									<div className="flex items-center justify-between mb-3">
										<span className="bg-emerald-100 text-emerald-700 text-sm font-bold px-3 py-1 rounded-full">
											{section.code.toUpperCase()}
										</span>
										<Link
											href={`/sections/${section.slug}/quizzes`}
											className="text-xs text-emerald-600 hover:text-emerald-700"
										>
											Take quiz &rarr;
										</Link>
									</div>
									<div className="space-y-2">
										{scores.map((s, i) => {
											const pct = Math.round((s.score / s.total) * 100);
											const passed = pct >= 75;
											return (
												<div
													key={i}
													className="flex items-center justify-between text-sm"
												>
													<span
														className={`font-bold ${passed ? "text-emerald-700" : "text-red-700"}`}
													>
														{pct}%
														<span className="font-normal text-gray-500 ml-1">
															({s.score}/{s.total})
														</span>
													</span>
													<span className="text-gray-400 text-xs">
														{new Date(s.date).toLocaleDateString()}
													</span>
												</div>
											);
										})}
									</div>
								</div>
							);
						})}
					</div>
				</div>
			)}
			{Object.keys(examScores).length > 0 && (
				<div className="mt-12">
					<h2 className="text-lg font-semibold text-gray-800 mb-4">
						Recent Exam Scores
					</h2>
					<div className="grid sm:grid-cols-3 gap-6">
						{sections.map((section) => {
							const scores = examScores[section.code];
							if (!scores || scores.length === 0) return null;
							return (
								<div
									key={section.code}
									className="border border-gray-200 rounded-xl p-5"
								>
									<div className="flex items-center justify-between mb-3">
										<span className="bg-emerald-100 text-emerald-700 text-sm font-bold px-3 py-1 rounded-full">
											{section.code.toUpperCase()}
										</span>
										<Link
											href={`/exam?section=${section.code}`}
											className="text-xs text-emerald-600 hover:text-emerald-700"
										>
											Take exam &rarr;
										</Link>
									</div>
									<div className="space-y-2">
										{scores.map((s) => {
											const pct = Math.round((s.score / s.total) * 100);
											const passed = pct >= 75;
											return (
												<div
													key={s.id}
													className="flex items-center justify-between text-sm"
												>
													<span
														className={`font-bold ${passed ? "text-emerald-700" : "text-red-700"}`}
													>
														{pct}%
														<span className="font-normal text-gray-500 ml-1">
															({s.score}/{s.total})
														</span>
													</span>
													<span className="text-gray-400 text-xs">
														{new Date(s.date).toLocaleDateString()}
													</span>
												</div>
											);
										})}
									</div>
								</div>
							);
						})}
					</div>
				</div>
			)}
		</main>
	);
}
