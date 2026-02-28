import { NextResponse } from "next/server";
import type { SupabaseClient } from "@supabase/supabase-js";

/**
 * Check that the user has an active subscription.
 * Returns null on success, or a 403 NextResponse on failure.
 */
export async function requireActiveSubscription(
	supabase: SupabaseClient,
	userId: string,
): Promise<NextResponse | null> {
	const { data: profile } = await supabase
		.from("profiles")
		.select("subscription_status")
		.eq("id", userId)
		.single();

	if (profile?.subscription_status !== "active") {
		return NextResponse.json(
			{ error: "Active subscription required" },
			{ status: 403 },
		);
	}

	return null;
}
