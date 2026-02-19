"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";
import { createClient } from "@/lib/supabase/client";

export default function UpdatePasswordForm() {
	const router = useRouter();
	const [password, setPassword] = useState("");
	const [confirm, setConfirm] = useState("");
	const [error, setError] = useState("");
	const [loading, setLoading] = useState(false);

	async function handleSubmit(e: React.FormEvent) {
		e.preventDefault();
		setError("");

		if (password !== confirm) {
			setError("Passwords do not match.");
			return;
		}

		setLoading(true);

		const supabase = createClient();
		const { error: updateError } = await supabase.auth.updateUser({
			password,
		});

		if (updateError) {
			setError(updateError.message);
			setLoading(false);
			return;
		}

		router.push("/dashboard");
		router.refresh();
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
					htmlFor="password"
					className="block text-sm font-medium text-gray-700 mb-1"
				>
					New password
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
			</div>

			<div>
				<label
					htmlFor="confirm"
					className="block text-sm font-medium text-gray-700 mb-1"
				>
					Confirm password
				</label>
				<input
					id="confirm"
					type="password"
					value={confirm}
					onChange={(e) => setConfirm(e.target.value)}
					required
					minLength={8}
					className="w-full border border-gray-300 rounded-lg px-3 py-2 text-gray-900 focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
				/>
			</div>

			<button
				type="submit"
				disabled={loading}
				className="w-full bg-emerald-600 text-white py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
			>
				{loading ? "Updating..." : "Update Password"}
			</button>
		</form>
	);
}
