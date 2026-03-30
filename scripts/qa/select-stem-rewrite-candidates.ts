/**
 * Select questions needing stem rewrites for CPA-exam authenticity.
 *
 * Two issues detected:
 *   #10  Citation in stem — real CPA questions don't cite ASC/IRC/etc in the stem
 *   #11  Short/no-scenario — under 30 words with no entity/person name
 *
 * Usage:
 *   npx tsx scripts/qa/select-stem-rewrite-candidates.ts --section=aud --count=30
 *   npx tsx scripts/qa/select-stem-rewrite-candidates.ts --section=aud --count=99999
 */

import { readFileSync } from "fs";
import { resolve } from "path";
import { fetchAllQuestions, type DbQuestion } from "./db-client";

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const countArg = parseInt(
	process.argv.find((a) => a.startsWith("--count="))?.split("=")[1] || "30",
);
const excludeFile = process.argv
	.find((a) => a.startsWith("--exclude-ids="))
	?.split("=")[1];

if (!sectionArg) {
	console.error(
		"Usage: npx tsx select-stem-rewrite-candidates.ts --section=aud --count=30",
	);
	process.exit(1);
}

// ─── Detection patterns ──────────────────────────────────────

// Citations that should not appear in CPA exam stems
const CITATION_IN_STEM =
	/\b(ASC\s+\d|AU-C\s+\d|IRC\s+(Section|Sec\.?\s*)\d|Section\s+\d{3,}|GASB\s+\d|SSAE\s+\d|UCC\s+(Section|Sec\.?\s*)\d|Under\s+(ASC|AU-C|IRC|GAAP|GASB|Section|PCAOB|SSAE|SSARS|Circular|UCC|FASB)|Circular\s+230|AT-C\s+\d|AR-C\s+\d|SSARS\s+\d|PCAOB\s+AS\s*\d|SAS\s+No\.\s*\d|SOX\s+Section\s+\d)/i;

// Entity/scenario indicators — if present, the stem has a scenario
const HAS_ENTITY =
	/\b(Corp|Inc|LLC|Co\b|Ltd|LLP|Partners|Company|Enterprises|Industries|Group|Foundation|Association|Manufacturing|Consulting|Technologies|Insurance|Hospital|University|Bank|Trust)\b/i;
const HAS_GOVT =
	/\b(Town of|City of|County of|State of|Department of|Municipality|District)\b/i;
const HAS_PERSON =
	/\b[A-Z][a-z]{2,}(,\s*(a|an|the|age)\s+|'s\s+|\s+(is|has|was|owns|sells|receives|transfers|files|pays|earns|contributes|converts|invests|donates|declares|reports|operates|manages|works|retired|purchases|exchanges|contributes|prepares|engages|hires|maintains))/;

// List/concept questions that don't need scenarios
const IS_LIST_QUESTION =
	/which of the following|all of the following|each of the following/i;

function detectIssues(q: DbQuestion): string[] {
	const issues: string[] = [];
	const words = q.stem.split(/\s+/).length;

	// #10: Citation in stem
	if (CITATION_IN_STEM.test(q.stem)) {
		issues.push("#10");
	}

	// #11: Short/no-scenario (no entity, no person, under 30 words, not list question)
	const hasScenario =
		HAS_ENTITY.test(q.stem) ||
		HAS_GOVT.test(q.stem) ||
		HAS_PERSON.test(q.stem);
	if (!hasScenario && words < 30 && !IS_LIST_QUESTION.test(q.stem)) {
		issues.push("#11");
	}

	return issues;
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

		const issues = detectIssues(q);
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

	// Output as JSON (limited to count)
	const output = candidates.slice(0, countArg);
	console.log(JSON.stringify(output, null, 2));
}

main();
