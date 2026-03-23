import { createServerClient } from "@supabase/ssr";
import { type NextRequest, NextResponse } from "next/server";

const PROTECTED_ROUTES = ["/dashboard", "/account", "/exam", "/admin"];

function isProtectedRoute(pathname: string): boolean {
	return PROTECTED_ROUTES.some((route) => pathname.startsWith(route));
}

function isGatedContent(pathname: string): boolean {
	// Quiz pages require auth + subscription (no public preview)
	// Lesson pages are NOT gated here — the page handles free vs paid access
	return /^\/sections\/[^/]+\/quizzes$/.test(pathname);
}

export async function updateSession(request: NextRequest) {
	let response = NextResponse.next({ request });

	const supabase = createServerClient(
		process.env.NEXT_PUBLIC_SUPABASE_URL!,
		process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
		{
			cookies: {
				getAll() {
					return request.cookies.getAll();
				},
				setAll(cookiesToSet) {
					cookiesToSet.forEach(({ name, value }) => {
						request.cookies.set(name, value);
					});
					response = NextResponse.next({ request });
					cookiesToSet.forEach(({ name, value, options }) => {
						response.cookies.set(name, value, options);
					});
				},
			},
		},
	);

	const {
		data: { user },
	} = await supabase.auth.getUser();

	const { pathname } = request.nextUrl;

	// Redirect unauthenticated users away from protected routes
	if (!user && (isProtectedRoute(pathname) || isGatedContent(pathname))) {
		const loginUrl = request.nextUrl.clone();
		loginUrl.pathname = "/login";
		loginUrl.searchParams.set("next", pathname);
		return NextResponse.redirect(loginUrl);
	}

	// Redirect authenticated users away from auth pages
	if (user && (pathname === "/login" || pathname === "/signup")) {
		const dashboardUrl = request.nextUrl.clone();
		dashboardUrl.pathname = "/dashboard";
		return NextResponse.redirect(dashboardUrl);
	}

	return response;
}
