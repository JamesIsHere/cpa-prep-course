// Health Check CLI
// Usage: npm run health [-- --url=https://www.slayer-cpa.com] [-- --json]

import { config } from "dotenv";
import { dirname, resolve, join } from "path";
import { existsSync, readdirSync, readFileSync } from "fs";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const envPath = resolve(__dirname, "../.env.local");
const hasEnvFile = existsSync(envPath);
if (hasEnvFile) {
	config({ path: envPath });
}

// Parse flags
const urlFlag = process.argv
	.find((a) => a.startsWith("--url="))
	?.split("=")
	.slice(1)
	.join("=");
const outputJson = process.argv.some((a) => a === "--json");

const targetUrl = (urlFlag || "http://localhost:3000").replace(/\/$/, "");
const log = outputJson ? console.error : console.log;

// ANSI colors
const green = (s: string) => (outputJson ? s : `\x1b[32m${s}\x1b[0m`);
const red = (s: string) => (outputJson ? s : `\x1b[31m${s}\x1b[0m`);
const yellow = (s: string) => (outputJson ? s : `\x1b[33m${s}\x1b[0m`);
const bold = (s: string) => (outputJson ? s : `\x1b[1m${s}\x1b[0m`);

interface CheckResult {
	name: string;
	status: "pass" | "fail" | "warn" | "skip";
	message: string;
	ms: number;
}

function formatResult(r: CheckResult): string {
	const tag =
		r.status === "pass"
			? green("[PASS]")
			: r.status === "fail"
				? red("[FAIL]")
				: r.status === "warn"
					? yellow("[WARN]")
					: yellow("[SKIP]");
	return `  ${tag} ${r.name} (${r.ms}ms)`;
}

async function timedFetch(
	url: string,
	init?: RequestInit,
): Promise<[Response | null, number, string | null]> {
	const start = Date.now();
	try {
		const res = await fetch(url, { redirect: "manual", ...init });
		return [res, Date.now() - start, null];
	} catch (err) {
		return [null, Date.now() - start, err instanceof Error ? err.message : String(err)];
	}
}

// ── Remote checks ──

async function checkHomepage(): Promise<CheckResult> {
	const [res, ms, err] = await timedFetch(targetUrl);
	if (err || !res) {
		return { name: "Homepage loads", status: "fail", message: err || "No response", ms };
	}
	if (res.status >= 500) {
		return { name: "Homepage loads", status: "fail", message: `HTTP ${res.status}`, ms };
	}
	return { name: "Homepage loads", status: "pass", message: `HTTP ${res.status}`, ms };
}

async function checkHealthEndpoint(): Promise<CheckResult> {
	const [res, ms, err] = await timedFetch(`${targetUrl}/api/health`);
	if (err || !res) {
		return { name: "Health endpoint", status: "fail", message: err || "No response", ms };
	}
	try {
		const json = await res.json();
		if (json.status === "ok") {
			return { name: `Health endpoint: ${json.summary || "ok"}`, status: "pass", message: json.summary || "ok", ms };
		}
		if (json.status === "degraded") {
			return { name: `Health endpoint: ${json.summary || "degraded"}`, status: "warn", message: json.summary || "degraded", ms };
		}
		// error status or checks failed
		const failedChecks = json.checks
			? Object.entries(json.checks)
					.filter(([, v]) => (v as { status: string }).status === "fail")
					.map(([k]) => k)
					.join(", ")
			: "unknown";
		return { name: `Health endpoint: ${json.summary || "error"}`, status: "fail", message: `Failed: ${failedChecks}`, ms };
	} catch {
		return { name: "Health endpoint", status: "fail", message: `HTTP ${res.status}, invalid JSON`, ms };
	}
}

interface RouteCheck {
	method: string;
	path: string;
	body?: string;
	contentType?: string;
}

