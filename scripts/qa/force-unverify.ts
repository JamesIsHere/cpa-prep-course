// Force-unverify a specific set of question IDs so the orchestrator's
// select-verify-candidates picks them up as candidates for re-verification.
//
// Reads IDs from a JSON file (default: docs/trust-audit-content-misplacement.json)
// and removes each from verified-ids.json pass[] across all sections. After the
// orchestrator runs, any true misplacements move to fail/review and the false
// positives flow back into pass on next pass verdict.
//
// Usage:
//   npx tsx scripts/qa/force-unverify.ts                   # dry-run default
//   npx tsx scripts/qa/force-unverify.ts --apply           # commit the pop
//   npx tsx scripts/qa/force-unverify.ts --file=<path> --apply

import { readFileSync, writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");
const verifiedPath = resolve(repoRoot, "docs/verified-ids.json");

const fileArg = process.argv
	.find((a) => a.startsWith("--file="))
	?.split("=")[1];
const APPLY = process.argv.includes("--apply");
const inputPath = resolve(
	repoRoot,
	fileArg ?? "docs/trust-audit-content-misplacement.json",
);

interface VerifiedShape {
	[section: string]: { pass: number[]; fail: number[]; review: number[] };
}

// Accept either { findings: [{id, section}, ...] } shape or a raw id list.
function loadTargetIds(): Set<number> {
	const raw = JSON.parse(readFileSync(inputPath, "utf8"));
	const ids = new Set<number>();
	if (Array.isArray(raw)) {
		for (const x of raw) {
			if (typeof x === "number") ids.add(x);
			else if (x && typeof x.id === "number") ids.add(x.id);
		}
	} else if (raw.findings && Array.isArray(raw.findings)) {
		for (const f of raw.findings) if (typeof f.id === "number") ids.add(f.id);
	} else {
		throw new Error(`Unrecognized shape in ${inputPath}`);
	}
	return ids;
}

const targets = loadTargetIds();
console.log(`Loaded ${targets.size} target IDs from ${inputPath}`);
console.log(`Mode: ${APPLY ? "APPLY" : "DRY RUN"}`);
console.log("");

const data = JSON.parse(readFileSync(verifiedPath, "utf8")) as VerifiedShape;

const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;
const perSection: Record<string, number> = {};
let totalPopped = 0;
let totalNotFoundInPass = 0;

for (const section of sections) {
	const bucket = data[section];
	if (!bucket) continue;
	const before = bucket.pass.length;
	const passSet = new Set(bucket.pass);
	const popped: number[] = [];
	for (const id of targets) {
		if (passSet.has(id)) {
			popped.push(id);
			passSet.delete(id);
		}
	}
	bucket.pass = [...passSet].sort((a, b) => a - b);
	perSection[section] = popped.length;
	totalPopped += popped.length;
	console.log(
		`  ${section.toUpperCase()}: popped ${popped.length} (pass ${before} → ${bucket.pass.length})`,
	);
}

totalNotFoundInPass = targets.size - totalPopped;

console.log("");
console.log(`Total popped across all sections: ${totalPopped}`);
if (totalNotFoundInPass > 0) {
	console.log(
		`  Note: ${totalNotFoundInPass} target IDs were NOT in pass (already in fail/review, or not in any section's pass)`,
	);
}

if (APPLY) {
	writeFileSync(verifiedPath, JSON.stringify(data, null, 2) + "\n");
	console.log(`\n✓ Wrote ${verifiedPath}`);
	console.log(
		"\nNext: run the orchestrator verify mode per section from a standalone PowerShell.",
	);
} else {
	console.log(
		"\nDry run. Re-run with --apply to commit the change to verified-ids.json.",
	);
}
