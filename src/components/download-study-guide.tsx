"use client";

import { useState } from "react";

export function DownloadStudyGuide({ sectionSlug }: { sectionSlug: string }) {
	const [loading, setLoading] = useState(false);
	const [error, setError] = useState<string | null>(null);

	async function handleDownload() {
		setLoading(true);
		setError(null);

		try {
			const res = await fetch(`/api/study-frameworks/${sectionSlug}`);

			if (res.status === 401) {
				setError("Sign in to download study guides.");
				return;
			}
			if (res.status === 403) {
				setError("An active subscription is required.");
				return;
			}
			if (!res.ok) {
				setError("Download failed. Please try again.");
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
			setError("Download failed. Please try again.");
		} finally {
			setLoading(false);
		}
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
