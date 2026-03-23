import { NextResponse } from "next/server";
import { isAdmin } from "@/lib/admin";
import { flagQuestionSchema, resolveFlagSchema } from "@/lib/schemas";
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

	const parsed = flagQuestionSchema.safeParse(body);
	if (!parsed.success) {
		return NextResponse.json(
			{ error: "Invalid data", details: parsed.error.format() },
			{ status: 400 },
		);
	}

	const { questionId, flagType, notes } = parsed.data;

	const { data, error } = await supabase
		.from("question_flags")
		.upsert(
			{
				question_id: questionId,
				user_id: user.id,
				flag_type: flagType,
				notes,
			},
			{ onConflict: "question_id,user_id,flag_type" },
		)
		.select()
		.single();

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json({ flag: data });
}

export async function DELETE(request: Request) {
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

	const parsed = flagQuestionSchema.pick({ questionId: true, flagType: true }).safeParse(body);
	if (!parsed.success) {
		return NextResponse.json(
			{ error: "Invalid data", details: parsed.error.format() },
			{ status: 400 },
		);
	}

	const { questionId, flagType } = parsed.data;

	const { error } = await supabase
		.from("question_flags")
		.delete()
		.eq("question_id", questionId)
		.eq("user_id", user.id)
		.eq("flag_type", flagType);

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json({ success: true });
}

export async function PATCH(request: Request) {
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

	const parsed = resolveFlagSchema.safeParse(body);
	if (!parsed.success) {
		return NextResponse.json(
			{ error: "Invalid data", details: parsed.error.format() },
			{ status: 400 },
		);
	}

	const { flagId, resolutionNotes } = parsed.data;

	const { error } = await supabase
		.from("question_flags")
		.update({
			resolved_at: new Date().toISOString(),
			resolution_notes: resolutionNotes,
		})
		.eq("id", flagId)
		.eq("user_id", user.id);

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json({ success: true });
}
