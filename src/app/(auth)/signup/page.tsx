import type { Metadata } from "next";
import SignupForm from "./signup-form";

export const metadata: Metadata = {
	title: "Sign Up",
};

export default function SignupPage() {
	return (
		<main className="min-h-[calc(100vh-4rem)] flex items-center justify-center px-4">
			<div className="w-full max-w-sm">
				<h1 className="text-2xl font-bold text-gray-900 text-center mb-2">
					Create your account
				</h1>
				<p className="text-gray-500 text-center mb-6">
					Start preparing for the CPA exam today.
				</p>
				<ul className="text-sm text-gray-500 space-y-2 mb-8">
					<li className="flex items-start gap-2">
						<span className="text-emerald-600 mt-0.5">✓</span>
						96 lessons and 4,400+ questions across all 6 sections
					</li>
					<li className="flex items-start gap-2">
						<span className="text-emerald-600 mt-0.5">✓</span>
						Timed practice exams and downloadable study frameworks
					</li>
					<li className="flex items-start gap-2">
						<span className="text-emerald-600 mt-0.5">✓</span>
						$29.99/month — cancel anytime
					</li>
				</ul>
				<SignupForm />
			</div>
		</main>
	);
}
