import { createServerClient } from "@supabase/ssr";
import { type NextRequest, NextResponse } from "next/server";

export async function GET(request: NextRequest) {
	const { searchParams } = new URL(request.url);
	const code = searchParams.get("code");
	const type = searchParams.get("type");
	const nextRaw = searchParams.get("next") ?? "/dashboard";
	// Prevent open redirect — only allow relative paths
	const next = nextRaw.startsWith("/") && !nextRaw.startsWith("//") ? nextRaw : "/dashboard";

	if (code) {
		// Recovery flows always go to /update-password regardless of next param
		// (Supabase may drop query params from redirectTo during PKCE redirect)
		const destination = type === "recovery" || next === "/update-password"
			? "/update-password"
			: next;

		const response = NextResponse.redirect(new URL(destination, request.url));

		const supabase = createServerClient(
			process.env.NEXT_PUBLIC_SUPABASE_URL!,
			process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
			{
				cookies: {
					getAll() {
						return request.cookies.getAll();
					},
					setAll(cookiesToSet) {
						cookiesToSet.forEach(({ name, value, options }) =>
							response.cookies.set(name, value, options),
						);
					},
				},
			},
		);

		const { error } = await supabase.auth.exchangeCodeForSession(code);

		if (!error) {
			return response;
		}
	}

	return NextResponse.redirect(new URL("/login?error=auth", request.url));
}
