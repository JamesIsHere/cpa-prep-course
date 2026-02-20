"use client";

export default function Error({
	reset,
}: {
	error: Error & { digest?: string };
	reset: () => void;
}) {
	return (
		<main className="max-w-4xl mx-auto px-4 py-24 text-center">
			<p className="text-6xl font-bold text-red-500 mb-4">!</p>
			<h1 className="text-2xl font-bold text-gray-900 mb-2">
				Something went wrong
			</h1>
			<p className="text-gray-500 mb-8">
				An unexpected error occurred. Please try again.
			</p>
			<button
				type="button"
				onClick={reset}
				className="bg-emerald-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
			>
				Try Again
			</button>
		</main>
	);
}
