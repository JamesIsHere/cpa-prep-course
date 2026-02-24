// Post-generation duplicate check — compares new INSERT stems against existing DB stems
// Usage: npx tsx scripts/qa/check-generation-duplicates.ts --migration=path/to/file.sql --section=aud

import { readFileSync } from "fs";
import { resolve } from "path";
import { trigrams, jaccardSimilarity } from "./utils";
import { fetchAllQuestions } from "./db-client";

const migrationArg = process.argv
	.find((a) => a.startsWith("--migration="))
	?.split("=")[1];
const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];

if (!migrationArg || !sectionArg) {
	console.error(
		"Usage: npx tsx scripts/qa/check-generation-duplicates.ts --migration=path/to/file.sql --section=aud",
	);
	process.exit(1);
}

interface DuplicateHit {
	newStem: string;
	existingStem: string;
	similarity: number;
	severity: "near-duplicate" | "likely-duplicate";
}

async function main() {
	// Read migration file and extract INSERT stems
	const filePath = resolve(process.cwd(), migrationArg!);
	let sql: string;
	try {
		sql = readFileSync(filePath, "utf-8");
	} catch {
		console.error(`Cannot read file: ${filePath}`);
		process.exit(1);
	}

	// Parse stems from INSERT VALUES tuples
	// Matches 8-column format: (section_id, 'topic', 'stem', 'choices'::jsonb, correct_index, 'explanation', 'difficulty', cognitive_level)
	const fullSql = sql.replace(/\n/g, " ");
	const tuplePattern =
		/\(\s*\d+\s*,\s*'(?:[^']|'')*?'\s*,\s*'((?:[^']|'')*?)'\s*,\s*'\[(?:[^']|'')*?\]'::jsonb\s*,\s*\d+\s*,\s*'(?:[^']|'')*?'\s*,\s*'(?:easy|medium|hard)'\s*,\s*\d+\s*\)/g;

	const newStems: string[] = [];
	let match: RegExpExecArray | null;
	while ((match = tuplePattern.exec(fullSql)) !== null) {
		const stem = match[1].replace(/''/g, "'");
		// Skip TODO placeholders
		if (!/\bTODO\b/.test(stem)) {
			newStems.push(stem);
		}
	}

	// Also try 7-column format (without cognitive_level)
	const tuplePattern7 =
		/\(\s*\d+\s*,\s*'(?:[^']|'')*?'\s*,\s*'((?:[^']|'')*?)'\s*,\s*'\[(?:[^']|'')*?\]'::jsonb\s*,\s*\d+\s*,\s*'(?:[^']|'')*?'\s*,\s*'(?:easy|medium|hard)'\s*\)/g;

	while ((match = tuplePattern7.exec(fullSql)) !== null) {
		const stem = match[1].replace(/''/g, "'");
		if (!/\bTODO\b/.test(stem) && !newStems.includes(stem)) {
			newStems.push(stem);
		}
	}

	if (newStems.length === 0) {
		console.error("No completed INSERT stems found in migration file.");
		console.error("(TODO placeholders are excluded from duplicate checking.)");
		process.exit(0);
	}

	console.error(`Found ${newStems.length} new stems to check for duplicates`);

	// Fetch existing questions for the section
	const existing = await fetchAllQuestions(sectionArg!);
	console.error(`Loaded ${existing.length} existing questions for ${sectionArg!.toUpperCase()}`);

	// Pre-compute trigrams for existing stems, grouped by topic
	const existingTrigrams = existing.map((q) => ({
		stem: q.stem,
		topic: q.topic,
		tris: trigrams(q.stem),
	}));

	// Check each new stem against all existing
	const hits: DuplicateHit[] = [];
	for (const newStem of newStems) {
		const newTris = trigrams(newStem);

		for (const ex of existingTrigrams) {
			// Size pre-filter
			const sizeA = newTris.size;
			const sizeB = ex.tris.size;
			const maxSize = Math.max(sizeA, sizeB);
			if (maxSize > 0 && Math.abs(sizeA - sizeB) / maxSize > 0.4) continue;

			const sim = jaccardSimilarity(newTris, ex.tris);
			if (sim > 0.6) {
				hits.push({
					newStem: newStem.slice(0, 100),
					existingStem: ex.stem.slice(0, 100),
					similarity: Math.round(sim * 1000) / 1000,
					severity: sim > 0.8 ? "likely-duplicate" : "near-duplicate",
				});
			}
		}
	}

	// Also check new stems against each other
	const newTrigrams = newStems.map((s) => ({ stem: s, tris: trigrams(s) }));
	for (let i = 0; i < newTrigrams.length; i++) {
		for (let j = i + 1; j < newTrigrams.length; j++) {
			const sizeA = newTrigrams[i].tris.size;
			const sizeB = newTrigrams[j].tris.size;
			const maxSize = Math.max(sizeA, sizeB);
			if (maxSize > 0 && Math.abs(sizeA - sizeB) / maxSize > 0.4) continue;

			const sim = jaccardSimilarity(newTrigrams[i].tris, newTrigrams[j].tris);
			if (sim > 0.6) {
				hits.push({
					newStem: newTrigrams[i].stem.slice(0, 100),
					existingStem: newTrigrams[j].stem.slice(0, 100),
					similarity: Math.round(sim * 1000) / 1000,
					severity: sim > 0.8 ? "likely-duplicate" : "near-duplicate",
				});
			}
		}
	}

	// Report
	hits.sort((a, b) => b.similarity - a.similarity);

	const likelyDupes = hits.filter((h) => h.severity === "likely-duplicate");
	const nearDupes = hits.filter((h) => h.severity === "near-duplicate");

	console.error(`\nDuplicate check: ${newStems.length} new stems vs ${existing.length} existing`);

	if (likelyDupes.length > 0) {
		console.error(`\nLIKELY DUPLICATES (${likelyDupes.length}):`);
		for (const h of likelyDupes) {
			console.error(`  [${h.similarity}] NEW: "${h.newStem}..."`);
			console.error(`           OLD: "${h.existingStem}..."`);
		}
	}

	if (nearDupes.length > 0) {
		console.error(`\nNEAR DUPLICATES — warnings (${nearDupes.length}):`);
		for (const h of nearDupes.slice(0, 10)) {
			console.error(`  [${h.similarity}] NEW: "${h.newStem}..."`);
			console.error(`           OLD: "${h.existingStem}..."`);
		}
		if (nearDupes.length > 10) {
			console.error(`  ... and ${nearDupes.length - 10} more`);
		}
	}

	if (likelyDupes.length === 0 && nearDupes.length === 0) {
		console.error("\nNo duplicates found. All clear.");
	}

	// Exit code: 1 if likely duplicates, 0 otherwise
	if (likelyDupes.length > 0) {
		console.error(`\nFAILED: ${likelyDupes.length} likely duplicates found (>0.8 similarity)`);
		process.exit(1);
	}

	if (nearDupes.length > 0) {
		console.error(`\nPASSED with ${nearDupes.length} warnings (0.6-0.8 similarity)`);
	}

	process.exit(0);
}

main();
