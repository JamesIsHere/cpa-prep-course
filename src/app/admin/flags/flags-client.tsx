"use client";

import Link from "next/link";
import { useState } from "react";
import type { FlagRow } from "./page";

const FLAG_LABELS: Record<string, string> = {
	wrong_answer: "Wrong Answer",
	unclear_stem: "Unclear Stem",
	bad_distractor: "Bad Distractor",
	wrong_explanation: "Wrong Explanation",
	other: "Other",
};

const FLAG_COLORS: Record<string, string> = {
	wrong_answer: "bg-red-100 text-red-700",
	unclear_stem: "bg-amber-100 text-amber-700",
	bad_distractor: "bg-orange-100 text-orange-700",
	wrong_explanation: "bg-purple-100 text-purple-700",
	other: "bg-gray-100 text-gray-600",
};

interface Props {
	flags: FlagRow[];
	sections: string[];
}

export default function FlagsClient({ flags: initialFlags, sections }: Props) {
	const [flags, setFlags] = useState(initialFlags);
	const [sectionFilter, setSectionFilter] = useState("");
	const [typeFilter, setTypeFilter] = useState("");
	const [statusFilter, setStatusFilter] = useState<"open" | "resolved" | "">("open");
	const [resolving, setResolving] = useState<number | null>(null);
	const [resolutionNotes, setResolutionNotes] = useState("");

	const filtered = flags.filter((f) => {
		if (sectionFilter && f.section_code !== sectionFilter) return false;
		if (typeFilter && f.flag_type !== typeFilter) return false;
		if (statusFilter === "open" && f.resolved_at) return false;
		if (statusFilter === "resolved" && !f.resolved_at) return false;
		return true;
	});

	const openCount = flags.filter((f) => !f.resolved_at).length;

	async function handleResolve(flagId: number) {
		const res = await fetch("/api/admin/review/flags", {
			method: "PATCH",
			headers: { "Content-Type": "application/json" },
			body: JSON.stringify({ flagId, resolutionNotes }),
		});
		if (res.ok) {
			setFlags((prev) =>
				prev.map((f) =>
					f.id === flagId
						? { ...f, resolved_at: new Date().toISOString(), resolution_notes: resolutionNotes }
						: f,
				),
			);
			setResolving(null);
			setResolutionNotes("");
		}
	}

	return (
		<div className="max-w-5xl mx-auto px-6 py-8">
			<div className="mb-6">
				<h1 className="text-2xl font-bold text-gray-900 mb-1">Flag Dashboard</h1>
				<p className="text-sm text-gray-500">
					{openCount} open flag{openCount !== 1 ? "s" : ""} across {flags.length} total
				</p>
			</div>

			{/* Filters */}
			<div className="flex flex-wrap gap-3 mb-6">
				<select
					value={sectionFilter}
					onChange={(e) => setSectionFilter(e.target.value)}
					className="text-sm border border-gray-200 rounded-lg px-3 py-2 bg-white"
				>
					<option value="">All Sections</option>
					{sections.map((s) => (
						<option key={s} value={s}>
							{s.toUpperCase()}
						</option>
					))}
				</select>

				<select
					value={typeFilter}
					onChange={(e) => setTypeFilter(e.target.value)}
					className="text-sm border border-gray-200 rounded-lg px-3 py-2 bg-white"
				>
					<option value="">All Types</option>
					{Object.entries(FLAG_LABELS).map(([val, label]) => (
						<option key={val} value={val}>
							{label}
						</option>
					))}
				</select>

				<select
					value={statusFilter}
					onChange={(e) => setStatusFilter(e.target.value as "open" | "resolved" | "")}
					className="text-sm border border-gray-200 rounded-lg px-3 py-2 bg-white"
				>
					<option value="">All Status</option>
					<option value="open">Open</option>
					<option value="resolved">Resolved</option>
				</select>
			</div>

			{/* Flag list */}
			{filtered.length === 0 ? (
				<div className="text-center py-20 text-gray-400">
					No flags match your filters.
				</div>
			) : (
				<div className="space-y-3">
					{filtered.map((f) => (
						<div
							key={f.id}
							className={`bg-white border rounded-xl p-4 transition-colors ${
								f.resolved_at ? "border-gray-100 opacity-60" : "border-gray-200"
							}`}
						>
							<div className="flex items-start justify-between gap-4">
								<div className="flex-1 min-w-0">
									{/* Top row: section badge + flag type + question ID */}
									<div className="flex items-center gap-2 mb-2 flex-wrap">
										<span className="text-[10px] font-bold px-2 py-0.5 rounded-full bg-gray-100 text-gray-600 uppercase">
											{f.section_code}
										</span>
										<span
											className={`text-[10px] font-bold px-2 py-0.5 rounded-full ${FLAG_COLORS[f.flag_type] ?? "bg-gray-100 text-gray-600"}`}
										>
											{FLAG_LABELS[f.flag_type] ?? f.flag_type}
										</span>
										<span className="text-xs font-mono text-gray-400">
											#{f.question_id}
										</span>
										<span className="text-xs text-gray-300">
											{f.topic}
										</span>
									</div>

									{/* Stem preview */}
									<p className="text-sm text-gray-700 line-clamp-2 mb-1">
										{f.stem}
									</p>

									{/* Notes */}
									{f.notes && (
										<p className="text-xs text-gray-500 italic">
											{f.notes}
										</p>
									)}

									{/* Resolution info */}
									{f.resolved_at && (
										<p className="text-xs text-emerald-600 mt-1">
											Resolved{f.resolution_notes ? `: ${f.resolution_notes}` : ""}
										</p>
									)}

									{/* Date */}
									<p className="text-[10px] text-gray-300 mt-1">
										{new Date(f.created_at).toLocaleDateString()}
									</p>
								</div>

								{/* Actions */}
								<div className="flex items-center gap-2 shrink-0">
									<Link
										href={`/admin/review?section=${f.section_code}&topic=${encodeURIComponent(f.topic)}`}
										className="text-xs px-3 py-1.5 rounded-lg border border-gray-200 text-gray-600 hover:bg-gray-50 transition-colors"
									>
										View
									</Link>
									{!f.resolved_at && (
										<>
											{resolving === f.id ? (
												<div className="flex items-center gap-2">
													<input
														type="text"
														value={resolutionNotes}
														onChange={(e) => setResolutionNotes(e.target.value)}
														placeholder="Resolution note..."
														className="text-xs border border-gray-200 rounded-lg px-2 py-1.5 w-40"
													/>
													<button
														onClick={() => handleResolve(f.id)}
														className="text-xs px-3 py-1.5 rounded-lg bg-emerald-600 text-white hover:bg-emerald-700 transition-colors"
													>
														Done
													</button>
													<button
														onClick={() => { setResolving(null); setResolutionNotes(""); }}
														className="text-xs px-2 py-1.5 text-gray-400 hover:text-gray-600"
													>
														Cancel
													</button>
												</div>
											) : (
												<button
													onClick={() => setResolving(f.id)}
													className="text-xs px-3 py-1.5 rounded-lg bg-emerald-600 text-white hover:bg-emerald-700 transition-colors"
												>
													Resolve
												</button>
											)}
										</>
									)}
								</div>
							</div>
						</div>
					))}
				</div>
			)}
		</div>
	);
}
