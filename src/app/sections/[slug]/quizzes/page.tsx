import Link from "next/link";
import { notFound } from "next/navigation";
import Paywall from "@/components/paywall";
import { StudyPipeline } from "@/components/study-pipeline";
import { getSection, sections } from "@/lib/sections";
import { isAdmin } from "@/lib/admin";
import { createClient } from "@/lib/supabase/server";
import QuizClient from "./quiz-client";

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
	return { title: `${section.title} Quiz` };
}

export default async function QuizPage({
	params,
	searchParams,
}: {
	params: Promise<{ slug: string }>;
	searchParams: Promise<{ topics?: string; id?: string }>;
}) {
	const { slug } = await params;
	const { topics: topicsParam, id: attemptIdParam } = await searchParams;
	const section = getSection(slug);
	if (!section) notFound();

	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	// Auth + subscription check (same pattern as lesson page)
	if (!user) {
		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<Link
					href={`/sections/${section.slug}`}
					className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
				>
					&larr; {section.title}
				</Link>
				<h1 className="text-3xl font-bold text-gray-900 mb-6">
					{section.title} — Quiz
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

	if (profile?.subscription_status !== "active" && !isAdmin(user.id)) {
		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<Link
					href={`/sections/${section.slug}`}
					className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
				>
					&larr; {section.title}
				</Link>
				<h1 className="text-3xl font-bold text-gray-900 mb-6">
					{section.title} — Quiz
				</h1>
				<Paywall />
			</main>
		);
	}

	// Fetch recent completed attempts for this section
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
			<Link
				href={`/sections/${section.slug}`}
				className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
			>
				&larr; {section.title}
			</Link>
			<h1 className="text-3xl font-bold text-gray-900 mb-2">
				{section.title} — Quiz
			</h1>
			<StudyPipeline variant="compact" activeStep={4} />
			<QuizClient
				sectionCode={section.code}
				sectionSlug={section.slug}
				sectionTitle={section.title}
				recentAttempts={recentAttempts}
				topics={topicsParam ? topicsParam.split(",").map((t) => t.trim()) : undefined}
				preloadedAttemptId={attemptIdParam ? parseInt(attemptIdParam, 10) : undefined}
			/>
		</main>
	);
}
