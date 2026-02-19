import { NextResponse } from "next/server";
import type { QuizAnswer, QuizQuestionFull } from "@/lib/quiz";
import { scoreExam } from "@/lib/quiz";
import { createClient } from "@/lib/supabase/server";

export async function POST(
	request: Request,
	{ params }: { params: Promise<{ id: string }> },
) {
	const { id } = await params;
	const attemptId = parseInt(id, 10);
	if (isNaN(attemptId)) {
		return NextResponse.json({ error: "Invalid attempt ID" }, { status: 400 });
	}

	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
	}

	// Verify attempt belongs to user and is not already completed
	const { data: attempt } = await supabase
		.from("exam_attempts")
		.select(
			"id, user_id, section_id, completed_at, started_at, time_limit_minutes, answers",
		)
		.eq("id", attemptId)
		.single();

	if (!attempt) {
		return NextResponse.json({ error: "Attempt not found" }, { status: 404 });
	}

	if (attempt.user_id !== user.id) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 403 });
	}

	if (attempt.completed_at) {
		return NextResponse.json(
			{ error: "Exam already submitted" },
			{ status: 409 },
		);
	}

	const body = await request.json();
	const { answers } = body as { answers: QuizAnswer[] };

	if (!answers || !Array.isArray(answers)) {
		return NextResponse.json(
			{ error: "Answers are required" },
			{ status: 400 },
		);
	}

	// Get all question IDs from the stored attempt (the full exam set)
	const storedQuestionIds = (attempt.answers as { question_id: number }[]).map(
		(a) => a.question_id,
	);

	// Fetch full questions for scoring
	const { data: questions, error: qError } = await supabase
		.from("questions")
		.select("id, stem, choices, correct_index, explanation, topic, difficulty")
		.in("id", storedQuestionIds);

	if (qError || !questions || questions.length === 0) {
		return NextResponse.json(
			{ error: "Failed to fetch questions" },
			{ status: 500 },
		);
	}

	// Build complete answer set — unanswered questions get selectedIndex -1
	const answeredMap = new Map(
		answers.map((a) => [a.questionId, a.selectedIndex]),
	);
	const completeAnswers: QuizAnswer[] = storedQuestionIds.map((qid) => ({
		questionId: qid,
		selectedIndex: answeredMap.get(qid) ?? -1,
	}));

	// Score with topic breakdown
	const result = scoreExam(completeAnswers, questions as QuizQuestionFull[]);

	// Save results
	const { error: updateError } = await supabase
		.from("exam_attempts")
		.update({
			completed_at: new Date().toISOString(),
			score: result.score,
			answers: completeAnswers.map((a) => ({
				question_id: a.questionId,
				choice_index: a.selectedIndex === -1 ? null : a.selectedIndex,
			})),
		})
		.eq("id", attemptId);

	if (updateError) {
		return NextResponse.json(
			{ error: "Failed to save results" },
			{ status: 500 },
		);
	}

	return NextResponse.json(result);
}