const ROUTE_CHECKS: RouteCheck[] = [
	{ method: "POST", path: "/api/checkout" },
	{ method: "POST", path: "/api/portal" },
	{ method: "POST", path: "/api/quizzes/start", body: "{}", contentType: "application/json" },
	{ method: "POST", path: "/api/quizzes/999999/submit", body: "{}", contentType: "application/json" },
	{ method: "POST", path: "/api/exams/start", body: "{}", contentType: "application/json" },
	{ method: "GET", path: "/api/exams/999999" },
	{ method: "POST", path: "/api/exams/999999/submit", body: "{}", contentType: "application/json" },
	{ method: "POST", path: "/api/feedback", body: "{}", contentType: "application/json" },
	{ method: "POST", path: "/api/webhooks/stripe", body: "", contentType: "application/json" },
	{ method: "GET", path: "/api/study-frameworks/aud" },
];

async function checkRoute(route: RouteCheck): Promise<CheckResult> {
	const name = `${route.method} ${route.path}`;
	const init: RequestInit = { method: route.method };
	if (route.body !== undefined) {
		init.body = route.body;
	}
	if (route.contentType) {
		init.headers = { "Content-Type": route.contentType };
	}
	const [res, ms, err] = await timedFetch(`${targetUrl}${route.path}`, init);
	if (err || !res) {
		return { name, status: "fail", message: err || "No response", ms };
	}
	if (res.status >= 500) {
		return { name: `${name} -> ${res.status}`, status: "fail", message: `HTTP ${res.status}`, ms };
	}
	return { name: `${name} -> ${res.status}`, status: "pass", message: `HTTP ${res.status}`, ms };
}

// ── Direct checks (env-var based) ──

async function checkSupabaseDb(): Promise<CheckResult> {
	if (!hasEnvFile) {
		return { name: "Supabase DB question count", status: "skip", message: "No .env.local", ms: 0 };
	}
	const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
	const key = process.env.SUPABASE_SERVICE_ROLE_KEY;
	if (!url || !key) {
		return { name: "Supabase DB question count", status: "skip", message: "Missing env vars", ms: 0 };
	}
	const start = Date.now();
	try {
		const { createClient } = await import("@supabase/supabase-js");
		const supabase = createClient(url, key);
		const { count, error } = await supabase
			.from("questions")
			.select("id", { count: "exact", head: true });
		const ms = Date.now() - start;
		if (error) {
			return { name: "Supabase DB question count", status: "fail", message: error.message, ms };
		}
		return { name: `Supabase DB: ${count} questions`, status: "pass", message: `${count} questions`, ms };
	} catch (err) {
		return { name: "Supabase DB question count", status: "fail", message: err instanceof Error ? err.message : String(err), ms: Date.now() - start };
	}
}

async function checkStripePrice(): Promise<CheckResult> {
	if (!hasEnvFile) {
		return { name: "Stripe price active", status: "skip", message: "No .env.local", ms: 0 };
	}
	const key = process.env.STRIPE_SECRET_KEY;
	const priceId = process.env.STRIPE_PRICE_ID;
	if (!key || !priceId) {
		return { name: "Stripe price active", status: "skip", message: "Missing env vars", ms: 0 };
	}
	const start = Date.now();
	try {
		const Stripe = (await import("stripe")).default;
		const stripe = new Stripe(key, { typescript: true });
		const price = await stripe.prices.retrieve(priceId);
		const ms = Date.now() - start;
		if (!price.active) {
			return { name: "Stripe price active", status: "warn", message: "Price exists but inactive", ms };
		}
		return { name: "Stripe price active", status: "pass", message: "Price exists and active", ms };
	} catch (err) {
		return { name: "Stripe price active", status: "fail", message: err instanceof Error ? err.message : String(err), ms: Date.now() - start };
	}
}

async function checkEnvConsistency(): Promise<CheckResult> {
	if (!hasEnvFile) {
		return { name: "Env consistency", status: "skip", message: "No .env.local", ms: 0 };
	}
	const siteUrl = (process.env.NEXT_PUBLIC_SITE_URL || "").replace(/\/$/, "");
	if (!siteUrl) {
		return { name: "Env consistency", status: "skip", message: "NEXT_PUBLIC_SITE_URL not set", ms: 0 };
	}
	if (urlFlag && siteUrl !== targetUrl) {
		return { name: "Env consistency", status: "warn", message: `NEXT_PUBLIC_SITE_URL (${siteUrl}) != --url target (${targetUrl})`, ms: 0 };
	}
	return { name: "Env consistency", status: "pass", message: "NEXT_PUBLIC_SITE_URL matches target", ms: 0 };
}

