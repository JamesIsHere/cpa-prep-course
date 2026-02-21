import type { MetadataRoute } from "next";
import { getAllPosts } from "@/lib/blog";
import { cpaBlueprint } from "@/lib/blueprint";
import { getGroupSlug } from "@/lib/blueprint-utils";
import { sections } from "@/lib/sections";

// Stable date for content that doesn't change between deploys.
// Update this when content (lessons, questions, blueprints) is modified.
const CONTENT_LAST_MODIFIED = new Date("2026-02-22");

export default function sitemap(): MetadataRoute.Sitemap {
	const base = "https://www.slayer-cpa.com";

	const staticRoutes: MetadataRoute.Sitemap = [
		{
			url: base,
			lastModified: CONTENT_LAST_MODIFIED,
			changeFrequency: "monthly",
			priority: 1,
		},
		{
			url: `${base}/sections`,
			lastModified: CONTENT_LAST_MODIFIED,
			changeFrequency: "monthly",
			priority: 0.9,
		},
		{
			url: `${base}/login`,
			lastModified: CONTENT_LAST_MODIFIED,
			changeFrequency: "yearly",
			priority: 0.3,
		},
		{
			url: `${base}/signup`,
			lastModified: CONTENT_LAST_MODIFIED,
			changeFrequency: "yearly",
			priority: 0.5,
		},
		{
			url: `${base}/contact`,
			lastModified: CONTENT_LAST_MODIFIED,
			changeFrequency: "yearly",
			priority: 0.4,
		},
	];

	const sectionRoutes: MetadataRoute.Sitemap = sections.map((s) => ({
		url: `${base}/sections/${s.slug}`,
		lastModified: CONTENT_LAST_MODIFIED,
		changeFrequency: "monthly" as const,
		priority: 0.8,
	}));

	const lessonRoutes: MetadataRoute.Sitemap = sections.flatMap((s) =>
		s.lessons
			.filter((l) => l.isFree)
			.map((l) => ({
				url: `${base}/sections/${s.slug}/lessons/${l.slug}`,
				lastModified: CONTENT_LAST_MODIFIED,
				changeFrequency: "monthly" as const,
				priority: 0.7,
			})),
	);

	const blueprintRoutes: MetadataRoute.Sitemap = cpaBlueprint.flatMap((s) => [
		{
			url: `${base}/sections/${s.code}/blueprint`,
			lastModified: CONTENT_LAST_MODIFIED,
			changeFrequency: "monthly" as const,
			priority: 0.75,
		},
		...s.areas.flatMap((a) =>
			a.groups.map((g) => ({
				url: `${base}/sections/${s.code}/blueprint/${getGroupSlug(a.area, g.letter)}`,
				lastModified: CONTENT_LAST_MODIFIED,
				changeFrequency: "monthly" as const,
				priority: 0.65,
			})),
		),
	]);

	const blogIndexRoute: MetadataRoute.Sitemap = [
		{
			url: `${base}/blog`,
			lastModified: CONTENT_LAST_MODIFIED,
			changeFrequency: "weekly",
			priority: 0.8,
		},
	];

	const blogPostRoutes: MetadataRoute.Sitemap = getAllPosts().map((post) => ({
		url: `${base}/blog/${post.slug}`,
		lastModified: new Date(post.date),
		changeFrequency: "monthly" as const,
		priority: 0.7,
	}));

	return [
		...staticRoutes,
		...sectionRoutes,
		...lessonRoutes,
		...blueprintRoutes,
		...blogIndexRoute,
		...blogPostRoutes,
	];
}
