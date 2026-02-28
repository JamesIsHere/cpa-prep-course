"use client";

import Link from "next/link";

export default function SectionError({
	reset,
}: {
	error: Error & { digest?: string };
	reset: () => void;
}) {
	return (
		<main className="max-w-4xl mx-auto px-4 py-24 text-center">
			<h1 className="text-2xl font-bold text-gray-900 mb-2">
				Could not load section
			</h1>
			<p className="text-gray-500 mb-8">
				Something went wrong loading this section. Please try again.
			</p>
			<div className="flex gap-4 justify-center">
				<button
					type="button"
					onClick={reset}
					className="bg-emerald-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
				>
					Try Again
				</button>
				<Link
					href="/sections"
					className="border border-gray-300 text-gray-700 px-6 py-3 rounded-lg font-medium hover:bg-gray-50 transition-colors"
				>
					All Sections
				</Link>
			</div>
		</main>
	);
}
