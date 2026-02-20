export default function ExamLoading() {
	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<div className="h-4 w-24 bg-gray-100 rounded animate-pulse mb-6" />
			<div className="h-8 w-48 bg-gray-200 rounded animate-pulse mb-2" />
			<div className="h-5 w-96 bg-gray-100 rounded animate-pulse mb-8" />

			<div className="bg-white border border-gray-200 rounded-xl p-6 space-y-4">
				<div className="h-5 w-32 bg-gray-200 rounded animate-pulse" />
				<div className="h-10 w-full bg-gray-100 rounded animate-pulse" />
				<div className="h-10 w-40 bg-emerald-100 rounded animate-pulse" />
			</div>
		</main>
	);
}
