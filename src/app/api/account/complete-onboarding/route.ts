import { NextResponse } from "next/server";
import { completeOnboardingSchema } from "@/lib/schemas";
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

	const validation = completeOnboardingSchema.safeParse(body);
	if (!validation.success) {
		return NextResponse.json({ error: "Invalid request data" }, { status: 400 });
	}

	const { questionsGoal, lessonsGoal } = validation.data;

	const { error } = await supabase
		.from("profiles")
		.update({
			onboarding_completed: true,
			daily_goals: {
				questions: questionsGoal ?? 20,
				lessons: lessonsGoal ?? 1,
			},
		})
		.eq("id", user.id);

	if (error) {
		return NextResponse.json({ error: error.message }, { status: 500 });
	}

	return NextResponse.json({ success: true });
}
