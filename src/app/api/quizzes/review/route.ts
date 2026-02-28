import { NextResponse } from "next/server";
import { requireActiveSubscription } from "@/lib/require-subscription";
import { reviewQuizSchema } from "@/lib/schemas";
import { createClient } from "@/lib/supabase/server";

export async function POST(request: Request) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
	}

	const subError = await requireActiveSubscription(supabase, user.id);
	if (subError) return subError;

	let body: unknown;
	try {
		body = await request.json();
	} catch {
		return NextResponse.json({ error: "Invalid JSON" }, { status: 400 });
	}

	const validation = reviewQuizSchema.safeParse(body);
	if (!validation.success) {
		return NextResponse.json(
			{ error: "Invalid request data" },
			{ status: 400 },
		);
	}

	const { questionIds, sectionCode } = validation.data;

	// Look up section
	const { data: section } = await supabase
		.from("sections")
		.select("id")
		.eq("code", sectionCode)
		.single();

	if (!section) {
		return NextResponse.json({ error: "Section not found" }, { status: 404 });
	}

	// Fetch the specific questions
	const { data: selected, error: qError } = await supabase.rpc(
		"get_questions_by_ids",
		{ p_question_ids: questionIds },
	);

	if (qError || !selected || selected.length === 0) {
		return NextResponse.json(
			{ error: "No questions found" },
			{ status: 404 },
		);
	}

	// Create quiz attempt
	const { data: attempt, error: attemptError } = await supabase
		.from("quiz_attempts")
		.insert({
			user_id: user.id,
			section_id: section.id,
			total: selected.length,
		})
		.select("id")
		.single();

	if (attemptError || !attempt) {
		return NextResponse.json(
			{ error: "Failed to create quiz attempt" },
			{ status: 500 },
		);
	}

	// Return questions WITHOUT correct_index and explanation
	const clientQuestions = selected.map(
		(q: { id: number; stem: string; choices: string[] }) => ({
			id: q.id,
			stem: q.stem,
			choices: q.choices,
		}),
	);

	return NextResponse.json({
		attemptId: attempt.id,
		questions: clientQuestions,
	});
}
