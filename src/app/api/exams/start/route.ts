import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { startExamSchema } from "@/lib/schemas";

export async function POST(request: Request) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
	}

	// Check subscription
	const { data: profile } = await supabase
		.from("profiles")
		.select("subscription_status")
		.eq("id", user.id)
		.single();

	if (profile?.subscription_status !== "active") {
		return NextResponse.json(
			{ error: "Active subscription required" },
			{ status: 403 },
		);
	}

	const body = await request.json();
	const validation = startExamSchema.safeParse(body);

	if (!validation.success) {
		return NextResponse.json(
			{ error: "Invalid request data", details: validation.error.format() },
			{ status: 400 },
		);
	}

	const { sectionCode } = validation.data;

	// Look up section
	const { data: section } = await supabase
		.from("sections")
		.select("id")
		.eq("code", sectionCode)
		.single();

	if (!section) {
		return NextResponse.json({ error: "Section not found" }, { status: 404 });
	}

	// Block if user already has an in-progress exam
	const { data: inProgress } = await supabase
		.from("exam_attempts")
		.select("id")
		.eq("user_id", user.id)
		.is("completed_at", null)
		.limit(1);

	if (inProgress && inProgress.length > 0) {
		return NextResponse.json(
			{
				error: "You already have an exam in progress",
				attemptId: inProgress[0].id,
			},
			{ status: 409 },
		);
	}

	// Count questions in section to determine exam size
	const { count: questionCount, error: countError } = await supabase
		.from("questions")
		.select("id", { count: "exact", head: true })
		.eq("section_id", section.id);

	if (countError || !questionCount || questionCount === 0) {
		return NextResponse.json(
			{ error: "No questions available" },
			{ status: 404 },
		);
	}

	// Fetch all questions in random order via server-side RPC
	const { data: shuffled, error: qError } = await supabase.rpc(
		"get_random_questions",
		{
			p_section_id: section.id,
			p_count: questionCount,
			p_topics: null,
		},
	);

	if (qError || !shuffled || shuffled.length === 0) {
		return NextResponse.json(
			{ error: "No questions available" },
			{ status: 404 },
		);
	}

	// Create exam attempt with question IDs stored in answers JSONB
	const answersJson = shuffled.map((q: { id: number }) => ({
		question_id: q.id,
		choice_index: null,
	}));

	const { data: attempt, error: attemptError } = await supabase
		.from("exam_attempts")
		.insert({
			user_id: user.id,
			section_id: section.id,
			total: shuffled.length,
			answers: answersJson,
		})
		.select("id, started_at, time_limit_minutes")
		.single();

	if (attemptError || !attempt) {
		return NextResponse.json(
			{ error: "Failed to create exam attempt" },
			{ status: 500 },
		);
	}

	// Return questions WITHOUT correct answers
	const clientQuestions = shuffled.map(
		(q: { id: number; stem: string; choices: string[] }) => ({
			id: q.id,
			stem: q.stem,
			choices: q.choices,
		}),
	);

	return NextResponse.json({
		attemptId: attempt.id,
		questions: clientQuestions,
		startedAt: attempt.started_at,
		timeLimitMinutes: attempt.time_limit_minutes,
	});
}
