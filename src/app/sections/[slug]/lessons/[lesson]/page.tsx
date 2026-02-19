import { notFound } from "next/navigation";
import { getLesson, sections } from "@/lib/sections";
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
	return { title: `${result.lesson.title} — CPA Prep Course` };
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

	let Content: React.ComponentType;
	try {
		const mod = await import(`@/content/${lesson.contentPath}.mdx`);
		Content = mod.default;
	} catch {
		notFound();
	}

	return (
		<LessonPageClient section={section} lesson={lesson}>
			<Content />
		</LessonPageClient>
	);
}
