import Link from "next/link";
import SectionCard from "@/components/section-card";
import { sections } from "@/lib/sections";

export default function Home() {
	return (
		<main>
			{/* Hero */}
			<section className="bg-white border-b border-gray-200">
				<div className="max-w-4xl mx-auto px-4 py-20 sm:py-28 text-center">
					<h1 className="text-4xl sm:text-5xl font-bold text-gray-900 mb-6 leading-tight">
						Pass the CPA Exam
						<span className="text-emerald-600"> with confidence</span>
					</h1>
					<p className="text-lg sm:text-xl text-gray-600 mb-8 max-w-2xl mx-auto leading-relaxed">
						Conceptual lessons, practice quizzes, timed exams, and downloadable
						study frameworks — everything you need for the AUD, FAR, and REG
						sections.
					</p>
					<div className="flex flex-col sm:flex-row gap-4 justify-center">
						<Link
							href="/sections"
							className="bg-emerald-600 text-white px-8 py-3 rounded-lg text-lg font-medium hover:bg-emerald-700 transition-colors"
						>
							Start Learning
						</Link>
						<a
							href="#pricing"
							className="border border-gray-300 text-gray-700 px-8 py-3 rounded-lg text-lg font-medium hover:bg-gray-50 transition-colors"
						>
							View Pricing
						</a>
					</div>
				</div>
			</section>

			{/* Features */}
			<section className="max-w-4xl mx-auto px-4 py-16">
				<h2 className="text-2xl font-bold text-gray-900 text-center mb-12">
					Everything you need to prepare
				</h2>
				<div className="grid sm:grid-cols-2 gap-8">
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="text-2xl mb-3">📖</div>
						<h3 className="text-lg font-semibold text-gray-900 mb-2">
							Comprehensive Lessons
						</h3>
						<p className="text-gray-500 text-sm leading-relaxed">
							In-depth conceptual coverage with worked examples, key terms, and
							practice problems for every topic.
						</p>
					</div>
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="text-2xl mb-3">✏️</div>
						<h3 className="text-lg font-semibold text-gray-900 mb-2">
							Practice Quizzes
						</h3>
						<p className="text-gray-500 text-sm leading-relaxed">
							Test your knowledge with section-specific quizzes. Filter by topic
							and review detailed explanations.
						</p>
					</div>
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="text-2xl mb-3">🕐</div>
						<h3 className="text-lg font-semibold text-gray-900 mb-2">
							Timed Practice Exams
						</h3>
						<p className="text-gray-500 text-sm leading-relaxed">
							Simulate the real exam experience with full-length, timed practice
							tests and detailed score reports.
						</p>
					</div>
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="text-2xl mb-3">📄</div>
						<h3 className="text-lg font-semibold text-gray-900 mb-2">
							Study Frameworks
						</h3>
						<p className="text-gray-500 text-sm leading-relaxed">
							Download PDF study guides with concept maps, decision trees,
							formula sheets, and mnemonics.
						</p>
					</div>
				</div>
			</section>

			{/* Sections preview */}
			<section className="max-w-4xl mx-auto px-4 py-16">
				<h2 className="text-2xl font-bold text-gray-900 text-center mb-4">
					Core CPA Sections
				</h2>
				<p className="text-gray-500 text-center mb-8">
					Covering the three highest-demand sections of the CPA exam.
				</p>
				<div className="grid sm:grid-cols-3 gap-6">
					{sections.map((section) => (
						<SectionCard key={section.code} section={section} />
					))}
				</div>
			</section>

			{/* Pricing */}
			<section id="pricing" className="bg-white border-t border-gray-200">
				<div className="max-w-4xl mx-auto px-4 py-16 text-center">
					<h2 className="text-2xl font-bold text-gray-900 mb-4">
						Simple pricing
					</h2>
					<p className="text-gray-500 mb-8">
						Full access to all lessons, quizzes, exams, and study materials.
					</p>
					<div className="max-w-sm mx-auto bg-gray-50 rounded-xl p-8 border border-gray-200">
						<div className="text-4xl font-bold text-gray-900 mb-2">
							$9.99
							<span className="text-lg font-normal text-gray-500">/month</span>
						</div>
						<ul className="text-sm text-gray-600 space-y-2 mb-6 text-left">
							<li>All lessons across AUD, FAR, and REG</li>
							<li>Unlimited practice quizzes</li>
							<li>Full-length timed practice exams</li>
							<li>Downloadable PDF study guides</li>
							<li>Cancel anytime</li>
						</ul>
						<Link
							href="/sections"
							className="block bg-emerald-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
						>
							Start Free Trial
						</Link>
					</div>
				</div>
			</section>

			{/* Footer */}
			<footer className="border-t border-gray-200 bg-white">
				<div className="max-w-4xl mx-auto px-4 py-8 text-center text-sm text-gray-400">
					CPA Prep Course
				</div>
			</footer>
		</main>
	);
}
