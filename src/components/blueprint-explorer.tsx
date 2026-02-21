"use client";

import Link from "next/link";
import { useState } from "react";
import BlueprintProgressBar from "@/components/blueprint-progress-bar";
import type { BlueprintArea } from "@/lib/blueprint";

interface GroupProgress {
	attempted: number;
	correct: number;
	total: number;
}

export interface BlueprintExplorerProps {
	sectionSlug: string;
	sectionTitle: string;
	areas: BlueprintArea[];
	questionCounts: Record<string, number>;
	progress: Record<string, GroupProgress>;
}

export default function BlueprintExplorer({
	sectionSlug,
	sectionTitle,
	areas,
	questionCounts,
	progress,
}: BlueprintExplorerProps) {
	const [expandedAreas, setExpandedAreas] = useState<Set<number>>(
		new Set([areas[0]?.area]),
	);

	function toggleArea(area: number) {
		setExpandedAreas((prev) => {
			const next = new Set(prev);
			if (next.has(area)) {
				next.delete(area);
			} else {
				next.add(area);
			}
			return next;
		});
	}

	function getGroupQuestions(questionTopics: string[]): number {
		return questionTopics.reduce(
			(sum, topic) => sum + (questionCounts[topic] ?? 0),
			0,
		);
	}

	function getAreaProgress(area: BlueprintArea): GroupProgress {
		let attempted = 0;
		let correct = 0;
		let total = 0;
		for (const group of area.groups) {
			const key = `${area.area}-${group.letter}`;
			const gp = progress[key];
			if (gp) {
				attempted += gp.attempted;
				correct += gp.correct;
				total += gp.total;
			} else {
				total += getGroupQuestions(group.questionTopics);
			}
		}
		return { attempted, correct, total };
	}

	return (
		<div className="space-y-4">
			{areas.map((area) => {
				const isExpanded = expandedAreas.has(area.area);
				const areaProgress = getAreaProgress(area);

				return (
					<div
						key={area.area}
						className="border border-gray-200 rounded-xl overflow-hidden"
					>
						<button
							type="button"
							onClick={() => toggleArea(area.area)}
							className="w-full flex items-center gap-3 p-4 sm:gap-4 sm:p-5 text-left hover:bg-gray-50 transition-colors"
						>
							<span className="bg-emerald-100 text-emerald-700 text-sm font-bold w-8 h-8 flex items-center justify-center rounded-full shrink-0">
								{area.area}
							</span>
							<div className="flex-1 min-w-0">
								<div className="flex items-center gap-2 sm:gap-3 mb-1">
									<h3 className="font-semibold text-gray-900 truncate text-sm sm:text-base">
										{area.name}
									</h3>
									<span className="text-xs text-gray-400 whitespace-nowrap">
										{area.weight[0]}-{area.weight[1]}%
									</span>
								</div>
								<div className="w-full sm:max-w-xs">
									<BlueprintProgressBar
										attempted={areaProgress.attempted}
										correct={areaProgress.correct}
										total={areaProgress.total}
									/>
								</div>
							</div>
							<span className="text-gray-400 text-sm shrink-0 hidden sm:inline">
								{area.groups.length} groups
							</span>
							<svg
								className={`w-5 h-5 text-gray-400 shrink-0 transition-transform ${isExpanded ? "rotate-180" : ""}`}
								fill="none"
								viewBox="0 0 24 24"
								stroke="currentColor"
							>
								<path
									strokeLinecap="round"
									strokeLinejoin="round"
									strokeWidth={2}
									d="M19 9l-7 7-7-7"
								/>
							</svg>
						</button>

						{isExpanded && (
							<div className="border-t border-gray-100">
								{area.groups.map((group) => {
									const groupKey = `${area.area}-${group.letter}`;
									const gp = progress[groupKey] ?? {
										attempted: 0,
										correct: 0,
										total: getGroupQuestions(group.questionTopics),
									};
									const lessonCount = group.lessonSlugs.length;
									const questionCount = getGroupQuestions(group.questionTopics);

									return (
										<Link
											key={group.letter}
											href={`/sections/${sectionSlug}/blueprint/${groupKey}`}
											className="flex items-center gap-3 px-4 py-3 sm:gap-4 sm:px-5 sm:py-4 hover:bg-gray-50 transition-colors border-t border-gray-50 first:border-t-0"
										>
											<span className="text-sm font-mono text-gray-400 w-6 text-center shrink-0">
												{group.letter}
											</span>
											<div className="flex-1 min-w-0">
												<p className="text-xs sm:text-sm text-gray-800 truncate">
													{group.name}
												</p>
												<div className="flex gap-3 mt-1">
													{lessonCount > 0 && (
														<span className="text-xs text-gray-400">
															{lessonCount}{" "}
															{lessonCount === 1 ? "lesson" : "lessons"}
														</span>
													)}
													{questionCount > 0 && (
														<span className="text-xs text-gray-400">
															{questionCount} questions
														</span>
													)}
												</div>
											</div>
											<div className="w-16 sm:w-24 shrink-0">
												<BlueprintProgressBar
													attempted={gp.attempted}
													correct={gp.correct}
													total={gp.total}
												/>
											</div>
											<svg
												className="w-4 h-4 text-gray-300 shrink-0"
												fill="none"
												viewBox="0 0 24 24"
												stroke="currentColor"
											>
												<path
													strokeLinecap="round"
													strokeLinejoin="round"
													strokeWidth={2}
													d="M9 5l7 7-7 7"
												/>
											</svg>
										</Link>
									);
								})}
							</div>
						)}
					</div>
				);
			})}
		</div>
	);
}
