import { NextResponse } from "next/server";
import { activeSectionSchema } from "@/lib/schemas";
import { createClient } from "@/lib/supabase/server";

export async function POST(request: Request) {
	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) {
		return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
	}

	let body: unknown;
	try {
		body = await request.json();
	} catch {
		return NextResponse.json({ error: "Invalid JSON" }, { status: 400 });
	}

	const validation = activeSectionSchema.safeParse(body);
	if (!validation.success) {
		return NextResponse.json({ error: "Invalid request data" }, { status: 400 });
	}

	const { sectionCode, targetExamDate } = validation.data;

	const { error } = await supabase
		.from("profiles")
		.update({
			active_section: sectionCode,
			target_exam_date: targetExamDate ?? null,
		})
		.eq("id", user.id);

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json({ success: true });
}
