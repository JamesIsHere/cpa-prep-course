import { NextResponse } from "next/server";
import { isAdmin, createAdminClient } from "@/lib/admin";
import { createClient } from "@/lib/supabase/server";
import { resolveReportSchema } from "@/lib/schemas";

// GET: Fetch all reports grouped by question, sorted by unresolved count desc
export async function GET() {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user || !isAdmin(user.id)) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 403 });
	}

	const adminClient = createAdminClient();

	// Fetch all reports with question details
	const { data: reports, error } = await adminClient
		.from("question_reports")
		.select(`
			id,
			question_id,
			user_id,
			quiz_attempt_id,
			reason,
			note,
			resolution,
			resolved_at,
			created_at,
			questions (
				id,
				stem,
				topic,
				difficulty,
				section_id,
				sections ( code )
			)
		`)
		.order("created_at", { ascending: false });

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json(reports);
}

// PATCH: Resolve a report
export async function PATCH(request: Request) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user || !isAdmin(user.id)) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 403 });
	}

	let body: unknown;
	try {
		body = await request.json();
	} catch {
		return NextResponse.json({ error: "Invalid JSON" }, { status: 400 });
	}

	const { reportId, ...rest } = body as { reportId?: number };
	if (!reportId) {
		return NextResponse.json({ error: "reportId required" }, { status: 400 });
	}

	const validation = resolveReportSchema.safeParse(rest);
	if (!validation.success) {
		return NextResponse.json({ error: "Invalid data" }, { status: 400 });
	}

	const adminClient = createAdminClient();
	const { error } = await adminClient
		.from("question_reports")
		.update({
			resolution: validation.data.resolution,
			resolved_at: new Date().toISOString(),
			resolved_by: user.id,
		})
		.eq("id", reportId);

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json({ ok: true });
}
