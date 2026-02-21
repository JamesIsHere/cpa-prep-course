"use client";

interface BlueprintProgressBarProps {
	attempted: number;
	correct: number;
	total: number;
}

export default function BlueprintProgressBar({
	attempted,
	correct,
	total,
}: BlueprintProgressBarProps) {
	if (total === 0) return null;

	const attemptedPct = Math.round((attempted / total) * 100);
	const correctPct =
		attempted > 0 ? Math.round((correct / attempted) * 100) : 0;

	const barColor =
		attempted === 0
			? "bg-gray-200"
			: correctPct >= 75
				? "bg-emerald-500"
				: "bg-amber-400";

	return (
		<div className="flex items-center gap-2">
			<div className="flex-1 h-2 bg-gray-100 rounded-full overflow-hidden">
				<div
					className={`h-full rounded-full transition-all ${barColor}`}
					style={{ width: `${attemptedPct}%` }}
				/>
			</div>
			{attempted > 0 && (
				<span className="text-xs text-gray-400 tabular-nums whitespace-nowrap">
					{correctPct}%
				</span>
			)}
		</div>
	);
}
