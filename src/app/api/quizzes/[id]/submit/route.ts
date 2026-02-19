import { NextResponse } from "next/server";
import type { QuizAnswer, QuizQuestionFull } from "@/lib/quiz";
import { scoreQuiz } from "@/lib/quiz";
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
	const { answers } = body as { answers: QuizAnswer[] };

	if (!answers || !Array.isArray(answers) || answers.length === 0) {
		return NextResponse.json(
			{ error: "Answers are required" },
			{ status: 400 },
		);
	}

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

	// Score
	const result = scoreQuiz(answers, questions as QuizQuestionFull[]);

	// Save results
	const { error: updateError } = await supabase
		.from("quiz_attempts")
		.update({
			completed_at: new Date().toISOString(),
			score: result.score,
			answers: answers.map((a) => ({
				question_id: a.questionId,
				choice_index: a.selectedIndex,
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
