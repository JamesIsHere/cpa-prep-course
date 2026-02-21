import Link from "next/link";
import { notFound } from "next/navigation";
import BlueprintGroupDetail from "@/components/blueprint-group-detail";
import {
	getBlueprintGroup,
	getBlueprintSection,
	getFrameworkItemsForGroup,
	getGroupQuestionCount,
	parseGroupSlug,
	questionCounts,
} from "@/lib/blueprint-utils";
import { getSection, sections } from "@/lib/sections";
import { createClient } from "@/lib/supabase/server";

export async function generateMetadata({
	params,
}: {
	params: Promise<{ slug: string; group: string }>;
}) {
	const { slug, group: groupSlug } = await params;
	const section = getSection(slug);
	if (!section) return {};

	const parsed = parseGroupSlug(groupSlug);
	if (!parsed) return {};

	const group = getBlueprintGroup(section.code, parsed.area, parsed.letter);
	if (!group) return {};

	return {
		title: `${group.name} — ${section.title} Blueprint`,
		description: `Study ${group.name} for the ${section.title} section of the CPA exam. Topics, lessons, study frameworks, and targeted practice.`,
	};
}

export default async function GroupDetailPage({
	params,
}: {
	params: Promise<{ slug: string; group: string }>;
}) {
	const { slug, group: groupSlug } = await params;
	const section = getSection(slug);
	if (!section) notFound();

	const blueprint = getBlueprintSection(section.code);
	if (!blueprint) notFound();

	const parsed = parseGroupSlug(groupSlug);
	if (!parsed) notFound();

	const area = blueprint.areas.find((a) => a.area === parsed.area);
	if (!area) notFound();

	const group = area.groups.find((g) => g.letter === parsed.letter);
	if (!group) notFound();

	const frameworkItems = getFrameworkItemsForGroup(
		section.code,
		parsed.area,
		parsed.letter,
	);
	const questionCount = getGroupQuestionCount(group);

	// Find lessons matching group's lessonSlugs
	const lessons = section.lessons.filter((l) =>
		group.lessonSlugs.includes(l.slug),
	);

	// Fetch progress
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	let progress = { attempted: 0, correct: 0, total: questionCount };

	if (user && questionCount > 0) {
		const { data: sectionData } = await supabase
			.from("sections")
			.select("id")
			.eq("code", section.code)
			.single();

		if (sectionData) {
			const { data: attempts } = await supabase
				.from("quiz_attempts")
				.select("topic_scores")
				.eq("user_id", user.id)
				.eq("section_id", sectionData.id)
				.not("completed_at", "is", null);

			if (attempts && attempts.length > 0) {
				// Aggregate topic scores for this group's topics
				const topicAgg = new Map<
					string,
					{ attempted: number; correct: number }
				>();
				for (const attempt of attempts) {
					if (attempt.topic_scores && Array.isArray(attempt.topic_scores)) {
						for (const ts of attempt.topic_scores as {
							topic: string;
							correct: number;
							total: number;
						}[]) {
							const existing = topicAgg.get(ts.topic) ?? {
								attempted: 0,
								correct: 0,
							};
							existing.attempted += ts.total;
							existing.correct += ts.correct;
							topicAgg.set(ts.topic, existing);
						}
					}
				}

				let attempted = 0;
				let correct = 0;
				for (const topic of group.questionTopics) {
					const agg = topicAgg.get(topic);
					if (agg) {
						attempted += agg.attempted;
						correct += agg.correct;
					}
				}
				progress = { attempted, correct, total: questionCount };
			}
		}
	}

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<nav className="flex items-center gap-2 text-sm text-gray-400 mb-6">
				<Link
					href={`/sections/${slug}`}
					className="text-emerald-600 hover:text-emerald-700"
				>
					{section.title}
				</Link>
				<span>/</span>
				<Link
					href={`/sections/${slug}/blueprint`}
					className="text-emerald-600 hover:text-emerald-700"
				>
					Blueprint
				</Link>
				<span>/</span>
				<span className="text-gray-600">
					{parsed.area}.{parsed.letter}
				</span>
			</nav>

			<h1 className="text-2xl font-bold text-gray-900 mb-1">{group.name}</h1>
			<p className="text-sm text-gray-400 mb-8">
				Area {parsed.area}: {area.name} ({area.weight[0]}-{area.weight[1]}%)
			</p>

			<BlueprintGroupDetail
				sectionSlug={slug}
				sectionTitle={section.title}
				areaNumber={parsed.area}
				areaName={area.name}
				group={group}
				groupSlug={groupSlug}
				lessons={lessons}
				frameworkItems={frameworkItems}
				questionCount={questionCount}
				progress={progress}
			/>
		</main>
	);
}
