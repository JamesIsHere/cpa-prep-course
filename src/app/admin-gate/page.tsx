import Link from "next/link";

export const metadata = {
	title: "Slayer Mode — Admin",
};

export default function AdminGatePage() {
	return (
		<div className="flex items-center justify-center min-h-[calc(100vh-64px)]">
			<div className="max-w-md w-full mx-4">
				<div className="text-center mb-8">
					<h1 className="text-2xl font-bold text-gray-900">What are we doing?</h1>
				</div>

				<div className="space-y-4">
					<Link
						href="/admin"
						className="block w-full border-2 border-gray-200 rounded-2xl p-6 hover:border-emerald-400 hover:bg-emerald-50/50 transition-all group"
					>
						<div className="flex items-center gap-4">
							<span className="text-3xl">&#128269;</span>
							<div>
								<p className="text-lg font-bold text-gray-900 group-hover:text-emerald-700 transition-colors">
									Review Questions
								</p>
								<p className="text-sm text-gray-500">
									Admin hub — review, flag, browse, track progress
								</p>
							</div>
						</div>
					</Link>

					<Link
						href="/dashboard"
						className="block w-full border-2 border-gray-200 rounded-2xl p-6 hover:border-blue-400 hover:bg-blue-50/50 transition-all group"
					>
						<div className="flex items-center gap-4">
							<span className="text-3xl">&#127891;</span>
							<div>
								<p className="text-lg font-bold text-gray-900 group-hover:text-blue-700 transition-colors">
									Study Mode
								</p>
								<p className="text-sm text-gray-500">
									See what users see — dashboard, lessons, quizzes
								</p>
							</div>
						</div>
					</Link>
				</div>
			</div>
		</div>
	);
}
