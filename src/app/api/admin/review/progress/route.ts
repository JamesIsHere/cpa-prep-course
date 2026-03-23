import { NextResponse } from "next/server";
import { isAdmin } from "@/lib/admin";
import { markReviewedSchema } from "@/lib/schemas";
import { createClient } from "@/lib/supabase/server";

export async function POST(request: Request) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user || !isAdmin(user.id)) {
		return NextResponse.json({ error: "Forbidden" }, { status: 403 });
	}

	let body: unknown;
	try {
		body = await request.json();
	} catch {
		return NextResponse.json({ error: "Invalid JSON" }, { status: 400 });
	}

	const parsed = markReviewedSchema.safeParse(body);
	if (!parsed.success) {
		return NextResponse.json(
			{ error: "Invalid data", details: parsed.error.format() },
			{ status: 400 },
		);
	}

	const { questionId, notes } = parsed.data;

	const row: Record<string, unknown> = {
		question_id: questionId,
		user_id: user.id,
	};
	if (notes !== undefined) {
		row.notes = notes;
	}

	const { error } = await supabase
		.from("question_reviews")
		.upsert(row, { onConflict: "question_id,user_id" });

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json({ success: true });
}

export async function GET(request: Request) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user || !isAdmin(user.id)) {
		return NextResponse.json({ error: "Forbidden" }, { status: 403 });
	}

	const url = new URL(request.url);
	const section = url.searchParams.get("section");

	if (!section) {
		return NextResponse.json({ error: "section param required" }, { status: 400 });
	}

	const { data: sectionRow } = await supabase
		.from("sections")
		.select("id")
		.eq("code", section)
		.single();

	if (!sectionRow) {
		return NextResponse.json({ error: "Section not found" }, { status: 404 });
	}

	const { count: total } = await supabase
		.from("questions")
		.select("id", { count: "exact", head: true })
		.eq("section_id", sectionRow.id);

	// Count reviewed questions in this section by joining
	const { data: reviewedInSection } = await supabase
		.from("question_reviews")
		.select("question_id, questions!inner(section_id)")
		.eq("user_id", user.id)
		.eq("questions.section_id", sectionRow.id);

	return NextResponse.json({
		total: total ?? 0,
		reviewed: reviewedInSection?.length ?? 0,
	});
}
