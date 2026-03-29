// Generate INSERT migration scaffold from batch spec JSON (stdin)
// Usage: cat batch-spec.json | npx tsx scripts/qa/generate-insert-scaffold.ts --section=aud --batch=1

import { writeFileSync, unlinkSync, existsSync } from "fs";
import { resolve } from "path";
import {
	getNextMigrationNumberSafe,
	getMigrationsDir,
	readStdin,
} from "./utils";

// Parse CLI args
const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const batchArg = process.argv
	.find((a) => a.startsWith("--batch="))
	?.split("=")[1];

if (!sectionArg || !batchArg) {
	console.error(
		"Usage: cat batch-spec.json | npx tsx scripts/qa/generate-insert-scaffold.ts --section=aud --batch=1",
	);
	process.exit(1);
}

interface BatchSpec {
	section: string;
	sectionId: number;
	topic: string;
	count: number;
	difficulty: { easy: number; medium: number; hard: number };
	blooms: { l1: number; l2: number; l3: number; l4: number };
}

async function main() {
	const input = await readStdin();
	let spec: BatchSpec;
	try {
		spec = JSON.parse(input);
	} catch {
		console.error("Failed to parse batch spec JSON from stdin");
		process.exit(1);
	}

	const migNum = getNextMigrationNumberSafe();
	const migrationsDir = getMigrationsDir();
	const su = sectionArg!.toUpperCase();
	const date = new Date().toISOString().split("T")[0];
	const fileName = `${migNum}_generate_${sectionArg}_batch${batchArg}.sql`;

	// Build aligned difficulty/blooms pairs — L1→easy, L2→easy|medium, L3→medium|hard, L4→hard
	const assignments: Array<{ difficulty: string; cognitiveLevel: number }> = [];

	// Available slots from targets
	let easyLeft = spec.difficulty.easy;
	// mediumLeft not tracked — only easyLeft and hardLeft drive assignments
	let hardLeft = spec.difficulty.hard;

	// Assign Bloom's levels to compatible difficulties
	// L1 → easy (all)
	for (let i = 0; i < spec.blooms.l1; i++) {
		if (easyLeft > 0) {
			assignments.push({ difficulty: "easy", cognitiveLevel: 1 });
			easyLeft--;
		} else {
			// Overflow: L1 with medium (acceptable, just less ideal)
			assignments.push({ difficulty: "medium", cognitiveLevel: 1 });
			// medium slot consumed
		}
	}
	// L4 → hard (all)
	for (let i = 0; i < spec.blooms.l4; i++) {
		if (hardLeft > 0) {
			assignments.push({ difficulty: "hard", cognitiveLevel: 4 });
			hardLeft--;
		} else {
			// Overflow: L4 with medium
			assignments.push({ difficulty: "medium", cognitiveLevel: 4 });
			// medium slot consumed
		}
	}
	// L3 → remaining hard first, then medium
	for (let i = 0; i < spec.blooms.l3; i++) {
		if (hardLeft > 0) {
			assignments.push({ difficulty: "hard", cognitiveLevel: 3 });
			hardLeft--;
		} else {
			assignments.push({ difficulty: "medium", cognitiveLevel: 3 });
			// medium slot consumed
		}
	}
	// L2 → remaining easy first, then medium
	for (let i = 0; i < spec.blooms.l2; i++) {
		if (easyLeft > 0) {
			assignments.push({ difficulty: "easy", cognitiveLevel: 2 });
			easyLeft--;
		} else {
			assignments.push({ difficulty: "medium", cognitiveLevel: 2 });
			// medium slot consumed
		}
	}

	// Shuffle the assignments for variety (don't cluster all L1s at top)
	const seed = parseInt(batchArg!) * 7 + spec.sectionId * 31;
	function seededRandom(n: number): number {
		const x = Math.sin(seed + n) * 10000;
		return x - Math.floor(x);
	}
	for (let i = assignments.length - 1; i > 0; i--) {
		const j = Math.floor(seededRandom(i) * (i + 1));
		[assignments[i], assignments[j]] = [assignments[j], assignments[i]];
	}

	// Build SQL
	const lines: string[] = [
		`-- Migration: Question generation — ${su} batch ${batchArg} (${spec.count} questions)`,
		`-- Date: ${date}`,
		`-- Topic: ${spec.topic}`,
		`-- Difficulty: ${spec.difficulty.easy}E / ${spec.difficulty.medium}M / ${spec.difficulty.hard}H`,
		`-- Bloom's: L1:${spec.blooms.l1} / L2:${spec.blooms.l2} / L3:${spec.blooms.l3} / L4:${spec.blooms.l4}`,
		"",
		"BEGIN;",
		"",
		`INSERT INTO questions (section_id, topic, stem, choices, correct_index, explanation, difficulty, cognitive_level)`,
		"VALUES",
	];

	for (let i = 0; i < spec.count; i++) {
		const a = assignments[i];
		const levelLabel = `L${a.cognitiveLevel}`;
		const isLast = i === spec.count - 1;
		const comma = isLast ? "" : ",";

		const correctLetter = "ABCD"[i % 4];
		const wrongLetters = ["A", "B", "C", "D"].filter((l) => l !== correctLetter);

		lines.push("");
		lines.push(`-- Q${i + 1}: ${a.difficulty} / ${levelLabel} — TODO: brief concept description`);
		lines.push(
			`(${spec.sectionId}, '${spec.topic}', $EXPL$TODO: write ${levelLabel} stem for ${a.difficulty} question$EXPL$, $EXPL$["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]$EXPL$::jsonb, ${i % 4}, $EXPL$TODO: Correct (${correctLetter}): [cite standard + explain]. Wrong (${wrongLetters[0]}): [why wrong]. Wrong (${wrongLetters[1]}): [why wrong]. Wrong (${wrongLetters[2]}): [why wrong].$EXPL$, '${a.difficulty}', ${a.cognitiveLevel})${comma}`,
		);
	}

	lines.push(";");
	lines.push("");
	lines.push("COMMIT;");
	lines.push("");

	const outputPath = resolve(migrationsDir, fileName);
	writeFileSync(outputPath, lines.join("\n"));

	// Clean up the placeholder file created by getNextMigrationNumberSafe
	const placeholder = resolve(migrationsDir, `${migNum}_reserved.sql`);
	if (existsSync(placeholder)) {
		unlinkSync(placeholder);
	}

	// Output file path to stdout for orchestrator
	console.log(outputPath);

	console.error(`\nGenerated: ${outputPath}`);
	console.error(`  ${spec.count} INSERT stubs for "${spec.topic}"`);
	console.error(`  Difficulty: ${spec.difficulty.easy}E / ${spec.difficulty.medium}M / ${spec.difficulty.hard}H`);
	console.error(`  Bloom's: L1:${spec.blooms.l1} / L2:${spec.blooms.l2} / L3:${spec.blooms.l3} / L4:${spec.blooms.l4}`);
}

main();
