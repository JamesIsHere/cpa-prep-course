export default function BlueprintLoading() {
	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<div className="h-4 w-32 bg-gray-100 rounded mb-6 animate-pulse" />
			<div className="h-8 w-64 bg-gray-100 rounded mb-2 animate-pulse" />
			<div className="h-4 w-96 bg-gray-100 rounded mb-8 animate-pulse" />
			<div className="space-y-4">
				{[1, 2, 3, 4].map((i) => (
					<div
						key={i}
						className="border border-gray-200 rounded-xl p-5 animate-pulse"
					>
						<div className="flex items-center gap-4">
							<div className="w-8 h-8 bg-gray-100 rounded-full" />
							<div className="flex-1">
								<div className="h-5 w-48 bg-gray-100 rounded mb-2" />
								<div className="h-2 w-32 bg-gray-100 rounded" />
							</div>
						</div>
					</div>
				))}
			</div>
		</main>
	);
}
