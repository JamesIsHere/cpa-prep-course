import Link from "next/link";
import { createClient } from "@/lib/supabase/server";

export const dynamic = "force-dynamic";

const SECTIONS = [
	{ code: "aud", title: "Auditing & Attestation" },
	{ code: "far", title: "Financial Accounting & Reporting" },
	{ code: "reg", title: "Taxation & Regulation" },
	{ code: "bar", title: "Business Analysis & Reporting" },
	{ code: "isc", title: "Information Systems & Controls" },
	{ code: "tcp", title: "Tax Compliance & Planning" },
];

const FLAG_LABELS: Record<string, string> = {
	wrong_answer: "Wrong Answer",
	unclear_stem: "Unclear Stem",
	bad_distractor: "Bad Distractor",
	wrong_explanation: "Wrong Explanation",
	other: "Other",
};

interface SectionStats {
	code: string;
	title: string;
	total: number;
	reviewed: number;
	cursor: number | null;
}

export default async function AdminHubPage() {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) return null;

	// Fetch all section IDs
	const { data: sectionRows } = await supabase
		.from("sections")
		.select("id, code")
		.order("id");

	const sectionMap = new Map(
		(sectionRows ?? []).map((s) => [s.code, s.id]),
	);

	// Fetch cursors
	const { data: cursorRows } = await supabase
		.from("admin_review_cursors")
		.select("section_code, last_question_id")
		.eq("user_id", user.id);

	const cursorMap = new Map(
		(cursorRows ?? []).map((c) => [c.section_code, c.last_question_id]),
	);

	// Fetch per-section stats in parallel
	const sectionStats: SectionStats[] = await Promise.all(
		SECTIONS.map(async (s) => {
			const sectionId = sectionMap.get(s.code);
			if (!sectionId)
				return { code: s.code, title: s.title, total: 0, reviewed: 0, cursor: null };

			const [totalRes, reviewedRes] = await Promise.all([
				supabase
					.from("questions")
					.select("id", { count: "exact", head: true })
					.eq("section_id", sectionId),
				supabase
					.from("question_reviews")
					.select("question_id, questions!inner(section_id)")
					.eq("user_id", user.id)
					.eq("questions.section_id", sectionId),
			]);

			return {
				code: s.code,
				title: s.title,
				total: totalRes.count ?? 0,
				reviewed: reviewedRes.data?.length ?? 0,
				cursor: cursorMap.get(s.code) ?? null,
			};
		}),
	);

	const totalQuestions = sectionStats.reduce((sum, s) => sum + s.total, 0);
	const totalReviewed = sectionStats.reduce((sum, s) => sum + s.reviewed, 0);
	const overallPct = totalQuestions > 0 ? Math.round((totalReviewed / totalQuestions) * 100) : 0;

	// Today's session count
	const today = new Date();
	today.setHours(0, 0, 0, 0);
	const { count: todayCount } = await supabase
		.from("question_reviews")
		.select("question_id", { count: "exact", head: true })
		.eq("user_id", user.id)
		.gte("reviewed_at", today.toISOString());

	// Flag summary
	const { data: flagRows } = await supabase
		.from("question_flags")
		.select("flag_type, question_id, questions!inner(section_id)")
		.eq("user_id", user.id)
		.is("resolved_at", null);

	const totalFlags = flagRows?.length ?? 0;
	const flagsByType = new Map<string, number>();
	const flagsBySection = new Map<string, number>();

	for (const f of flagRows ?? []) {
		flagsByType.set(f.flag_type, (flagsByType.get(f.flag_type) ?? 0) + 1);
		const secCode = (sectionRows ?? []).find(
			(s) => s.id === (f.questions as unknown as { section_id: number }).section_id,
		)?.code;
		if (secCode) {
			flagsBySection.set(secCode, (flagsBySection.get(secCode) ?? 0) + 1);
		}
	}

	return (
		<div className="max-w-5xl mx-auto px-6 py-8">
			{/* Header */}
			<div className="mb-8">
				<h1 className="text-2xl font-bold text-gray-900">Admin Hub</h1>
				<p className="text-sm text-gray-500 mt-1">
					{totalReviewed.toLocaleString()} / {totalQuestions.toLocaleString()} questions
					reviewed ({overallPct}%)
				</p>
			</div>

			{/* Top row: Overall progress + Session stats */}
			<div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
				{/* Overall progress */}
				<div className="md:col-span-2 bg-white border border-gray-200 rounded-2xl shadow-sm p-6">
					<h2 className="text-sm font-bold text-gray-400 uppercase tracking-widest mb-4">
						Review Progress
					</h2>
					<div className="space-y-4">
						{sectionStats.map((s) => {
							const pct = s.total > 0 ? Math.round((s.reviewed / s.total) * 100) : 0;
							return (
								<div key={s.code}>
									<div className="flex items-center justify-between mb-1">
										<span className="text-sm font-medium text-gray-700">
											{s.code.toUpperCase()}
										</span>
										<span className="text-xs text-gray-400">
											{s.reviewed.toLocaleString()} / {s.total.toLocaleString()} ({pct}%)
										</span>
									</div>
									<div className="h-2 bg-gray-100 rounded-full overflow-hidden">
										<div
											className="h-full bg-emerald-500 rounded-full transition-all duration-300"
											style={{ width: `${pct}%` }}
										/>
									</div>
								</div>
							);
						})}
					</div>

					{/* Overall bar */}
					<div className="mt-6 pt-4 border-t border-gray-100">
						<div className="flex items-center justify-between mb-1">
							<span className="text-sm font-bold text-gray-900">Overall</span>
							<span className="text-xs font-medium text-gray-500">
								{totalReviewed.toLocaleString()} / {totalQuestions.toLocaleString()} (
								{overallPct}%)
							</span>
						</div>
						<div className="h-2.5 bg-gray-100 rounded-full overflow-hidden">
							<div
								className="h-full bg-emerald-600 rounded-full transition-all duration-300"
								style={{ width: `${overallPct}%` }}
							/>
						</div>
					</div>
				</div>

				{/* Session + Flags sidebar */}
				<div className="space-y-6">
					{/* Today's session */}
					<div className="bg-white border border-gray-200 rounded-2xl shadow-sm p-6">
						<h2 className="text-sm font-bold text-gray-400 uppercase tracking-widest mb-3">
							Today
						</h2>
						<p className="text-3xl font-bold text-gray-900">{todayCount ?? 0}</p>
						<p className="text-xs text-gray-500 mt-1">questions reviewed</p>
					</div>

					{/* Flag summary */}
					<div className="bg-white border border-gray-200 rounded-2xl shadow-sm p-6">
						<div className="flex items-center justify-between mb-3">
							<h2 className="text-sm font-bold text-gray-400 uppercase tracking-widest">
								Open Flags
							</h2>
							{totalFlags > 0 && (
								<Link
									href="/admin/flags"
									className="text-xs text-emerald-600 hover:text-emerald-700 font-medium"
								>
									View All
								</Link>
							)}
						</div>
						{totalFlags === 0 ? (
							<p className="text-sm text-gray-400">No open flags</p>
						) : (
							<>
								<p className="text-3xl font-bold text-gray-900 mb-3">{totalFlags}</p>
								<div className="space-y-1.5">
									{Array.from(flagsByType.entries()).map(([type, count]) => (
										<div key={type} className="flex items-center justify-between text-xs">
											<span className="text-gray-500">
												{FLAG_LABELS[type] ?? type}
											</span>
											<span className="font-medium text-gray-700">{count}</span>
										</div>
									))}
								</div>
							</>
						)}
					</div>
				</div>
			</div>

			{/* Quick Resume */}
			<div className="bg-white border border-gray-200 rounded-2xl shadow-sm p-6">
				<h2 className="text-sm font-bold text-gray-400 uppercase tracking-widest mb-4">
					Quick Resume
				</h2>
				<div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-3">
					{sectionStats.map((s) => {
						const pct = s.total > 0 ? Math.round((s.reviewed / s.total) * 100) : 0;
						const done = pct === 100;
						const href = s.cursor
							? `/admin/review?section=${s.code}&reviewed=false&cursor=${s.cursor}`
							: `/admin/review?section=${s.code}&reviewed=false`;
						const flagCount = flagsBySection.get(s.code) ?? 0;

						return (
							<Link
								key={s.code}
								href={href}
								className={`border rounded-xl p-4 transition-colors ${
									done
										? "border-emerald-200 bg-emerald-50"
										: "border-gray-200 hover:border-emerald-300 hover:bg-emerald-50/50"
								}`}
							>
								<div className="flex items-center justify-between mb-2">
									<span className="text-sm font-bold text-gray-900">
										{s.code.toUpperCase()}
									</span>
									<span className="text-xs text-gray-400">{pct}%</span>
								</div>
								<p className="text-xs text-gray-500 mb-2">{s.title}</p>
								<div className="h-1.5 bg-gray-100 rounded-full overflow-hidden mb-2">
									<div
										className={`h-full rounded-full ${done ? "bg-emerald-400" : "bg-emerald-500"}`}
										style={{ width: `${pct}%` }}
									/>
								</div>
								<div className="flex items-center justify-between">
									<span className="text-[10px] text-gray-400">
										{s.reviewed.toLocaleString()} / {s.total.toLocaleString()}
									</span>
									{flagCount > 0 && (
										<span className="text-[10px] px-1.5 py-0.5 rounded-full bg-red-100 text-red-600 font-medium">
											{flagCount} flags
										</span>
									)}
								</div>
								<p className="text-xs font-medium text-emerald-600 mt-2">
									{done ? "Complete" : s.cursor ? "Resume" : "Start"}
									{!done && " \u2192"}
								</p>
							</Link>
						);
					})}
				</div>
			</div>
		</div>
	);
}
