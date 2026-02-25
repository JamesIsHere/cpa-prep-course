"use client";

import { useState } from "react";
import type { ScoreTrendPoint } from "@/app/dashboard/page";
import ScoreTrendChart from "./score-trend-chart";

interface DashboardChartsProps {
	sections: { code: string; title: string }[];
	trendMap: Record<string, ScoreTrendPoint[]>;
}

export default function DashboardCharts({
	sections,
	trendMap,
}: DashboardChartsProps) {
	// Default to first section with data
	const defaultSection =
		sections.find((s) => (trendMap[s.code]?.length ?? 0) >= 2)?.code ??
		sections[0]?.code;
	const [activeSection, setActiveSection] = useState(defaultSection);

	return (
		<div className="border border-gray-200 rounded-xl p-5">
			<div className="flex gap-2 mb-4 overflow-x-auto">
				{sections.map((s) => {
					const hasData = (trendMap[s.code]?.length ?? 0) >= 2;
					return (
						<button
							key={s.code}
							onClick={() => setActiveSection(s.code)}
							disabled={!hasData}
							className={`px-3 py-1.5 rounded-lg text-xs font-medium transition-colors whitespace-nowrap ${
								activeSection === s.code
									? "bg-emerald-600 text-white"
									: hasData
										? "border border-gray-200 text-gray-600 hover:bg-gray-50"
										: "text-gray-300 cursor-not-allowed"
							}`}
						>
							{s.code.toUpperCase()}
						</button>
					);
				})}
			</div>
			<ScoreTrendChart data={trendMap[activeSection] ?? []} />
		</div>
	);
}
