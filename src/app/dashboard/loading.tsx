export default function DashboardLoading() {
	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<div className="h-8 w-40 bg-gray-200 rounded animate-pulse mb-2" />
			<div className="h-5 w-72 bg-gray-100 rounded animate-pulse mb-8" />

			<div className="h-5 w-32 bg-gray-200 rounded animate-pulse mb-4" />
			<div className="grid sm:grid-cols-3 gap-6">
				{[1, 2, 3].map((i) => (
					<div
						key={i}
						className="border border-gray-200 rounded-xl p-6 space-y-3"
					>
						<div className="h-5 w-16 bg-emerald-100 rounded-full animate-pulse" />
						<div className="h-4 w-full bg-gray-100 rounded animate-pulse" />
						<div className="h-4 w-3/4 bg-gray-100 rounded animate-pulse" />
					</div>
				))}
			</div>
		</main>
	);
}
