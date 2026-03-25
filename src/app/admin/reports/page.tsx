"use client";

import { useEffect, useState } from "react";

interface Report {
	id: number;
	question_id: number;
	user_id: string;
	quiz_attempt_id: number | null;
	reason: string;
	note: string;
	resolution: string | null;
	resolved_at: string | null;
	created_at: string;
	questions: {
		id: number;
		stem: string;
		topic: string;
		difficulty: string;
		section_id: number;
		sections: { code: string };
	};
}

const REASON_LABELS: Record<string, string> = {
	wrong_answer: "Wrong Answer",
	confusing_wording: "Confusing Wording",
	typo: "Typo",
	outdated: "Outdated",
	other: "Other",
};

const RESOLUTION_OPTIONS = [
	{ value: "fixed", label: "Fixed" },
	{ value: "wont_fix", label: "Won't Fix" },
	{ value: "duplicate", label: "Duplicate" },
];

export default function AdminReportsPage() {
	const [reports, setReports] = useState<Report[]>([]);
	const [loading, setLoading] = useState(true);
	const [filter, setFilter] = useState<"open" | "resolved" | "all">("open");
	const [resolvingId, setResolvingId] = useState<number | null>(null);

	useEffect(() => {
		fetchReports();
	}, []);

	async function fetchReports() {
		setLoading(true);
		try {
			const res = await fetch("/api/admin/reports");
			if (!res.ok) throw new Error("Failed to fetch");
			const data = await res.json();
			setReports(data);
		} catch {
			// silently fail
		} finally {
			setLoading(false);
		}
	}

	async function resolveReport(reportId: number, resolution: string) {
		setResolvingId(reportId);
		try {
			const res = await fetch("/api/admin/reports", {
				method: "PATCH",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ reportId, resolution }),
			});
			if (res.ok) {
				setReports((prev) =>
					prev.map((r) =>
						r.id === reportId
							? { ...r, resolution, resolved_at: new Date().toISOString() }
							: r,
					),
				);
			}
		} finally {
			setResolvingId(null);
		}
	}

	const filtered = reports.filter((r) => {
		if (filter === "open") return !r.resolution;
		if (filter === "resolved") return !!r.resolution;
		return true;
	});

	// Group by question_id and count open reports
	const questionCounts = new Map<number, number>();
	for (const r of reports) {
		if (!r.resolution) {
			questionCounts.set(r.question_id, (questionCounts.get(r.question_id) ?? 0) + 1);
		}
	}

	const openCount = reports.filter((r) => !r.resolution).length;
	const resolvedCount = reports.filter((r) => !!r.resolution).length;

	return (
		<div className="p-8 max-w-5xl">
			<h1 className="text-2xl font-bold text-gray-900 mb-1">User Reports</h1>
			<p className="text-sm text-gray-500 mb-6">
				Questions reported by users as having issues.
			</p>

			{/* Filter tabs */}
			<div className="flex gap-2 mb-6">
				{([
					["open", `Open (${openCount})`],
					["resolved", `Resolved (${resolvedCount})`],
					["all", `All (${reports.length})`],
				] as const).map(([key, label]) => (
					<button
						key={key}
						onClick={() => setFilter(key)}
						className={`px-4 py-1.5 rounded-lg text-sm font-medium transition-colors ${
							filter === key
								? "bg-gray-900 text-white"
								: "bg-gray-100 text-gray-600 hover:bg-gray-200"
						}`}
					>
						{label}
					</button>
				))}
			</div>

			{loading ? (
				<p className="text-gray-400 text-sm">Loading...</p>
			) : filtered.length === 0 ? (
				<div className="text-center py-16 text-gray-400">
					<p className="text-lg font-medium mb-1">No reports</p>
					<p className="text-sm">
						{filter === "open" ? "No open reports — all clear." : "Nothing to show."}
					</p>
				</div>
			) : (
				<div className="space-y-3">
					{filtered.map((r) => {
						const q = r.questions;
						const section = q?.sections?.code?.toUpperCase() ?? "?";
						const openForQuestion = questionCounts.get(r.question_id) ?? 0;

						return (
							<div
								key={r.id}
								className={`border rounded-xl p-4 ${
									r.resolution
										? "border-gray-100 bg-gray-50/50"
										: openForQuestion >= 3
											? "border-red-200 bg-red-50/30"
											: "border-gray-200 bg-white"
								}`}
							>
								<div className="flex items-start justify-between gap-4 mb-2">
									<div className="flex-1 min-w-0">
										<div className="flex items-center gap-2 mb-1">
											<span className="text-xs font-bold text-gray-400 uppercase">
												{section}
											</span>
											<span className="text-xs text-gray-300">|</span>
											<span className="text-xs text-gray-500">
												{q?.topic ?? "Unknown topic"}
											</span>
											<span className="text-xs text-gray-300">|</span>
											<span className="text-xs text-gray-400">
												Q#{r.question_id}
											</span>
											{openForQuestion >= 3 && !r.resolution && (
												<span className="text-[10px] font-bold bg-red-100 text-red-700 px-1.5 py-0.5 rounded uppercase">
													{openForQuestion} reports
												</span>
											)}
										</div>
										<p className="text-sm text-gray-900 truncate">
											{q?.stem ?? "Question not found"}
										</p>
									</div>
									<span
										className={`text-xs font-bold px-2 py-1 rounded shrink-0 ${
											!r.resolution
												? "bg-amber-100 text-amber-700"
												: r.resolution === "fixed"
													? "bg-emerald-100 text-emerald-700"
													: "bg-gray-100 text-gray-500"
										}`}
									>
										{r.resolution
											? r.resolution === "wont_fix"
												? "Won't Fix"
												: r.resolution.charAt(0).toUpperCase() + r.resolution.slice(1)
											: "Open"}
									</span>
								</div>

								<div className="flex items-center gap-3 text-xs text-gray-500 mb-2">
									<span className="bg-gray-100 px-2 py-0.5 rounded font-medium">
										{REASON_LABELS[r.reason] ?? r.reason}
									</span>
									<span>
										{new Date(r.created_at).toLocaleDateString()}
									</span>
								</div>

								{r.note && (
									<p className="text-sm text-gray-600 bg-gray-50 rounded-lg p-2 mb-3 italic">
										&ldquo;{r.note}&rdquo;
									</p>
								)}

								{/* Resolve actions */}
								{!r.resolution && (
									<div className="flex gap-2 mt-2">
										{RESOLUTION_OPTIONS.map((opt) => (
											<button
												key={opt.value}
												onClick={() => resolveReport(r.id, opt.value)}
												disabled={resolvingId === r.id}
												className="text-xs font-medium px-3 py-1.5 rounded-lg border border-gray-200 text-gray-600 hover:bg-gray-50 transition-colors disabled:opacity-50"
											>
												{opt.label}
											</button>
										))}
									</div>
								)}
							</div>
						);
					})}
				</div>
			)}
		</div>
	);
}
