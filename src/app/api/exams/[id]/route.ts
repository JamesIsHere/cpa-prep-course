import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function GET(
	_request: Request,
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
	const { data: attempt } = await supabase
		.from("exam_attempts")
		.select(
			"id, user_id, section_id, started_at, completed_at, time_limit_minutes, score, total, answers",
		)
		.eq("id", attemptId)
		.single();

	if (!attempt) {
		return NextResponse.json({ error: "Attempt not found" }, { status: 404 });
	}

	if (attempt.user_id !== user.id) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 403 });
	}

	// If already completed, return status + score
	if (attempt.completed_at) {
		return NextResponse.json({
			status: "completed",
			score: attempt.score,
			total: attempt.total,
			completedAt: attempt.completed_at,
		});
	}

	// Check if timer has expired
	const startedAt = new Date(attempt.started_at).getTime();
	const limitMs = attempt.time_limit_minutes * 60 * 1000;
	const now = Date.now();

	if (now - startedAt >= limitMs) {
		// Auto-expire: mark as completed with score 0
		await supabase
			.from("exam_attempts")
			.update({
				completed_at: new Date().toISOString(),
				score: 0,
			})
			.eq("id", attemptId);

		return NextResponse.json({
			status: "expired",
			score: 0,
			total: attempt.total,
		});
	}

	// Still in progress — fetch questions for the stored question IDs
	const questionIds = (attempt.answers as { question_id: number }[]).map(
		(a) => a.question_id,
	);

	const { data: questions } = await supabase
		.from("questions")
		.select("id, stem, choices")
		.in("id", questionIds);

	if (!questions) {
		return NextResponse.json(
			{ error: "Failed to load questions" },
			{ status: 500 },
		);
	}

	// Preserve the original shuffle order from answers JSONB
	const questionMap = new Map(questions.map((q) => [q.id, q]));
	const orderedQuestions = questionIds
		.map((qid) => questionMap.get(qid))
		.filter(Boolean);

	return NextResponse.json({
		status: "in_progress",
		attemptId: attempt.id,
		questions: orderedQuestions,
		startedAt: attempt.started_at,
		timeLimitMinutes: attempt.time_limit_minutes,
	});
}
