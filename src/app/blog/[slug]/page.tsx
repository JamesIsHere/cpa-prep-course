import type { Metadata } from "next";
import Link from "next/link";
import { notFound } from "next/navigation";
import { getAllPosts, getPostBySlug } from "@/lib/blog";

export function generateStaticParams() {
	return getAllPosts().map((post) => ({ slug: post.slug }));
}

export async function generateMetadata({
	params,
}: {
	params: Promise<{ slug: string }>;
}): Promise<Metadata> {
	const { slug } = await params;
	const post = getPostBySlug(slug);
	if (!post) return {};
	return {
		title: `${post.title} — Slayer CPA`,
		description: post.description,
		openGraph: {
			title: post.title,
			description: post.description,
			type: "article",
			publishedTime: post.date,
		},
	};
}

export default async function BlogPostPage({
	params,
}: {
	params: Promise<{ slug: string }>;
}) {
	const { slug } = await params;
	const post = getPostBySlug(slug);
	if (!post) notFound();

	let Content: React.ComponentType;
	try {
		const mod = await import(`@/content/${post.contentPath}.mdx`);
		Content = mod.default;
	} catch {
		notFound();
	}

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<Link
				href="/blog"
				className="text-sm text-emerald-600 hover:text-emerald-700 transition-colors mb-6 inline-block"
			>
				&larr; Back to Blog
			</Link>
			<article className="bg-white rounded-xl border border-gray-200 p-6 sm:p-10">
				<p className="text-sm text-gray-400 mb-4">{post.date}</p>
				<Content />
			</article>
		</main>
	);
}
