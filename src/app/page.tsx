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
						Lessons, quizzes, timed practice exams, and study frameworks for the
						AUD, FAR, and REG sections. Try intro lessons free — no account
						required.
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
							Conceptual Lessons
						</h3>
						<p className="text-gray-500 text-sm leading-relaxed">
							In-depth coverage with worked examples, key terms, and practice
							problems aligned to the current CPA exam blueprint.
						</p>
					</div>
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="text-2xl mb-3">✏️</div>
						<h3 className="text-lg font-semibold text-gray-900 mb-2">
							Topic-Specific Quizzes
						</h3>
						<p className="text-gray-500 text-sm leading-relaxed">
							Filter by section and topic, answer multiple-choice questions, and
							review detailed explanations for every answer.
						</p>
					</div>
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="text-2xl mb-3">🕐</div>
						<h3 className="text-lg font-semibold text-gray-900 mb-2">
							Timed Practice Exams
						</h3>
						<p className="text-gray-500 text-sm leading-relaxed">
							Simulate test day with full-length, timed exams. Flag questions
							for review and get a detailed score breakdown.
						</p>
					</div>
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="text-2xl mb-3">📄</div>
						<h3 className="text-lg font-semibold text-gray-900 mb-2">
							PDF Study Frameworks
						</h3>
						<p className="text-gray-500 text-sm leading-relaxed">
							Downloadable guides with concept maps, decision trees, formula
							sheets, and mnemonics for each section.
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
						Intro lessons are free. Subscribe to unlock the full course.
					</p>
					<div className="max-w-sm mx-auto bg-gray-50 rounded-xl p-8 border border-gray-200">
						<div className="text-4xl font-bold text-gray-900 mb-2">
							$9.99
							<span className="text-lg font-normal text-gray-500">/month</span>
						</div>
						<ul className="text-sm text-gray-600 space-y-3 mb-6 text-left">
							<li className="flex items-start gap-2">
								<span className="text-emerald-600 mt-0.5">✓</span>
								All lessons across AUD, FAR, and REG
							</li>
							<li className="flex items-start gap-2">
								<span className="text-emerald-600 mt-0.5">✓</span>
								Unlimited practice quizzes
							</li>
							<li className="flex items-start gap-2">
								<span className="text-emerald-600 mt-0.5">✓</span>
								Full-length timed practice exams
							</li>
							<li className="flex items-start gap-2">
								<span className="text-emerald-600 mt-0.5">✓</span>
								Downloadable PDF study frameworks
							</li>
							<li className="flex items-start gap-2">
								<span className="text-emerald-600 mt-0.5">✓</span>
								Cancel anytime
							</li>
						</ul>
						<Link
							href="/signup"
							className="block bg-emerald-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
						>
							Get Started Free
						</Link>
						<p className="text-xs text-gray-400 mt-3">
							No credit card required to sign up
						</p>
					</div>
				</div>
			</section>

			{/* Footer */}
			<footer className="border-t border-gray-200 bg-white">
				<div className="max-w-4xl mx-auto px-4 py-8 flex flex-col sm:flex-row items-center justify-between gap-4 text-sm text-gray-400">
					<span>© {new Date().getFullYear()} Slayer CPA</span>
					<div className="flex gap-6">
						<Link
							href="/sections"
							className="hover:text-gray-600 transition-colors"
						>
							Sections
						</Link>
						<Link
							href="/login"
							className="hover:text-gray-600 transition-colors"
						>
							Log In
						</Link>
						<Link
							href="/signup"
							className="hover:text-gray-600 transition-colors"
						>
							Sign Up
						</Link>
					</div>
				</div>
			</footer>
		</main>
	);
}
