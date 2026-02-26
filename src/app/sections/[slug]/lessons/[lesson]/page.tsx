import { notFound } from "next/navigation";
import Paywall from "@/components/paywall";
import {
	getBlueprintGroupForLesson,
	getTopicsForLesson,
} from "@/lib/blueprint-utils";
import { getLesson, sections } from "@/lib/sections";
import { createClient } from "@/lib/supabase/server";
import LessonPageClient from "./lesson-page-client";

export function generateStaticParams() {
	return sections.flatMap((s) =>
		s.lessons.map((l) => ({ slug: s.slug, lesson: l.slug })),
	);
}

export async function generateMetadata({
	params,
}: {
	params: Promise<{ slug: string; lesson: string }>;
}) {
	const { slug, lesson: lessonSlug } = await params;
	const result = getLesson(slug, lessonSlug);
	if (!result) return {};
	return { title: result.lesson.title };
}

export default async function LessonPage({
	params,
}: {
	params: Promise<{ slug: string; lesson: string }>;
}) {
	const { slug, lesson: lessonSlug } = await params;
	const result = getLesson(slug, lessonSlug);
	if (!result) notFound();

	const { section, lesson } = result;

	const lessonTopics = getTopicsForLesson(section.code, lesson.slug);
	const blueprintGroup = getBlueprintGroupForLesson(section.code, lesson.slug);

	// Check access for non-free lessons
	if (!lesson.isFree) {
		const supabase = await createClient();
		const {
			data: { user },
		} = await supabase.auth.getUser();

		if (!user) {
			return (
				<LessonPageClient 
					section={section} 
					lesson={lesson}
					lessonTopics={lessonTopics}
					blueprintGroup={blueprintGroup}
				>
					<Paywall />
				</LessonPageClient>
			);
		}

		const { data: profile } = await supabase
			.from("profiles")
			.select("subscription_status")
			.eq("id", user.id)
			.single();

		if (profile?.subscription_status !== "active") {
			return (
				<LessonPageClient 
					section={section} 
					lesson={lesson}
					lessonTopics={lessonTopics}
					blueprintGroup={blueprintGroup}
				>
					<Paywall />
				</LessonPageClient>
			);
		}
	}

	let Content: React.ComponentType;
	try {
		const mod = await import(`@/content/${lesson.contentPath}.mdx`);
		Content = mod.default;
	} catch {
		notFound();
	}

	return (
		<LessonPageClient
			section={section}
			lesson={lesson}
			lessonTopics={lessonTopics}
			blueprintGroup={blueprintGroup}
		>
			<Content />
		</LessonPageClient>
	);
}
