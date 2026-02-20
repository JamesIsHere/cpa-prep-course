import type { MetadataRoute } from "next";
import { sections } from "@/lib/sections";

export default function sitemap(): MetadataRoute.Sitemap {
	const base = "https://www.slayer-cpa.com";

	const staticRoutes: MetadataRoute.Sitemap = [
		{
			url: base,
			lastModified: new Date(),
			changeFrequency: "monthly",
			priority: 1,
		},
		{
			url: `${base}/sections`,
			lastModified: new Date(),
			changeFrequency: "monthly",
			priority: 0.9,
		},
		{
			url: `${base}/login`,
			lastModified: new Date(),
			changeFrequency: "yearly",
			priority: 0.3,
		},
		{
			url: `${base}/signup`,
			lastModified: new Date(),
			changeFrequency: "yearly",
			priority: 0.5,
		},
	];

	const sectionRoutes: MetadataRoute.Sitemap = sections.map((s) => ({
		url: `${base}/sections/${s.slug}`,
		lastModified: new Date(),
		changeFrequency: "monthly" as const,
		priority: 0.8,
	}));

	const lessonRoutes: MetadataRoute.Sitemap = sections.flatMap((s) =>
		s.lessons
			.filter((l) => l.isFree)
			.map((l) => ({
				url: `${base}/sections/${s.slug}/lessons/${l.slug}`,
				lastModified: new Date(),
				changeFrequency: "monthly" as const,
				priority: 0.7,
			})),
	);

	return [...staticRoutes, ...sectionRoutes, ...lessonRoutes];
}
