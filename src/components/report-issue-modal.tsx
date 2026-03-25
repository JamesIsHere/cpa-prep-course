"use client";

import { useState } from "react";

interface ReportIssueModalProps {
	questionId: number;
	quizAttemptId?: number | null;
	onClose: () => void;
	onSubmitted: () => void;
}

const REASONS = [
	{ value: "wrong_answer", label: "Wrong answer marked as correct" },
	{ value: "confusing_wording", label: "Confusing wording" },
	{ value: "typo", label: "Typo or grammatical error" },
	{ value: "outdated", label: "Outdated information" },
	{ value: "other", label: "Other" },
] as const;

export default function ReportIssueModal({
	questionId,
	quizAttemptId,
	onClose,
	onSubmitted,
}: ReportIssueModalProps) {
	const [reason, setReason] = useState<string>("");
	const [note, setNote] = useState("");
	const [loading, setLoading] = useState(false);
	const [error, setError] = useState<string | null>(null);

	async function handleSubmit(e: React.FormEvent) {
		e.preventDefault();
		if (!reason) {
			setError("Please select a reason");
			return;
		}
		setLoading(true);
		setError(null);
		try {
			const res = await fetch(`/api/questions/${questionId}/report`, {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ reason, note, quizAttemptId }),
			});
			if (!res.ok) {
				const data = await res.json();
				throw new Error(data.error || "Failed to submit report");
			}
			onSubmitted();
		} catch (err) {
			setError(err instanceof Error ? err.message : "Something went wrong");
		} finally {
			setLoading(false);
		}
	}

	return (
		<div className="fixed inset-0 z-50 flex items-center justify-center bg-black/40">
			<div className="bg-white rounded-xl shadow-xl w-full max-w-md mx-4 p-6">
				<div className="flex items-center justify-between mb-4">
					<h3 className="text-lg font-bold text-gray-900">Report Issue</h3>
					<button
						onClick={onClose}
						className="text-gray-400 hover:text-gray-600 text-xl leading-none"
					>
						&times;
					</button>
				</div>

				<form onSubmit={handleSubmit}>
					<label className="block text-sm font-medium text-gray-700 mb-2">
						What&apos;s wrong with this question?
					</label>
					<select
						value={reason}
						onChange={(e) => setReason(e.target.value)}
						className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm mb-4 focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500"
					>
						<option value="">Select a reason...</option>
						{REASONS.map((r) => (
							<option key={r.value} value={r.value}>
								{r.label}
							</option>
						))}
					</select>

					<label className="block text-sm font-medium text-gray-700 mb-2">
						Details (optional)
					</label>
					<textarea
						value={note}
						onChange={(e) => setNote(e.target.value)}
						maxLength={500}
						rows={3}
						placeholder="Describe the issue..."
						className="w-full border border-gray-300 rounded-lg px-3 py-2 text-sm mb-1 resize-none focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-emerald-500"
					/>
					<p className="text-xs text-gray-400 mb-4 text-right">
						{note.length}/500
					</p>

					{error && (
						<p className="text-sm text-red-600 mb-4 p-2 bg-red-50 rounded-lg">
							{error}
						</p>
					)}

					<div className="flex gap-3">
						<button
							type="button"
							onClick={onClose}
							className="flex-1 border border-gray-300 text-gray-700 px-4 py-2 rounded-lg font-medium text-sm hover:bg-gray-50 transition-colors"
						>
							Cancel
						</button>
						<button
							type="submit"
							disabled={loading || !reason}
							className="flex-1 bg-red-600 text-white px-4 py-2 rounded-lg font-medium text-sm hover:bg-red-700 transition-colors disabled:opacity-50"
						>
							{loading ? "Submitting..." : "Report Issue"}
						</button>
					</div>
				</form>
			</div>
		</div>
	);
}
