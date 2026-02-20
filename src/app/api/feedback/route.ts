import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";

export async function POST(request: Request) {
	const body = await request.json();
	const { email, pageUrl, category, message } = body;

	if (!message || typeof message !== "string" || message.trim().length === 0) {
		return NextResponse.json({ error: "Message is required" }, { status: 400 });
	}

	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	const { error } = await supabase.from("feedback").insert({
		user_id: user?.id ?? null,
		email: email || user?.email || null,
		page_url: pageUrl || null,
		category: category || "general",
		message: message.trim(),
	});

	if (error) {
		return NextResponse.json(
			{ error: "Failed to submit feedback" },
			{ status: 500 },
		);
	}

	return NextResponse.json({ success: true });
}
