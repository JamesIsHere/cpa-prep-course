import Link from "next/link";
import { notFound } from "next/navigation";
import BlueprintExplorer from "@/components/blueprint-explorer";
import { getBlueprintSection, questionCounts } from "@/lib/blueprint-utils";
import { getSection, sections } from "@/lib/sections";
import { createClient } from "@/lib/supabase/server";

export function generateStaticParams() {
	return sections.map((s) => ({ slug: s.slug }));
}

export async function generateMetadata({
	params,
}: {
	params: Promise<{ slug: string }>;
}) {
	const { slug } = await params;
	const section = getSection(slug);
	if (!section) return {};
	return {
		title: `${section.title} — AICPA Blueprint`,
		description: `Study the ${section.title} section using the official AICPA Blueprint structure. See exam weights, topic breakdowns, and track your progress.`,
	};
}

export default async function BlueprintPage({
	params,
}: {
	params: Promise<{ slug: string }>;
}) {
	const { slug } = await params;
	const section = getSection(slug);
	if (!section) notFound();

	const blueprint = getBlueprintSection(section.code);
	if (!blueprint) notFound();

	// Fetch user progress from quiz attempts
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	const progress: Record<
		string,
		{ attempted: number; correct: number; total: number }
	> = {};

	if (user) {
		// Get section ID
		const { data: sectionData } = await supabase
			.from("sections")
			.select("id")
			.eq("code", section.code)
			.single();

		if (sectionData) {
			// Get all completed quiz attempts for this section
			const { data: attempts } = await supabase
				.from("quiz_attempts")
				.select("id, score, total")
				.eq("user_id", user.id)
				.eq("section_id", sectionData.id)
				.not("completed_at", "is", null);

			if (attempts && attempts.length > 0) {
				// For now, aggregate at the section level
				// Per-group progress requires topic-level tracking in quiz_attempts
				// which we can add later
				const totalAttempted = attempts.reduce((s, a) => s + a.total, 0);
				const totalCorrect = attempts.reduce((s, a) => s + a.score, 0);

				// Distribute progress proportionally across groups
				for (const area of blueprint.areas) {
					for (const group of area.groups) {
						const groupKey = `${area.area}-${group.letter}`;
						const groupTotal = group.questionTopics.reduce(
							(sum, topic) => sum + (questionCounts[topic] ?? 0),
							0,
						);
						if (groupTotal > 0) {
							const sectionTotal = Object.values(questionCounts).reduce(
								(a, b) => a + b,
								0,
							);
							const ratio = groupTotal / sectionTotal;
							progress[groupKey] = {
								attempted: Math.round(totalAttempted * ratio),
								correct: Math.round(totalCorrect * ratio),
								total: groupTotal,
							};
						}
					}
				}
			}
		}
	}

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<Link
				href={`/sections/${slug}`}
				className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
			>
				&larr; Back to {section.title}
			</Link>

			<h1 className="text-3xl font-bold text-gray-900 mb-2">AICPA Blueprint</h1>
			<p className="text-gray-500 mb-8">
				{section.title} — exam structure, topic weights, and your progress.
			</p>

			<BlueprintExplorer
				sectionSlug={slug}
				sectionTitle={section.title}
				areas={blueprint.areas}
				questionCounts={questionCounts}
				progress={progress}
			/>
		</main>
	);
}