// ── Vercel deployment check ──

async function checkVercelDeployment(): Promise<CheckResult> {
	const token = process.env.VERCEL_TOKEN;
	const projectId = process.env.VERCEL_PROJECT_ID;
	if (!token) {
		return { name: "Vercel deployment", status: "skip", message: "VERCEL_TOKEN not set in .env.local", ms: 0 };
	}
	const start = Date.now();
	try {
		const params = new URLSearchParams({ limit: "1", target: "production" });
		if (projectId) params.set("projectId", projectId);
		const res = await fetch(`https://api.vercel.com/v6/deployments?${params}`, {
			headers: { Authorization: `Bearer ${token}` },
		});
		const ms = Date.now() - start;
		if (!res.ok) {
			return { name: "Vercel deployment", status: "fail", message: `API ${res.status}: ${res.statusText}`, ms };
		}
		const json = await res.json();
		const d = json.deployments?.[0];
		if (!d) {
			return { name: "Vercel deployment", status: "warn", message: "No production deployments found", ms };
		}
		const age = Date.now() - d.created;
		const agoMin = Math.round(age / 60000);
		const agoStr = agoMin < 60 ? `${agoMin}m ago` : `${Math.round(agoMin / 60)}h ago`;
		const sha = d.meta?.githubCommitSha?.slice(0, 7) || "unknown";
		if (d.state === "READY" || d.readyState === "READY") {
			return { name: `Vercel deployment: ${sha} READY (${agoStr})`, status: "pass", message: `Deployed ${agoStr}`, ms };
		}
		if (d.state === "ERROR" || d.readyState === "ERROR") {
			return { name: `Vercel deployment: ${sha} ERROR (${agoStr})`, status: "fail", message: `Build failed ${agoStr}`, ms };
		}
		if (d.state === "BUILDING" || d.readyState === "BUILDING") {
			return { name: `Vercel deployment: ${sha} BUILDING (${agoStr})`, status: "warn", message: `Build in progress`, ms };
		}
		return { name: `Vercel deployment: ${d.state || d.readyState} (${agoStr})`, status: "warn", message: `State: ${d.state || d.readyState}`, ms };
	} catch (err) {
		return { name: "Vercel deployment", status: "fail", message: err instanceof Error ? err.message : String(err), ms: Date.now() - start };
	}
}

// ── SEO checks ──

async function checkSitemap(): Promise<CheckResult> {
	const [res, ms, err] = await timedFetch(`${targetUrl}/sitemap.xml`);
	if (err || !res) {
		return { name: "Sitemap", status: "fail", message: err || "No response", ms };
	}
	if (res.status !== 200) {
		return { name: "Sitemap", status: "fail", message: `HTTP ${res.status}`, ms };
	}
	const text = await res.text();
	if (!text.includes("<urlset") && !text.includes("<sitemapindex")) {
		return { name: "Sitemap", status: "fail", message: "Not valid sitemap XML", ms };
	}
	const urlCount = (text.match(/<url>/g) || []).length;
	return { name: `Sitemap: ${urlCount} URLs`, status: "pass", message: `${urlCount} URLs`, ms };
}

async function checkRobotsTxt(): Promise<CheckResult> {
	const [res, ms, err] = await timedFetch(`${targetUrl}/robots.txt`);
	if (err || !res) {
		return { name: "robots.txt", status: "fail", message: err || "No response", ms };
	}
	if (res.status !== 200) {
		return { name: "robots.txt", status: "fail", message: `HTTP ${res.status}`, ms };
	}
	const text = await res.text();
	if (!text.includes("User-Agent") && !text.includes("user-agent")) {
		return { name: "robots.txt", status: "warn", message: "File exists but no User-Agent directive", ms };
	}
	const hasSitemap = text.toLowerCase().includes("sitemap:");
	return { name: `robots.txt${hasSitemap ? " (has sitemap ref)" : ""}`, status: "pass", message: "Valid", ms };
}

// ── Content page checks ──

