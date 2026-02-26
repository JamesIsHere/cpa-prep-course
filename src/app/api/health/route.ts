import { createClient } from "@supabase/supabase-js";
import { NextResponse } from "next/server";
import { getStripe } from "@/lib/stripe";

export const dynamic = "force-dynamic";

interface CheckResult {
	status: "pass" | "fail" | "warn";
	message: string;
	ms: number;
}

const REQUIRED_ENV_VARS = [
	"NEXT_PUBLIC_SUPABASE_URL",
	"NEXT_PUBLIC_SUPABASE_ANON_KEY",
	"SUPABASE_SERVICE_ROLE_KEY",
	"STRIPE_SECRET_KEY",
	"STRIPE_WEBHOOK_SECRET",
	"STRIPE_PRICE_ID",
	"NEXT_PUBLIC_SITE_URL",
];

async function timed<T>(fn: () => Promise<T>): Promise<[T, number]> {
	const start = Date.now();
	const result = await fn();
	return [result, Date.now() - start];
}

async function checkEnvVars(): Promise<CheckResult> {
	const [result, ms] = await timed(async () => {
		const missing = REQUIRED_ENV_VARS.filter((v) => !process.env[v]);
		if (missing.length > 0) {
			return { status: "fail" as const, message: `Missing: ${missing.join(", ")}` };
		}
		const siteUrl = process.env.NEXT_PUBLIC_SITE_URL || "";
		if (process.env.VERCEL && siteUrl.includes("localhost")) {
			return { status: "warn" as const, message: "SITE_URL has localhost on Vercel" };
		}
		return { status: "pass" as const, message: `${REQUIRED_ENV_VARS.length}/${REQUIRED_ENV_VARS.length} present` };
	});
	return { ...result, ms };
}

async function checkSupabaseAuth(): Promise<CheckResult> {
	const [result, ms] = await timed(async () => {
		try {
			const supabase = createClient(
				process.env.NEXT_PUBLIC_SUPABASE_URL!,
				process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
			);
			await supabase.auth.getSession();
			return { status: "pass" as const, message: "Auth service reachable" };
		} catch (err) {
			return { status: "fail" as const, message: `Auth error: ${err instanceof Error ? err.message : String(err)}` };
		}
	});
	return { ...result, ms };
}

async function checkSupabaseDb(): Promise<CheckResult> {
	const [result, ms] = await timed(async () => {
		try {
			const supabase = createClient(
				process.env.NEXT_PUBLIC_SUPABASE_URL!,
				process.env.SUPABASE_SERVICE_ROLE_KEY!,
			);
			const { data, error } = await supabase.from("sections").select("id").limit(1);
			if (error) {
				return { status: "fail" as const, message: `DB error: ${error.message}` };
			}
			return { status: "pass" as const, message: `Sections table readable (${data?.length ?? 0} rows returned)` };
		} catch (err) {
			return { status: "fail" as const, message: `DB error: ${err instanceof Error ? err.message : String(err)}` };
		}
	});
	return { ...result, ms };
}

async function checkSupabaseRpc(): Promise<CheckResult> {
	const [result, ms] = await timed(async () => {
		try {
			const supabase = createClient(
				process.env.NEXT_PUBLIC_SUPABASE_URL!,
				process.env.SUPABASE_SERVICE_ROLE_KEY!,
			);
			// 1. Check random questions RPC
			const { data: qData, error: qError } = await supabase.rpc("get_random_questions", {
				p_section_id: 1,
				p_count: 1,
				p_topics: null,
			});
			if (qError) {
				return { status: "fail" as const, message: `Random RPC error: ${qError.message}` };
			}

			// 2. Check dashboard stats RPC (new)
			const { error: dError } = await supabase.rpc("get_user_dashboard_stats", {
				p_user_id: "00000000-0000-0000-0000-000000000000", // Dummy UUID
			});
			
			if (dError) {
				const msg = dError.message.toLowerCase();
				if (msg.includes("does not exist")) {
					return { status: "fail" as const, message: "Dashboard RPC missing" };
				}
				// Ignore specific UUID syntax errors as they mean the function exists but input was dummy
				if (!msg.includes("invalid input syntax") && !msg.includes("not found")) {
					return { status: "fail" as const, message: `Dashboard RPC error: ${dError.message}` };
				}
			}

			// 3. Check new Remediation RPC
			const { error: rError } = await supabase.rpc("get_missed_questions", {
				p_user_id: "00000000-0000-0000-0000-000000000000",
				p_section_id: 1,
			});
			if (rError && rError.message.toLowerCase().includes("does not exist")) {
				return { status: "fail" as const, message: "Remediation RPC missing" };
			}

			// 4. Check Daily Progress RPC
			const { error: pError } = await supabase.rpc("get_user_daily_progress", {
				p_user_id: "00000000-0000-0000-0000-000000000000",
			});
			if (pError && pError.message.toLowerCase().includes("does not exist")) {
				return { status: "fail" as const, message: "Daily Progress RPC missing" };
			}

			return { status: "pass" as const, message: "Core RPCs functional" };
		} catch (err) {
			return { status: "fail" as const, message: `RPC error: ${err instanceof Error ? err.message : String(err)}` };
		}
	});
	return { ...result, ms };
}

