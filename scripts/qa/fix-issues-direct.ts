/**
 * Phase 1 instant quality fixes — no Claude needed.
 *
 * Scans all questions and generates a single migration that fixes:
 *   #4  Null cognitive_level → heuristic Bloom's inference
 *   #6  Label mismatch → swap Correct/Wrong labels in explanation
 *   #9  Citation in stem → move to explanation
 *
 * Usage:
 *   npx tsx scripts/qa/fix-issues-direct.ts
 *   npx tsx scripts/qa/fix-issues-direct.ts --section=aud
 *   npx tsx scripts/qa/fix-issues-direct.ts --dry-run
 */

import { writeFileSync } from "fs";
import { resolve } from "path";
import { fetchAllQuestions, type DbQuestion } from "./db-client";
import { getNextMigrationNumberSafe, getMigrationsDir } from "./utils";

const sectionArg = process.argv.find((a) => a.startsWith("--section="))?.split("=")[1];
const dryRun = process.argv.includes("--dry-run");

// ─── Types ─────────────────────────────────────────────────────

interface ColumnFix {
	column: string;
	value: string | number;
}

interface QuestionFix {
	id: number;
	issues: string[];
	updates: ColumnFix[];
	manualReview?: string;
}

// ─── #4: Null cognitive_level heuristic ────────────────────────

function inferCognitiveLevel(q: DbQuestion): number {
	const stem = q.stem.toLowerCase();
	const diff = q.difficulty;

	// L4 - Evaluation: judgment/recommendation patterns + hard
	if (
		/\b(evaluate|assess|judge|recommend|which.*most appropriate|analyze.*and.*recommend)\b/.test(stem) &&
		diff === "hard"
	) {
		return 4;
	}

	// L3 - Analysis: analysis/calculation patterns
	if (/\b(analyze|compare|distinguish|classify|calculate|compute|determine the amount|what is the effect)\b/.test(stem)) {
		return 3;
	}
	if (/\$[\d,]+/.test(stem) && (diff === "medium" || diff === "hard")) {
		return 3;
	}

	// L1 - Remembering: definitional recall + easy
	if (
		/\b(which of the following (is|are|best describes|statements? is))\b/.test(stem) &&
		diff === "easy"
	) {
		return 1;
	}
	if (/\b(what is (the|a)|define\b|identify\b|which.*is (true|false|correct|incorrect))\b/.test(stem) && diff === "easy") {
		return 1;
	}

	// L2 - Application: default
	return 2;
}

function fixNullCognitive(q: DbQuestion): ColumnFix | null {
	if (q.cognitive_level !== null && q.cognitive_level !== undefined) return null;
	return { column: "cognitive_level", value: inferCognitiveLevel(q) };
}

// ─── #6: Label mismatch ───────────────────────────────────────

function fixLabelMismatch(q: DbQuestion): { fix: ColumnFix; manualReview?: string } | null {
	const expl = q.explanation || "";
	const labels = ["A", "B", "C", "D"];
	const expectedLabel = labels[q.correct_index];

	const correctMatch = expl.match(/Correct\s*\(([A-D])\)/i);
	if (!correctMatch) return null;

	const claimedLabel = correctMatch[1].toUpperCase();
	if (claimedLabel === expectedLabel) return null;

	// Check if the explanation also labels the correct answer as Wrong
	const wrongOnCorrect = new RegExp(`Wrong\\s*\\(${expectedLabel}\\)`, "i");

	let fixedExpl = expl;
	let manualReview: string | undefined;

	if (wrongOnCorrect.test(expl)) {
		// Swap: "Correct (claimed)" → "Wrong (claimed)", "Wrong (expected)" → "Correct (expected)"
		fixedExpl = fixedExpl.replace(
			new RegExp(`Correct\\s*\\(${claimedLabel}\\)`, "i"),
			`Wrong (${claimedLabel})`,
		);
		fixedExpl = fixedExpl.replace(
			new RegExp(`Wrong\\s*\\(${expectedLabel}\\)`, "i"),
			`Correct (${expectedLabel})`,
		);
	} else {
		// Simple label replacement — but flag if reasoning may not match
		fixedExpl = fixedExpl.replace(
			/Correct\s*\([A-D]\)/i,
			`Correct (${expectedLabel})`,
		);
		manualReview = `Label changed from ${claimedLabel} to ${expectedLabel} — verify explanation reasoning matches choice ${expectedLabel}`;
	}

	return {
		fix: { column: "explanation", value: fixedExpl },
		manualReview,
	};
}

