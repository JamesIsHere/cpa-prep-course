"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";

interface ActiveSectionSettingsProps {
	sections: { code: string; title: string }[];
	activeSection: string;
	targetExamDate: string | null;
}

export default function ActiveSectionSettings({
	sections,
	activeSection,
	targetExamDate,
}: ActiveSectionSettingsProps) {
	const router = useRouter();
	const [selected, setSelected] = useState(activeSection);
	const [examDate, setExamDate] = useState(targetExamDate || "");
	const [loading, setLoading] = useState(false);
	const [success, setSuccess] = useState(false);

	async function handleSave() {
		setLoading(true);
		setSuccess(false);
		try {
			const res = await fetch("/api/account/active-section", {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ 
					sectionCode: selected,
					targetExamDate: examDate || null
				}),
			});
			if (res.ok) {
				setSuccess(true);
				router.refresh();
			}
		} finally {
			setLoading(false);
		}
	}

	return (
		<div className="space-y-6">
			<div className="grid grid-cols-2 sm:grid-cols-3 gap-3">
				{sections.map((s) => (
					<button
						key={s.code}
						type="button"
						onClick={() => setSelected(s.code)}
						className={`p-4 rounded-xl border-2 transition-all text-left ${
							selected === s.code
								? "border-emerald-600 bg-emerald-50 shadow-sm"
								: "border-gray-100 hover:border-gray-200 bg-white"
						}`}
					>
						<span className={`block text-xs font-bold uppercase mb-1 ${
							selected === s.code ? "text-emerald-700" : "text-gray-400"
						}`}>
							{s.code}
						</span>
						<span className={`block text-sm font-bold leading-tight ${
							selected === s.code ? "text-gray-900" : "text-gray-600"
						}`}>
							{s.title}
						</span>
					</button>
				))}
			</div>

			<div className="bg-gray-50 p-6 rounded-2xl border border-gray-100">
				<label className="block text-sm font-bold text-gray-700 mb-2">
					Target Exam Date
				</label>
				<p className="text-xs text-gray-500 mb-4">
					Set your deadline to see a countdown on your dashboard and stay on track.
				</p>
				<input
					type="date"
					value={examDate}
					onChange={(e) => setExamDate(e.target.value)}
					className="w-full sm:w-64 bg-white border border-gray-200 rounded-xl px-4 py-2.5 text-gray-900 focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
				/>
			</div>

			<div className="flex items-center gap-4 pt-4 border-t border-gray-50">
				<button
					onClick={handleSave}
					disabled={loading || (selected === activeSection && examDate === (targetExamDate || ""))}
					className="bg-emerald-600 text-white px-8 py-2.5 rounded-xl font-bold hover:bg-emerald-700 transition-all disabled:opacity-50 disabled:cursor-not-allowed shadow-sm"
				>
					{loading ? "Saving..." : "Save Settings"}
				</button>
				{success && (
					<p className="text-sm font-bold text-emerald-600 animate-fade-in">
						Saved! Your dashboard is now focused on {selected.toUpperCase()}.
					</p>
				)}
			</div>
		</div>
	);
}
