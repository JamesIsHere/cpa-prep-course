export default function SectionDetailLoading() {
	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<div className="h-4 w-20 bg-gray-100 rounded animate-pulse mb-6" />
			<div className="h-5 w-16 bg-emerald-100 rounded-full animate-pulse mb-3" />
			<div className="h-8 w-72 bg-gray-200 rounded animate-pulse mb-2" />
			<div className="h-5 w-full bg-gray-100 rounded animate-pulse mb-8" />

			<div className="space-y-3">
				{[1, 2, 3, 4, 5].map((i) => (
					<div
						key={i}
						className="border border-gray-200 rounded-lg p-4 flex items-center gap-3"
					>
						<div className="h-5 w-8 bg-gray-100 rounded animate-pulse" />
						<div className="h-5 w-64 bg-gray-200 rounded animate-pulse" />
					</div>
				))}
			</div>
		</main>
	);
}
