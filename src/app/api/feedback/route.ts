import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { feedbackSchema } from "@/lib/schemas";

export async function POST(request: Request) {
	const body = await request.json();
	const validation = feedbackSchema.safeParse(body);

	if (!validation.success) {
		return NextResponse.json(
			{ error: "Invalid feedback data", details: validation.error.format() },
			{ status: 400 },
		);
	}

	const { email, pageUrl, category, message } = validation.data;

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
