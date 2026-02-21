// Migration scaffold generator — produces SQL UPDATE statements from candidate JSON
// Usage: npx tsx scripts/qa/select-l2-candidates.ts --section=bar --count=23 --target=l1 | npx tsx scripts/qa/generate-migration.ts --target=l1 --section=bar --batch=1

import { readdirSync, writeFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const migrationsDir = resolve(__dirname, "../../supabase/migrations");

// Parse CLI args
const targetArg = process.argv
	.find((a) => a.startsWith("--target="))
	?.split("=")[1] as "l1" | "l3" | "l4" | undefined;
const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const batchArg = process.argv
	.find((a) => a.startsWith("--batch="))
	?.split("=")[1];

if (!targetArg || !sectionArg || !batchArg) {
	console.error(
		"Usage: ... | npx tsx scripts/qa/generate-migration.ts --target=l1 --section=bar --batch=1",
	);
	process.exit(1);
}

// Map target level to difficulty and cognitive_level
const TARGET_MAP: Record<
	string,
	{ difficulty: string; cognitiveLevel: number }
> = {
	l1: { difficulty: "easy", cognitiveLevel: 1 },
	l3: { difficulty: "medium", cognitiveLevel: 3 },
	l4: { difficulty: "hard", cognitiveLevel: 4 },
};

const target = TARGET_MAP[targetArg];
if (!target) {
	console.error(`Invalid target: ${targetArg}. Must be l1, l3, or l4.`);
	process.exit(1);
}

// Auto-detect next migration number
function getNextMigrationNumber(): string {
	const files = readdirSync(migrationsDir).sort();
	const last = files[files.length - 1];
	const num = parseInt(last.slice(0, 5)) + 1;
	return String(num).padStart(5, "0");
}

// Read stdin
async function readStdin(): Promise<string> {
	const chunks: Buffer[] = [];
	for await (const chunk of process.stdin) {
		chunks.push(chunk);
	}
	return Buffer.concat(chunks).toString("utf-8");
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
	const levelLabel = targetArg!.toUpperCase();
	const sectionUpper = sectionArg!.toUpperCase();
	const date = new Date().toISOString().split("T")[0];

	const fileName = `${migNum}_blooms_${targetArg}_${sectionArg}_batch${batchArg}.sql`;

	// Group by topic
	const byTopic = new Map<string, Candidate[]>();
	for (const c of candidates) {
		if (!byTopic.has(c.topic)) byTopic.set(c.topic, []);
		byTopic.get(c.topic)!.push(c);
	}

	// Build topic list for header
	const topicList = [...byTopic.keys()].sort().join(", ");

	const lines: string[] = [];
	lines.push(
		`-- Migration: Bloom's ${levelLabel} rebalancing — ${sectionUpper} batch ${batchArg} (${candidates.length} questions)`,
	);
	lines.push(`-- Date: ${date}`);
	lines.push(
		`-- Purpose: Rewrite ${candidates.length} L2 (Application) questions to ${levelLabel} depth for ${sectionUpper} section`,
	);
	lines.push(`-- Affected topics: ${topicList}`);
	lines.push("");
	lines.push("BEGIN;");

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
			lines.push(`  difficulty = '${target.difficulty}',`);
			lines.push(`  cognitive_level = ${target.cognitiveLevel}`);
			lines.push(`WHERE id = ${q.id};`);
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
	console.error(
		`  Target: ${levelLabel} (${target.difficulty}, cognitive_level=${target.cognitiveLevel})`,
	);
	console.error(`\nNext: Fill in TODO placeholders, then run:`);
	console.error(`  npm run validate-migration ${fileName}`);
}

main();
