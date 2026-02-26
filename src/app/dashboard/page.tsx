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
		const { data: stats } = (await supabase.rpc("get_user_dashboard_stats", {
			p_user_id: user.id,
		})) as { data: any };

		if (stats) {
			const {
				sections: sectionStats,
				trend_data,
				topic_performance,
			} = stats as {
				sections: Record<
					string,
					{
						total_correct: number;
						total_practiced: number;
						practiced_topics: string[];
						recent_scores: { score: number; total: number }[];
					}
				>;
				trend_data: {
					section_code: string;
					date: string;
					score: number;
					type: "quiz" | "exam";
				}[];
				topic_performance: {
					section_code: string;
					topic: string;
					correct: number;
					total: number;
				}[];
			};

			for (const section of sections) {
				const sData = sectionStats[section.code];
				if (!sData) continue;

				const prog = progressMap[section.code];
				prog.questionsPracticed = sData.total_practiced;
				prog.totalCorrect = sData.total_correct;
				prog.recentScores = sData.recent_scores;

				// Compute blueprint groups touched
				const meta = blueprintMeta.get(section.code);
				if (meta) {
					const topicSet = new Set(sData.practiced_topics);
					let touched = 0;
					for (const groupTopics of meta.topicsByGroup) {
						if (groupTopics.some((t) => topicSet.has(t))) {
							touched++;
						}
					}
					prog.blueprintGroupsTouched = touched;
				}

				// Compute readiness
				readinessMap[section.code] = computeReadiness(prog);

				// Analyze weak topics
				const sectionTopics = topic_performance
					.filter((tp) => tp.section_code === section.code)
					.map((tp) => ({
						topic: tp.topic,
						correct: tp.correct,
						total: tp.total,
					}));
				weakTopicsMap[section.code] = analyzeTopicPerformance([sectionTopics]);
			}

			// Populate trend map (reverse order handled in RPC/Query)
			if (trend_data) {
				for (const t of trend_data) {
					if (trendMap[t.section_code]) {
						trendMap[t.section_code].push({
							date: t.date,
							score: t.score,
							type: t.type,
						});
					}
				}
				// Sort chronological for chart
				for (const code in trendMap) {
					trendMap[code].sort(
						(a, b) =>
							new Date(a.date).getTime() - new Date(b.date).getTime(),
					);
				}
			}
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
