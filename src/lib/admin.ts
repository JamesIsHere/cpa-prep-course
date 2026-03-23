import { createClient } from "@supabase/supabase-js";

export function isAdmin(userId: string): boolean {
	return userId === process.env.ADMIN_USER_ID;
}

/** Service-role client for admin-only queries (bypasses RLS). */
export function createAdminClient() {
	return createClient(
		process.env.NEXT_PUBLIC_SUPABASE_URL!,
		process.env.SUPABASE_SERVICE_ROLE_KEY!,
	);
}