// ─── #9: Citation in stem ─────────────────────────────────────

const CITATION_PATTERNS = [
	/\bUnder\s+(AU-C|ASC|GASB|AT-C|AR-C)\s*\d+[-.\d]*/gi,
	/\bUnder\s+IRC\s+(?:Section\s+|§\s*)\d+[a-zA-Z()\-]*/gi,
	/\bUnder\s+(?:Section|§)\s+\d+[a-zA-Z()\-]*/gi,
	/\bPer\s+(AU-C|ASC|GASB|AT-C|AR-C)\s*\d+[-.\d]*/gi,
	/\b(AU-C|AT-C|AR-C)\s+\d+[-.\d]*/gi,
	/\bASC\s+\d+[-.\d]*/gi,
	/\bGASB\s+(?:Statement\s+(?:No\.\s*)?)?\d+[-.\d]*/gi,
	/\bIRC\s+(?:Section\s+|§\s*)\d+[a-zA-Z()\-]*/gi,
	/\b(?:Section|§)\s+\d{3,}[a-zA-Z()\-]*/gi,
	/\bPCAOB\s+AS\s*\d+/gi,
	/\bSAS\s+No\.\s*\d+/gi,
	/\bSSARS\s+\d+/gi,
	/\bSSAE\s+\d+/gi,
];

// Patterns where the citation IS the concept being tested — don't strip
const CITATION_IS_CONCEPT = [
	/what (is|does|are).*(?:section|§)\s+\d+/i,
	/(?:section|§)\s+\d+.*(?:cover|address|require|provide|apply|define|prohibit|permit)/i,
	/purpose of.*(?:section|§)\s+\d+/i,
];

function fixCitationInStem(q: DbQuestion): ColumnFix[] | null {
	const stem = q.stem;

	// Skip if the citation is the concept being tested
	for (const pattern of CITATION_IS_CONCEPT) {
		if (pattern.test(stem)) return null;
	}

	let newStem = stem;
	const extracted: string[] = [];

	for (const pattern of CITATION_PATTERNS) {
		pattern.lastIndex = 0;
		const matches = newStem.match(pattern);
		if (matches) {
			for (const m of matches) extracted.push(m.trim());
			newStem = newStem.replace(pattern, "").replace(/\s{2,}/g, " ").trim();
		}
	}

	if (extracted.length === 0) return null;

	// Clean up dangling prepositions and artifacts
	newStem = newStem
		.replace(/,\s*,/g, ",")
		.replace(/\(\s*\)/g, "")
		.replace(/\s+,/g, ",")
		.replace(/,\s*\./g, ".")
		.replace(/\s{2,}/g, " ")
		.trim();

	// If stem barely changed (only removed a short reference), skip
	if (newStem === stem) return null;

	const fixes: ColumnFix[] = [{ column: "stem", value: newStem }];

	// Check if citation exists in explanation; if not, append it
	let expl = q.explanation;
	let explChanged = false;
	for (const cit of extracted) {
		// Extract just the standard reference (e.g., "ASC 606" from "Under ASC 606")
		const refMatch = cit.match(/(AU-C|ASC|GASB|IRC|AT-C|AR-C|PCAOB|SAS|SSARS|SSAE|Section|§)\s*\d+[-.\d]*/i);
		const ref = refMatch ? refMatch[0] : cit;
		if (!expl.includes(ref)) {
			expl = expl.trimEnd();
			if (!expl.endsWith(".")) expl += ".";
			expl += ` (See ${ref}.)`;
			explChanged = true;
		}
	}

	if (explChanged) {
		fixes.push({ column: "explanation", value: expl });
	}

	return fixes;
}

// ─── SQL generation ────────────────────────────────────────────

function escapeForDollarQuote(val: string): string {
	// $EXPL$ delimiter — only need to handle the unlikely case of $EXPL$ in content
	return val.replace(/\$EXPL\$/g, "$$EXPL $$");
}

