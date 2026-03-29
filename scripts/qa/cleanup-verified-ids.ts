// Cleanup verified-ids.json after fixing/deleting flagged questions.
//
// Extracts question IDs from a migration file (UPDATE or DELETE statements)
// and removes them from the fail/review arrays in verified-ids.json.
//
// Usage:
//   npx tsx scripts/qa/cleanup-verified-ids.ts <migration-file>
//   npx tsx scripts/qa/cleanup-verified-ids.ts --ids=444,2047,4741 --section=far
//   npx tsx scripts/qa/cleanup-verified-ids.ts --dry-run <migration-file>

import { readFileSync, writeFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));

const VERIFIED_IDS_PATH = resolve(__dirname, "../../docs/verified-ids.json");

interface VerifiedIds {
	[section: string]: {
		pass: number[];
		fail: number[];
		review: number[];
	};
}

// ── Extract question IDs from SQL migration ──────────────────────

function extractIdsFromSql(sql: string): number[] {
	const ids = new Set<number>();

	// UPDATE questions SET ... WHERE id = N;
	const updatePattern = /UPDATE\s+questions\s+SET[\s\S]*?WHERE\s+id\s*=\s*(\d+)\s*;/gi;
	let m: RegExpExecArray | null;
	while ((m = updatePattern.exec(sql)) !== null) {
		ids.add(parseInt(m[1]));
	}

	// DELETE FROM questions WHERE id = N;
	const deletePattern = /DELETE\s+FROM\s+questions\s+WHERE\s+id\s*=\s*(\d+)\s*;/gi;
	while ((m = deletePattern.exec(sql)) !== null) {
		ids.add(parseInt(m[1]));
	}

	// DELETE FROM questions WHERE id IN (N, N, ...);
	const deleteInPattern =
		/DELETE\s+FROM\s+questions\s+WHERE\s+id\s+IN\s*\(([^)]+)\)\s*;/gi;
	while ((m = deleteInPattern.exec(sql)) !== null) {
		for (const n of m[1].split(",")) {
			const id = parseInt(n.trim());
			if (!isNaN(id)) ids.add(id);
		}
	}

	return [...ids].sort((a, b) => a - b);
}

// ── Determine section from question IDs ──────────────────────────

function findSectionsForIds(
	data: VerifiedIds,
	ids: number[],
): Map<string, number[]> {
	const result = new Map<string, number[]>();
	const idSet = new Set(ids);

	for (const [section, lists] of Object.entries(data)) {
		const found: number[] = [];
		for (const id of [...lists.fail, ...lists.review]) {
			if (idSet.has(id)) found.push(id);
		}
		if (found.length > 0) {
			result.set(section, found.sort((a, b) => a - b));
		}
	}

	return result;
}

// ── Remove IDs from fail/review, optionally move to pass ─────────

function removeIds(
	data: VerifiedIds,
	section: string,
	ids: number[],
): { removedFromFail: number[]; removedFromReview: number[] } {
	const idSet = new Set(ids);
	const sectionData = data[section];
	if (!sectionData) return { removedFromFail: [], removedFromReview: [] };

	const removedFromFail = sectionData.fail.filter((id) => idSet.has(id));
	const removedFromReview = sectionData.review.filter((id) => idSet.has(id));

	sectionData.fail = sectionData.fail.filter((id) => !idSet.has(id));
	sectionData.review = sectionData.review.filter((id) => !idSet.has(id));

	return { removedFromFail, removedFromReview };
}

// ── CLI ──────────────────────────────────────────────────────────

const args = process.argv.slice(2);
const dryRun = args.includes("--dry-run");
const filteredArgs = args.filter((a) => a !== "--dry-run");

let idsToClean: number[] = [];
let explicitSection: string | undefined;

// Parse --ids=N,N,N and --section=xxx
const idsArg = filteredArgs.find((a) => a.startsWith("--ids="));
const sectionArg = filteredArgs.find((a) => a.startsWith("--section="));

if (idsArg) {
	idsToClean = idsArg
		.slice(6)
		.split(",")
		.map((s) => parseInt(s.trim()))
		.filter((n) => !isNaN(n));
	if (sectionArg) {
		explicitSection = sectionArg.slice(10);
	}
} else {
	// Read migration file
	const migrationFile = filteredArgs.find((a) => !a.startsWith("--"));
	if (!migrationFile) {
		console.error(
			"Usage: npx tsx scripts/qa/cleanup-verified-ids.ts <migration-file>",
		);
		console.error(
			"       npx tsx scripts/qa/cleanup-verified-ids.ts --ids=444,2047 --section=far",
		);
		process.exit(1);
	}

	const filePath = resolve(process.cwd(), migrationFile);
	let sql: string;
	try {
		sql = readFileSync(filePath, "utf-8");
	} catch {
		console.error(`Cannot read file: ${filePath}`);
		process.exit(1);
	}

	idsToClean = extractIdsFromSql(sql);
	if (idsToClean.length === 0) {
		console.log("No question IDs found in migration. Nothing to clean up.");
		process.exit(0);
	}
}

// Load verified-ids.json
let data: VerifiedIds;
try {
	data = JSON.parse(readFileSync(VERIFIED_IDS_PATH, "utf-8"));
} catch {
	console.error(`Cannot read: ${VERIFIED_IDS_PATH}`);
	process.exit(1);
}

// Find which sections contain these IDs
let sectionsToClean: Map<string, number[]>;

if (explicitSection) {
	// Only look in the specified section
	sectionsToClean = new Map();
	const sectionData = data[explicitSection];
	if (sectionData) {
		const idSet = new Set(idsToClean);
		const found = [...sectionData.fail, ...sectionData.review].filter((id) =>
			idSet.has(id),
		);
		if (found.length > 0) {
			sectionsToClean.set(explicitSection, found);
		}
	}
} else {
	sectionsToClean = findSectionsForIds(data, idsToClean);
}

if (sectionsToClean.size === 0) {
	console.log(
		`No matching IDs found in fail/review lists. IDs checked: ${idsToClean.join(", ")}`,
	);
	process.exit(0);
}

// Remove and report
let totalRemoved = 0;

for (const [section, ids] of sectionsToClean) {
	const { removedFromFail, removedFromReview } = removeIds(data, section, ids);
	const count = removedFromFail.length + removedFromReview.length;
	totalRemoved += count;

	if (removedFromFail.length > 0) {
		console.log(
			`  ${section.toUpperCase()} fail:   removed ${removedFromFail.length} → [${removedFromFail.join(", ")}]`,
		);
	}
	if (removedFromReview.length > 0) {
		console.log(
			`  ${section.toUpperCase()} review: removed ${removedFromReview.length} → [${removedFromReview.join(", ")}]`,
		);
	}
}

if (dryRun) {
	console.log(`\nDry run: would remove ${totalRemoved} IDs. No file written.`);
	process.exit(0);
}

// Write back
writeFileSync(VERIFIED_IDS_PATH, JSON.stringify(data, null, 2) + "\n");
console.log(
	`\nCleaned ${totalRemoved} IDs from verified-ids.json.`,
);
