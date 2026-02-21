import Link from "next/link";
import SectionCard from "@/components/section-card";
import { StudyPipeline } from "@/components/study-pipeline";
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
						96 lessons, 5,000+ practice questions, timed exams, and downloadable
						study frameworks across all 6 CPA sections.
					</p>
					<p className="text-sm text-gray-400 mb-8">
						Preview any intro lesson — no account required.
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
					<div data-testid="stat-lessons">
						<div className="text-2xl sm:text-3xl font-bold">96</div>
						<div className="text-emerald-100 text-sm">Lessons</div>
					</div>
					<div data-testid="stat-questions">
						<div className="text-2xl sm:text-3xl font-bold">5,000+</div>
						<div className="text-emerald-100 text-sm">Practice Questions</div>
					</div>
					<div data-testid="stat-sections">
						<div className="text-2xl sm:text-3xl font-bold">6</div>
						<div className="text-emerald-100 text-sm">Exam Sections</div>
					</div>
					<div data-testid="stat-frameworks">
						<div className="text-2xl sm:text-3xl font-bold">280</div>
						<div className="text-emerald-100 text-sm">
							Study Framework Items
						</div>
					</div>
				</div>
			</section>

			{/* Study Pipeline */}
			<section className="max-w-4xl mx-auto px-4 py-16">
				<h2 className="text-2xl font-bold text-gray-900 text-center mb-3">
					A 4-step system for every topic
				</h2>
				<p className="text-gray-500 text-center mb-10 max-w-xl mx-auto">
					Each concept follows the same path — from exam structure to proven
					mastery.
				</p>
				<StudyPipeline variant="full" />
			</section>

			{/* Mission */}
			<section className="bg-gray-900">
				<div className="max-w-3xl mx-auto px-4 py-16 text-center">
					<p className="text-emerald-400 text-sm font-semibold tracking-wide uppercase mb-3">
						Our Mission
					</p>
					<h2 className="text-2xl sm:text-3xl font-bold text-white mb-4 leading-tight">
						Breaking the relationship between price and quality
					</h2>
					<p className="text-gray-400 leading-relaxed max-w-xl mx-auto">
						CPA review courses charge $2,000 to $3,500 because they can, not
						because they have to. We built a course with 96 lessons, 5,000+
						questions, timed exams, and study frameworks — then priced it at
						$29.99 a month. Same depth. A fraction of the cost. No compromise.
					</p>
				</div>
			</section>

			{/* Free Study Plan Download */}
			<section className="bg-emerald-50 border-y border-emerald-100">
				<div className="max-w-4xl mx-auto px-4 py-12 text-center">
					<h2 className="text-xl font-bold text-gray-900 mb-2">
						Free CPA Study Plan
					</h2>
					<p className="text-gray-500 text-sm mb-6 max-w-lg mx-auto">
						A 20-week study schedule covering all 6 sections, with time
						estimates, section ordering advice, and exam day tips.
					</p>
					<a
						href="/cpa-study-plan.pdf"
						download
						className="inline-flex items-center gap-2 bg-emerald-600 text-white px-6 py-3 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
					>
						<svg
							xmlns="http://www.w3.org/2000/svg"
							className="h-5 w-5"
							viewBox="0 0 20 20"
							fill="currentColor"
						>
							<path
								fillRule="evenodd"
								d="M3 17a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm3.293-7.707a1 1 0 011.414 0L9 10.586V3a1 1 0 112 0v7.586l1.293-1.293a1 1 0 111.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 010-1.414z"
								clipRule="evenodd"
							/>
						</svg>
						Download PDF
					</a>
					<p className="text-xs text-gray-400 mt-3">
						No email required — instant download
					</p>
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
								$29.99
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
								2026
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
						One price. Full access. Cancel anytime.
					</p>
					<div className="max-w-sm mx-auto bg-gray-50 rounded-xl p-8 border border-gray-200">
						<div className="text-4xl font-bold text-gray-900 mb-2">
							$29.99
							<span className="text-lg font-normal text-gray-500">/month</span>
						</div>
						<ul className="text-sm text-gray-600 space-y-3 mb-6 text-left">
							<li className="flex items-start gap-2">
								<span className="text-emerald-600 mt-0.5">✓</span>
								96 lessons across all 6 CPA sections
							</li>
							<li className="flex items-start gap-2">
								<span className="text-emerald-600 mt-0.5">✓</span>
								5,000+ practice questions with explanations
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
							Get Started
						</Link>
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
							Yes. Every section has an intro lesson you can preview without
							creating an account. Subscribe when you&apos;re ready to unlock
							the full course.
						</p>
					</div>
					<div>
						<h3 className="font-semibold text-gray-900 mb-2">
							How is this different from Becker or Surgent?
						</h3>
						<p className="text-sm text-gray-500 leading-relaxed">
							Traditional review courses cost $2,000–$3,500 and include video
							lectures, live classes, and printed materials. Slayer CPA is a
							focused self-study tool at $29.99/month — designed for candidates
							who prefer reading-based study with immediate practice and
							feedback.
						</p>
					</div>
					<div>
						<h3 className="font-semibold text-gray-900 mb-2">
							Is the content up to date?
						</h3>
						<p className="text-sm text-gray-500 leading-relaxed">
							Yes. All lessons, questions, and study frameworks use 2026 IRS
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
						Create Account
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
							href="/blog"
							className="hover:text-gray-600 transition-colors"
						>
							Blog
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
