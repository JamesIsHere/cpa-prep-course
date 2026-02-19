import type { Metadata } from "next";
import { createClient } from "@/lib/supabase/server";

export const metadata: Metadata = {
	title: "Account — CPA Prep Course",
};

export default async function AccountPage() {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	const { data: profile } = await supabase
		.from("profiles")
		.select("subscription_status, stripe_customer_id")
		.eq("id", user!.id)
		.single();

	const subscriptionStatus = profile?.subscription_status ?? "free";

	const statusLabels: Record<string, { label: string; color: string }> = {
		free: { label: "Free", color: "bg-gray-100 text-gray-700" },
		active: { label: "Active", color: "bg-emerald-100 text-emerald-700" },
		canceled: { label: "Canceled", color: "bg-red-100 text-red-700" },
	};

	const status = statusLabels[subscriptionStatus] ?? statusLabels.free;

	return (
		<main className="max-w-2xl mx-auto px-4 py-12">
			<h1 className="text-3xl font-bold text-gray-900 mb-8">Account</h1>

			<div className="bg-white rounded-xl border border-gray-200 p-6 space-y-6">
				<div>
					<p className="text-sm text-gray-500">Email</p>
					<p className="text-gray-900">{user?.email}</p>
				</div>

				<div>
					<p className="text-sm text-gray-500 mb-1">Subscription</p>
					<span
						className={`inline-block text-sm font-medium px-3 py-1 rounded-full ${status.color}`}
					>
						{status.label}
					</span>
				</div>

				{subscriptionStatus === "free" && (
					<div className="border-t border-gray-200 pt-6">
						<p className="text-gray-600 mb-4">
							Upgrade to access all lessons, quizzes, and practice exams.
						</p>
						<form action="/api/checkout" method="POST">
							<button
								type="submit"
								className="bg-emerald-600 text-white px-6 py-2 rounded-lg font-medium hover:bg-emerald-700 transition-colors"
							>
								Subscribe — $9.99/month
							</button>
						</form>
					</div>
				)}

				{subscriptionStatus === "active" && profile?.stripe_customer_id && (
					<div className="border-t border-gray-200 pt-6">
						<form action="/api/portal" method="POST">
							<button
								type="submit"
								className="border border-gray-300 text-gray-700 px-6 py-2 rounded-lg font-medium hover:bg-gray-50 transition-colors"
							>
								Manage Subscription
							</button>
						</form>
					</div>
				)}
			</div>
		</main>
	);
}
