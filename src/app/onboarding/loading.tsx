export default function OnboardingLoading() {
	return (
		<main className="min-h-screen bg-gray-50 flex items-center justify-center p-4 py-12">
			<div className="w-full max-w-lg bg-white rounded-2xl shadow-lg p-8 text-center">
				<div className="animate-pulse space-y-4">
					<div className="h-8 bg-gray-200 rounded w-2/3 mx-auto" />
					<div className="h-4 bg-gray-100 rounded w-1/2 mx-auto" />
					<div className="space-y-3 mt-8">
						<div className="h-12 bg-gray-100 rounded" />
						<div className="h-12 bg-gray-100 rounded" />
						<div className="h-12 bg-gray-100 rounded" />
					</div>
				</div>
			</div>
		</main>
	);
}
