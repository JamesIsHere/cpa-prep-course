// QA Report Entry Point
// Usage: npm run qa [-- --section=aud] [-- --output=json]

import { mkdirSync, writeFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { analyzeBlooms } from "./analyzers/blooms";
import { analyzeCoverage } from "./analyzers/coverage";
import { analyzeDifficulty } from "./analyzers/difficulty";
import { analyzeDuplicates } from "./analyzers/duplicates";
import { analyzeQuality } from "./analyzers/quality";
import { fetchAllQuestions, supabase } from "./db-client";
import { generateReport } from "./report";

const __dirname = dirname(fileURLToPath(import.meta.url));

// Parse flags
const sectionFlag = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const outputJson = process.argv.some((a) => a === "--output=json");

// Use console.error for status messages so they don't pollute JSON stdout
const log = outputJson ? console.error : console.log;

async function main() {
	log("CPA Question QA Audit");
	log("=====================\n");

	if (sectionFlag) {
		log(`Filtering to section: ${sectionFlag.toUpperCase()}\n`);
	}

	// Build section ID → code mapping
	log("Fetching section metadata...");
	const { data: sections, error: sectionsError } = await supabase
		.from("sections")
		.select("id, code");

	if (sectionsError || !sections) {
		console.error("Failed to fetch sections:", sectionsError?.message);
		process.exit(1);
	}

	const sectionCodeMap = new Map<string, string>();
	for (const s of sections) {
		sectionCodeMap.set(String(s.id), s.code);
	}

	// Fetch all questions
	log("Fetching questions...");
	const questions = await fetchAllQuestions(sectionFlag);
	log(`Fetched ${questions.length} questions\n`);

	if (questions.length === 0) {
		console.error(
			"No questions found. Check your section filter and DB connection.",
		);
		process.exit(1);
	}

	// Run analyzers
	log("Running difficulty analysis...");
	const difficulty = analyzeDifficulty(questions);

	log("Running coverage analysis...");
	const coverage = analyzeCoverage(questions);

	log("Running quality scoring...");
	const quality = analyzeQuality(questions);

	log("Running Bloom's classification...");
	const blooms = analyzeBlooms(questions, sectionCodeMap);

	log("Running duplicate detection...");
	const duplicates = analyzeDuplicates(questions);

	// JSON output mode
	if (outputJson) {
		const jsonOutput = {
			date: new Date().toISOString().split("T")[0],
			sectionFilter: sectionFlag ?? null,
			totalQuestions: questions.length,
			quality: {
				distribution: quality.distribution,
				avgScore: Math.round(quality.avgScore * 10) / 10,
				sectionAvgs: Object.fromEntries(quality.sectionAvgs),
			},
			difficulty: {
				sections: difficulty.sections,
				flaggedTopics: difficulty.flaggedTopics,
			},
			blooms: {
				distributions: blooms.distributions,
				sourceStats: blooms.sourceStats,
			},
			coverage: {
				totalDbQuestions: coverage.totalDbQuestions,
				totalHardcoded: coverage.totalHardcoded,
				orphanedTopics: coverage.orphanedTopics,
				coverageGaps: coverage.coverageGaps,
			},
			duplicates: {
				nearDuplicateCount: duplicates.nearDuplicateCount,
				likelyDuplicateCount: duplicates.likelyDuplicateCount,
				pairCount: duplicates.pairs.length,
			},
		};
		console.log(JSON.stringify(jsonOutput, null, 2));
		return;
	}

	// Generate markdown report
	log("\nGenerating report...");
	const date = new Date().toISOString().split("T")[0];
	const report = generateReport({
		date,
		sectionFilter: sectionFlag,
		totalQuestions: questions.length,
		difficulty,
		coverage,
		quality,
		blooms: blooms.distributions,
		bloomsSourceStats: blooms.sourceStats,
		duplicates,
		sectionCodeMap,
	});

	// Write report
	const reportsDir = resolve(__dirname, "../../docs/qa-reports");
	mkdirSync(reportsDir, { recursive: true });
	const suffix = sectionFlag ? `-${sectionFlag}` : "";
	const reportPath = resolve(reportsDir, `${date}-qa-report${suffix}.md`);
	writeFileSync(reportPath, report);

	// Print summary to console
	log(`\nReport written to: ${reportPath}\n`);
	log("=== QUICK SUMMARY ===\n");
	log(`Total questions: ${questions.length}`);
	log(`Quality distribution:`);
	log(`  Critical (0-3):   ${quality.distribution.critical}`);
	log(`  Moderate (4):     ${quality.distribution.moderate}`);
	log(`  Acceptable (5+):  ${quality.distribution.acceptable}`);
	log(`  Average score:    ${Math.round(quality.avgScore * 10) / 10}/10`);
	log(
		`\nDuplicate pairs: ${duplicates.pairs.length} (${duplicates.likelyDuplicateCount} likely, ${duplicates.nearDuplicateCount} near)`,
	);
	log(`Orphaned topics: ${coverage.orphanedTopics.length}`);
	log(`Low-coverage groups: ${coverage.coverageGaps.length}`);

	// Bloom's summary with source stats
	log(
		`\nBloom's distribution (source: ${blooms.sourceStats.dbCount} from DB, ${blooms.sourceStats.heuristicCount} from heuristic):`,
	);
	for (const b of blooms.distributions) {
		log(
			`  ${b.section.toUpperCase()}: L1=${b.l1Pct}% L2=${b.l2Pct}% L3=${b.l3Pct}% L4=${b.l4Pct}%`,
		);
	}
}

main().catch((err) => {
	console.error("Fatal error:", err);
	process.exit(1);
});
