"use client";

import Link from "next/link";
import { useState } from "react";
import { createClient } from "@/lib/supabase/client";

export default function SignupForm() {
	const [email, setEmail] = useState("");
	const [password, setPassword] = useState("");
	const [error, setError] = useState("");
	const [loading, setLoading] = useState(false);
	const [success, setSuccess] = useState(false);

	async function handleSubmit(e: React.FormEvent) {
		e.preventDefault();
		setError("");
		setLoading(true);

		const supabase = createClient();
		const { error: authError } = await supabase.auth.signUp({
			email,
			password,
			options: {
				emailRedirectTo: `${window.location.origin}/callback`,
			},
		});

		if (authError) {
			setError(authError.message);
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
					We sent a confirmation link to <strong>{email}</strong>. Click it to
					activate your account.
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

			<div>
				<label
					htmlFor="password"
					className="block text-sm font-medium text-gray-700 mb-1"
				>
					Password
				</label>
				<input
					id="password"
					type="password"
					value={password}
					onChange={(e) => setPassword(e.target.value)}
					required
					minLength={8}
					className="w-full border border-gray-300 rounded-lg px-3 py-2 text-gray-900 focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
				/>
				<p className="text-xs text-gray-400 mt-1">Minimum 8 characters</p>
			</div>

			<button
				type="submit"
				disabled={loading}
				className="w-full bg-emerald-600 text-white py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
			>
				{loading ? "Creating account..." : "Sign Up"}
			</button>

			<p className="text-sm text-center text-gray-500">
				Already have an account?{" "}
				<Link href="/login" className="text-emerald-600 hover:text-emerald-700">
					Log in
				</Link>
			</p>
		</form>
	);
}
