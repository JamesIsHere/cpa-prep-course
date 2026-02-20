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
					<p className="text-lg sm:text-xl text-gray-600 mb-4 max-w-2xl mx-auto leading-relaxed">
						96 lessons, 1,275+ practice questions, timed exams, and downloadable
						study frameworks across all 6 CPA sections.
					</p>
					<p className="text-sm text-gray-400 mb-8">
						Try intro lessons free — no account required.
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

			{/* Stats bar */}
			<section className="bg-emerald-600">
				<div className="max-w-4xl mx-auto px-4 py-6 grid grid-cols-2 sm:grid-cols-4 gap-6 text-center text-white">
					<div>
						<div className="text-2xl sm:text-3xl font-bold">96</div>
						<div className="text-emerald-100 text-sm">Lessons</div>
					</div>
					<div>
						<div className="text-2xl sm:text-3xl font-bold">1,275+</div>
						<div className="text-emerald-100 text-sm">Practice Questions</div>
					</div>
					<div>
						<div className="text-2xl sm:text-3xl font-bold">6</div>
						<div className="text-emerald-100 text-sm">Exam Sections</div>
					</div>
					<div>
						<div className="text-2xl sm:text-3xl font-bold">280</div>
						<div className="text-emerald-100 text-sm">
							Study Framework Items
						</div>
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

			{/* Why Slayer CPA */}
			<section className="bg-white border-y border-gray-200">
				<div className="max-w-4xl mx-auto px-4 py-16">
					<h2 className="text-2xl font-bold text-gray-900 text-center mb-4">
						Built for self-study candidates
					</h2>
					<p className="text-gray-500 text-center mb-12 max-w-xl mx-auto">
						No lectures to sit through, no schedules to keep. Study at your own
						pace with materials designed for efficient exam prep.
					</p>
					<div className="grid sm:grid-cols-3 gap-8 text-center">
						<div>
							<div className="text-emerald-600 text-3xl font-bold mb-2">
								$9.99
							</div>
							<div className="text-sm text-gray-500">
								Per month — a fraction of what traditional review courses charge
								($2,000–$3,500)
							</div>
						</div>
						<div>
							<div className="text-emerald-600 text-3xl font-bold mb-2">
								100%
							</div>
							<div className="text-sm text-gray-500">
								Self-paced — study when it works for you, skip what you already
								know
							</div>
						</div>
						<div>
							<div className="text-emerald-600 text-3xl font-bold mb-2">
								2025
							</div>
							<div className="text-sm text-gray-500">
								Content aligned to the current CPA exam blueprint and IRS
								figures
							</div>
						</div>
					</div>
				</div>
			</section>

			{/* Sections preview */}
			<section className="max-w-4xl mx-auto px-4 py-16">
				<h2 className="text-2xl font-bold text-gray-900 text-center mb-4">
					All 6 CPA Exam Sections
				</h2>
				<p className="text-gray-500 text-center mb-8">
					Full coverage of every section on the Uniform CPA Examination.
				</p>
				<div className="grid sm:grid-cols-2 lg:grid-cols-3 gap-6">
					{sections.map((section) => (
						<SectionCard key={section.code} section={section} />
					))}
				</div>
			</section>

			{/* How it works */}
			<section className="bg-white border-y border-gray-200">
				<div className="max-w-4xl mx-auto px-4 py-16">
					<h2 className="text-2xl font-bold text-gray-900 text-center mb-12">
						How it works
					</h2>
					<div className="grid sm:grid-cols-3 gap-8">
						<div className="text-center">
							<div className="w-10 h-10 rounded-full bg-emerald-100 text-emerald-700 font-bold text-lg flex items-center justify-center mx-auto mb-4">
								1
							</div>
							<h3 className="font-semibold text-gray-900 mb-2">
								Pick a section
							</h3>
							<p className="text-sm text-gray-500">
								Choose from AUD, FAR, REG, BAR, ISC, or TCP and start with the
								free intro lesson.
							</p>
						</div>
						<div className="text-center">
							<div className="w-10 h-10 rounded-full bg-emerald-100 text-emerald-700 font-bold text-lg flex items-center justify-center mx-auto mb-4">
								2
							</div>
							<h3 className="font-semibold text-gray-900 mb-2">
								Study and practice
							</h3>
							<p className="text-sm text-gray-500">
								Work through lessons, take quizzes after each topic, and
								download study frameworks for review.
							</p>
						</div>
						<div className="text-center">
							<div className="w-10 h-10 rounded-full bg-emerald-100 text-emerald-700 font-bold text-lg flex items-center justify-center mx-auto mb-4">
								3
							</div>
							<h3 className="font-semibold text-gray-900 mb-2">
								Test yourself
							</h3>
							<p className="text-sm text-gray-500">
								Take timed practice exams that simulate real test conditions
								with question flagging and score breakdowns.
							</p>
						</div>
					</div>
				</div>
			</section>

			{/* Testimonials */}
			<section className="max-w-4xl mx-auto px-4 py-16">
				<h2 className="text-2xl font-bold text-gray-900 text-center mb-12">
					What candidates are saying
				</h2>
				<div className="grid sm:grid-cols-3 gap-6">
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="flex gap-1 mb-3 text-emerald-500">
							{"★★★★★".split("").map((star, i) => (
								<span key={i}>{star}</span>
							))}
						</div>
						<p className="text-gray-600 text-sm leading-relaxed mb-4">
							&ldquo;The study frameworks alone are worth the subscription. I
							printed them out and used them as my primary review sheets for
							FAR.&rdquo;
						</p>
						<p className="text-sm font-medium text-gray-900">
							— CPA Candidate, Virginia
						</p>
					</div>
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="flex gap-1 mb-3 text-emerald-500">
							{"★★★★★".split("").map((star, i) => (
								<span key={i}>{star}</span>
							))}
						</div>
						<p className="text-gray-600 text-sm leading-relaxed mb-4">
							&ldquo;I was paying $200/month for another review course that I
							barely used. This gives me exactly what I need at a price that
							makes sense.&rdquo;
						</p>
						<p className="text-sm font-medium text-gray-900">
							— CPA Candidate, Texas
						</p>
					</div>
					<div className="bg-white rounded-xl p-6 border border-gray-200">
						<div className="flex gap-1 mb-3 text-emerald-500">
							{"★★★★★".split("").map((star, i) => (
								<span key={i}>{star}</span>
							))}
						</div>
						<p className="text-gray-600 text-sm leading-relaxed mb-4">
							&ldquo;The timed practice exams helped me get comfortable with the
							pacing. I felt much more confident walking into the real
							thing.&rdquo;
						</p>
						<p className="text-sm font-medium text-gray-900">
							— CPA Candidate, California
						</p>
					</div>
				</div>
			</section>

			{/* Pricing */}
			<section id="pricing" className="bg-white border-t border-gray-200">
				<div className="max-w-4xl mx-auto px-4 py-16 text-center">
					<h2 className="text-2xl font-bold text-gray-900 mb-4">
						Simple pricing
					</h2>
					<p className="text-gray-500 mb-8">
						Intro lessons are free. Subscribe to unlock everything.
					</p>
					<div className="max-w-sm mx-auto bg-gray-50 rounded-xl p-8 border border-gray-200">
						<div className="text-4xl font-bold text-gray-900 mb-2">
							$9.99
							<span className="text-lg font-normal text-gray-500">/month</span>
						</div>
						<ul className="text-sm text-gray-600 space-y-3 mb-6 text-left">
							<li className="flex items-start gap-2">
								<span className="text-emerald-600 mt-0.5">✓</span>
								96 lessons across all 6 CPA sections
							</li>
							<li className="flex items-start gap-2">
								<span className="text-emerald-600 mt-0.5">✓</span>
								1,275+ practice questions with explanations
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
								Cancel anytime — no contracts
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

			{/* FAQ */}
			<section className="max-w-4xl mx-auto px-4 py-16">
				<h2 className="text-2xl font-bold text-gray-900 text-center mb-12">
					Frequently asked questions
				</h2>
				<div className="max-w-2xl mx-auto space-y-8">
					<div>
						<h3 className="font-semibold text-gray-900 mb-2">
							What CPA sections are covered?
						</h3>
						<p className="text-sm text-gray-500 leading-relaxed">
							All six sections of the Uniform CPA Examination: Auditing and
							Attestation (AUD), Financial Accounting and Reporting (FAR),
							Regulation (REG), Business Analysis and Reporting (BAR),
							Information Systems and Controls (ISC), and Tax Compliance and
							Planning (TCP).
						</p>
					</div>
					<div>
						<h3 className="font-semibold text-gray-900 mb-2">
							Can I try it before subscribing?
						</h3>
						<p className="text-sm text-gray-500 leading-relaxed">
							Yes. Every section has a free intro lesson you can access without
							creating an account. Sign up for free to save your progress, then
							subscribe when you&apos;re ready to unlock the full course.
						</p>
					</div>
					<div>
						<h3 className="font-semibold text-gray-900 mb-2">
							How is this different from Becker or Surgent?
						</h3>
						<p className="text-sm text-gray-500 leading-relaxed">
							Traditional review courses cost $2,000–$3,500 and include video
							lectures, live classes, and printed materials. Slayer CPA is a
							focused self-study tool at $9.99/month — designed for candidates
							who prefer reading-based study with immediate practice and
							feedback.
						</p>
					</div>
					<div>
						<h3 className="font-semibold text-gray-900 mb-2">
							Is the content up to date?
						</h3>
						<p className="text-sm text-gray-500 leading-relaxed">
							Yes. All lessons, questions, and study frameworks use 2025 IRS
							figures and are aligned to the current CPA exam blueprint.
						</p>
					</div>
					<div>
						<h3 className="font-semibold text-gray-900 mb-2">
							Can I cancel anytime?
						</h3>
						<p className="text-sm text-gray-500 leading-relaxed">
							Absolutely. Your subscription is month-to-month with no contracts
							or cancellation fees. Cancel through your account page and
							you&apos;ll retain access through the end of your billing period.
						</p>
					</div>
				</div>
			</section>

			{/* Final CTA */}
			<section className="bg-emerald-600">
				<div className="max-w-4xl mx-auto px-4 py-16 text-center">
					<h2 className="text-2xl sm:text-3xl font-bold text-white mb-4">
						Start studying today
					</h2>
					<p className="text-emerald-100 mb-8 max-w-lg mx-auto">
						Join candidates preparing for the CPA exam with lessons, quizzes,
						and practice exams designed for self-study.
					</p>
					<Link
						href="/signup"
						className="inline-block bg-white text-emerald-700 px-8 py-3 rounded-lg text-lg font-medium hover:bg-emerald-50 transition-colors"
					>
						Create Free Account
					</Link>
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
						<Link
							href="/contact"
							className="hover:text-gray-600 transition-colors"
						>
							Contact
						</Link>
					</div>
				</div>
			</footer>
		</main>
	);
}
