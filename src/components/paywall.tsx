import Link from "next/link";

export default function Paywall() {
	return (
		<div className="bg-gradient-to-b from-white via-white to-gray-50 border border-gray-200 rounded-xl p-8 text-center my-8">
			<h2 className="text-xl font-bold text-gray-900 mb-2">
				This lesson requires a subscription
			</h2>
			<p className="text-gray-500 mb-6 max-w-md mx-auto">
				Subscribe for $29.99/month to unlock all lessons, quizzes, practice
				exams, and downloadable study guides.
			</p>
			<div className="flex flex-col sm:flex-row gap-3 justify-center">
				<Link
					href="/account"
					className="bg-emerald-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
				>
					Subscribe Now
				</Link>
				<Link
					href="/sections"
					className="border border-gray-300 text-gray-700 px-6 py-2 rounded-lg font-medium hover:bg-gray-50 transition-colors"
				>
					Browse Free Lessons
				</Link>
			</div>
		</div>
	);
}
