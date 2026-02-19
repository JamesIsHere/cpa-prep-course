"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";
import type { Section } from "@/lib/sections";

export default function LessonNav({
	section,
	collapsed,
	onToggle,
}: {
	section: Section;
	collapsed: boolean;
	onToggle: () => void;
}) {
	const pathname = usePathname();

	return (
		<>
			{/* Mobile toggle */}
			<button
				type="button"
				className="lg:hidden flex items-center gap-2 text-sm text-gray-600 mb-4"
				onClick={onToggle}
			>
				<svg
					className={`w-4 h-4 transition-transform ${collapsed ? "" : "rotate-90"}`}
					fill="none"
					stroke="currentColor"
					viewBox="0 0 24 24"
				>
					<path
						strokeLinecap="round"
						strokeLinejoin="round"
						strokeWidth={2}
						d="M9 5l7 7-7 7"
					/>
				</svg>
				{collapsed ? "Show lessons" : "Hide lessons"}
			</button>

			<nav
				className={`${collapsed ? "hidden" : "block"} lg:block w-full lg:w-64 shrink-0`}
			>
				<h2 className="text-sm font-semibold text-gray-400 uppercase tracking-wider mb-3">
					{section.title}
				</h2>
				<ul className="space-y-1">
					{section.lessons.map((lesson) => {
						const href = `/sections/${section.slug}/lessons/${lesson.slug}`;
						const active = pathname === href;
						return (
							<li key={lesson.slug}>
								<Link
									href={href}
									className={`block px-3 py-2 rounded-lg text-sm transition-colors ${
										active
											? "bg-emerald-50 text-emerald-700 font-medium"
											: "text-gray-600 hover:bg-gray-50 hover:text-gray-900"
									}`}
								>
									{lesson.title}
								</Link>
							</li>
						);
					})}
				</ul>
			</nav>
		</>
	);
}
