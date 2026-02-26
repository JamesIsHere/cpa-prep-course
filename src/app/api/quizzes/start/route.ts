import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { startQuizSchema } from "@/lib/schemas";

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
	const result = startQuizSchema.safeParse(body);

	if (!result.success) {
		return NextResponse.json(
			{ error: "Invalid request data", details: result.error.format() },
			{ status: 400 },
		);
	}

	const { sectionCode, count, topics } = result.data;

	// Look up section
	const { data: section } = await supabase
		.from("sections")
		.select("id")
		.eq("code", sectionCode)
		.single();

	if (!section) {
		return NextResponse.json({ error: "Section not found" }, { status: 404 });
	}

	// Fetch random questions via server-side RPC (avoids fetching all rows)
	const { data: selected, error: qError } = await supabase.rpc(
		"get_random_questions",
		{
			p_section_id: section.id,
			p_count: count,
			p_topics: topics && topics.length > 0 ? topics : null,
		},
	);

	if (qError || !selected || selected.length === 0) {
		return NextResponse.json(
			{ error: "No questions available" },
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
