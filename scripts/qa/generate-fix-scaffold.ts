// Generate UPDATE migration scaffold for questions flagged as failed by verification
// Usage: cat verification-report.json | npx tsx scripts/qa/generate-fix-scaffold.ts --section=bar --batch=1

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
		"Usage: cat report.json | npx tsx scripts/qa/generate-fix-scaffold.ts --section=bar --batch=1",
	);
	process.exit(1);
}

interface VerificationIssue {
	type: string;
	severity: string;
	description: string;
}

interface QuestionResult {
	id: number | null;
	verdict: string;
	issues: VerificationIssue[];
	reasoning: string;
}

interface VerificationReport {
	results: QuestionResult[];
}

async function main() {
	const input = await readStdin();
	let report: VerificationReport;
	try {
		report = JSON.parse(input);
	} catch {
		console.error("Failed to parse verification report JSON from stdin");
		process.exit(1);
	}

	// Filter to failed questions with IDs
	const failures = report.results.filter(
		(r) => r.verdict === "fail" && r.id != null,
	);

	if (failures.length === 0) {
		console.error("No failed questions with IDs to fix");
		process.exit(0);
	}

	const migNum = getNextMigrationNumberSafe();
	const migrationsDir = getMigrationsDir();
	const su = sectionArg!.toUpperCase();
	const date = new Date().toISOString().split("T")[0];
	const fileName = `${migNum}_verify_fix_${sectionArg}_batch${batchArg}.sql`;

	const lines: string[] = [
		`-- Migration: Verification fix — ${su} batch ${batchArg} (${failures.length} questions)`,
		`-- Date: ${date}`,
		`-- Source: Substantive correctness verification`,
		"",
		"BEGIN;",
	];

	for (const f of failures) {
		const issueDesc = f.issues
			.map((i) => `${i.type} (${i.severity}): ${i.description}`)
			.join("; ");
		const reasoningShort = f.reasoning.slice(0, 300).replace(/'/g, "''");

		lines.push("");
		lines.push(`-- Q${f.id}: ISSUES: ${issueDesc}`);
		lines.push(`-- REASONING: ${reasoningShort}`);
		lines.push(`UPDATE questions SET`);
		lines.push(`  stem = 'TODO: fix stem if needed',`);
		lines.push(
			`  choices = '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb,`,
		);
		lines.push(`  explanation = 'TODO: fix explanation — ${issueDesc.replace(/'/g, "''")}',`);
		lines.push(`  correct_index = 0,`);
		lines.push(`  difficulty = 'medium'`);
		lines.push(`WHERE id = ${f.id};`);
	}

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

	console.log(outputPath);

	console.error(`\nGenerated: ${outputPath}`);
	console.error(`  ${failures.length} UPDATE stubs for failed questions`);
}

main();
