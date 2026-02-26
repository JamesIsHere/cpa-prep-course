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

	const { sectionCode, targetExamDate } = await request.json();

	if (!sectionCode) {
		return NextResponse.json({ error: "Section code required" }, { status: 400 });
	}

	const { error } = await supabase
		.from("profiles")
		.update({ 
			active_section: sectionCode,
			target_exam_date: targetExamDate
		})
		.eq("id", user.id);

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json({ success: true });
}
