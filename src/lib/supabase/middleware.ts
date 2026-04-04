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
	const isAdmin = user?.id === process.env.ADMIN_USER_ID;

	// Redirect unauthenticated users away from protected routes
	if (!user && (isProtectedRoute(pathname) || isGatedContent(pathname))) {
		const loginUrl = request.nextUrl.clone();
		loginUrl.pathname = "/login";
		loginUrl.searchParams.set("next", pathname);
		return NextResponse.redirect(loginUrl);
	}

	// Let password reset flow through — never redirect away from /update-password
	if (pathname === "/update-password") {
		return response;
	}

	// Redirect authenticated users away from auth pages
	if (user && (pathname === "/login" || pathname === "/signup")) {
		const url = request.nextUrl.clone();
		if (isAdmin) {
			// Clear any stale mode cookie so admin sees the gate fresh after login
			url.pathname = "/admin-gate";
			const redirect = NextResponse.redirect(url);
			redirect.cookies.delete("admin_mode");
			return redirect;
		}
		url.pathname = "/dashboard";
		return NextResponse.redirect(url);
	}

	// Admin hitting /dashboard without choosing study mode → show gate
	if (isAdmin && pathname.startsWith("/dashboard")) {
		const hasStudyMode = request.cookies.get("admin_mode")?.value === "study";
		if (!hasStudyMode) {
			const gateUrl = request.nextUrl.clone();
			gateUrl.pathname = "/admin-gate";
			return NextResponse.redirect(gateUrl);
		}
	}

	return response;
}
