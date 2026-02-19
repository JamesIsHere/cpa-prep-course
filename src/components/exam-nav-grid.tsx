"use client";

interface ExamNavGridProps {
	totalQuestions: number;
	currentIndex: number;
	answeredIds: Set<number>;
	flaggedIds: Set<number>;
	questionIds: number[];
	onNavigate: (index: number) => void;
}

export default function ExamNavGrid({
	totalQuestions,
	currentIndex,
	answeredIds,
	flaggedIds,
	questionIds,
	onNavigate,
}: ExamNavGridProps) {
	const answeredCount = answeredIds.size;
	const flaggedCount = flaggedIds.size;

	return (
		<div>
			<div className="grid grid-cols-10 gap-1.5 mb-3">
				{Array.from({ length: totalQuestions }, (_, i) => {
					const qid = questionIds[i];
					const isCurrent = i === currentIndex;
					const isAnswered = answeredIds.has(qid);
					const isFlagged = flaggedIds.has(qid);

					let bgClass = "bg-gray-100 text-gray-500";
					if (isAnswered) bgClass = "bg-emerald-100 text-emerald-700";

					return (
						<button
							key={i}
							onClick={() => onNavigate(i)}
							className={`relative w-8 h-8 flex items-center justify-center rounded text-xs font-medium transition-colors ${bgClass} ${
								isCurrent ? "ring-2 ring-emerald-500 ring-offset-1" : ""
							}`}
						>
							{i + 1}
							{isFlagged && (
								<span className="absolute -top-0.5 -right-0.5 w-2 h-2 bg-amber-500 rounded-full" />
							)}
						</button>
					);
				})}
			</div>
			<p className="text-xs text-gray-500">
				{answeredCount} of {totalQuestions} answered
				{flaggedCount > 0 && `, ${flaggedCount} flagged`}
			</p>
		</div>
	);
}
