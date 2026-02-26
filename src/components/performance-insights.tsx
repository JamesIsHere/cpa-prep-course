"use client";

interface PerformanceInsightsProps {
	avgSecondsPerQ: number;
	accuracy: number;
}

export default function PerformanceInsights({
	avgSecondsPerQ,
	accuracy,
}: PerformanceInsightsProps) {
	if (avgSecondsPerQ === 0) return null;

	const minutes = Math.floor(avgSecondsPerQ / 60);
	const seconds = Math.round(avgSecondsPerQ % 60);
	
	// Pace Logic: 
	// CPA exam target is roughly 1.5 - 2 mins per MCQ.
	// Too fast: < 45 seconds (may be rushing)
	// Too slow: > 3 minutes (may be over-analyzing)
	let paceLabel = "Steady";
	let paceColor = "text-emerald-600";
	let paceDescription = "You're moving at an ideal pace for the exam.";

	if (avgSecondsPerQ < 45) {
		paceLabel = "Fast";
		paceColor = "text-amber-600";
		paceDescription = "Careful—you're moving fast. Make sure you aren't missing key details.";
	} else if (avgSecondsPerQ > 180) {
		paceLabel = "Slow";
		paceColor = "text-amber-600";
		paceDescription = "You're taking your time. Try to pick up the pace to build exam stamina.";
	}

	// Study Health Score (Simple heuristic)
	// High accuracy + good pace = 100
	const paceFactor = avgSecondsPerQ >= 45 && avgSecondsPerQ <= 180 ? 1 : 0.8;
	const healthScore = Math.round(accuracy * 100 * paceFactor);

	return (
		<div className="bg-white border border-gray-200 rounded-2xl p-6 shadow-sm">
			<h3 className="text-lg font-bold text-gray-900 mb-6">Study Insights</h3>
			
			<div className="grid grid-cols-2 gap-6 mb-8">
				<div>
					<p className="text-[10px] font-bold text-gray-400 uppercase tracking-widest mb-1">Avg. Pace</p>
					<p className="text-2xl font-bold text-gray-900">
						{minutes > 0 ? `${minutes}m ` : ""}{seconds}s
					</p>
					<p className={`text-xs font-bold ${paceColor}`}>{paceLabel}</p>
				</div>
				<div>
					<p className="text-[10px] font-bold text-gray-400 uppercase tracking-widest mb-1">Study Health</p>
					<div className="flex items-baseline gap-1">
						<p className="text-2xl font-bold text-gray-900">{healthScore}</p>
						<p className="text-xs text-gray-400">/100</p>
					</div>
					<p className="text-xs font-medium text-emerald-600">Based on pace + accuracy</p>
				</div>
			</div>

			<div className="bg-gray-50 rounded-xl p-4 border border-gray-100">
				<div className="flex gap-3">
					<span className="text-lg">💡</span>
					<p className="text-xs text-gray-600 leading-relaxed">
						<strong>Expert Tip:</strong> {paceDescription}
					</p>
				</div>
			</div>
		</div>
	);
}
