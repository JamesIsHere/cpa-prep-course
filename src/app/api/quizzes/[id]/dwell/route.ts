import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { explanationDwellSchema } from "@/lib/schemas";

// POST handler (sendBeacon can only POST)
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

	// Verify attempt belongs to user and is completed
	const { data: attempt } = await supabase
		.from("quiz_attempts")
		.select("id, user_id, completed_at")
		.eq("id", attemptId)
		.single();

	if (!attempt || attempt.user_id !== user.id) {
		return NextResponse.json({ error: "Not found" }, { status: 404 });
	}

	if (!attempt.completed_at) {
		return NextResponse.json({ error: "Attempt not yet completed" }, { status: 409 });
	}

	let body: unknown;
	try {
		body = await request.json();
	} catch {
		return NextResponse.json({ error: "Invalid JSON" }, { status: 400 });
	}

	const validation = explanationDwellSchema.safeParse(body);
	if (!validation.success) {
		return NextResponse.json({ error: "Invalid data" }, { status: 400 });
	}

	// Update each question_response row with explanation dwell time
	for (const d of validation.data.dwells) {
		await supabase
			.from("question_responses")
			.update({ time_on_explanation_ms: d.timeOnExplanationMs })
			.eq("quiz_attempt_id", attemptId)
			.eq("question_id", d.questionId);
	}

	return NextResponse.json({ ok: true });
}
