import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { z } from "zod";

const remediateSchema = z.object({
	sectionCode: z.string(),
	count: z.number().min(1).max(50).default(10),
});

export async function POST(request: Request) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
	}

	const body = await request.json();
	const validation = remediateSchema.safeParse(body);

	if (!validation.success) {
		return NextResponse.json({ error: "Invalid request" }, { status: 400 });
	}

	const { sectionCode, count } = validation.data;

	// Look up section
	const { data: section } = await supabase
		.from("sections")
		.select("id")
		.eq("code", sectionCode)
		.single();

	if (!section) {
		return NextResponse.json({ error: "Section not found" }, { status: 404 });
	}

	// Fetch missed questions via RPC
	const { data: selected, error: qError } = await supabase.rpc(
		"get_missed_questions",
		{
			p_user_id: user.id,
			p_section_id: section.id,
			p_count: count,
		},
	);

	if (qError || !selected || selected.length === 0) {
		return NextResponse.json(
			{ error: "No missed questions found for this section. Keep up the good work!" },
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

	// Return questions WITHOUT correct_index
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
