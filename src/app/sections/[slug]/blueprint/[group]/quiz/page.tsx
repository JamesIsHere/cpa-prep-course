import Link from "next/link";
import { notFound } from "next/navigation";
import QuizClient from "@/app/sections/[slug]/quizzes/quiz-client";
import Paywall from "@/components/paywall";
import {
	getBlueprintSection,
	getGroupQuestionCount,
	parseGroupSlug,
} from "@/lib/blueprint-utils";
import { getSection } from "@/lib/sections";
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

	const blueprint = getBlueprintSection(section.code);
	if (!blueprint) return {};

	const area = blueprint.areas.find((a) => a.area === parsed.area);
	const group = area?.groups.find((g) => g.letter === parsed.letter);
	if (!group) return {};

	return {
		title: `${group.name} Quiz — ${section.title}`,
	};
}

export default async function TargetedQuizPage({
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

	const questionCount = getGroupQuestionCount(group);
	if (questionCount === 0) notFound();

	// Auth + subscription check
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) {
		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<Link
					href={`/sections/${slug}/blueprint/${groupSlug}`}
					className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
				>
					&larr; {group.name}
				</Link>
				<h1 className="text-3xl font-bold text-gray-900 mb-6">
					{group.name} — Quiz
				</h1>
				<Paywall />
			</main>
		);
	}

	const { data: profile } = await supabase
		.from("profiles")
		.select("subscription_status")
		.eq("id", user.id)
		.single();

	if (profile?.subscription_status !== "active") {
		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<Link
					href={`/sections/${slug}/blueprint/${groupSlug}`}
					className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
				>
					&larr; {group.name}
				</Link>
				<h1 className="text-3xl font-bold text-gray-900 mb-6">
					{group.name} — Quiz
				</h1>
				<Paywall />
			</main>
		);
	}

	// Fetch recent attempts
	const { data: dbSection } = await supabase
		.from("sections")
		.select("id")
		.eq("code", section.code)
		.single();

	let recentAttempts: {
		id: number;
		score: number;
		total: number;
		completed_at: string;
	}[] = [];

	if (dbSection) {
		const { data: attempts } = await supabase
			.from("quiz_attempts")
			.select("id, score, total, completed_at")
			.eq("user_id", user.id)
			.eq("section_id", dbSection.id)
			.not("completed_at", "is", null)
			.order("completed_at", { ascending: false })
			.limit(5);

		if (attempts) {
			recentAttempts = attempts as typeof recentAttempts;
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
				<Link
					href={`/sections/${slug}/blueprint/${groupSlug}`}
					className="text-emerald-600 hover:text-emerald-700"
				>
					{parsed.area}.{parsed.letter}
				</Link>
				<span>/</span>
				<span className="text-gray-600">Quiz</span>
			</nav>

			<h1 className="text-3xl font-bold text-gray-900 mb-6">
				{group.name} — Quiz
			</h1>

			<QuizClient
				sectionCode={section.code}
				sectionSlug={section.slug}
				sectionTitle={section.title}
				recentAttempts={recentAttempts}
				topics={group.questionTopics}
			/>
		</main>
	);
}
