"use client";

interface ExamCountdownProps {
	targetDate: string;
	sectionTitle: string;
}

export default function ExamCountdown({ targetDate, sectionTitle }: ExamCountdownProps) {
	const target = new Date(targetDate);
	const today = new Date();
	
	// Reset times to midnight for clean day calculation
	target.setHours(0, 0, 0, 0);
	today.setHours(0, 0, 0, 0);

	const diffTime = target.getTime() - today.getTime();
	const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

	if (diffDays < 0) {
		return (
			<div className="bg-amber-50 border border-amber-200 rounded-2xl p-4 text-center">
				<p className="text-xs font-bold text-amber-800 uppercase tracking-widest">Exam Date Passed</p>
				<p className="text-sm text-amber-700">Good luck on your {sectionTitle} exam!</p>
			</div>
		);
	}

	return (
		<div className="bg-gray-900 border border-gray-800 rounded-2xl p-6 shadow-xl relative overflow-hidden group">
			{/* Decorative background elements */}
			<div className="absolute top-0 right-0 w-32 h-32 bg-emerald-500/10 rounded-full -mr-16 -mt-16 blur-3xl transition-all group-hover:bg-emerald-500/20" />
			
			<div className="relative z-10 flex items-center justify-between">
				<div>
					<p className="text-[10px] font-black text-emerald-500 uppercase tracking-[0.2em] mb-1">Mission Countdown</p>
					<h3 className="text-white font-bold">{sectionTitle} Exam</h3>
				</div>
				<div className="text-right">
					<div className="flex items-baseline justify-end gap-1">
						<span className="text-4xl font-black text-white tabular-nums tracking-tighter">
							{diffDays}
						</span>
						<span className="text-xs font-bold text-gray-400 uppercase tracking-wider">Days</span>
					</div>
					<p className="text-[10px] text-gray-500 font-medium">{target.toLocaleDateString(undefined, { month: 'short', day: 'numeric', year: 'numeric' })}</p>
				</div>
			</div>

			<div className="mt-4 h-1 bg-gray-800 rounded-full overflow-hidden">
				<div 
					className="h-full bg-emerald-500 transition-all duration-1000" 
					style={{ width: `${Math.max(5, 100 - (diffDays / 90) * 100)}%` }} // 90 day study window visual
				/>
			</div>
		</div>
	);
}
