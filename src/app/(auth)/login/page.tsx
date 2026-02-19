import type { Metadata } from "next";
import { Suspense } from "react";
import LoginForm from "./login-form";

export const metadata: Metadata = {
	title: "Log In — CPA Prep Course",
};

export default function LoginPage() {
	return (
		<main className="min-h-[calc(100vh-4rem)] flex items-center justify-center px-4">
			<div className="w-full max-w-sm">
				<h1 className="text-2xl font-bold text-gray-900 text-center mb-2">
					Welcome back
				</h1>
				<p className="text-gray-500 text-center mb-8">
					Log in to continue studying.
				</p>
				<Suspense>
					<LoginForm />
				</Suspense>
			</div>
		</main>
	);
}
