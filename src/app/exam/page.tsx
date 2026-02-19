import type { Metadata } from "next";
import Link from "next/link";
import Paywall from "@/components/paywall";
import { sections } from "@/lib/sections";
import { createClient } from "@/lib/supabase/server";
import ExamConfigClient from "./exam-config-client";

export const metadata: Metadata = {
	title: "Practice Exam — CPA Prep Course",
};

export default async function ExamPage({
	searchParams,
}: {
	searchParams: Promise<{ section?: string }>;
}) {
	const { section: preselected } = await searchParams;

	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) {
		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<h1 className="text-3xl font-bold text-gray-900 mb-6">Practice Exam</h1>
				<Paywall />
			</main>
		);
	}

	const { data: profile } = await supabase
		.from("profiles")
		.select("subscription_status")
		.eq("id", user.id)
		.single();

	if (profile?.subscription_status !== "active") {
		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<h1 className="text-3xl font-bold text-gray-900 mb-6">Practice Exam</h1>
				<Paywall />
			</main>
		);
	}

	// Check for in-progress exam
	const { data: inProgress } = await supabase
		.from("exam_attempts")
		.select("id, section_id, started_at, time_limit_minutes")
		.eq("user_id", user.id)
		.is("completed_at", null)
		.limit(1);

	// Fetch section names for mapping
	const { data: dbSections } = await supabase
		.from("sections")
		.select("id, code");

	const idToCode = new Map(
		(dbSections ?? []).map((s: { id: number; code: string }) => [s.id, s.code]),
	);

	const activeExam =
		inProgress && inProgress.length > 0
			? {
					id: inProgress[0].id,
					sectionCode: idToCode.get(inProgress[0].section_id) ?? "",
					startedAt: inProgress[0].started_at,
					timeLimitMinutes: inProgress[0].time_limit_minutes,
				}
			: null;

	// Fetch recent completed exams
	const { data: recentExams } = await supabase
		.from("exam_attempts")
		.select("id, section_id, score, total, completed_at")
		.eq("user_id", user.id)
		.not("completed_at", "is", null)
		.order("completed_at", { ascending: false })
		.limit(10);

	const recentAttempts = (recentExams ?? []).map(
		(a: {
			id: number;
			section_id: number;
			score: number;
			total: number;
			completed_at: string;
		}) => ({
			id: a.id,
			sectionCode: idToCode.get(a.section_id) ?? "",
			score: a.score,
			total: a.total,
			completedAt: a.completed_at,
		}),
	);

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<Link
				href="/dashboard"
				className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
			>
				&larr; Dashboard
			</Link>
			<h1 className="text-3xl font-bold text-gray-900 mb-2">Practice Exam</h1>
			<p className="text-gray-500 mb-8">
				Full-length timed exam using all questions for a section. 4 hours, just
				like the real CPA exam.
			</p>
			<ExamConfigClient
				sections={sections.map((s) => ({ code: s.code, title: s.title }))}
				activeExam={activeExam}
				recentAttempts={recentAttempts}
				preselectedSection={preselected ?? null}
			/>
		</main>
	);
}