function generateMigrationSQL(fixes: QuestionFix[]): string {
	const lines: string[] = [];
	lines.push(`-- Quality Phase 1: instant fixes for ${fixes.length} questions`);
	lines.push(`-- Generated by fix-issues-direct.ts`);
	lines.push(`-- Issues: #4 (null cognitive_level), #6 (label mismatch), #9 (citation in stem)`);
	lines.push(``);

	// Group by issue for summary
	const counts: Record<string, number> = {};
	for (const f of fixes) {
		for (const issue of f.issues) {
			counts[issue] = (counts[issue] || 0) + 1;
		}
	}
	for (const [issue, count] of Object.entries(counts).sort()) {
		lines.push(`-- ${issue}: ${count} questions`);
	}
	lines.push(``);

	for (const f of fixes) {
		if (f.manualReview) {
			lines.push(`-- MANUAL REVIEW: Q${f.id} — ${f.manualReview}`);
		}
		lines.push(`-- Q${f.id}: Fix ${f.issues.join(", ")}`);

		const setClauses: string[] = [];
		for (const u of f.updates) {
			if (u.column === "cognitive_level") {
				setClauses.push(`  cognitive_level = ${u.value}`);
			} else {
				setClauses.push(`  ${u.column} = $EXPL$${escapeForDollarQuote(String(u.value))}$EXPL$`);
			}
		}

		lines.push(`UPDATE questions SET`);
		lines.push(setClauses.join(",\n"));
		lines.push(`WHERE id = ${f.id};`);
		lines.push(``);
	}

	return lines.join("\n");
}

// ─── Main ──────────────────────────────────────────────────────

async function main() {
	const questions = await fetchAllQuestions(sectionArg);
	const fixes: QuestionFix[] = [];

	for (const q of questions) {
		const questionFix: QuestionFix = { id: q.id, issues: [], updates: [] };

		// #4
		const cogFix = fixNullCognitive(q);
		if (cogFix) {
			questionFix.issues.push("#4");
			questionFix.updates.push(cogFix);
		}

		// #6
		const labelFix = fixLabelMismatch(q);
		if (labelFix) {
			questionFix.issues.push("#6");
			// Check if we already have an explanation update (shouldn't happen but be safe)
			const existingExpl = questionFix.updates.find((u) => u.column === "explanation");
			if (existingExpl) {
				existingExpl.value = labelFix.fix.value;
			} else {
				questionFix.updates.push(labelFix.fix);
			}
			if (labelFix.manualReview) {
				questionFix.manualReview = labelFix.manualReview;
			}
		}

		// #9
		const citFixes = fixCitationInStem(q);
		if (citFixes) {
			questionFix.issues.push("#9");
			for (const cf of citFixes) {
				const existing = questionFix.updates.find((u) => u.column === cf.column);
				if (existing) {
					existing.value = cf.value;
				} else {
					questionFix.updates.push(cf);
				}
			}
		}

		if (questionFix.updates.length > 0) {
			fixes.push(questionFix);
		}
	}

	// Summary
	const scope = sectionArg ? sectionArg.toUpperCase() : "ALL";
	const counts: Record<string, number> = {};
	for (const f of fixes) {
		for (const issue of f.issues) {
			counts[issue] = (counts[issue] || 0) + 1;
		}
	}
	const manualCount = fixes.filter((f) => f.manualReview).length;

	console.error(`\n=== Phase 1 Quality Fixes — ${scope} (${questions.length} questions scanned) ===\n`);
	for (const [issue, count] of Object.entries(counts).sort()) {
		console.error(`  ${issue.padEnd(5)} ${count} fixes`);
	}
	console.error(`  Total: ${fixes.length} questions to update`);
	if (manualCount > 0) {
		console.error(`  ⚠ ${manualCount} flagged for manual review (see SQL comments)`);
	}

	if (fixes.length === 0) {
		console.error(`\n✅ No Phase 1 issues found.`);
		process.exit(0);
	}

	if (dryRun) {
		console.error(`\n--dry-run: no migration generated.`);
		process.exit(0);
	}

	// Generate migration
	const sql = generateMigrationSQL(fixes);
	const num = getNextMigrationNumberSafe("quality_phase1");
	const filename = `${num}_quality_phase1.sql`;
	const filepath = resolve(getMigrationsDir(), filename);
	writeFileSync(filepath, sql + "\n");

	// Print path to stdout (for improve.mjs to capture)
	console.log(filepath);
	console.error(`\nWrote ${filename} — ${fixes.length} updates`);
}

main().catch((err) => {
	console.error(err);
	process.exit(1);
});
