/**
 * Phase 2 candidate selector — finds questions with #1 (giveaway longest)
 * and #3 (incomplete explanation) for Claude-powered fixes.
 *
 * Usage:
 *   npx tsx scripts/qa/select-quality-candidates.ts --section=aud --count=30
 *   npx tsx scripts/qa/select-quality-candidates.ts --section=aud --count=30 --exclude-ids=file.json
 */

import { readFileSync } from "fs";
import { resolve } from "path";
import { fetchAllQuestions, type DbQuestion } from "./db-client";

const sectionArg = process.argv.find((a) => a.startsWith("--section="))?.split("=")[1];
const countArg = parseInt(
	process.argv.find((a) => a.startsWith("--count="))?.split("=")[1] || "30",
);
const excludeFile = process.argv.find((a) => a.startsWith("--exclude-ids="))?.split("=")[1];

if (!sectionArg) {
	console.error("Usage: npx tsx select-quality-candidates.ts --section=aud --count=30");
	process.exit(1);
}

// ─── Detection logic (mirrors detect-review-issues.ts) ────────

function checkIncompleteExplanation(q: DbQuestion): boolean {
	const expl = q.explanation || "";
	const labels = ["A", "B", "C", "D"];
	const correctLabel = labels[q.correct_index];

	for (const label of labels) {
		if (label === correctLabel) continue;
		const hasWrong = new RegExp(
			`Wrong\\s*\\(?${label}\\)?|\\(?${label}\\)?\\s*is\\s*(wrong|incorrect)|Choice\\s+${label}\\s+is\\s+(wrong|incorrect)`,
			"i",
		).test(expl);
		if (!hasWrong) return true; // at least one missing
	}
	return false;
}

function checkGiveawayLongest(q: DbQuestion): boolean {
	const choices = q.choices as string[];
	if (!choices || choices.length !== 4) return false;

	const lengths = choices.map((c) => c.split(/\s+/).length);
	const correctLen = lengths[q.correct_index];
	const wrongLens = lengths.filter((_, i) => i !== q.correct_index);
	const avgWrong = wrongLens.reduce((a, b) => a + b, 0) / wrongLens.length;

	return avgWrong > 0 && correctLen / avgWrong > 1.8;
}

// ─── Main ──────────────────────────────────────────────────────

async function main() {
	const excludeIds = new Set<number>();
	if (excludeFile) {
		try {
			const raw = readFileSync(resolve(process.cwd(), excludeFile), "utf-8");
			const ids: number[] = JSON.parse(raw);
			for (const id of ids) excludeIds.add(id);
			console.error(`Excluding ${excludeIds.size} IDs from ${excludeFile}`);
		} catch {
			console.error(`Warning: Could not load exclude file: ${excludeFile}`);
		}
	}

	const questions = await fetchAllQuestions(sectionArg);

	// Detect issues and tag
	const candidates: Array<{
		id: number;
		stem: string;
		choices: string[];
		correct_index: number;
		explanation: string;
		difficulty: string;
		cognitive_level: number | null;
		topic: string;
		issues: string[];
	}> = [];

	for (const q of questions) {
		if (excludeIds.has(q.id)) continue;

		const issues: string[] = [];
		if (checkGiveawayLongest(q)) issues.push("#1");
		if (checkIncompleteExplanation(q)) issues.push("#3");

		if (issues.length === 0) continue;

		candidates.push({
			id: q.id,
			stem: q.stem,
			choices: q.choices as string[],
			correct_index: q.correct_index,
			explanation: q.explanation,
			difficulty: q.difficulty,
			cognitive_level: q.cognitive_level,
			topic: q.topic,
			issues,
		});
	}

	if (candidates.length === 0) {
		console.error(`No quality candidates found for ${sectionArg} — section complete`);
		console.log("[]");
		process.exit(0);
	}

	// Sort: prefer questions with BOTH issues (more value per Claude call), then by ID
	candidates.sort((a, b) => {
		if (b.issues.length !== a.issues.length) return b.issues.length - a.issues.length;
		return a.id - b.id;
	});

	const selected = candidates.slice(0, countArg);

	console.log(JSON.stringify(selected, null, 2));

	// Summary to stderr
	const both = selected.filter((c) => c.issues.length === 2).length;
	const only1 = selected.filter((c) => c.issues.includes("#1") && c.issues.length === 1).length;
	const only3 = selected.filter((c) => c.issues.includes("#3") && c.issues.length === 1).length;
	console.error(
		`\nSelected ${selected.length} of ${candidates.length} candidates (both: ${both}, #1 only: ${only1}, #3 only: ${only3})`,
	);
}

main().catch((err) => {
	console.error(err);
	process.exit(1);
});
