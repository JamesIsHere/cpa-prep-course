import type { NextRequest } from "next/server";
import { updateSession } from "@/lib/supabase/middleware";

export async function middleware(request: NextRequest) {
	return await updateSession(request);
}

export const config = {
	matcher: [
		"/dashboard/:path*",
		"/account/:path*",
		"/exam/:path*",
		"/sections/:path*",
		"/admin/:path*",
		"/login",
		"/signup",
		"/update-password",
		"/reset-password",
	],
};
