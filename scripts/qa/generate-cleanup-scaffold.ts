/**
 * Generate UPDATE scaffold for cleanup mode.
 *
 * Reads candidate JSON from stdin, outputs a SQL migration file.
 * Questions with choice_cuing/both_ab get stem+choices+explanation rewrite.
 * Others get explanation-only rewrite + cognitive_level if missing.
 *
 * Usage:
 *   cat candidates.json | npx tsx scripts/qa/generate-cleanup-scaffold.ts --section=far --batch=1
 */

import dotenv from "dotenv";
dotenv.config({ path: ".env.local" });
import { readFileSync, writeFileSync } from "node:fs";
import { parseArgs } from "node:util";
import { resolve } from "node:path";
import { getNextMigrationNumber } from "./utils.js";

const { values } = parseArgs({
	options: {
		section: { type: "string", default: "far" },
		batch: { type: "string", default: "1" },
	},
});

const section = values.section!;
const batch = parseInt(values.batch!, 10);

interface Candidate {
	id: number;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
	topic: string;
	difficulty: string;
	cognitive_level: number | null;
	issues: string[];
}

const input = readFileSync(0, "utf8");
const candidates: Candidate[] = JSON.parse(input);

const migNum = getNextMigrationNumber();
const filename = `${migNum}_cleanup_${section}_batch${batch}.sql`;
const filepath = resolve("supabase", "migrations", filename);

const lines: string[] = [
	`-- ${section.toUpperCase()} cleanup batch ${batch} (${candidates.length} questions)`,
	`-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing`,
	"",
];

for (const q of candidates) {
	const correctLetter = "ABCD"[q.correct_index];
	const wrongLetters = ["A", "B", "C", "D"].filter((l) => l !== correctLetter);
	const needsChoiceFix =
		q.issues.includes("choice_cuing") || q.issues.includes("both_ab");

	lines.push(`-- Q${q.id} [${q.difficulty}] topic: ${q.topic}`);
	lines.push(`-- Issues: ${q.issues.join(", ")}`);
	lines.push("UPDATE questions SET");

	if (needsChoiceFix) {
		lines.push(
			`  stem = $$TODO: rewrite stem keeping same concept, difficulty=${q.difficulty}$$,`,
		);
		lines.push(
			`  choices = $$TODO: rewrite 4 choices with parallel grammar, longest max 2x shortest$$::jsonb,`,
		);
	}

	lines.push(
		`  explanation = $$TODO: Correct (${correctLetter}): [cite standard + explain why correct]. Wrong (${wrongLetters[0]}): [why wrong]. Wrong (${wrongLetters[1]}): [why wrong]. Wrong (${wrongLetters[2]}): [why wrong].$$,`,
	);

	if (!q.cognitive_level) {
		lines.push(`  cognitive_level = 0, -- TODO: set 1-4 based on Bloom's`);
	}

	lines.push(`  difficulty = '${q.difficulty}'`);
	lines.push(`WHERE id = ${q.id};`);
	lines.push("");
}

writeFileSync(filepath, lines.join("\n"));
console.error(`Written: ${filename}`);
