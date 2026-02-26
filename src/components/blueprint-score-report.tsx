"use client";

import { getBlueprintSection } from "@/lib/blueprint-utils";
import type { ExamResult } from "@/lib/quiz";

interface BlueprintScoreReportProps {
	result: ExamResult;
	sectionCode: string;
}

export default function BlueprintScoreReport({
	result,
	sectionCode,
}: BlueprintScoreReportProps) {
	const blueprint = getBlueprintSection(sectionCode);
	if (!blueprint) return null;

	// Map topic scores for easy lookup
	const topicMap = new Map(result.topicScores.map((ts) => [ts.topic, ts]));

	function getPerformanceRating(pct: number) {
		if (pct >= 80) return { label: "Stronger", color: "text-emerald-700 bg-emerald-100" };
		if (pct >= 65) return { label: "Comparable", color: "text-blue-700 bg-blue-100" };
		return { label: "Weaker", color: "text-red-700 bg-red-100" };
	}

	return (
		<div className="bg-white border border-gray-200 rounded-2xl overflow-hidden shadow-sm">
			<div className="bg-gray-900 px-6 py-4">
				<h3 className="text-white font-bold tracking-tight flex items-center gap-2">
					<span className="w-2 h-2 bg-emerald-500 rounded-full animate-pulse"></span>
					Performance Report: {sectionCode.toUpperCase()}
				</h3>
			</div>

			<div className="divide-y divide-gray-100">
				{blueprint.areas.map((area) => {
					// Calculate Area Score
					let areaCorrect = 0;
					let areaTotal = 0;
					area.groups.forEach(group => {
						group.questionTopics.forEach(topic => {
							const ts = topicMap.get(topic);
							if (ts) {
								areaCorrect += ts.correct;
								areaTotal += ts.total;
							}
						});
					});

					if (areaTotal === 0) return null;

					const areaPct = Math.round((areaCorrect / areaTotal) * 100);
					const rating = getPerformanceRating(areaPct);

					return (
						<div key={area.area} className="p-6">
							<div className="flex items-start justify-between mb-6">
								<div>
									<p className="text-[10px] font-black text-gray-400 uppercase tracking-widest mb-1">Area {area.area}</p>
									<h4 className="text-lg font-bold text-gray-900 leading-tight max-w-md">{area.name}</h4>
								</div>
								<div className="text-right">
									<span className={`inline-block px-2 py-1 rounded text-[10px] font-black uppercase mb-1 ${rating.color}`}>
										{rating.label}
									</span>
									<p className="text-2xl font-black text-gray-900">{areaPct}%</p>
								</div>
							</div>

							<div className="space-y-4">
								{area.groups.map(group => {
									let groupCorrect = 0;
									let groupTotal = 0;
									group.questionTopics.forEach(topic => {
										const ts = topicMap.get(topic);
										if (ts) {
											groupCorrect += ts.correct;
											groupTotal += ts.total;
										}
									});

									if (groupTotal === 0) return null;
									const groupPct = Math.round((groupCorrect / groupTotal) * 100);

									return (
										<div key={group.letter} className="bg-gray-50 rounded-xl p-4 border border-gray-100">
											<div className="flex items-center justify-between mb-2">
												<p className="text-sm font-bold text-gray-700">
													<span className="text-gray-400 mr-2">{area.area}.{group.letter}</span>
													{group.name}
												</p>
												<span className={`text-sm font-black ${groupPct >= 75 ? "text-emerald-600" : groupPct >= 60 ? "text-amber-600" : "text-red-600"}`}>
													{groupPct}%
												</span>
											</div>
											<div className="h-1.5 bg-gray-200 rounded-full overflow-hidden">
												<div 
													className={`h-full transition-all duration-1000 ${groupPct >= 75 ? "bg-emerald-500" : groupPct >= 60 ? "bg-amber-500" : "bg-red-500"}`}
													style={{ width: `${groupPct}%` }}
												/>
											</div>
											<div className="mt-2 flex flex-wrap gap-2">
												{group.questionTopics.filter(t => topicMap.has(t)).map(topic => {
													const ts = topicMap.get(topic)!;
													const tPct = Math.round((ts.correct / ts.total) * 100);
													return (
														<span key={topic} className={`text-[10px] px-1.5 py-0.5 rounded-md border ${
															tPct >= 75 ? "bg-emerald-50 border-emerald-100 text-emerald-700" : "bg-white border-gray-200 text-gray-500"
														}`}>
															{topic}: {ts.correct}/{ts.total}
														</span>
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
			
			<div className="bg-gray-50 px-6 py-4 border-t border-gray-100">
				<p className="text-[10px] text-gray-400 leading-relaxed italic">
					This report matches the official AICPA Blueprint structure but provides granular topic-level data. Use &ldquo;Stronger&rdquo; areas to build confidence and &ldquo;Weaker&rdquo; areas to prioritize your study focus.
				</p>
			</div>
		</div>
	);
}
