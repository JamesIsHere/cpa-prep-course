import { Suspense } from "react";
import { redirect } from "next/navigation";
import { isAdmin } from "@/lib/admin";
import { getBlueprintSection } from "@/lib/blueprint-utils";
import { createClient } from "@/lib/supabase/server";
import type { ReviewQuestion, QuestionFlag } from "@/lib/quiz";
import ReviewClient from "./review-client";

export const dynamic = "force-dynamic";

export const metadata = {
	title: "Question Review — Admin",
};

const SECTIONS = [
	{ code: "aud", title: "Auditing & Attestation" },
	{ code: "far", title: "Financial Accounting & Reporting" },
	{ code: "reg", title: "Regulation" },
	{ code: "bar", title: "Business Analysis & Reporting" },
	{ code: "isc", title: "Information Systems & Controls" },
	{ code: "tcp", title: "Tax Compliance & Planning" },
];

function getTopicsForSection(sectionCode: string): string[] {
	const section = getBlueprintSection(sectionCode);
	if (!section) return [];
	const topics = new Set<string>();
	for (const area of section.areas) {
		for (const group of area.groups) {
			for (const t of group.questionTopics) {
				topics.add(t);
			}
		}
	}
	return Array.from(topics).sort();
}

interface PageProps {
	searchParams: Promise<Record<string, string | string[] | undefined>>;
}

export default async function AdminReviewPage({ searchParams }: PageProps) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user || !isAdmin(user.id)) {
		redirect("/dashboard");
	}

	const params = await searchParams;
	const section = (typeof params.section === "string" ? params.section : "") || "aud";
	const topic = typeof params.topic === "string" ? params.topic : undefined;
	const difficulty = typeof params.difficulty === "string" ? params.difficulty : undefined;
	const cognitive_level = typeof params.cognitive_level === "string" ? params.cognitive_level : undefined;
	const flagged = typeof params.flagged === "string" ? params.flagged : undefined;
	const reviewed = typeof params.reviewed === "string" ? params.reviewed : undefined;
	const cursor = typeof params.cursor === "string" ? Number(params.cursor) : undefined;
	const limit = 50;

	// Look up section
	const { data: sectionRow } = await supabase
		.from("sections")
		.select("id")
		.eq("code", section)
		.single();

	if (!sectionRow) {
		redirect("/admin/review?section=aud");
	}

	// Get total + reviewed counts
	const { count: total } = await supabase
		.from("questions")
		.select("id", { count: "exact", head: true })
		.eq("section_id", sectionRow.id);

	const { data: reviewedInSection } = await supabase
		.from("question_reviews")
		.select("question_id, questions!inner(section_id)")
		.eq("user_id", user.id)
		.eq("questions.section_id", sectionRow.id);

	const reviewedCount = reviewedInSection?.length ?? 0;

	// Build filtered ID sets
	let flaggedIds: number[] | null = null;
	let reviewedIds: number[] | null = null;

	if (flagged === "true" || flagged === "false") {
		const { data: flagRows } = await supabase
			.from("question_flags")
			.select("question_id")
			.eq("user_id", user.id)
			.is("resolved_at", null);
		flaggedIds = [...new Set((flagRows ?? []).map((r) => r.question_id))];
	}

	if (reviewed === "true" || reviewed === "false") {
		const { data: revRows } = await supabase
			.from("question_reviews")
			.select("question_id")
			.eq("user_id", user.id);
		reviewedIds = (revRows ?? []).map((r) => r.question_id);
	}

	// Main query
	let query = supabase
		.from("questions")
		.select("id, stem, choices, correct_index, explanation, topic, difficulty, cognitive_level")
		.eq("section_id", sectionRow.id)
		.order("id", { ascending: true })
		.limit(limit + 1);

	if (cursor) {
		query = query.gt("id", cursor);
	}

	if (topic) query = query.eq("topic", topic);
	if (difficulty) query = query.eq("difficulty", difficulty);
	if (cognitive_level) query = query.eq("cognitive_level", Number(cognitive_level));

	if (flagged === "true" && flaggedIds) {
		if (flaggedIds.length === 0) {
			return renderPage([], false, total ?? 0, reviewedCount, section);
		}
		query = query.in("id", flaggedIds);
	} else if (flagged === "false" && flaggedIds && flaggedIds.length > 0) {
		query = query.not("id", "in", `(${flaggedIds.join(",")})`);
	}

	if (reviewed === "true" && reviewedIds) {
		if (reviewedIds.length === 0) {
			return renderPage([], false, total ?? 0, reviewedCount, section);
		}
		query = query.in("id", reviewedIds);
	} else if (reviewed === "false" && reviewedIds && reviewedIds.length > 0) {
		query = query.not("id", "in", `(${reviewedIds.join(",")})`);
	}

	const { data: rows } = await query;

	const hasMore = (rows?.length ?? 0) > limit;
	const questionRows = hasMore ? rows!.slice(0, limit) : (rows ?? []);
	const questionIds = questionRows.map((q) => q.id);

	// Batch-fetch flags
	const { data: flagRows } = await supabase
		.from("question_flags")
		.select("question_id, flag_type, notes, created_at")
		.eq("user_id", user.id)
		.in("question_id", questionIds.length > 0 ? questionIds : [0])
		.is("resolved_at", null);

	const flagsByQuestion = new Map<number, QuestionFlag[]>();
	for (const f of flagRows ?? []) {
		const arr = flagsByQuestion.get(f.question_id) ?? [];
		arr.push({ flag_type: f.flag_type, notes: f.notes, created_at: f.created_at });
		flagsByQuestion.set(f.question_id, arr);
	}

	// Batch-fetch reviewed status
	const { data: revRows } = await supabase
		.from("question_reviews")
		.select("question_id")
		.eq("user_id", user.id)
		.in("question_id", questionIds.length > 0 ? questionIds : [0]);

	const reviewedSet = new Set((revRows ?? []).map((r) => r.question_id));

	const questions: ReviewQuestion[] = questionRows.map((q) => ({
		id: q.id,
		stem: q.stem,
		choices: q.choices,
		correct_index: q.correct_index,
		explanation: q.explanation,
		topic: q.topic,
		difficulty: q.difficulty,
		cognitive_level: q.cognitive_level,
		flags: flagsByQuestion.get(q.id) ?? [],
		reviewed: reviewedSet.has(q.id),
	}));

	return renderPage(questions, hasMore, total ?? 0, reviewedCount, section);

	function renderPage(
		questions: ReviewQuestion[],
		hasMore: boolean,
		total: number,
		reviewed: number,
		currentSection: string,
	) {
		const topics = getTopicsForSection(currentSection);
		return (
			<Suspense>
				<ReviewClient
					initialQuestions={questions}
					initialHasMore={hasMore}
					initialTotal={total}
					initialReviewed={reviewed}
					sections={SECTIONS}
					topics={topics}
					currentSection={currentSection}
				/>
			</Suspense>
		);
	}
}
