import type { Metadata } from "next";
import UpdatePasswordForm from "./update-password-form";

export const metadata: Metadata = {
	title: "Update Password — CPA Prep Course",
};

export default function UpdatePasswordPage() {
	return (
		<main className="min-h-[calc(100vh-4rem)] flex items-center justify-center px-4">
			<div className="w-full max-w-sm">
				<h1 className="text-2xl font-bold text-gray-900 text-center mb-2">
					Set new password
				</h1>
				<p className="text-gray-500 text-center mb-8">
					Enter your new password below.
				</p>
				<UpdatePasswordForm />
			</div>
		</main>
	);
}