const CONTENT_PAGES = [
	{ path: "/sections", name: "Sections listing" },
	{ path: "/blog", name: "Blog listing" },
	{ path: "/sections/aud", name: "Section detail (AUD)" },
	{ path: "/sections/aud/lessons/01-intro-to-auditing", name: "Free lesson" },
	{ path: "/sections/aud/blueprint", name: "Blueprint explorer" },
	{ path: "/blog/slayer-cpa-vs-becker", name: "Blog post" },
	{ path: "/signup", name: "Signup page" },
	{ path: "/login", name: "Login page" },
];

async function checkContentPage(page: { path: string; name: string }): Promise<CheckResult> {
	const [res, ms, err] = await timedFetch(`${targetUrl}${page.path}`);
	if (err || !res) {
		return { name: `${page.name} ${page.path}`, status: "fail", message: err || "No response", ms };
	}
	if (res.status >= 500) {
		return { name: `${page.name} ${page.path} -> ${res.status}`, status: "fail", message: `Server error`, ms };
	}
	if (res.status === 404) {
		return { name: `${page.name} ${page.path} -> 404`, status: "fail", message: `Not found`, ms };
	}
	if (res.status >= 300 && res.status < 400) {
		return { name: `${page.name} ${page.path} -> ${res.status}`, status: "pass", message: `Redirect (expected for auth)`, ms };
	}
	return { name: `${page.name} ${page.path} -> ${res.status}`, status: "pass", message: `OK`, ms };
}

// ── SSL certificate check ──

async function checkSslCert(): Promise<CheckResult> {
	const start = Date.now();
	if (targetUrl.startsWith("http://")) {
		return { name: "SSL certificate", status: "skip", message: "HTTP target, no SSL", ms: 0 };
	}
	try {
		const tls = await import("tls");
		const hostname = new URL(targetUrl).hostname;
		const cert = await new Promise<{ valid_to?: string }>((resolve, reject) => {
			const socket = tls.connect({ host: hostname, port: 443, servername: hostname }, () => {
				const c = socket.getPeerCertificate();
				socket.destroy();
				resolve(c);
			});
			socket.on("error", reject);
			socket.setTimeout(10000, () => { socket.destroy(); reject(new Error("Timeout")); });
		});
		const ms = Date.now() - start;
		if (!cert.valid_to) {
			return { name: "SSL certificate", status: "warn", message: "No expiry in certificate", ms };
		}
		const expiry = new Date(cert.valid_to);
		const daysLeft = Math.floor((expiry.getTime() - Date.now()) / 86400000);
		if (daysLeft < 0) {
			return { name: `SSL certificate: EXPIRED`, status: "fail", message: `Expired ${Math.abs(daysLeft)} days ago`, ms };
		}
		if (daysLeft < 14) {
			return { name: `SSL certificate: ${daysLeft} days left`, status: "fail", message: `Expires ${expiry.toISOString().slice(0, 10)}`, ms };
		}
		if (daysLeft < 30) {
			return { name: `SSL certificate: ${daysLeft} days left`, status: "warn", message: `Expires ${expiry.toISOString().slice(0, 10)}`, ms };
		}
		return { name: `SSL certificate: ${daysLeft} days left`, status: "pass", message: `Expires ${expiry.toISOString().slice(0, 10)}`, ms };
	} catch (err) {
		return { name: "SSL certificate", status: "warn", message: err instanceof Error ? err.message : String(err), ms: Date.now() - start };
	}
}

// ── Deploy freshness ──

