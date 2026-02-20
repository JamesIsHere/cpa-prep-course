export default function AccountLoading() {
	return (
		<main className="max-w-2xl mx-auto px-4 py-12">
			<div className="h-8 w-32 bg-gray-200 rounded animate-pulse mb-8" />

			<div className="bg-white rounded-xl border border-gray-200 p-6 space-y-6">
				<div>
					<div className="h-4 w-12 bg-gray-100 rounded animate-pulse mb-2" />
					<div className="h-5 w-56 bg-gray-200 rounded animate-pulse" />
				</div>
				<div>
					<div className="h-4 w-24 bg-gray-100 rounded animate-pulse mb-2" />
					<div className="h-7 w-16 bg-emerald-100 rounded-full animate-pulse" />
				</div>
				<div className="border-t border-gray-200 pt-6">
					<div className="h-10 w-48 bg-gray-100 rounded-lg animate-pulse" />
				</div>
			</div>
		</main>
	);
}
