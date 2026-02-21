// QA Report Entry Point
// Usage: npm run qa [-- --section=aud]

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

// Parse --section flag
const sectionFlag = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];

async function main() {
	console.log("CPA Question QA Audit");
	console.log("=====================\n");

	if (sectionFlag) {
		console.log(`Filtering to section: ${sectionFlag.toUpperCase()}\n`);
	}

	// Build section ID → code mapping
	console.log("Fetching section metadata...");
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
	console.log("Fetching questions...");
	const questions = await fetchAllQuestions(sectionFlag);
	console.log(`Fetched ${questions.length} questions\n`);

	if (questions.length === 0) {
		console.error(
			"No questions found. Check your section filter and DB connection.",
		);
		process.exit(1);
	}

	// Run analyzers
	console.log("Running difficulty analysis...");
	const difficulty = analyzeDifficulty(questions);

	console.log("Running coverage analysis...");
	const coverage = analyzeCoverage(questions);

	console.log("Running quality scoring...");
	const quality = analyzeQuality(questions);

	console.log("Running Bloom's classification...");
	const blooms = analyzeBlooms(questions, sectionCodeMap);

	console.log("Running duplicate detection...");
	const duplicates = analyzeDuplicates(questions);

	// Generate report
	console.log("\nGenerating report...");
	const date = new Date().toISOString().split("T")[0];
	const report = generateReport({
		date,
		sectionFilter: sectionFlag,
		totalQuestions: questions.length,
		difficulty,
		coverage,
		quality,
		blooms: blooms.distributions,
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
	console.log(`\nReport written to: ${reportPath}\n`);
	console.log("=== QUICK SUMMARY ===\n");
	console.log(`Total questions: ${questions.length}`);
	console.log(`Quality distribution:`);
	console.log(`  Critical (0-3):   ${quality.distribution.critical}`);
	console.log(`  Moderate (4-6):   ${quality.distribution.moderate}`);
	console.log(`  Acceptable (7-10): ${quality.distribution.acceptable}`);
	console.log(
		`  Average score:    ${Math.round(quality.avgScore * 10) / 10}/10`,
	);
	console.log(
		`\nDuplicate pairs: ${duplicates.pairs.length} (${duplicates.likelyDuplicateCount} likely, ${duplicates.nearDuplicateCount} near)`,
	);
	console.log(`Orphaned topics: ${coverage.orphanedTopics.length}`);
	console.log(`Low-coverage groups: ${coverage.coverageGaps.length}`);

	// Bloom's summary
	console.log(`\nBloom's distribution:`);
	for (const b of blooms.distributions) {
		console.log(
			`  ${b.section.toUpperCase()}: L1=${b.l1Pct}% L2=${b.l2Pct}% L3=${b.l3Pct}% L4=${b.l4Pct}%`,
		);
	}
}

main().catch((err) => {
	console.error("Fatal error:", err);
	process.exit(1);
});
