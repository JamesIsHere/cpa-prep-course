// One-time historical reconciliation of verified-ids.json against live DB + migration history.
//
// Operations:
//   1. Remove stale pass IDs  — IDs in pass[] that no longer exist in the live DB.
//   2. Promote A1 IDs to pass — live-DB IDs NOT in pass[] whose strongest UPDATE touch was a
//      substantive review (quality/fix/verify/upgrade/rewrite/critical/verification migration).
//
// A2 (metadata-only), A3 (stem rewrites), and B (never touched) are LEFT ALONE — they remain
// the legitimate trust gap and should be run through verify-correctness.ts.
//
// Usage:
//   npx tsx scripts/qa/trust-audit-reconcile.ts            # dry run
//   npx tsx scripts/qa/trust-audit-reconcile.ts --apply    # write changes

import { readFileSync, readdirSync, writeFileSync } from "fs";
import { resolve, dirname, join } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");
const verifiedPath = resolve(repoRoot, "docs/verified-ids.json");
const migrationsDir = resolve(repoRoot, "supabase/migrations");

const APPLY = process.argv.includes("--apply");

// ── Migration classification (must match trust-audit-classify.ts) ──
type Kind = "substantive" | "metadata" | "other";
const rank: Record<Kind, number> = { substantive: 2, other: 1, metadata: 0 };

function classifyMigration(filename: string): Kind {
	const l = filename.toLowerCase();
	if (
		/(_quality_|_fix_|_verify_|_rewrite_|_rewrites_|_upgrade_|_correctness_|_critical_|_verification_)/.test(
			l,
		)
	)
		return "substantive";
	if (
		/(_expand_|_gap_|_tier\d|_generate_|_blueprint_gap|_blueprint_final|_2026_blueprint|_update_2026_tax)/.test(
			l,
		)
	)
		return "substantive";
	if (
		/(_citation_|_blooms_|_bloom_|_difficulty_|_dedup_|_cleanup_|_rebalance_correct|_backfill_|_add_|_delete_|_seed_|_initial_|_schema_|_data_fix|_feedback|_policy|_cascade|_rpc|_indexes|_topic_scores)/.test(
			l,
		)
	)
		return "metadata";
	return "other";
}

// ── Scan migrations for strongest UPDATE kind per ID ──
async function scanMigrations(): Promise<Map<number, Kind>> {
	const strongest = new Map<number, Kind>();
	const files = readdirSync(migrationsDir).filter((f) => f.endsWith(".sql"));
	const pat = /UPDATE\s+questions\s+SET[\s\S]*?WHERE\s+id\s*=\s*(\d+)\s*;/gi;

	for (const f of files) {
		const kind = classifyMigration(f);
		const sql = readFileSync(join(migrationsDir, f), "utf8");
		let m: RegExpExecArray | null;
		while ((m = pat.exec(sql)) !== null) {
			const id = parseInt(m[1]);
			const prior = strongest.get(id);
			if (!prior || rank[kind] > rank[prior]) strongest.set(id, kind);
		}
	}
	return strongest;
}

interface VerifiedShape {
	[section: string]: { pass: number[]; fail: number[]; review: number[] };
}

async function main() {
	console.log("");
	console.log(`MODE: ${APPLY ? "APPLY (will write)" : "DRY RUN (no writes)"}`);
	console.log("");

	const verified = JSON.parse(
		readFileSync(verifiedPath, "utf8"),
	) as VerifiedShape;
	const strongest = await scanMigrations();
	console.log(`Scanned migrations: ${strongest.size} distinct UPDATEd IDs`);
	console.log("");

	const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;

	const summary: Array<{
		section: string;
		promoted: number;
		removed: number;
		passBefore: number;
		passAfter: number;
	}> = [];

	for (const section of sections) {
		const liveQuestions = await fetchAllQuestions(section);
		const liveIds = new Set(liveQuestions.map((q) => q.id));

		const data = verified[section] ?? { pass: [], fail: [], review: [] };
		const passBefore = data.pass.length;
		const passSet = new Set(data.pass);

		// (1) Remove stale pass IDs.
		const removed: number[] = [];
		for (const id of data.pass) {
			if (!liveIds.has(id)) removed.push(id);
		}
		const newPass = data.pass.filter((id) => liveIds.has(id));

		// (2) Promote A1: live IDs not in pass whose strongest touch was substantive.
		const promoted: number[] = [];
		for (const id of liveIds) {
			if (passSet.has(id)) continue;
			if (strongest.get(id) === "substantive") {
				promoted.push(id);
			}
		}

		newPass.push(...promoted);
		newPass.sort((a, b) => a - b);

		if (APPLY) {
			verified[section] = { ...data, pass: newPass };
		}

		summary.push({
			section: section.toUpperCase(),
			promoted: promoted.length,
			removed: removed.length,
			passBefore,
			passAfter: newPass.length,
		});
	}

	console.log("RECONCILE SUMMARY");
	console.log("=================");
	console.log("");
	console.log(
		"Section | Pass before | Stale removed | A1 promoted | Pass after",
	);
	console.log(
		"--------|-------------|---------------|-------------|-----------",
	);
	let tB = 0,
		tR = 0,
		tP = 0,
		tA = 0;
	for (const r of summary) {
		console.log(
			`${r.section.padEnd(7)} | ${String(r.passBefore).padStart(11)} | ${String(
				r.removed,
			).padStart(13)} | ${String(r.promoted).padStart(11)} | ${String(
				r.passAfter,
			).padStart(10)}`,
		);
		tB += r.passBefore;
		tR += r.removed;
		tP += r.promoted;
		tA += r.passAfter;
	}
	console.log(
		"--------|-------------|---------------|-------------|-----------",
	);
	console.log(
		`TOTAL   | ${String(tB).padStart(11)} | ${String(tR).padStart(13)} | ${String(
			tP,
		).padStart(11)} | ${String(tA).padStart(10)}`,
	);
	console.log("");

	if (APPLY) {
		writeFileSync(verifiedPath, JSON.stringify(verified, null, 2) + "\n");
		console.log(`✓ Wrote ${verifiedPath}`);
	} else {
		console.log("Dry run only. Re-run with --apply to commit.");
	}
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
