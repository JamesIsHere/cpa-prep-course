// Select questions for correctness verification, prioritized by risk
// Usage: npx tsx scripts/qa/select-verify-candidates.ts --section=bar --count=10
//
// Prioritization order: calculation > citation > scenario > conceptual
// Skips already-verified IDs from docs/verified-ids.json

import { readFileSync, existsSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions, type DbQuestion } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");
const verifiedPath = resolve(repoRoot, "docs/verified-ids.json");

// ─── CLI args ────────────────────────────────────────────────

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const countArg = parseInt(
	process.argv.find((a) => a.startsWith("--count="))?.split("=")[1] || "10",
);

if (!sectionArg) {
	console.error(
		"Usage: npx tsx scripts/qa/select-verify-candidates.ts --section=bar --count=10",
	);
	process.exit(1);
}

// ─── Classification (same patterns as verify-correctness.ts) ──

const CALC_PATTERN =
	/\$[\d,]+|\d+%|calculate|determine the (amount|basis|gain|loss|cost|value|price|balance|depreciation|expense|income|tax)|compute|what is the total|how much/i;
const CITATION_PATTERN =
	/\b(under|per|according to|pursuant to)\s+(AU-C|ASC|IRC|FASB|GASB|SSARS|AT-C|AR-C|SAS|PCAOB|SQMS|SSAE|GAGAS|NIST|COBIT|FIPS|ISO|COSO)\b/i;
const SCENARIO_PATTERN =
	/most (likely|appropriate|accurate)|best (describes|course|approach)|evaluate|recommend|should .* advise|primary (effect|impact|consideration)/i;

type QuestionType = "calculation" | "citation" | "scenario" | "conceptual";

function classifyQuestion(q: DbQuestion): QuestionType {
	if (CALC_PATTERN.test(q.stem)) return "calculation";
	if (CITATION_PATTERN.test(q.stem)) return "citation";
	if (
		(q.cognitive_level === 3 || q.cognitive_level === 4) &&
		SCENARIO_PATTERN.test(q.stem)
	) {
		return "scenario";
	}
	if (SCENARIO_PATTERN.test(q.stem) && q.difficulty !== "easy") {
		return "scenario";
	}
	return "conceptual";
}

// Risk priority: calculation highest, conceptual lowest
const PRIORITY: Record<QuestionType, number> = {
	calculation: 0,
	citation: 1,
	scenario: 2,
	conceptual: 3,
};

async function main() {
	// Load verified IDs
	const verifiedIds = new Set<number>();
	if (existsSync(verifiedPath)) {
		try {
			const raw = JSON.parse(readFileSync(verifiedPath, "utf-8"));
			const sectionData = raw[sectionArg!];
			if (sectionData) {
				for (const ids of Object.values(sectionData) as number[][]) {
					for (const id of ids) verifiedIds.add(id);
				}
			}
			console.error(`Excluding ${verifiedIds.size} already-verified IDs`);
		} catch {
			console.error("Warning: Could not parse verified-ids.json");
		}
	}

	const questions = await fetchAllQuestions(sectionArg!);

	// Filter out already-verified
	const unverified = questions.filter((q) => !verifiedIds.has(q.id));

	// Classify and sort by risk priority
	const classified = unverified.map((q) => ({
		question: q,
		type: classifyQuestion(q),
	}));

	classified.sort((a, b) => PRIORITY[a.type] - PRIORITY[b.type]);

	// Select top N, grouping by topic for efficient context loading
	const selected = classified.slice(0, countArg).map(({ question: q, type }) => ({
		id: q.id,
		topic: q.topic,
		difficulty: q.difficulty,
		stem: q.stem,
		choices: q.choices,
		correct_index: q.correct_index,
		explanation: q.explanation,
		cognitive_level: q.cognitive_level,
		questionType: type,
	}));

	// Output JSON to stdout
	console.log(JSON.stringify(selected, null, 2));

	// Stats to stderr
	const typeCounts = new Map<QuestionType, number>();
	for (const s of selected) {
		typeCounts.set(
			s.questionType as QuestionType,
			(typeCounts.get(s.questionType as QuestionType) || 0) + 1,
		);
	}

	console.error(
		`\nSelected ${selected.length} questions for verification (${sectionArg!.toUpperCase()})`,
	);
	console.error(
		`  Unverified remaining: ${unverified.length - selected.length}`,
	);
	console.error(`  Breakdown:`);
	for (const [type, count] of [...typeCounts.entries()].sort(
		(a, b) => PRIORITY[a[0]] - PRIORITY[b[0]],
	)) {
		console.error(`    ${type}: ${count}`);
	}
}

main();
