// Migration scaffold generator — produces SQL UPDATE statements from candidate JSON
// Usage (blooms):     ... | npx tsx scripts/qa/generate-migration.ts --mode=blooms --target=l1 --section=bar --batch=1
// Usage (difficulty): ... | npx tsx scripts/qa/generate-migration.ts --mode=difficulty --section=isc --batch=1
// Usage (citation):   ... | npx tsx scripts/qa/generate-migration.ts --mode=citation --section=aud --batch=1
// Usage (stem):       ... | npx tsx scripts/qa/generate-migration.ts --mode=stem --section=aud --batch=1

import { writeFileSync } from "fs";
import { resolve } from "path";
import {
	getNextMigrationNumber,
	getMigrationsDir,
	readStdin,
} from "./utils";

const migrationsDir = getMigrationsDir();

// Parse CLI args
const modeArg = (process.argv
	.find((a) => a.startsWith("--mode="))
	?.split("=")[1] || "blooms") as "blooms" | "difficulty" | "citation" | "stem";
const targetArg = process.argv
	.find((a) => a.startsWith("--target="))
	?.split("=")[1] as "l1" | "l3" | "l4" | undefined;
const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const batchArg = process.argv
	.find((a) => a.startsWith("--batch="))
	?.split("=")[1];

// Validate args based on mode
if (modeArg === "blooms" && (!targetArg || !sectionArg || !batchArg)) {
	console.error(
		"Usage: ... | npx tsx scripts/qa/generate-migration.ts --mode=blooms --target=l1 --section=bar --batch=1",
	);
	process.exit(1);
}
if (
	(modeArg === "difficulty" || modeArg === "citation" || modeArg === "stem") &&
	(!sectionArg || !batchArg)
) {
	console.error(
		`Usage: ... | npx tsx scripts/qa/generate-migration.ts --mode=${modeArg} --section=isc --batch=1`,
	);
	process.exit(1);
}

// Map target level to difficulty and cognitive_level (blooms mode)
const TARGET_MAP: Record<
	string,
	{ difficulty: string; cognitiveLevel: number }
> = {
	l1: { difficulty: "easy", cognitiveLevel: 1 },
	l3: { difficulty: "medium", cognitiveLevel: 3 },
	l4: { difficulty: "hard", cognitiveLevel: 4 },
};

let target: { difficulty: string; cognitiveLevel: number } | undefined;
if (modeArg === "blooms") {
	target = TARGET_MAP[targetArg!];
	if (!target) {
		console.error(`Invalid target: ${targetArg}. Must be l1, l3, or l4.`);
		process.exit(1);
	}
}

function countWords(text: string): number {
	return text.trim().split(/\s+/).filter(Boolean).length;
}

interface Candidate {
	id: number;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
	difficulty: string;
	topic: string;
}