async function checkStripeApi(): Promise<CheckResult> {
	const [result, ms] = await timed(async () => {
		try {
			const stripe = getStripe();
			const price = await stripe.prices.retrieve(process.env.STRIPE_PRICE_ID!);
			if (!price.active) {
				return { status: "warn" as const, message: "Price exists but is inactive" };
			}
			return { status: "pass" as const, message: "Price exists and is active" };
		} catch (err) {
			return { status: "fail" as const, message: `Stripe error: ${err instanceof Error ? err.message : String(err)}` };
		}
	});
	return { ...result, ms };
}

async function checkStripeWebhookSecret(): Promise<CheckResult> {
	const [result, ms] = await timed(async () => {
		const secret = process.env.STRIPE_WEBHOOK_SECRET || "";
		if (!secret) {
			return { status: "fail" as const, message: "STRIPE_WEBHOOK_SECRET not set" };
		}
		if (!secret.startsWith("whsec_")) {
			return { status: "fail" as const, message: "STRIPE_WEBHOOK_SECRET does not start with whsec_" };
		}
		return { status: "pass" as const, message: "Webhook secret format valid" };
	});
	return { ...result, ms };
}

export async function GET(request: Request) {
	// Optional auth: if HEALTH_CHECK_SECRET is set, require Bearer token for full results
	const secret = process.env.HEALTH_CHECK_SECRET;
	if (secret) {
		const auth = request.headers.get("authorization");
		if (auth !== `Bearer ${secret}`) {
			// Run checks but only return summary status
			const checks = await Promise.all([
				checkEnvVars(),
				checkSupabaseAuth(),
				checkSupabaseDb(),
				checkSupabaseRpc(),
				checkStripeApi(),
				checkStripeWebhookSecret(),
			]);
			const failed = checks.filter((c) => c.status === "fail").length;
			const status = failed > 0 ? "error" : checks.some((c) => c.status === "warn") ? "degraded" : "ok";
			return NextResponse.json(
				{ status },
				{ status: failed > 0 ? 503 : 200 },
			);
		}
	}

	const [envVars, supabaseAuth, supabaseDb, supabaseRpc, stripeApi, stripeWebhook] =
		await Promise.all([
			checkEnvVars(),
			checkSupabaseAuth(),
			checkSupabaseDb(),
			checkSupabaseRpc(),
			checkStripeApi(),
			checkStripeWebhookSecret(),
		]);

	const checks = { env_vars: envVars, supabase_auth: supabaseAuth, supabase_db: supabaseDb, supabase_rpc: supabaseRpc, stripe_api: stripeApi, stripe_webhook_secret: stripeWebhook };
	const all = Object.values(checks);
	const passed = all.filter((c) => c.status === "pass").length;
	const failed = all.filter((c) => c.status === "fail").length;
	const status = failed > 0 ? "error" : all.some((c) => c.status === "warn") ? "degraded" : "ok";

	return NextResponse.json(
		{ status, checks, summary: `${passed}/${all.length} passed` },
		{ status: failed > 0 ? 503 : 200 },
	);
}
