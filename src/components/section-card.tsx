import Link from "next/link";
import type { Section } from "@/lib/sections";

const codeLabels: Record<string, string> = {
	aud: "AUD",
	far: "FAR",
	reg: "REG",
};

export default function SectionCard({ section }: { section: Section }) {
	return (
		<Link
			href={`/sections/${section.slug}`}
			className="block border border-gray-200 rounded-xl p-6 hover:border-emerald-500 hover:shadow-md transition-all group"
		>
			<div className="flex items-center gap-3 mb-3">
				<span className="bg-emerald-100 text-emerald-700 text-sm font-bold px-3 py-1 rounded-full">
					{codeLabels[section.code] ?? section.code.toUpperCase()}
				</span>
				<span className="text-sm text-gray-400">
					{section.lessons.length}{" "}
					{section.lessons.length === 1 ? "lesson" : "lessons"}
				</span>
			</div>
			<h3 className="text-lg font-semibold text-gray-900 group-hover:text-emerald-700 transition-colors mb-2">
				{section.title}
			</h3>
			<p className="text-gray-500 text-sm leading-relaxed">
				{section.description}
			</p>
		</Link>
	);
}
