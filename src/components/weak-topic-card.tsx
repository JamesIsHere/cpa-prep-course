import Link from "next/link";
import type { TopicPerformance } from "@/lib/weak-topics";

interface WeakTopicCardProps {
	sectionCode: string;
	sectionSlug: string;
	sectionTitle: string;
	weakTopics: TopicPerformance[];
}

export default function WeakTopicCard({
	sectionCode,
	sectionSlug,
	sectionTitle,
	weakTopics,
}: WeakTopicCardProps) {
	if (weakTopics.length === 0) return null;

	const topicsParam = weakTopics.map((t) => t.topic).join(",");

	return (
		<div className="border border-gray-200 rounded-xl p-5">
			<div className="flex items-center justify-between mb-3">
				<div className="flex items-center gap-2">
					<span className="bg-red-100 text-red-700 text-xs font-bold px-2 py-0.5 rounded-full">
						{sectionCode.toUpperCase()}
					</span>
					<h3 className="text-sm font-semibold text-gray-900">
						{sectionTitle} &mdash; Focus Areas
					</h3>
				</div>
				<Link
					href={`/sections/${sectionSlug}/quizzes?topics=${encodeURIComponent(topicsParam)}`}
					className="text-xs font-medium text-emerald-600 hover:text-emerald-700 whitespace-nowrap"
				>
					Practice these &rarr;
				</Link>
			</div>
			<div className="space-y-2">
				{weakTopics.map((t) => {
					const pct = Math.round(t.accuracy * 100);
					return (
						<div key={t.topic} className="flex items-center gap-3">
							<div className="flex-1 min-w-0">
								<p className="text-sm text-gray-700 truncate">{t.topic}</p>
							</div>
							<div className="flex items-center gap-2 flex-shrink-0">
								<div className="w-16 h-1.5 bg-gray-100 rounded-full overflow-hidden">
									<div
										className={`h-full rounded-full ${pct >= 50 ? "bg-amber-400" : "bg-red-400"}`}
										style={{ width: `${pct}%` }}
									/>
								</div>
								<span
									className={`text-xs font-medium w-8 text-right ${pct >= 50 ? "text-amber-700" : "text-red-700"}`}
								>
									{pct}%
								</span>
							</div>
						</div>
					);
				})}
			</div>
		</div>
	);
}
