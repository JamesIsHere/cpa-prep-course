import Link from "next/link";
import type { Section } from "@/lib/sections";

export interface SectionProgress {
	questionsPracticed: number;
	totalCorrect: number;
	totalQuestions: number;
	blueprintGroupsTouched: number;
	blueprintGroupsTotal: number;
	recentScores: { score: number; total: number }[];
}

export default function SectionProgressCard({
	section,
	progress,
}: {
	section: Section;
	progress: SectionProgress | null;
}) {
	const hasProgress = progress && progress.questionsPracticed > 0;

	return (
		<div className="border border-gray-200 rounded-xl p-6 hover:border-emerald-500 hover:shadow-md transition-all">
			<div className="flex items-center justify-between mb-4">
				<div className="flex items-center gap-3">
					<span className="bg-emerald-100 text-emerald-700 text-sm font-bold px-3 py-1 rounded-full">
						{section.code.toUpperCase()}
					</span>
					<h3 className="text-lg font-semibold text-gray-900">
						{section.title}
					</h3>
				</div>
				<Link
					href={`/sections/${section.slug}`}
					className="text-sm text-emerald-600 hover:text-emerald-700 font-medium whitespace-nowrap"
				>
					Study &rarr;
				</Link>
			</div>

			{hasProgress ? (
				<>
					<div className="grid grid-cols-3 gap-4 mb-4">
						<QuestionsMetric
							practiced={progress.questionsPracticed}
							total={progress.totalQuestions}
						/>
						<ScoreMetric
							correct={progress.totalCorrect}
							practiced={progress.questionsPracticed}
						/>
						<CoverageMetric
							touched={progress.blueprintGroupsTouched}
							total={progress.blueprintGroupsTotal}
						/>
					</div>

					{progress.recentScores.length > 0 && (
						<div className="text-sm text-gray-500 border-t border-gray-100 pt-3">
							<span className="text-gray-400 mr-2">Recent:</span>
							{progress.recentScores.map((s, i) => {
								const pct = Math.round((s.score / s.total) * 100);
								const passed = pct >= 75;
								return (
									<span key={i}>
										{i > 0 && (
											<span className="text-gray-300 mx-1">&middot;</span>
										)}
										<span
											className={
												passed ? "text-emerald-600" : "text-red-600"
											}
										>
											{pct}%
										</span>
										<span className="text-gray-400 ml-0.5">
											({s.score}/{s.total})
										</span>
									</span>
								);
							})}
						</div>
					)}
				</>
			) : (
				<p className="text-gray-400 text-sm">
					No practice yet &mdash; {section.lessons.length} lessons &middot;{" "}
					{progress?.totalQuestions.toLocaleString() ?? 0} questions available
				</p>
			)}
		</div>
	);
}

function ProgressBar({
	value,
	max,
	color = "bg-emerald-500",
}: {
	value: number;
	max: number;
	color?: string;
}) {
	const pct = max > 0 ? Math.min((value / max) * 100, 100) : 0;
	return (
		<div className="w-full h-2 bg-gray-100 rounded-full overflow-hidden">
			<div
				className={`h-full rounded-full ${color}`}
				style={{ width: `${pct}%` }}
			/>
		</div>
	);
}

function QuestionsMetric({
	practiced,
	total,
}: {
	practiced: number;
	total: number;
}) {
	return (
		<div>
			<p className="text-xs text-gray-400 mb-1">Questions Practiced</p>
			<p className="text-lg font-bold text-gray-900">
				{practiced.toLocaleString()}
			</p>
			<ProgressBar value={practiced} max={total} />
			<p className="text-xs text-gray-400 mt-1">
				of {total.toLocaleString()}
			</p>
		</div>
	);
}

function ScoreMetric({
	correct,
	practiced,
}: {
	correct: number;
	practiced: number;
}) {
	const pct = practiced > 0 ? Math.round((correct / practiced) * 100) : 0;
	const color =
		pct >= 75
			? "text-emerald-600"
			: pct >= 50
				? "text-amber-600"
				: "text-red-600";
	const barColor =
		pct >= 75
			? "bg-emerald-500"
			: pct >= 50
				? "bg-amber-500"
				: "bg-red-500";

	return (
		<div>
			<p className="text-xs text-gray-400 mb-1">Avg Score</p>
			<p className={`text-lg font-bold ${color}`}>{pct}%</p>
			<ProgressBar value={pct} max={100} color={barColor} />
		</div>
	);
}

function CoverageMetric({
	touched,
	total,
}: {
	touched: number;
	total: number;
}) {
	return (
		<div>
			<p className="text-xs text-gray-400 mb-1">Blueprint Coverage</p>
			<p className="text-lg font-bold text-gray-900">
				{touched}/{total}
			</p>
			<ProgressBar value={touched} max={total} />
			<p className="text-xs text-gray-400 mt-1">groups</p>
		</div>
	);
}
