import type { Metadata } from "next";
import ResetPasswordForm from "./reset-password-form";

export const metadata: Metadata = {
	title: "Reset Password",
};

export default function ResetPasswordPage() {
	return (
		<main className="min-h-[calc(100vh-4rem)] flex items-center justify-center px-4">
			<div className="w-full max-w-sm">
				<h1 className="text-2xl font-bold text-gray-900 text-center mb-2">
					Reset your password
				</h1>
				<p className="text-gray-500 text-center mb-8">
					Enter your email and we'll send you a reset link.
				</p>
				<ResetPasswordForm />
			</div>
		</main>
	);
}
