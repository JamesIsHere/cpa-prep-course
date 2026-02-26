"use client";

import { useState } from "react";

export function DownloadStudyGuide({ 
	sectionSlug, 
	variant = "button" 
}: { 
	sectionSlug: string;
	variant?: "button" | "icon";
}) {
	const [loading, setLoading] = useState(false);
	const [error, setError] = useState<string | null>(null);

	async function handleDownload() {
		setLoading(true);
		setError(null);

		try {
			const res = await fetch(`/api/study-frameworks/${sectionSlug}`);

			if (res.status === 401) {
				setError("Sign in to download.");
				return;
			}
			if (res.status === 403) {
				setError("Subscription required.");
				return;
			}
			if (!res.ok) {
				setError("Failed.");
				return;
			}

			const blob = await res.blob();
			const url = URL.createObjectURL(blob);
			const a = document.createElement("a");
			a.href = url;
			a.download = `${sectionSlug}-study-framework.pdf`;
			document.body.appendChild(a);
			a.click();
			a.remove();
			URL.revokeObjectURL(url);
		} catch {
			setError("Failed.");
		} finally {
			setLoading(false);
		}
	}

	if (variant === "icon") {
		return (
			<div className="relative group">
				<button
					type="button"
					onClick={handleDownload}
					disabled={loading}
					className="text-emerald-600 hover:text-emerald-700 p-2 rounded-lg hover:bg-emerald-50 transition-colors disabled:opacity-30"
					title={`Download ${sectionSlug.toUpperCase()} Study Guide`}
				>
					<svg className={`w-5 h-5 ${loading ? "animate-spin" : ""}`} fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 16v1a2 2 0 002 2h12a2 2 0 002-2v-1m-4-4l-4 4m0 0l-4-4m4 4V4" />
					</svg>
				</button>
				{error && (
					<p className="absolute bottom-full left-1/2 -translate-x-1/2 mb-2 bg-red-600 text-white text-[10px] px-2 py-1 rounded whitespace-nowrap z-10 shadow-lg">
						{error}
					</p>
				)}
			</div>
		);
	}

	return (
		<div>
			<button
				type="button"
				onClick={handleDownload}
				disabled={loading}
				className="inline-flex items-center gap-2 border border-emerald-600 text-emerald-700 px-5 py-2 rounded-lg font-medium hover:bg-emerald-50 transition-colors text-sm disabled:opacity-50 disabled:cursor-not-allowed"
			>
				{loading ? "Generating..." : "Study Guide PDF"}
			</button>
			{error && <p className="text-red-600 text-sm mt-1">{error}</p>}
		</div>
	);
}
