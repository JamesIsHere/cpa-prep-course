"use client";

import Link from "next/link";
import { useState } from "react";
import { createClient } from "@/lib/supabase/client";

export default function ResetPasswordForm() {
	const [email, setEmail] = useState("");
	const [error, setError] = useState("");
	const [loading, setLoading] = useState(false);
	const [success, setSuccess] = useState(false);

	async function handleSubmit(e: React.FormEvent) {
		e.preventDefault();
		setError("");
		setLoading(true);

		const supabase = createClient();
		const { error: resetError } = await supabase.auth.resetPasswordForEmail(
			email,
			{
				redirectTo: `${window.location.origin}/callback?next=/update-password`,
			},
		);

		if (resetError) {
			setError(resetError.message);
			setLoading(false);
			return;
		}

		setSuccess(true);
		setLoading(false);
	}

	if (success) {
		return (
			<div className="bg-emerald-50 text-emerald-700 text-sm px-4 py-6 rounded-lg text-center">
				<p className="font-medium mb-1">Check your email</p>
				<p>
					We sent a password reset link to <strong>{email}</strong>.
				</p>
			</div>
		);
	}

	return (
		<form onSubmit={handleSubmit} className="space-y-4">
			{error && (
				<div className="bg-red-50 text-red-700 text-sm px-4 py-3 rounded-lg">
					{error}
				</div>
			)}

			<div>
				<label
					htmlFor="email"
					className="block text-sm font-medium text-gray-700 mb-1"
				>
					Email
				</label>
				<input
					id="email"
					type="email"
					value={email}
					onChange={(e) => setEmail(e.target.value)}
					required
					className="w-full border border-gray-300 rounded-lg px-3 py-2 text-gray-900 focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
				/>
			</div>

			<button
				type="submit"
				disabled={loading}
				className="w-full bg-emerald-600 text-white py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
			>
				{loading ? "Sending..." : "Send Reset Link"}
			</button>

			<p className="text-sm text-center text-gray-500">
				<Link href="/login" className="text-emerald-600 hover:text-emerald-700">
					Back to login
				</Link>
			</p>
		</form>
	);
}
