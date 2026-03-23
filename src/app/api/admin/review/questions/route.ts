import { NextResponse } from "next/server";
import { isAdmin } from "@/lib/admin";
import { reviewFilterSchema } from "@/lib/schemas";
import { createClient } from "@/lib/supabase/server";
import type { ReviewQuestion, QuestionFlag } from "@/lib/quiz";

export async function GET(request: Request) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user || !isAdmin(user.id)) {
		return NextResponse.json({ error: "Forbidden" }, { status: 403 });
	}

	const url = new URL(request.url);
	const params = Object.fromEntries(url.searchParams.entries());
	const parsed = reviewFilterSchema.safeParse(params);

	if (!parsed.success) {
		return NextResponse.json(
			{ error: "Invalid filters", details: parsed.error.format() },
			{ status: 400 },
		);
	}

	const { section, topic, difficulty, cognitive_level, flagged, reviewed, cursor, limit } =
		parsed.data;

	// Look up section
	const { data: sectionRow } = await supabase
		.from("sections")
		.select("id")
		.eq("code", section)
		.single();

	if (!sectionRow) {
		return NextResponse.json({ error: "Section not found" }, { status: 404 });
	}

	// Get total + reviewed counts for this section
	const { count: total } = await supabase
		.from("questions")
		.select("id", { count: "exact", head: true })
		.eq("section_id", sectionRow.id);

	const { count: reviewedCount } = await supabase
		.from("question_reviews")
		.select("question_id", { count: "exact", head: true })
		.eq("user_id", user.id);

	// Build filtered ID sets for flagged/reviewed filters
	let flaggedIds: number[] | null = null;
	let reviewedIds: number[] | null = null;

	if (flagged === "true" || flagged === "false") {
		const { data: flagRows } = await supabase
			.from("question_flags")
			.select("question_id")
			.eq("user_id", user.id)
			.is("resolved_at", null);
		flaggedIds = [...new Set((flagRows ?? []).map((r) => r.question_id))];
	}

	if (reviewed === "true" || reviewed === "false") {
		// Get reviewed IDs scoped to this section's questions
		const { data: revRows } = await supabase
			.from("question_reviews")
			.select("question_id")
			.eq("user_id", user.id);
		reviewedIds = (revRows ?? []).map((r) => r.question_id);
	}

	// Build main query
	let query = supabase
		.from("questions")
		.select("id, stem, choices, correct_index, explanation, topic, difficulty, cognitive_level")
		.eq("section_id", sectionRow.id)
		.order("id", { ascending: true })
		.limit(limit + 1); // fetch one extra to detect hasMore

	if (cursor) {
		query = query.gt("id", cursor);
	}

	if (topic) {
		query = query.eq("topic", topic);
	}

	if (difficulty) {
		query = query.eq("difficulty", difficulty);
	}

	if (cognitive_level) {
		query = query.eq("cognitive_level", cognitive_level);
	}

	// Apply flagged filter
	if (flagged === "true" && flaggedIds) {
		if (flaggedIds.length === 0) {
			return NextResponse.json({
				questions: [],
				hasMore: false,
				total: total ?? 0,
				reviewed: reviewedCount ?? 0,
			});
		}
		query = query.in("id", flaggedIds);
	} else if (flagged === "false" && flaggedIds) {
		if (flaggedIds.length > 0) {
			query = query.not("id", "in", `(${flaggedIds.join(",")})`);
		}
	}

	// Apply reviewed filter
	if (reviewed === "true" && reviewedIds) {
		if (reviewedIds.length === 0) {
			return NextResponse.json({
				questions: [],
				hasMore: false,
				total: total ?? 0,
				reviewed: reviewedCount ?? 0,
			});
		}
		query = query.in("id", reviewedIds);
	} else if (reviewed === "false" && reviewedIds) {
		if (reviewedIds.length > 0) {
			query = query.not("id", "in", `(${reviewedIds.join(",")})`);
		}
	}

	const { data: rows, error } = await query;

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	const hasMore = (rows?.length ?? 0) > limit;
	const questionRows = hasMore ? rows!.slice(0, limit) : (rows ?? []);
	const questionIds = questionRows.map((q) => q.id);

	// Batch-fetch flags for these questions
	const { data: flagRows } = await supabase
		.from("question_flags")
		.select("question_id, flag_type, notes, created_at")
		.eq("user_id", user.id)
		.in("question_id", questionIds.length > 0 ? questionIds : [0])
		.is("resolved_at", null);

	const flagsByQuestion = new Map<number, QuestionFlag[]>();
	for (const f of flagRows ?? []) {
		const arr = flagsByQuestion.get(f.question_id) ?? [];
		arr.push({
			flag_type: f.flag_type,
			notes: f.notes,
			created_at: f.created_at,
		});
		flagsByQuestion.set(f.question_id, arr);
	}

	// Batch-fetch reviewed status
	const { data: revRows } = await supabase
		.from("question_reviews")
		.select("question_id")
		.eq("user_id", user.id)
		.in("question_id", questionIds.length > 0 ? questionIds : [0]);

	const reviewedSet = new Set((revRows ?? []).map((r) => r.question_id));

	const questions: ReviewQuestion[] = questionRows.map((q) => ({
		id: q.id,
		stem: q.stem,
		choices: q.choices,
		correct_index: q.correct_index,
		explanation: q.explanation,
		topic: q.topic,
		difficulty: q.difficulty,
		cognitive_level: q.cognitive_level,
		flags: flagsByQuestion.get(q.id) ?? [],
		reviewed: reviewedSet.has(q.id),
	}));

	return NextResponse.json({
		questions,
		hasMore,
		total: total ?? 0,
		reviewed: reviewedCount ?? 0,
	});
}
