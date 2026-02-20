import Link from "next/link";

export default function NotFound() {
	return (
		<main className="max-w-4xl mx-auto px-4 py-24 text-center">
			<p className="text-6xl font-bold text-emerald-600 mb-4">404</p>
			<h1 className="text-2xl font-bold text-gray-900 mb-2">Page not found</h1>
			<p className="text-gray-500 mb-8">
				The page you&apos;re looking for doesn&apos;t exist or has been moved.
			</p>
			<Link
				href="/"
				className="bg-emerald-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
			>
				Back to Home
			</Link>
		</main>
	);
}
