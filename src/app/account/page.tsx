import type { Metadata } from "next";
import { sections } from "@/lib/sections";
import { createClient } from "@/lib/supabase/server";
import ActiveSectionSettings from "./active-section-settings";

export const metadata: Metadata = {
	title: "Account",
};

export default async function AccountPage() {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	const { data: profile } = await supabase
		.from("profiles")
		.select("subscription_status, stripe_customer_id, active_section, target_exam_date")
		.eq("id", user!.id)
		.single();

	const subscriptionStatus = profile?.subscription_status ?? "free";
	const activeSection = profile?.active_section ?? "aud";
	const targetExamDate = profile?.target_exam_date ?? null;

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
								Subscribe — $29.99/month
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

			<div className="mt-8 bg-white rounded-xl border border-gray-200 p-6">
				<h2 className="text-lg font-bold text-gray-900 mb-4">Study Focus</h2>
				<p className="text-sm text-gray-500 mb-6">
					Choose which section you are currently studying for. Your dashboard will focus specifically on this exam.
				</p>
				<ActiveSectionSettings 
					sections={sections.map(s => ({ code: s.code, title: s.title }))} 
					activeSection={activeSection} 
					targetExamDate={targetExamDate}
				/>
			</div>
		</main>
	);
}