async function main() {
	const input = await readStdin();
	let candidates: Candidate[];
	try {
		candidates = JSON.parse(input);
	} catch {
		console.error("Failed to parse JSON from stdin");
		process.exit(1);
	}

	if (!Array.isArray(candidates) || candidates.length === 0) {
		console.error("No candidates provided (expected JSON array on stdin)");
		process.exit(1);
	}

	const migNum = getNextMigrationNumber();
	const sectionUpper = sectionArg!.toUpperCase();
	const date = new Date().toISOString().split("T")[0];

	// Group by topic
	const byTopic = new Map<string, Candidate[]>();
	for (const c of candidates) {
		if (!byTopic.has(c.topic)) byTopic.set(c.topic, []);
		byTopic.get(c.topic)!.push(c);
	}
	const topicList = [...byTopic.keys()].sort().join(", ");

	// Mode-specific filename and header
	let fileName: string;
	let headerLines: string[];

	if (modeArg === "stem") {
		fileName = `${migNum}_stem_${sectionArg}_batch${batchArg}.sql`;
		headerLines = [
			`-- Migration: Stem expansion — ${sectionUpper} batch ${batchArg} (${candidates.length} questions)`,
			`-- Date: ${date}`,
			`-- Purpose: Expand ${candidates.length} short stems with scenario context for ${sectionUpper} section`,
			`-- Affected topics: ${topicList}`,
		];
	} else if (modeArg === "difficulty") {
		fileName = `${migNum}_difficulty_${sectionArg}_batch${batchArg}.sql`;
		headerLines = [
			`-- Migration: Difficulty rebalancing — ${sectionUpper} batch ${batchArg} (${candidates.length} questions)`,
			`-- Date: ${date}`,
			`-- Purpose: Rewrite ${candidates.length} easy questions to medium difficulty for ${sectionUpper} section`,
			`-- Affected topics: ${topicList}`,
		];
	} else if (modeArg === "citation") {
		fileName = `${migNum}_citation_${sectionArg}_batch${batchArg}.sql`;
		headerLines = [
			`-- Migration: Citation backfill — ${sectionUpper} batch ${batchArg} (${candidates.length} questions)`,
			`-- Date: ${date}`,
			`-- Purpose: Add standard citations to ${candidates.length} explanations for ${sectionUpper} section`,
			`-- Affected topics: ${topicList}`,
		];
	} else {
		const levelLabel = targetArg!.toUpperCase();
		fileName = `${migNum}_blooms_${targetArg}_${sectionArg}_batch${batchArg}.sql`;
		headerLines = [
			`-- Migration: Bloom's ${levelLabel} rebalancing — ${sectionUpper} batch ${batchArg} (${candidates.length} questions)`,
			`-- Date: ${date}`,
			`-- Purpose: Rewrite ${candidates.length} L2 (Application) questions to ${levelLabel} depth for ${sectionUpper} section`,
			`-- Affected topics: ${topicList}`,
		];
	}

	const lines: string[] = [...headerLines, "", "BEGIN;"];

	for (const [topic, items] of [...byTopic.entries()].sort((a, b) =>
		a[0].localeCompare(b[0]),
	)) {
		lines.push("");
		lines.push(
			"-- ============================================================",
		);
		lines.push(`-- ${topic.toUpperCase()} (${items.length} questions)`);
		lines.push(
			"-- ============================================================",
		);

		for (const q of items) {
			if (modeArg === "stem") {
				lines.push("");
				lines.push(`-- ID ${q.id}: ${q.topic} (${countWords(q.stem)} words)`);
				lines.push(`-- ORIGINAL STEM: ${q.stem}`);
				lines.push("UPDATE questions SET");
				lines.push(
					`  stem = 'TODO: expand stem with 2-4 sentence business scenario (target 25-50 words)'`,
				);
				lines.push(`WHERE id = ${q.id};`);
			} else if (modeArg === "citation") {
				lines.push("");
				lines.push(`-- ID ${q.id}: ${q.topic}`);
				lines.push("UPDATE questions SET");
				lines.push(
					`  explanation = 'TODO: rewrite explanation with standard citation and wrong-answer contrast'`,
				);
				lines.push(`WHERE id = ${q.id};`);
			} else if (modeArg === "difficulty") {
				lines.push("");
				lines.push(`-- ID ${q.id}: ${q.topic} — TODO: brief description`);
				lines.push(`-- correct_index = TODO (review answer key)`);
				lines.push("UPDATE questions SET");
				lines.push(`  stem = 'TODO: rewrite stem for medium difficulty',`);
				lines.push(
					`  choices = '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb,`,
				);
				lines.push(
					`  explanation = 'TODO: write explanation with standard citation and wrong-answer contrast',`,
				);
				lines.push(`  correct_index = ${q.correct_index},`);
				lines.push(`  difficulty = 'medium',`);
				lines.push(`  cognitive_level = 2`);
				lines.push(`WHERE id = ${q.id};`);
			} else {
				const levelLabel = targetArg!.toUpperCase();
				lines.push("");
				lines.push(`-- ID ${q.id}: ${q.topic} — TODO: brief description`);
				lines.push(`-- correct_index = TODO (review answer key)`);
				lines.push("UPDATE questions SET");
				lines.push(`  stem = 'TODO: rewrite stem for ${levelLabel} depth',`);
				lines.push(
					`  choices = '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb,`,
				);
				lines.push(
					`  explanation = 'TODO: write explanation with standard citation and wrong-answer contrast',`,
				);
				lines.push(`  correct_index = ${q.correct_index},`);
				lines.push(`  difficulty = '${target!.difficulty}',`);
				lines.push(`  cognitive_level = ${target!.cognitiveLevel}`);
				lines.push(`WHERE id = ${q.id};`);
			}
		}
	}

	lines.push("");
	lines.push("COMMIT;");
	lines.push("");

	const outputPath = resolve(migrationsDir, fileName);
	writeFileSync(outputPath, lines.join("\n"));
	console.error(`\nGenerated: ${outputPath}`);
	console.error(
		`  ${candidates.length} question scaffolds across ${byTopic.size} topics`,
	);
	if (modeArg === "stem") {
		console.error(`  Mode: stem-only expansion (scenario context)`);
	} else if (modeArg === "difficulty") {
		console.error(`  Target: medium (difficulty='medium', cognitive_level=2)`);
	} else if (modeArg === "citation") {
		console.error(`  Mode: explanation-only citation backfill`);
	} else {
		console.error(
			`  Target: ${targetArg!.toUpperCase()} (${target!.difficulty}, cognitive_level=${target!.cognitiveLevel})`,
		);
	}
	console.error(`\nNext: Fill in TODO placeholders, then run:`);
	console.error(`  npm run validate-migration ${fileName}`);
}

main();
