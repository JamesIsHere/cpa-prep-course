import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function GET(
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

	// Fetch attempt
	const { data: attempt, error: attemptError } = await supabase
		.from("quiz_attempts")
		.select("*")
		.eq("id", attemptId)
		.single();

	if (attemptError || !attempt) {
		return NextResponse.json({ error: "Attempt not found" }, { status: 404 });
	}

	if (attempt.user_id !== user.id) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 403 });
	}

	if (!attempt.completed_at) {
		return NextResponse.json(
			{ error: "Quiz not yet completed" },
			{ status: 400 },
		);
	}

	// Fetch questions for this attempt
	const storedAnswers = attempt.answers as {
		question_id: number;
		choice_index: number | null;
	}[];
	const questionIds = storedAnswers.map((a) => a.question_id);

	const { data: questions, error: qError } = await supabase
		.from("questions")
		.select("id, stem, choices, correct_index, explanation, topic, difficulty")
		.in("id", questionIds);

	if (qError || !questions) {
		return NextResponse.json(
			{ error: "Failed to fetch questions" },
			{ status: 500 },
		);
	}

	// Build result object
	const questionMap = new Map(questions.map((q) => [q.id, q]));
	const scoredQuestions = storedAnswers.map((a) => {
		const q = questionMap.get(a.question_id);
		if (!q) return null;
		const selectedIndex = a.choice_index ?? -1;
		return {
			id: q.id,
			stem: q.stem,
			choices: q.choices as string[],
			selectedIndex,
			correctIndex: q.correct_index,
			explanation: q.explanation ?? "",
			correct: selectedIndex === q.correct_index,
		};
	}).filter(Boolean);

	return NextResponse.json({
		score: attempt.score,
		total: attempt.total,
		questions: scoredQuestions,
		topicScores: attempt.topic_scores,
	});
}
