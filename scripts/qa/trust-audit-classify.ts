// Classify unverified IDs by the KIND of migration that touched them.
//
// Categories (by strongest evidence of review):
//   A1 — substantive: touched by quality/fix/verify/rewrite migration (real content review)
//   A2 — metadata only: touched only by citation/blooms/difficulty migrations (no correctness review)
//   B  — never touched: never in pass, never UPDATEd
//
// True trust gap = A2 + B. A1 is safe to promote to pass in the one-time reconciliation.

import { readFileSync, readdirSync, writeFileSync } from "fs";
import { resolve, dirname, join } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const unverified = JSON.parse(
	readFileSync(resolve(repoRoot, "docs/trust-audit-unverified.json"), "utf8"),
) as Record<string, number[]>;

const migrationsDir = resolve(repoRoot, "supabase/migrations");
const files = readdirSync(migrationsDir).filter((f) => f.endsWith(".sql"));

type Kind = "substantive" | "metadata" | "other";

// Classify migration filename into substantive vs metadata-only.
// Substantive = real content review (quality rewrite, fix after verify, verify pass).
// Metadata = tag/flag change (citation add, blooms relabel, difficulty relabel, dedup).
function classifyMigration(filename: string): Kind {
	const lower = filename.toLowerCase();
	// Substantive = editorial review applied to question content.
	if (
		/(_quality_|_fix_|_verify_|_rewrite_|_rewrites_|_upgrade_|_correctness_|_critical_|_verification_)/.test(
			lower,
		)
	)
		return "substantive";
	// Editorial generation through the orchestrator pipeline (validate-migration enforces style guide).
	if (
		/(_expand_|_gap_|_tier\d|_generate_|_blueprint_gap|_blueprint_final|_2026_blueprint|_expand_bank|_update_2026_tax)/.test(
			lower,
		)
	)
		return "substantive";
	// Metadata / bulk mechanical changes (no per-question correctness review).
	if (
		/(_citation_|_blooms_|_bloom_|_difficulty_|_dedup_|_cleanup_|_rebalance_correct|_backfill_|_add_|_delete_|_seed_|_initial_|_schema_|_data_fix|_feedback|_policy|_cascade|_rpc|_indexes|_topic_scores)/.test(
			lower,
		)
	)
		return "metadata";
	return "other";
}

// Per-ID, track the STRONGEST kind of migration that touched it.
const strongestKind = new Map<number, Kind>();
const rank: Record<Kind, number> = { substantive: 2, other: 1, metadata: 0 };

const updatePat = /UPDATE\s+questions\s+SET[\s\S]*?WHERE\s+id\s*=\s*(\d+)\s*;/gi;

const kindCounts = { substantive: 0, metadata: 0, other: 0 };

for (const f of files) {
	const kind = classifyMigration(f);
	kindCounts[kind]++;
	const sql = readFileSync(join(migrationsDir, f), "utf8");
	let m: RegExpExecArray | null;
	while ((m = updatePat.exec(sql)) !== null) {
		const id = parseInt(m[1]);
		const prior = strongestKind.get(id);
		if (!prior || rank[kind] > rank[prior]) {
			strongestKind.set(id, kind);
		}
	}
}

console.log(
	`Scanned ${files.length} migrations — substantive=${kindCounts.substantive}, metadata=${kindCounts.metadata}, other=${kindCounts.other}`,
);
console.log(`Total distinct IDs ever UPDATEd: ${strongestKind.size}`);
console.log("");

console.log("UNVERIFIED BREAKDOWN BY REVIEW STRENGTH");
console.log("========================================");
console.log("");
console.log(
	"Section | Unver | A1 subst | A2 meta | A3 other | B never | True gap (A2+A3+B) | %",
);
console.log(
	"--------|-------|----------|---------|----------|---------|--------------------|----",
);

let tU = 0,
	tA1 = 0,
	tA2 = 0,
	tA3 = 0,
	tB = 0;
const promotable: Record<string, number[]> = {};
const trueGap: Record<string, number[]> = {};

for (const section of ["aud", "far", "reg", "bar", "isc", "tcp"]) {
	const ids = unverified[section] ?? [];
	const a1: number[] = [],
		a2: number[] = [],
		a3: number[] = [],
		b: number[] = [];
	for (const id of ids) {
		const kind = strongestKind.get(id);
		if (kind === "substantive") a1.push(id);
		else if (kind === "metadata") a2.push(id);
		else if (kind === "other") a3.push(id);
		else b.push(id);
	}
	tU += ids.length;
	tA1 += a1.length;
	tA2 += a2.length;
	tA3 += a3.length;
	tB += b.length;
	promotable[section] = a1;
	trueGap[section] = [...a2, ...a3, ...b].sort((x, y) => x - y);
	const gap = a2.length + a3.length + b.length;
	const pct = ids.length > 0 ? ((gap / ids.length) * 100).toFixed(0) : "0";
	console.log(
		`${section.toUpperCase().padEnd(7)} | ${String(ids.length).padStart(5)} | ${String(
			a1.length,
		).padStart(8)} | ${String(a2.length).padStart(7)} | ${String(a3.length).padStart(
			8,
		)} | ${String(b.length).padStart(7)} | ${String(gap).padStart(18)} | ${pct.padStart(
			2,
		)}%`,
	);
}
console.log(
	"--------|-------|----------|---------|----------|---------|--------------------|----",
);
const totalGap = tA2 + tA3 + tB;
const totalPct = tU > 0 ? ((totalGap / tU) * 100).toFixed(0) : "0";
console.log(
	`TOTAL   | ${String(tU).padStart(5)} | ${String(tA1).padStart(8)} | ${String(
		tA2,
	).padStart(7)} | ${String(tA3).padStart(8)} | ${String(tB).padStart(7)} | ${String(
		totalGap,
	).padStart(18)} | ${totalPct.padStart(2)}%`,
);
console.log("");
console.log("Legend:");
console.log(
	"  A1 substantive = touched by quality/fix/verify/upgrade migration — promote to pass",
);
console.log(
	"  A2 metadata    = touched ONLY by citation/blooms/difficulty/dedup — NOT a review",
);
console.log(
	"  A3 other       = touched by uncategorized migration (manual inspection needed)",
);
console.log("  B  never       = never UPDATEd — raw, never reviewed");

writeFileSync(
	resolve(repoRoot, "docs/trust-audit-promotable.json"),
	JSON.stringify(promotable, null, 2),
);
writeFileSync(
	resolve(repoRoot, "docs/trust-audit-true-gap.json"),
	JSON.stringify(trueGap, null, 2),
);
console.log("");
console.log("Promotable (A1) → docs/trust-audit-promotable.json");
console.log("True gap (A2+A3+B) → docs/trust-audit-true-gap.json");
