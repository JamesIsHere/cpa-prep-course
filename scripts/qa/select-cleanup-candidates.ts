/**
 * Select FAR questions needing cleanup.
 *
 * Pulls questions with any of:
 *   - Unstructured explanation (no "Correct (X):" prefix)
 *   - Missing citation
 *   - Missing contrast language
 *   - Choice length cuing (longest > 3x shortest)
 *   - Missing cognitive_level
 *   - "Both A and B" distractor
 *
 * Usage:
 *   npx tsx scripts/qa/select-cleanup-candidates.ts --section=far --limit=50 [--exclude=ids.json]
 */

import dotenv from "dotenv";
dotenv.config({ path: ".env.local" });
import { createClient } from "@supabase/supabase-js";
import { parseArgs } from "node:util";
import { readFileSync } from "node:fs";

const { values } = parseArgs({
	options: {
		section: { type: "string", default: "far" },
		limit: { type: "string", default: "50" },
		exclude: { type: "string" },
	},
});

const sectionCode = values.section!;
const limit = parseInt(values.limit!, 10);

const supabase = createClient(
	process.env.NEXT_PUBLIC_SUPABASE_URL!,
	process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

const CITATION_PATTERN =
	/AU-C|ASC|IRC|FASB|GASB|SSARS|AT-C|AR-C|SAS|PCAOB|Sec\.\s*\d|Section\s*\d|SQMS|SSAE|GAGAS|AICPA|NIST|COBIT|ITIL|GDPR|FIPS|ISO\s*\d|RFC|COSO/i;
const CONTRAST_PATTERN =
	/while|whereas|although|however|unlike|in contrast|rather than|instead of/i;
const STRUCTURED_PATTERN = /^Correct\s*\([A-D]\)/i;

interface Question {
	id: number;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
	topic: string;
	difficulty: string;
	cognitive_level: number | null;
}

async function main() {
	// Load exclude list
	let excludeIds: number[] = [];
	if (values.exclude) {
		try {
			excludeIds = JSON.parse(readFileSync(values.exclude, "utf8"));
		} catch {
			/* empty */
		}
	}

	// Get section ID
	const { data: sec } = await supabase
		.from("sections")
		.select("id")
		.eq("code", sectionCode)
		.single();

	if (!sec) {
		console.error(`Section ${sectionCode} not found`);
		process.exit(1);
	}

	// Fetch all questions for the section
	const { data: questions } = await supabase
		.from("questions")
		.select("id, stem, choices, correct_index, explanation, topic, difficulty, cognitive_level")
		.eq("section_id", sec.id)
		.order("id", { ascending: true });

	if (!questions) {
		console.error("Failed to fetch questions");
		process.exit(1);
	}

	// Score each question by issue count (more issues = higher priority)
	const candidates: { q: Question; issues: string[]; score: number }[] = [];

	for (const q of questions as Question[]) {
		if (excludeIds.includes(q.id)) continue;

		const issues: string[] = [];

		// Check each issue
		if (!STRUCTURED_PATTERN.test(q.explanation)) issues.push("unstructured");
		if (!CITATION_PATTERN.test(q.explanation)) issues.push("no_citation");
		if (!CONTRAST_PATTERN.test(q.explanation)) issues.push("no_contrast");
		if (!q.cognitive_level) issues.push("no_blooms");

		const choices = q.choices;
		if (Array.isArray(choices) && choices.length === 4) {
			const lens = choices.map((c: string) => c.length);
			if (Math.max(...lens) > 3 * Math.min(...lens)) issues.push("choice_cuing");
		}

		const choiceStr = JSON.stringify(choices).toLowerCase();
		if (choiceStr.includes("both a and b") || choiceStr.includes("both b and c"))
			issues.push("both_ab");

		if (issues.length === 0) continue;

		candidates.push({ q, issues, score: issues.length });
	}

	// Sort by issue count descending (worst first), then by ID
	candidates.sort((a, b) => b.score - a.score || a.q.id - b.q.id);

	// Take the top N
	const batch = candidates.slice(0, limit);

	// Output as JSON
	const output = batch.map((c) => ({
		id: c.q.id,
		stem: c.q.stem,
		choices: c.q.choices,
		correct_index: c.q.correct_index,
		explanation: c.q.explanation,
		topic: c.q.topic,
		difficulty: c.q.difficulty,
		cognitive_level: c.q.cognitive_level,
		issues: c.issues,
	}));

	console.log(JSON.stringify(output, null, 2));
}

main().catch((err) => {
	console.error(err);
	process.exit(1);
});
