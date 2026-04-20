import { NextResponse } from "next/server";
import { requireActiveSubscription } from "@/lib/require-subscription";
import { startQuizSchema } from "@/lib/schemas";
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
	const result = startQuizSchema.safeParse(body);

	if (!result.success) {
		return NextResponse.json(
			{ error: "Invalid request data", details: result.error.format() },
			{ status: 400 },
		);
	}

	const { sectionCode, count, topics, pinnedOnly } = result.data;

	// Look up section
	const { data: section } = await supabase
		.from("sections")
		.select("id")
		.eq("code", sectionCode)
		.single();

	if (!section) {
		return NextResponse.json({ error: "Section not found" }, { status: 404 });
	}

	// Adaptive Difficulty Logic:
	// If topics are specified, check recent performance on these topics.
	// If performance > 80%, prioritize 'hard' questions.
	let difficulties: string[] | null = null;
	if (topics && topics.length > 0) {
		const { data: recentAttempts } = await supabase
			.from("quiz_attempts")
			.select("topic_scores")
			.eq("user_id", user.id)
			.eq("section_id", section.id)
			.not("completed_at", "is", null)
			.order("completed_at", { ascending: false })
			.limit(5);

		if (recentAttempts && recentAttempts.length > 0) {
			let totalCorrect = 0;
			let totalQuestions = 0;
			for (const attempt of recentAttempts) {
				const scores = attempt.topic_scores as { topic: string; correct: number; total: number }[];
				if (scores) {
					for (const s of scores) {
						if (topics.includes(s.topic)) {
							totalCorrect += s.correct;
							totalQuestions += s.total;
						}
					}
				}
			}

			if (totalQuestions > 0) {
				const avg = totalCorrect / totalQuestions;
				if (avg >= 0.8) {
					difficulties = ["medium", "hard"];
				} else if (avg <= 0.4) {
					difficulties = ["easy", "medium"];
				}
			}
		}
	}

	// Fetch random questions via server-side RPC (avoids fetching all rows)
	const { data: selected, error: qError } = await supabase.rpc(
		"get_random_questions",
		{
			p_section_id: section.id,
			p_count: count,
			p_topics: topics && topics.length > 0 ? topics : null,
			p_difficulties: difficulties,
			p_pinned_only: pinnedOnly ?? false,
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
