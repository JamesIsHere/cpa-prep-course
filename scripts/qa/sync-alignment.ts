// Validate and sync alignment CSVs against sections.ts + MDX filesystem.
// Catches stale "Our Status" values in AICPA blueprint mapping CSVs.
//
// Usage: npm run sync-alignment
//        npm run sync-alignment -- --check   (exit 1 if stale, don't fix)

import { readFileSync, writeFileSync, existsSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { allSections } from "../../src/lib/sections";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");

// ── Config ──────────────────────────────────────────────────────────
// Add new alignment CSVs here as they're created for other sections
const alignmentFiles: { csv: string; sectionCode: string }[] = [
	{
		csv: "alignment/csv/aicpa-far-blueprint-mapping.csv",
		sectionCode: "far",
	},
];

// ── Helpers ─────────────────────────────────────────────────────────

function parseCsv(content: string): { headers: string[]; rows: string[][] } {
	const lines = content.replace(/\r\n/g, "\n").replace(/\r/g, "\n").split("\n").filter((l) => l.trim());
	const headers = parseCsvLine(lines[0]);
	const rows = lines.slice(1).map(parseCsvLine);
	return { headers, rows };
}

function parseCsvLine(line: string): string[] {
	const fields: string[] = [];
	let current = "";
	let inQuotes = false;
	for (let i = 0; i < line.length; i++) {
		const ch = line[i];
		if (ch === '"') {
			if (inQuotes && line[i + 1] === '"') {
				current += '"';
				i++;
			} else {
				inQuotes = !inQuotes;
			}
		} else if (ch === "," && !inQuotes) {
			fields.push(current);
			current = "";
		} else {
			current += ch;
		}
	}
	fields.push(current);
	return fields;
}

function toCsvLine(fields: string[]): string {
	return fields
		.map((f) => {
			if (f.includes(",") || f.includes('"') || f.includes("\n")) {
				return `"${f.replace(/"/g, '""')}"`;
			}
			return f;
		})
		.join(",");
}

/** Build lesson registry: lesson number -> { slug, title, contentPath, mdxExists } */
function buildLessonRegistry(sectionCode: string) {
	const section = allSections.find((s) => s.code === sectionCode);
	if (!section) {
		console.error(`Section "${sectionCode}" not found in sections.ts`);
		process.exit(1);
	}

	const registry = new Map<
		string,
		{ slug: string; title: string; contentPath: string; mdxExists: boolean }
	>();

	for (const lesson of section.lessons) {
		// Extract lesson number from slug (e.g., "01-financial-reporting-for-profit" -> "01")
		const match = lesson.slug.match(/^(\d+)-/);
		if (!match) continue;
		const num = match[1].replace(/^0+/, "") || "0"; // strip leading zeros for comparison

		const mdxPath = resolve(root, "src/content", `${lesson.contentPath}.mdx`);
		registry.set(num, {
			slug: lesson.slug,
			title: lesson.title,
			contentPath: lesson.contentPath,
			mdxExists: existsSync(mdxPath),
		});
	}

	return registry;
}

// ── Main ────────────────────────────────────────────────────────────

const checkOnly = process.argv.includes("--check");
let totalStale = 0;
let totalFixed = 0;
let totalMissing = 0;

for (const { csv, sectionCode } of alignmentFiles) {
	const csvPath = resolve(root, csv);
	if (!existsSync(csvPath)) {
		console.error(`❌ CSV not found: ${csv}`);
		process.exit(1);
	}

	const registry = buildLessonRegistry(sectionCode);
	const content = readFileSync(csvPath, "utf-8");
	const { headers, rows } = parseCsv(content);

	const statusIdx = headers.indexOf("Our Status");
	const lessonIdx = headers.indexOf("Our Lesson #");

	if (statusIdx === -1 || lessonIdx === -1) {
		console.error(`❌ CSV missing required columns ("Our Status", "Our Lesson #"): ${csv}`);
		process.exit(1);
	}

	console.log(`\n📋 ${csv} (section: ${sectionCode.toUpperCase()})`);
	console.log("─".repeat(70));

	const staleRows: { row: number; lessonNum: string; oldStatus: string; newStatus: string }[] =
		[];
	const missingMdx: { lessonNum: string; contentPath: string }[] = [];

	for (let i = 0; i < rows.length; i++) {
		const row = rows[i];
		const lessonNum = row[lessonIdx]?.trim().replace(/^0+/, "") || "";
		const oldStatus = row[statusIdx]?.trim() || "";
		const info = registry.get(lessonNum);

		if (!info) {
			// Lesson number in CSV doesn't exist in sections.ts
			if (oldStatus !== "UNREGISTERED") {
				staleRows.push({
					row: i + 2,
					lessonNum,
					oldStatus,
					newStatus: "UNREGISTERED",
				});
			}
			continue;
		}

		if (!info.mdxExists) {
			missingMdx.push({ lessonNum, contentPath: info.contentPath });
			if (oldStatus !== "MISSING MDX") {
				staleRows.push({
					row: i + 2,
					lessonNum,
					oldStatus,
					newStatus: "MISSING MDX",
				});
			}
			continue;
		}

		// MDX exists and lesson is registered — status should be LIVE
		if (oldStatus !== "LIVE") {
			staleRows.push({
				row: i + 2,
				lessonNum,
				oldStatus,
				newStatus: "LIVE",
			});
		}
	}

	// Check for lessons in sections.ts not referenced in CSV
	const csvLessons = new Set(rows.map((r) => r[lessonIdx]?.trim().replace(/^0+/, "")));
	const unreferencedLessons: string[] = [];
	for (const [num, info] of registry) {
		if (!csvLessons.has(num)) {
			unreferencedLessons.push(`Lesson ${num.padStart(2, "0")} (${info.title})`);
		}
	}

	// Report
	if (staleRows.length === 0 && missingMdx.length === 0 && unreferencedLessons.length === 0) {
		console.log("✅ All lesson statuses match filesystem. No changes needed.");
	} else {
		if (staleRows.length > 0) {
			// Deduplicate for display (same lesson appears on many task rows)
			const uniqueByLesson = new Map<string, (typeof staleRows)[0]>();
			for (const s of staleRows) {
				if (!uniqueByLesson.has(s.lessonNum)) {
					uniqueByLesson.set(s.lessonNum, s);
				}
			}

			console.log(`\n⚠️  ${staleRows.length} stale rows (${uniqueByLesson.size} unique lessons):\n`);
			for (const [, s] of uniqueByLesson) {
				const truncOld =
					s.oldStatus.length > 45 ? s.oldStatus.slice(0, 42) + "..." : s.oldStatus;
				console.log(
					`  Lesson ${s.lessonNum.padStart(2, "0")}: ${truncOld.padEnd(48)} → ${s.newStatus}`,
				);
			}
		}

		if (missingMdx.length > 0) {
			console.log(`\n❌ ${missingMdx.length} lessons registered but MDX file missing:\n`);
			for (const m of missingMdx) {
				console.log(
					`  Lesson ${m.lessonNum.padStart(2, "0")}: src/content/${m.contentPath}.mdx`,
				);
			}
		}

		if (unreferencedLessons.length > 0) {
			console.log(
				`\n⚠️  ${unreferencedLessons.length} lessons in sections.ts not referenced in CSV:\n`,
			);
			for (const l of unreferencedLessons) {
				console.log(`  ${l}`);
			}
		}

		totalStale += staleRows.length;
		totalMissing += missingMdx.length;

		if (!checkOnly && staleRows.length > 0) {
			// Apply fixes
			for (const s of staleRows) {
				rows[s.row - 2][statusIdx] = s.newStatus;
			}

			const output = [toCsvLine(headers), ...rows.map(toCsvLine)].join("\n") + "\n";
			writeFileSync(csvPath, output, "utf-8");
			totalFixed += staleRows.length;
			console.log(`\n✅ Fixed ${staleRows.length} rows in ${csv}`);
		}
	}
}

// Summary
console.log("\n" + "═".repeat(70));
if (totalStale === 0 && totalMissing === 0) {
	console.log("✅ All alignment CSVs in sync with filesystem.");
} else if (checkOnly) {
	console.log(
		`❌ ${totalStale} stale status entries, ${totalMissing} missing MDX files. Run without --check to fix.`,
	);
	process.exit(1);
} else {
	console.log(`✅ Fixed ${totalFixed} stale entries. ${totalMissing} missing MDX files remain.`);
}
