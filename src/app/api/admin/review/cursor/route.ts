import { NextResponse } from "next/server";
import { isAdmin } from "@/lib/admin";
import { saveCursorSchema } from "@/lib/schemas";
import { createClient } from "@/lib/supabase/server";

export async function GET(request: Request) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user || !isAdmin(user.id)) {
		return NextResponse.json({ error: "Forbidden" }, { status: 403 });
	}

	const url = new URL(request.url);
	const sectionCode = url.searchParams.get("section");

	if (!sectionCode) {
		return NextResponse.json({ error: "section param required" }, { status: 400 });
	}

	const { data } = await supabase
		.from("admin_review_cursors")
		.select("last_question_id, updated_at")
		.eq("section_code", sectionCode)
		.eq("user_id", user.id)
		.single();

	return NextResponse.json({ cursor: data });
}

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

	const parsed = saveCursorSchema.safeParse(body);
	if (!parsed.success) {
		return NextResponse.json(
			{ error: "Invalid data", details: parsed.error.format() },
			{ status: 400 },
		);
	}

	const { sectionCode, questionId } = parsed.data;

	const { error } = await supabase.from("admin_review_cursors").upsert(
		{
			section_code: sectionCode,
			user_id: user.id,
			last_question_id: questionId,
			updated_at: new Date().toISOString(),
		},
		{ onConflict: "section_code,user_id" },
	);

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json({ success: true });
}
