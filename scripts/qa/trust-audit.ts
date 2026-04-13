// Trust audit — reconcile verified-ids.json against live DB.
// Outputs per-section: live count, verified-pass count, unverified (in DB but not verified),
// and stale (in verified-ids but not in live DB — residue from dedup sweeps).

import { readFileSync, writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.js";

async function main() {

const __dirname = dirname(fileURLToPath(import.meta.url));
const verifiedPath = resolve(__dirname, "../../docs/verified-ids.json");

interface VerifiedShape {
	[section: string]: { pass: number[]; fail: number[]; review: number[] };
}

const verified = JSON.parse(readFileSync(verifiedPath, "utf8")) as VerifiedShape;

const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;

interface Row {
	section: string;
	live: number;
	verifiedPass: number;
	unverified: number;
	stale: number;
	coveragePct: string;
}

const rows: Row[] = [];
const unverifiedBySection: Record<string, number[]> = {};
const staleBySection: Record<string, number[]> = {};

for (const section of sections) {
	const liveQuestions = await fetchAllQuestions(section);
	const liveIds = new Set(liveQuestions.map((q) => q.id));

	const passIds = new Set(verified[section]?.pass ?? []);

	const unverified: number[] = [];
	for (const id of liveIds) if (!passIds.has(id)) unverified.push(id);

	const stale: number[] = [];
	for (const id of passIds) if (!liveIds.has(id)) stale.push(id);

	const verifiedInLive = passIds.size - stale.length;
	const coveragePct =
		liveIds.size > 0
			? ((verifiedInLive / liveIds.size) * 100).toFixed(1)
			: "0.0";

	rows.push({
		section: section.toUpperCase(),
		live: liveIds.size,
		verifiedPass: verifiedInLive,
		unverified: unverified.length,
		stale: stale.length,
		coveragePct,
	});

	unverifiedBySection[section] = unverified.sort((a, b) => a - b);
	staleBySection[section] = stale.sort((a, b) => a - b);
}

const totals = rows.reduce(
	(acc, r) => ({
		live: acc.live + r.live,
		verifiedPass: acc.verifiedPass + r.verifiedPass,
		unverified: acc.unverified + r.unverified,
		stale: acc.stale + r.stale,
	}),
	{ live: 0, verifiedPass: 0, unverified: 0, stale: 0 },
);
const totalCoverage = ((totals.verifiedPass / totals.live) * 100).toFixed(1);

console.log("");
console.log("TRUST AUDIT — verified-ids.json vs live DB");
console.log("============================================");
console.log("");
console.log(
	"Section | Live  | Verified | Unverified | Stale | Coverage",
);
console.log(
	"--------|-------|----------|------------|-------|---------",
);
for (const r of rows) {
	console.log(
		`${r.section.padEnd(7)} | ${String(r.live).padStart(5)} | ${String(
			r.verifiedPass,
		).padStart(8)} | ${String(r.unverified).padStart(10)} | ${String(
			r.stale,
		).padStart(5)} | ${r.coveragePct.padStart(6)}%`,
	);
}
console.log(
	"--------|-------|----------|------------|-------|---------",
);
console.log(
	`TOTAL   | ${String(totals.live).padStart(5)} | ${String(
		totals.verifiedPass,
	).padStart(8)} | ${String(totals.unverified).padStart(10)} | ${String(
		totals.stale,
	).padStart(5)} | ${totalCoverage.padStart(6)}%`,
);
console.log("");
console.log("Legend:");
console.log("  Verified   = IDs in verified-ids.pass AND still in live DB");
console.log("  Unverified = IDs in live DB NOT in verified-ids.pass");
console.log("  Stale      = IDs in verified-ids.pass NOT in live DB (dedup residue)");
console.log("");

// Dump unverified IDs to a file for Phase 2 consumption.
const outPath = resolve(__dirname, "../../docs/trust-audit-unverified.json");
writeFileSync(outPath, JSON.stringify(unverifiedBySection, null, 2));
console.log(`Unverified IDs written → ${outPath}`);

const stalePath = resolve(__dirname, "../../docs/trust-audit-stale.json");
writeFileSync(stalePath, JSON.stringify(staleBySection, null, 2));
console.log(`Stale IDs written        → ${stalePath}`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
