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
				<p className="text-gray-500 text-center mb-8">
					Start preparing for the CPA exam today.
				</p>
				<SignupForm />
			</div>
		</main>
	);
}
