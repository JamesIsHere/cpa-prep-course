export default function GroupLoading() {
	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<div className="h-4 w-48 bg-gray-100 rounded mb-6 animate-pulse" />
			<div className="h-7 w-72 bg-gray-100 rounded mb-2 animate-pulse" />
			<div className="h-4 w-40 bg-gray-100 rounded mb-8 animate-pulse" />
			<div className="space-y-6">
				<div className="border border-gray-200 rounded-xl p-5 animate-pulse">
					<div className="h-4 w-24 bg-gray-100 rounded mb-3" />
					<div className="h-2 w-full bg-gray-100 rounded" />
				</div>
				<div className="animate-pulse">
					<div className="h-5 w-16 bg-gray-100 rounded mb-3" />
					<div className="space-y-2">
						{[1, 2, 3].map((i) => (
							<div key={i} className="h-4 w-64 bg-gray-100 rounded" />
						))}
					</div>
				</div>
			</div>
		</main>
	);
}
