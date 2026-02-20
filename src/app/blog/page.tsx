import type { Metadata } from "next";
import Link from "next/link";
import { getAllPosts } from "@/lib/blog";

export const metadata: Metadata = {
	title: "Blog — Slayer CPA",
	description:
		"CPA exam tips, cost breakdowns, and study strategies from Slayer CPA.",
};

export default function BlogPage() {
	const posts = getAllPosts();

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<h1 className="text-3xl font-bold text-gray-900 mb-2">Blog</h1>
			<p className="text-gray-500 mb-8">
				CPA exam tips, cost breakdowns, and study strategies.
			</p>

			<div className="space-y-6">
				{posts.map((post) => (
					<Link
						key={post.slug}
						href={`/blog/${post.slug}`}
						className="block border border-gray-200 rounded-xl p-6 hover:border-emerald-500 hover:shadow-md transition-all"
					>
						<p className="text-sm text-gray-400 mb-1">{post.date}</p>
						<h2 className="text-xl font-semibold text-gray-900 mb-2">
							{post.title}
						</h2>
						<p className="text-gray-500 text-sm leading-relaxed">
							{post.description}
						</p>
					</Link>
				))}
			</div>
		</main>
	);
}
