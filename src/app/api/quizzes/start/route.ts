import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

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
	const { sectionCode, count } = body as {
		sectionCode: string;
		count: number;
	};

	if (!sectionCode || !count || count < 1 || count > 30) {
		return NextResponse.json(
			{ error: "Invalid sectionCode or count (1-30)" },
			{ status: 400 },
		);
	}

	// Look up section
	const { data: section } = await supabase
		.from("sections")
		.select("id")
		.eq("code", sectionCode)
		.single();

	if (!section) {
		return NextResponse.json({ error: "Section not found" }, { status: 404 });
	}

	// Fetch random questions (Supabase doesn't support order by random(),
	// so we fetch all for the section and shuffle client-side)
	const { data: allQuestions, error: qError } = await supabase
		.from("questions")
		.select("id, stem, choices, correct_index, explanation, topic, difficulty")
		.eq("section_id", section.id);

	if (qError || !allQuestions || allQuestions.length === 0) {
		return NextResponse.json(
			{ error: "No questions available" },
			{ status: 404 },
		);
	}

	// Shuffle and take `count`
	const shuffled = allQuestions.sort(() => Math.random() - 0.5);
	const selected = shuffled.slice(0, Math.min(count, allQuestions.length));

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
	const clientQuestions = selected.map((q) => ({
		id: q.id,
		stem: q.stem,
		choices: q.choices,
	}));

	return NextResponse.json({
		attemptId: attempt.id,
		questions: clientQuestions,
	});
}
