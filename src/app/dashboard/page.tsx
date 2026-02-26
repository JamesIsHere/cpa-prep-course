import type { Metadata } from "next";
import { redirect } from "next/navigation";
import DashboardCharts from "@/components/dashboard-charts";
import DailyGoalsCard from "@/components/daily-goals-card";
import { DownloadStudyGuide } from "@/components/download-study-guide";
import ExamCountdown from "@/components/exam-countdown";
import PerformanceInsights from "@/components/performance-insights";
import SectionProgressCard from "@/components/section-progress-card";
import type { SectionProgress } from "@/components/section-progress-card";
import WeakTopicCard from "@/components/weak-topic-card";
import { StudyPipeline } from "@/components/study-pipeline";
import { cpaBlueprint, sectionQuestionTotals } from "@/lib/blueprint";
import { getBlueprintSection, getNextBestStep } from "@/lib/blueprint-utils";
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

	let activeSection = "aud";
	let targetExamDate: string | null = null;
	if (user) {
		const { data: profile } = await supabase
			.from("profiles")
			.select("active_section, onboarding_completed, target_exam_date")
			.eq("id", user.id)
			.single();
		
		if (profile && !profile.onboarding_completed) {
			redirect("/onboarding");
		}

		if (profile?.active_section) {
			activeSection = profile.active_section;
		}
		targetExamDate = profile?.target_exam_date || null;
	}

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

	const activeSectionData = sections.find((s) => s.code === activeSection)!;
	const activeBlueprint = getBlueprintSection(activeSection)!;
	const nextStep = getNextBestStep(
		activeSection,
		activeSectionData.slug,
		progressMap[activeSection],
		weakTopicsMap[activeSection]?.weakTopics || [],
		activeBlueprint,
	);

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
			<div className="mb-10">
				<h1 className="text-3xl font-bold text-gray-900 mb-2">Dashboard</h1>
				<p className="text-gray-500">
					Welcome back{user?.email ? `, ${user.email.split("@")[0]}` : ""}. 
					You are currently focused on <span className="font-bold text-emerald-700">{sections.find(s => s.code === activeSection)?.title}</span>.
				</p>
			</div>

			<div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-10">
				<div className="md:col-span-2 space-y-6">
					<DailyGoalsCard />
					{targetExamDate && (
						<ExamCountdown 
							targetDate={targetExamDate} 
							sectionTitle={sections.find(s => s.code === activeSection)?.title || ""} 
						/>
					)}
				</div>
				<div className="bg-white rounded-2xl border-2 border-emerald-600 p-6 flex flex-col justify-center relative overflow-hidden shadow-md">
					<div className="absolute top-0 right-0 p-2 opacity-10">
						<span className="text-6xl font-black">?</span>
					</div>
					<div className="relative z-10">
						<span className="text-[10px] font-black bg-emerald-100 text-emerald-700 px-2 py-0.5 rounded uppercase tracking-wider mb-2 inline-block">
							Recommended Next Step
						</span>
						<h3 className="text-xl font-bold text-gray-900 mb-1">{nextStep.title}</h3>
						<p className="text-xs text-gray-500 mb-4 leading-relaxed">
							{nextStep.description}
						</p>
						<Link 
							href={nextStep.link}
							className="bg-emerald-600 text-white w-full py-2.5 rounded-xl font-bold text-sm text-center hover:bg-emerald-700 transition-all inline-block shadow-sm"
						>
							{nextStep.type === "lesson" ? "Resume Lesson" : nextStep.type === "quiz" ? "Start Quiz" : "Take Exam"} &rarr;
						</Link>
					</div>
				</div>
			</div>

			<div className="mb-10">
				<h2 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
					<span className="w-2 h-6 bg-emerald-600 rounded-full"></span>
					Active Focus: {sections.find(s => s.code === activeSection)?.title}
				</h2>
				<SectionProgressCard
					section={sections.find((s) => s.code === activeSection)!}
					progress={progressMap[activeSection] ?? null}
					readiness={readinessMap[activeSection]}
				/>
			</div>

			<div className="grid grid-cols-1 md:grid-cols-2 gap-8 mt-10">
				{/* Performance Insights for Active Section */}
				{(stats as any)?.sections[activeSection]?.avg_seconds_per_q > 0 && (
					<PerformanceInsights 
						avgSecondsPerQ={(stats as any).sections[activeSection].avg_seconds_per_q}
						accuracy={progressMap[activeSection].totalCorrect / Math.max(1, progressMap[activeSection].questionsPracticed)}
					/>
				)}

				{/* Focus Areas (Weak Topics) for Active Section */}
				{weakTopicsMap[activeSection]?.weakTopics.length > 0 && (
					<div>
						<h2 className="text-lg font-bold text-gray-900 mb-4">Focus Areas</h2>
						<WeakTopicCard
							sectionCode={activeSection}
							sectionSlug={sections.find((s) => s.code === activeSection)!.slug}
							sectionTitle={sections.find((s) => s.code === activeSection)!.title}
							weakTopics={weakTopicsMap[activeSection].weakTopics}
						/>
					</div>
				)}
			</div>

			{/* Score Trends for Active Section */}
			{trendMap[activeSection]?.length >= 2 && (
					<div>
						<h2 className="text-lg font-bold text-gray-900 mb-4">Score Trends</h2>
						<DashboardCharts
							sections={[{
								code: activeSection,
								title: sections.find(s => s.code === activeSection)!.title
							}]}
							trendMap={{ [activeSection]: trendMap[activeSection] }}
						/>
					</div>
				)}

			{/* Secondary Actions */}
			<div className="mt-16 pt-8 border-t border-gray-100">
				<h2 className="text-sm font-bold text-gray-400 uppercase tracking-widest mb-6">
					Resources & Downloads
				</h2>
				<div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-6 gap-4">
					{sections.map((section) => (
						<div
							key={section.code}
							className={`border rounded-xl p-3 flex flex-col items-center gap-2 transition-all ${
								section.code === activeSection 
									? "bg-emerald-50 border-emerald-200" 
									: "bg-white border-gray-100 hover:border-gray-200"
							}`}
						>
							<span className={`text-[10px] font-bold px-1.5 py-0.5 rounded ${
								section.code === activeSection ? "bg-emerald-600 text-white" : "bg-gray-100 text-gray-500"
							}`}>
								{section.code.toUpperCase()}
							</span>
							<DownloadStudyGuide sectionSlug={section.slug} variant="icon" />
						</div>
					))}
				</div>
			</div>
		</main>
	);
}
