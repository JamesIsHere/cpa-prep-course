import { NextResponse } from "next/server";
import { createClient } from "@/lib/supabase/server";
import { reportQuestionSchema } from "@/lib/schemas";

export async function POST(
	request: Request,
	{ params }: { params: Promise<{ id: string }> },
) {
	const { id } = await params;
	const questionId = parseInt(id, 10);
	if (isNaN(questionId)) {
		return NextResponse.json({ error: "Invalid question ID" }, { status: 400 });
	}

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

	const validation = reportQuestionSchema.safeParse(body);
	if (!validation.success) {
		return NextResponse.json(
			{ error: "Invalid data", details: validation.error.format() },
			{ status: 400 },
		);
	}

	const { reason, note, quizAttemptId } = validation.data;

	// Upsert: one report per user per question, update if exists
	const { data: existing } = await supabase
		.from("question_reports")
		.select("id, resolution")
		.eq("question_id", questionId)
		.eq("user_id", user.id)
		.single();

	if (existing) {
		if (existing.resolution) {
			// Already resolved — don't allow re-report
			return NextResponse.json(
				{ error: "This report has already been resolved" },
				{ status: 409 },
			);
		}
		// Update existing unresolved report
		const { error: updateError } = await supabase
			.from("question_reports")
			.update({ reason, note, quiz_attempt_id: quizAttemptId ?? null })
			.eq("id", existing.id);

		if (updateError) {
			return NextResponse.json({ error: "Failed to update report" }, { status: 500 });
		}
		return NextResponse.json({ ok: true, updated: true });
	}

	// Insert new report
	const { error: insertError } = await supabase
		.from("question_reports")
		.insert({
			question_id: questionId,
			user_id: user.id,
			quiz_attempt_id: quizAttemptId ?? null,
			reason,
			note,
		});

	if (insertError) {
		return NextResponse.json({ error: "Failed to submit report" }, { status: 500 });
	}

	// Check if this question has hit the threshold (3+ unresolved reports)
	const { count } = await supabase
		.from("question_reports")
		.select("id", { count: "exact", head: true })
		.eq("question_id", questionId)
		.is("resolution", null);

	if (count && count >= 3) {
		// Fire email notification (best-effort, non-blocking)
		try {
			await sendAlertEmail(questionId, count);
		} catch (err) {
			console.error("Failed to send report alert email:", err);
		}
	}

	return NextResponse.json({ ok: true, updated: false });
}

async function sendAlertEmail(questionId: number, reportCount: number) {
	// Use Supabase Edge Function or direct SMTP — for now, use fetch to a simple webhook
	// This can be swapped for Resend/SendGrid later
	const ADMIN_EMAIL = "root@slayer-cpa.com";
	const SUPABASE_URL = process.env.NEXT_PUBLIC_SUPABASE_URL;
	const SERVICE_KEY = process.env.SUPABASE_SERVICE_ROLE_KEY;

	if (!SUPABASE_URL || !SERVICE_KEY) return;

	// Use Supabase's built-in email via auth.admin or a simple Edge Function
	// For now, log it — we'll wire up a real email service
	console.warn(
		`[REPORT ALERT] Question ${questionId} has ${reportCount} unresolved reports. ` +
		`Email should be sent to ${ADMIN_EMAIL}.`,
	);
}
