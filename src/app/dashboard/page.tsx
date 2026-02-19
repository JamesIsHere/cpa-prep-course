import type { Metadata } from "next";
import SectionCard from "@/components/section-card";
import { sections } from "@/lib/sections";
import { createClient } from "@/lib/supabase/server";

export const metadata: Metadata = {
	title: "Dashboard — CPA Prep Course",
};

export default async function DashboardPage() {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<h1 className="text-3xl font-bold text-gray-900 mb-2">Dashboard</h1>
			<p className="text-gray-500 mb-8">
				Welcome back{user?.email ? `, ${user.email}` : ""}. Pick up where you
				left off.
			</p>

			<h2 className="text-lg font-semibold text-gray-800 mb-4">
				Your Sections
			</h2>
			<div className="grid sm:grid-cols-3 gap-6">
				{sections.map((section) => (
					<SectionCard key={section.code} section={section} />
				))}
			</div>
		</main>
	);
}
