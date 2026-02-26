import { NextResponse } from "next/server";
import type { QuizQuestionFull } from "@/lib/quiz";
import { scoreExam } from "@/lib/quiz";
import { createClient } from "@/lib/supabase/server";
import { submitQuizSchema } from "@/lib/schemas";

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
		.from("quiz_attempts")
		.select("id, user_id, section_id, completed_at")
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
			{ error: "Quiz already submitted" },
			{ status: 409 },
		);
	}

	const body = await request.json();
	const validation = submitQuizSchema.safeParse(body);

	if (!validation.success) {
		return NextResponse.json(
			{ error: "Invalid submission data", details: validation.error.format() },
			{ status: 400 },
		);
	}

	const { answers, durationSeconds } = validation.data;

	// Fetch full questions for scoring
	const questionIds = answers.map((a) => a.questionId);
	const { data: questions, error: qError } = await supabase
		.from("questions")
		.select("id, stem, choices, correct_index, explanation, topic, difficulty")
		.in("id", questionIds);

	if (qError || !questions || questions.length === 0) {
		return NextResponse.json(
			{ error: "Failed to fetch questions" },
			{ status: 500 },
		);
	}

	// Score with topic breakdown
	const result = scoreExam(answers, questions as QuizQuestionFull[]);

	// Save results with topic scores
	const { error: updateError } = await supabase
		.from("quiz_attempts")
		.update({
			completed_at: new Date().toISOString(),
			score: result.score,
			answers: answers.map((a) => ({
				question_id: a.questionId,
				choice_index: a.selectedIndex,
			})),
			topic_scores: result.topicScores,
			duration_seconds: durationSeconds,
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
