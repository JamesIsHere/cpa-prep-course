// Compare scan flag lists against the orchestrator's post-verification verdicts.
//
// Treats fail/review as "real misplacement" (true positive ground truth) and pass as
// "no misplacement" (true negative ground truth). Computes precision / recall against
// each scan and the v1∩v2 intersection.
//
// Recall is only meaningful within the union of scans' flagged sets — questions that
// neither scan flagged are not in the comparison, so the "recall" reported here is
// "recall across the candidates we audited," not bank-wide recall.

import { readFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const verifiedPath = resolve(repoRoot, "docs/verified-ids.json");
const v1Path = resolve(repoRoot, "docs/trust-audit-content-misplacement.json");
const v2Path = resolve(repoRoot, "docs/trust-audit-content-misplacement-v2.json");

interface VerifiedShape {
	[section: string]: { pass: number[]; fail: number[]; review: number[] };
}

function loadFlagged(path: string): Set<number> {
	const data = JSON.parse(readFileSync(path, "utf8"));
	const ids = new Set<number>();
	for (const f of data.findings ?? []) {
		if (typeof f.id === "number") ids.add(f.id);
	}
	return ids;
}

const v1Flagged = loadFlagged(v1Path);
const v2Flagged = loadFlagged(v2Path);
const verified = JSON.parse(readFileSync(verifiedPath, "utf8")) as VerifiedShape;

// Bank ground truth — every ID's current bucket
const bucketOf = new Map<number, "pass" | "fail" | "review">();
for (const section of Object.keys(verified)) {
	for (const id of verified[section].pass ?? []) bucketOf.set(id, "pass");
	for (const id of verified[section].fail ?? []) bucketOf.set(id, "fail");
	for (const id of verified[section].review ?? []) bucketOf.set(id, "review");
}

function score(scanName: string, flagged: Set<number>) {
	let tp = 0; // flagged AND in fail/review = real misplacement caught
	let fp = 0; // flagged AND in pass = false positive (orchestrator said it's fine)
	let unknown = 0; // flagged but not in any bucket (shouldn't happen)
	const tpIds: number[] = [];
	const fpIds: number[] = [];

	for (const id of flagged) {
		const b = bucketOf.get(id);
		if (b === "fail" || b === "review") {
			tp++;
			tpIds.push(id);
		} else if (b === "pass") {
			fp++;
			fpIds.push(id);
		} else {
			unknown++;
		}
	}

	const precision = tp + fp > 0 ? tp / (tp + fp) : 0;

	console.log("");
	console.log(`${scanName}`);
	console.log("─".repeat(scanName.length));
	console.log(`  Flagged: ${flagged.size}`);
	console.log(`  TP (correctly flagged → fail/review): ${tp}`);
	console.log(`  FP (false flag → pass):                ${fp}`);
	if (unknown > 0) console.log(`  Unknown bucket: ${unknown}`);
	console.log(`  Precision: ${(precision * 100).toFixed(1)}%`);

	return { tp, fp, tpIds: new Set(tpIds), fpIds: new Set(fpIds) };
}

console.log("");
console.log("SCAN vs ORCHESTRATOR VERDICT COMPARISON");
console.log("========================================");
console.log("Ground truth: post-orchestrator state of verified-ids.json.");
console.log(
	"  fail/review = orchestrator confirms misplacement (TRUE POSITIVE for the scan).",
);
console.log(
	"  pass        = orchestrator confirms keyed answer is correct (FALSE POSITIVE).",
);

const v1Result = score("v1 (Jaccard, no FP filter)", v1Flagged);
const v2Result = score("v2 (overlap coef + unique tokens + truncation)", v2Flagged);

// Intersection — high-precision subset
const intersection = new Set<number>();
for (const id of v1Flagged) if (v2Flagged.has(id)) intersection.add(id);
score("v1 ∩ v2 (intersection — high precision)", intersection);

// Union — high-recall superset (the union of "candidates we considered")
const union = new Set<number>([...v1Flagged, ...v2Flagged]);
score("v1 ∪ v2 (union — broadest coverage)", union);

console.log("");
console.log("CROSS-SCAN AGREEMENT");
console.log("─────────────────────");
console.log(`  v1 only: ${[...v1Flagged].filter((id) => !v2Flagged.has(id)).length}`);
console.log(`  v2 only: ${[...v2Flagged].filter((id) => !v1Flagged.has(id)).length}`);
console.log(`  Both:    ${intersection.size}`);

// Bank-wide ground truth
let totalFail = 0;
let totalReview = 0;
for (const section of Object.keys(verified)) {
	totalFail += (verified[section].fail ?? []).length;
	totalReview += (verified[section].review ?? []).length;
}
const totalReal = totalFail + totalReview;

console.log("");
console.log("BANK-WIDE GROUND TRUTH");
console.log("───────────────────────");
console.log(`  Total in fail:   ${totalFail}`);
console.log(`  Total in review: ${totalReview}`);
console.log(`  Total real misplacements: ${totalReal}`);

console.log("");
console.log("RECALL (against the orchestrator's verdict on flagged candidates)");
console.log("──────────────────────────────────────────────────────────────────");
console.log(
	`  v1 caught:        ${v1Result.tp} of ${totalReal} = ${
		totalReal > 0 ? ((v1Result.tp / totalReal) * 100).toFixed(1) : "n/a"
	}%`,
);
console.log(
	`  v2 caught:        ${v2Result.tp} of ${totalReal} = ${
		totalReal > 0 ? ((v2Result.tp / totalReal) * 100).toFixed(1) : "n/a"
	}%`,
);
console.log(
	`  v1 ∪ v2 caught:   ${union.size > 0 ? [...union].filter((id) => {
		const b = bucketOf.get(id);
		return b === "fail" || b === "review";
	}).length : 0} of ${totalReal}`,
);

console.log("");
console.log(
	"Note: recall here is bounded by what the scans flagged AND passed through to the orchestrator.",
);
console.log(
	"      A real misplacement in the bank that NEITHER scan flagged is not represented in the verdicts.",
);
