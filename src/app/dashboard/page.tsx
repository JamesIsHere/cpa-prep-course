import type { Metadata } from "next";
import DashboardCharts from "@/components/dashboard-charts";
import { DownloadStudyGuide } from "@/components/download-study-guide";
import SectionProgressCard from "@/components/section-progress-card";
import type { SectionProgress } from "@/components/section-progress-card";
import WeakTopicCard from "@/components/weak-topic-card";
import { StudyPipeline } from "@/components/study-pipeline";
import { cpaBlueprint, sectionQuestionTotals } from "@/lib/blueprint";
import { computeReadiness } from "@/lib/readiness";
import type { ReadinessResult } from "@/lib/readiness";
import { sections } from "@/lib/sections";
import { createClient } from "@/lib/supabase/server";
import { analyzeTopicPerformance } from "@/lib/weak-topics";
import type { TopicAnalysis } from "@/lib/weak-topics";

export interface ScoreTrendPoint {
	date: string; // ISO date string
	score: number; // percentage 0–100
	type: "quiz" | "exam";
}

export const metadata: Metadata = {
	title: "Dashboard",
};

export default async function DashboardPage() {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	// Pre-compute blueprint group counts and questionTopics per section
	const blueprintMeta = new Map<
		string,
		{ groupCount: number; topicsByGroup: string[][] }
	>();
	for (const bp of cpaBlueprint) {
		const topicsByGroup: string[][] = [];
		for (const area of bp.areas) {
			for (const group of area.groups) {
				topicsByGroup.push(group.questionTopics);
			}
		}
		blueprintMeta.set(bp.code, {
			groupCount: topicsByGroup.length,
			topicsByGroup,
		});
	}

	const progressMap: Record<string, SectionProgress> = {};
	const readinessMap: Record<string, ReadinessResult> = {};
	const weakTopicsMap: Record<string, TopicAnalysis> = {};
	const trendMap: Record<string, ScoreTrendPoint[]> = {};

	// Initialize empty progress for all sections (so empty state has totals)
	for (const section of sections) {
		const meta = blueprintMeta.get(section.code);
		progressMap[section.code] = {
			questionsPracticed: 0,
			totalCorrect: 0,
			totalQuestions: sectionQuestionTotals[section.code] ?? 0,
			blueprintGroupsTouched: 0,
			blueprintGroupsTotal: meta?.groupCount ?? 0,
			recentScores: [],
		};
		trendMap[section.code] = [];
	}

	if (user) {
		// Map section_id to section code
		const { data: dbSections } = await supabase
			.from("sections")
			.select("id, code");

		const idToCode = new Map(
			(dbSections ?? []).map((s: { id: number; code: string }) => [
				s.id,
				s.code,
			]),
		);

		// Fetch all completed quiz attempts (no limit — need full aggregates)
		const { data: quizAttempts } = await supabase
			.from("quiz_attempts")
			.select("section_id, score, total, topic_scores, completed_at")
			.eq("user_id", user.id)
			.not("completed_at", "is", null)
			.order("completed_at", { ascending: false });

		// Fetch all completed exam attempts
		const { data: examAttempts } = await supabase
			.from("exam_attempts")
			.select("section_id, score, total, completed_at")
			.eq("user_id", user.id)
			.not("completed_at", "is", null)
			.order("completed_at", { ascending: false });

		// Aggregate per-section quiz data
		const topicsBySection = new Map<string, Set<string>>();
		const recentBySection = new Map<
			string,
			{ score: number; total: number }[]
		>();
		const topicScoresBySection = new Map<
			string,
			{ topic: string; correct: number; total: number }[][]
		>();

		if (quizAttempts) {
			for (const a of quizAttempts) {
				const code = idToCode.get(a.section_id);
				if (!code || !progressMap[code]) continue;

				progressMap[code].questionsPracticed += a.total;
				progressMap[code].totalCorrect += a.score;

				// Collect recent scores (first 3 per section, already ordered desc)
				if (!recentBySection.has(code)) recentBySection.set(code, []);
				const recent = recentBySection.get(code)!;
				if (recent.length < 3) {
					recent.push({ score: a.score, total: a.total });
				}

				// Collect practiced topics for blueprint coverage
				if (a.topic_scores && Array.isArray(a.topic_scores)) {
					if (!topicsBySection.has(code))
						topicsBySection.set(code, new Set());
					const topicSet = topicsBySection.get(code)!;
					for (const ts of a.topic_scores as { topic: string }[]) {
						topicSet.add(ts.topic);
					}

					// Collect topic_scores arrays for weak topic analysis
					if (!topicScoresBySection.has(code))
						topicScoresBySection.set(code, []);
					topicScoresBySection
						.get(code)!
						.push(
							a.topic_scores as {
								topic: string;
								correct: number;
								total: number;
							}[],
						);
				}

				// Build trend data (quiz attempts, capped at 50 per section)
				if (a.completed_at && trendMap[code].length < 50) {
					trendMap[code].push({
						date: a.completed_at,
						score: Math.round((a.score / a.total) * 100),
						type: "quiz",
					});
				}
			}
		}

		// Aggregate exam attempts into totals
		if (examAttempts) {
			for (const a of examAttempts) {
				const code = idToCode.get(a.section_id);
				if (!code || !progressMap[code]) continue;

				progressMap[code].questionsPracticed += a.total;
				progressMap[code].totalCorrect += a.score;

				// Build trend data (exam attempts)
				if (a.completed_at && trendMap[code].length < 50) {
					trendMap[code].push({
						date: a.completed_at,
						score: Math.round((a.score / a.total) * 100),
						type: "exam",
					});
				}
			}
		}

		// Compute blueprint groups touched per section
		for (const [code, topicSet] of topicsBySection) {
			const meta = blueprintMeta.get(code);
			if (!meta) continue;
			let touched = 0;
			for (const groupTopics of meta.topicsByGroup) {
				if (groupTopics.some((t) => topicSet.has(t))) {
					touched++;
				}
			}
			progressMap[code].blueprintGroupsTouched = touched;
		}

		// Assign recent scores
		for (const [code, recent] of recentBySection) {
			if (progressMap[code]) {
				progressMap[code].recentScores = recent;
			}
		}

		// Compute readiness + weak topics per section
		for (const section of sections) {
			const progress = progressMap[section.code];
			readinessMap[section.code] = computeReadiness(progress);

			const topicArrays = topicScoresBySection.get(section.code) ?? [];
			weakTopicsMap[section.code] = analyzeTopicPerformance(topicArrays);

			// Sort trend data chronologically (was desc from query)
			trendMap[section.code].reverse();
		}
	}

	// Check if there are any weak topics to display
	const hasWeakTopics = sections.some(
		(s) => (weakTopicsMap[s.code]?.weakTopics.length ?? 0) > 0,
	);

	// Check if there are any trend data points
	const hasTrends = sections.some(
		(s) => (trendMap[s.code]?.length ?? 0) >= 2,
	);

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<h1 className="text-3xl font-bold text-gray-900 mb-2">Dashboard</h1>
			<p className="text-gray-500 mb-8">
				Welcome back{user?.email ? `, ${user.email}` : ""}. Pick up where you
				left off.
			</p>

			<div className="mb-10 bg-gray-50 rounded-xl border border-gray-200 p-6">
				<p className="text-sm font-semibold text-gray-700 mb-4 text-center">
					Your study pipeline
				</p>
				<StudyPipeline variant="full" />
			</div>

			<h2 className="text-lg font-semibold text-gray-800 mb-4">
				Your Sections
			</h2>
			<div className="grid sm:grid-cols-2 gap-6">
				{sections.map((section) => (
					<SectionProgressCard
						key={section.code}
						section={section}
						progress={progressMap[section.code] ?? null}
						readiness={readinessMap[section.code]}
					/>
				))}
			</div>

			{hasWeakTopics && (
				<div className="mt-10">
					<h2 className="text-lg font-semibold text-gray-800 mb-4">
						Focus Areas
					</h2>
					<p className="text-gray-500 text-sm mb-4">
						Topics where you scored lowest. Target these for your next practice
						sessions.
					</p>
					<div className="grid sm:grid-cols-2 gap-4">
						{sections.map((section) => (
							<WeakTopicCard
								key={section.code}
								sectionCode={section.code}
								sectionSlug={section.slug}
								sectionTitle={section.title}
								weakTopics={
									weakTopicsMap[section.code]?.weakTopics ?? []
								}
							/>
						))}
					</div>
				</div>
			)}

			{hasTrends && (
				<div className="mt-10">
					<h2 className="text-lg font-semibold text-gray-800 mb-4">
						Score Trends
					</h2>
					<p className="text-gray-500 text-sm mb-4">
						Your quiz and exam scores over time.
					</p>
					<DashboardCharts
						sections={sections.map((s) => ({
							code: s.code,
							title: s.title,
						}))}
						trendMap={trendMap}
					/>
				</div>
			)}

			<div className="mt-12">
				<h2 className="text-lg font-semibold text-gray-800 mb-4">
					Study Frameworks
				</h2>
				<p className="text-gray-500 text-sm mb-4">
					Downloadable PDF guides with concept maps, decision trees, formulas,
					and mnemonics for each section.
				</p>
				<div className="grid sm:grid-cols-3 gap-4">
					{sections.map((section) => (
						<div
							key={section.code}
							className="border border-gray-200 rounded-lg p-4 flex items-center justify-between"
						>
							<span className="text-sm font-medium text-gray-900">
								{section.code.toUpperCase()}
							</span>
							<DownloadStudyGuide sectionSlug={section.slug} />
						</div>
					))}
				</div>
			</div>
		</main>
	);
}