async function checkDeployFreshness(): Promise<CheckResult> {
	const start = Date.now();
	try {
		const { execSync } = await import("child_process");
		const localSha = execSync("git rev-parse HEAD", { encoding: "utf-8", timeout: 5000 }).trim().slice(0, 7);
		// Fetch the homepage and check x-vercel-deployment-url or look for commit sha in meta
		const [res, fetchMs, err] = await timedFetch(targetUrl);
		const ms = Date.now() - start;
		if (err || !res) {
			return { name: "Deploy freshness", status: "warn", message: "Could not fetch homepage", ms };
		}
		const vercelId = res.headers.get("x-vercel-id");
		if (!vercelId) {
			return { name: "Deploy freshness", status: "skip", message: "No x-vercel-id header (not Vercel?)", ms };
		}
		// Use Vercel API if token available to compare SHAs
		const token = process.env.VERCEL_TOKEN;
		if (!token) {
			return { name: `Deploy freshness: local ${localSha}`, status: "skip", message: "VERCEL_TOKEN not set — cannot compare deployed SHA", ms };
		}
		const params = new URLSearchParams({ limit: "1", target: "production" });
		const projectId = process.env.VERCEL_PROJECT_ID;
		if (projectId) params.set("projectId", projectId);
		const apiRes = await fetch(`https://api.vercel.com/v6/deployments?${params}`, {
			headers: { Authorization: `Bearer ${token}` },
		});
		const ms2 = Date.now() - start;
		if (!apiRes.ok) {
			return { name: "Deploy freshness", status: "warn", message: `Vercel API ${apiRes.status}`, ms: ms2 };
		}
		const json = await apiRes.json();
		const d = json.deployments?.[0];
		const deployedSha = d?.meta?.githubCommitSha?.slice(0, 7);
		if (!deployedSha) {
			return { name: "Deploy freshness", status: "warn", message: "No SHA in deployment metadata", ms: ms2 };
		}
		if (deployedSha === localSha) {
			return { name: `Deploy freshness: ${localSha} = deployed`, status: "pass", message: "Local matches production", ms: ms2 };
		}
		// Count how many commits behind
		const behindCount = execSync(`git rev-list --count ${deployedSha}..HEAD 2>/dev/null || echo ?`, { encoding: "utf-8", timeout: 5000 }).trim();
		return { name: `Deploy freshness: local ${localSha} != deployed ${deployedSha} (${behindCount} ahead)`, status: "warn", message: `Production is ${behindCount} commits behind`, ms: ms2 };
	} catch (err) {
		return { name: "Deploy freshness", status: "warn", message: err instanceof Error ? err.message : String(err), ms: Date.now() - start };
	}
}

// ── Migration sync check ──

