import Link from "next/link";
import { redirect } from "next/navigation";
import { cpaBlueprint, questionCounts } from "@/lib/blueprint";
import { createClient } from "@/lib/supabase/server";

export const dynamic = "force-dynamic";

export const metadata = {
	title: "Browse Blueprint — Admin",
};

const SECTIONS = [
	{ code: "aud", title: "Auditing & Attestation" },
	{ code: "far", title: "Financial Accounting & Reporting" },
	{ code: "reg", title: "Taxation & Regulation" },
	{ code: "bar", title: "Business Analysis & Reporting" },
	{ code: "isc", title: "Information Systems & Controls" },
	{ code: "tcp", title: "Tax Compliance & Planning" },
];

interface PageProps {
	searchParams: Promise<Record<string, string | string[] | undefined>>;
}

export default async function BrowsePage({ searchParams }: PageProps) {
	const params = await searchParams;
	const sectionCode =
		(typeof params.section === "string" ? params.section : "") || "far";

	const section = cpaBlueprint.find((s) => s.code === sectionCode);
	if (!section) {
		redirect("/admin/review/browse?section=far");
	}

	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) return null;

	// Get section ID
	const { data: sectionRow } = await supabase
		.from("sections")
		.select("id")
		.eq("code", sectionCode)
		.single();

	// Get all reviewed question IDs for this section
	const { data: reviewedRows } = await supabase
		.from("question_reviews")
		.select("question_id, questions!inner(section_id, topic)")
		.eq("user_id", user.id)
		.eq("questions.section_id", sectionRow?.id ?? 0);

	// Count reviewed per topic
	const reviewedByTopic = new Map<string, number>();
	for (const r of reviewedRows ?? []) {
		const topic = (r.questions as unknown as { topic: string }).topic;
		reviewedByTopic.set(topic, (reviewedByTopic.get(topic) ?? 0) + 1);
	}

	return (
		<div className="max-w-4xl mx-auto px-6 py-8">
			<div className="mb-6">
				<h1 className="text-2xl font-bold text-gray-900 mb-1">Browse Blueprint</h1>
				<p className="text-sm text-gray-500">
					Drill down by area, group, and topic to review questions
				</p>
			</div>

			{/* Section picker */}
			<div className="mb-6">
				<div className="flex flex-wrap gap-2">
					{SECTIONS.map((s) => (
						<Link
							key={s.code}
							href={`/admin/review/browse?section=${s.code}`}
							className={`px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
								s.code === sectionCode
									? "bg-emerald-600 text-white"
									: "bg-white border border-gray-200 text-gray-600 hover:border-emerald-300 hover:text-emerald-700"
							}`}
						>
							{s.code.toUpperCase()}
						</Link>
					))}
				</div>
			</div>

			{/* Blueprint hierarchy */}
			<div className="space-y-6">
				{section.areas.map((area) => {
					// Compute area-level stats
					let areaTotalQ = 0;
					let areaReviewedQ = 0;
					for (const group of area.groups) {
						for (const topic of group.questionTopics) {
							areaTotalQ += questionCounts[topic] ?? 0;
							areaReviewedQ += reviewedByTopic.get(topic) ?? 0;
						}
					}
					const areaPct =
						areaTotalQ > 0 ? Math.round((areaReviewedQ / areaTotalQ) * 100) : 0;

					return (
						<div
							key={area.area}
							className="bg-white border border-gray-200 rounded-2xl shadow-sm overflow-hidden"
						>
							{/* Area header */}
							<div className="px-6 py-4 bg-gray-50 border-b border-gray-200">
								<div className="flex items-center justify-between mb-2">
									<h2 className="text-sm font-bold text-gray-900">
										Area {area.area}: {area.name}
									</h2>
									<span className="text-xs text-gray-400">
										{area.weight[0]}–{area.weight[1]}%
									</span>
								</div>
								<div className="flex items-center gap-3">
									<div className="flex-1 h-1.5 bg-gray-200 rounded-full overflow-hidden">
										<div
											className="h-full bg-emerald-500 rounded-full"
											style={{ width: `${areaPct}%` }}
										/>
									</div>
									<span className="text-xs text-gray-400 shrink-0">
										{areaReviewedQ}/{areaTotalQ} ({areaPct}%)
									</span>
								</div>
							</div>

							{/* Groups */}
							<div className="divide-y divide-gray-100">
								{area.groups.map((group) => {
									let groupTotal = 0;
									let groupReviewed = 0;
									for (const topic of group.questionTopics) {
										groupTotal += questionCounts[topic] ?? 0;
										groupReviewed += reviewedByTopic.get(topic) ?? 0;
									}
									const groupPct =
										groupTotal > 0
											? Math.round((groupReviewed / groupTotal) * 100)
											: 0;

									return (
										<div key={group.letter} className="px-6 py-4">
											<div className="flex items-center justify-between mb-2">
												<h3 className="text-sm text-gray-700">
													<span className="font-bold text-gray-400 mr-2">
														{group.letter}.
													</span>
													{group.name}
												</h3>
												<span className="text-xs text-gray-400 shrink-0">
													{groupReviewed}/{groupTotal}
												</span>
											</div>

											{/* Progress bar */}
											<div className="h-1 bg-gray-100 rounded-full overflow-hidden mb-3">
												<div
													className="h-full bg-emerald-400 rounded-full"
													style={{ width: `${groupPct}%` }}
												/>
											</div>

											{/* Topics */}
											<div className="flex flex-wrap gap-2">
												{group.questionTopics.map((topic) => {
													const total = questionCounts[topic] ?? 0;
													const reviewed = reviewedByTopic.get(topic) ?? 0;
													const done = total > 0 && reviewed >= total;

													return (
														<Link
															key={topic}
															href={`/admin/review?section=${sectionCode}&topic=${encodeURIComponent(topic)}&reviewed=false`}
															className={`inline-flex items-center gap-2 text-xs px-3 py-1.5 rounded-lg border transition-colors ${
																done
																	? "border-emerald-200 bg-emerald-50 text-emerald-700"
																	: "border-gray-200 bg-white text-gray-600 hover:border-emerald-300 hover:text-emerald-700"
															}`}
														>
															<span className="truncate max-w-[200px]">{topic}</span>
															<span className="text-gray-400 shrink-0">
																{reviewed}/{total}
															</span>
														</Link>
													);
												})}
											</div>
										</div>
									);
								})}
							</div>
						</div>
					);
				})}
			</div>
		</div>
	);
}