function countLocalQuestions(): { inserts: number; deletes: number; expected: number } {
	const migrationsDir = resolve(__dirname, "../supabase/migrations");
	if (!existsSync(migrationsDir)) return { inserts: 0, deletes: 0, expected: 0 };

	let inserts = 0;
	let deletes = 0;

	const files = readdirSync(migrationsDir).filter(f => f.endsWith(".sql")).sort();
	for (const file of files) {
		const content = readFileSync(join(migrationsDir, file), "utf8");

		// Count INSERT value rows (lines starting with (section_id, ...)
		if (content.includes("INSERT INTO questions") || content.includes("insert into questions")) {
			inserts += content.split("\n").filter(line => /^\s*\(\s*\d+\s*,/.test(line)).length;
		}

		// Count DELETE IDs
		if (content.includes("DELETE FROM questions")) {
			const singleDeletes = content.match(/DELETE FROM questions\s+WHERE id = \d+/g);
			if (singleDeletes) deletes += singleDeletes.length;
			const inBlocks = content.match(/DELETE FROM questions\s+WHERE id IN \(([\s\S]*?)\)/g);
			if (inBlocks) {
				for (const block of inBlocks) {
					const ids = block.match(/\d{2,}/g); // IDs are multi-digit
					if (ids) deletes += ids.length;
				}
			}
		}
	}
	return { inserts, deletes, expected: inserts - deletes };
}

async function checkMigrationSync(): Promise<CheckResult> {
	if (!hasEnvFile) {
		return { name: "Migration sync", status: "skip", message: "No .env.local", ms: 0 };
	}
	const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
	const key = process.env.SUPABASE_SERVICE_ROLE_KEY;
	if (!url || !key) {
		return { name: "Migration sync", status: "skip", message: "Missing env vars", ms: 0 };
	}
	const start = Date.now();
	try {
		const local = countLocalQuestions();
		const { createClient } = await import("@supabase/supabase-js");
		const supabase = createClient(url, key);

		const { count: liveTotal, error } = await supabase
			.from("questions")
			.select("id", { count: "exact", head: true });
		const ms = Date.now() - start;

		if (error) {
			return { name: "Migration sync", status: "fail", message: error.message, ms };
		}

		if (liveTotal === null) {
			return { name: "Migration sync", status: "fail", message: "Could not get live count", ms };
		}

		const diff = local.expected - liveTotal;

		// If live count is close to expected (within 50 for historical dedup/edge cases), pass
		if (diff <= 50 && diff >= 0) {
			return {
				name: `Migration sync: ${liveTotal} live, ${local.inserts} inserts`,
				status: "pass",
				message: `DB has ${liveTotal} questions (${local.inserts} inserts - ${local.deletes} deletes = ${local.expected} expected)`,
				ms,
			};
		}

		// Live count exceeds local (manual additions or already applied) — pass
		if (liveTotal >= local.expected) {
			return {
				name: `Migration sync: ${liveTotal} live >= ${local.expected} expected`,
				status: "pass",
				message: `DB has ${liveTotal} questions, migrations expect ${local.expected}`,
				ms,
			};
		}

		// Significant gap: likely unapplied generation migrations
		const behind = local.expected - liveTotal;
		return {
			name: `Migration sync: ~${behind} questions not applied`,
			status: "fail",
			message: `DB has ${liveTotal} but migrations expect ${local.expected} (${local.inserts} inserts - ${local.deletes} deletes). Run: node scripts/apply-migrations.mjs`,
			ms,
		};
	} catch (err) {
		return {
			name: "Migration sync",
			status: "fail",
			message: err instanceof Error ? err.message : String(err),
			ms: Date.now() - start,
		};
	}
}

// ── Main ──

async function main() {
	log(bold("Slayer CPA Health Check"));
	log("========================");
	log(`Target: ${targetUrl}\n`);

	// Remote checks
	log(bold("Remote Checks"));
	const remoteResults: CheckResult[] = [];

	const [homepage, health] = await Promise.all([checkHomepage(), checkHealthEndpoint()]);
	remoteResults.push(homepage, health);
	log(formatResult(homepage));
	log(formatResult(health));

	// Route checks — run in parallel
	const routeResults = await Promise.all(ROUTE_CHECKS.map(checkRoute));
	for (const r of routeResults) {
		remoteResults.push(r);
		log(formatResult(r));
	}

	// Content page checks
	log(`\n${bold("Content Pages")}`);
	const contentResults = await Promise.all(CONTENT_PAGES.map(checkContentPage));
	for (const r of contentResults) {
		remoteResults.push(r);
		log(formatResult(r));
	}

	// SEO checks
	log(`\n${bold("SEO")}`);
	const [sitemap, robots, ssl] = await Promise.all([checkSitemap(), checkRobotsTxt(), checkSslCert()]);
	for (const r of [sitemap, robots, ssl]) {
		remoteResults.push(r);
		log(formatResult(r));
	}

	// Direct checks
	log(`\n${bold("Direct Checks")}`);
	const directResults: CheckResult[] = [];
	const [db, migSync, stripe, env, vercel, freshness] = await Promise.all([
		checkSupabaseDb(),
		checkMigrationSync(),
		checkStripePrice(),
		checkEnvConsistency(),
		checkVercelDeployment(),
		checkDeployFreshness(),
	]);
	directResults.push(db, migSync, stripe, env, vercel, freshness);
	for (const r of directResults) {
		log(formatResult(r));
	}

	// Summary
	const all = [...remoteResults, ...directResults];
	const passed = all.filter((r) => r.status === "pass").length;
	const failed = all.filter((r) => r.status === "fail").length;
	const warned = all.filter((r) => r.status === "warn").length;
	const skipped = all.filter((r) => r.status === "skip").length;
	const total = all.length - skipped;

	log(`\n${bold("Summary")}: ${passed}/${total} passed, ${failed} failed${warned ? `, ${warned} warnings` : ""}${skipped ? `, ${skipped} skipped` : ""}`);

	// JSON output
	if (outputJson) {
		const jsonOutput = {
			target: targetUrl,
			timestamp: new Date().toISOString(),
			remote: remoteResults.map(({ name, status, message, ms }) => ({ name, status, message, ms })),
			direct: directResults.map(({ name, status, message, ms }) => ({ name, status, message, ms })),
			summary: { passed, failed, warned, skipped, total },
		};
		console.log(JSON.stringify(jsonOutput, null, 2));
	}

	process.exit(failed > 0 ? 1 : 0);
}

main().catch((err) => {
	console.error("Fatal error:", err);
	process.exit(1);
});
