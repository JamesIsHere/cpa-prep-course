// Export questions to markdown for human review
// Usage:
//   npx tsx scripts/qa/export-questions.ts --section=far --limit=20
//   npx tsx scripts/qa/export-questions.ts --section=far              (all)
//   npx tsx scripts/qa/export-questions.ts --section=far --format=xlsx

import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions, type DbQuestion } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const limitArg = parseInt(
	process.argv.find((a) => a.startsWith("--limit="))?.split("=")[1] || "0",
);
const formatArg =
	process.argv.find((a) => a.startsWith("--format="))?.split("=")[1] || "md";

if (!sectionArg) {
	console.error(
		"Usage: npx tsx scripts/qa/export-questions.ts --section=far [--limit=20] [--format=md|xlsx]",
	);
	process.exit(1);
}

const BLOOM_LABELS: Record<number, string> = {
	1: "Remember",
	2: "Understand",
	3: "Apply",
	4: "Analyze",
};

const CHOICE_LETTERS = ["A", "B", "C", "D", "E", "F"];

function questionToMarkdown(q: DbQuestion): string {
	const bloom = q.cognitive_level
		? BLOOM_LABELS[q.cognitive_level] || `L${q.cognitive_level}`
		: "—";
	const correctLetter = CHOICE_LETTERS[q.correct_index] || "?";

	const lines: string[] = [];
	lines.push(`### Q${q.id}`);
	lines.push("");
	lines.push(
		`**Topic:** ${q.topic} | **Difficulty:** ${q.difficulty} | **Bloom's:** ${bloom} | **Answer:** ${correctLetter}`,
	);
	lines.push("");
	lines.push(q.stem);
	lines.push("");
	for (let i = 0; i < q.choices.length; i++) {
		const marker = i === q.correct_index ? `**${CHOICE_LETTERS[i]}.** ` : `${CHOICE_LETTERS[i]}. `;
		lines.push(`${marker}${q.choices[i]}${i === q.correct_index ? " ✓" : ""}`);
	}
	lines.push("");
	lines.push(`> **Explanation:** ${q.explanation}`);
	lines.push("");
	lines.push("---");
	lines.push("");
	return lines.join("\n");
}

async function main() {
	console.error(`Fetching ${sectionArg} questions...`);
	let questions = await fetchAllQuestions(sectionArg);

	if (limitArg > 0) {
		questions = questions.slice(0, limitArg);
	}

	console.error(`Got ${questions.length} questions`);

	if (formatArg === "md") {
		const header = `# ${sectionArg!.toUpperCase()} Questions — Review Export\n\n**Total:** ${questions.length} questions\n\n---\n\n`;
		const body = questions.map(questionToMarkdown).join("");
		const outPath = resolve(repoRoot, `docs/${sectionArg}-questions-review.md`);
		writeFileSync(outPath, header + body);
		console.log(outPath);
	} else if (formatArg === "xlsx") {
		// Output tab-separated for /stylexlsx conversion
		const header =
			"| ID | Topic | Difficulty | Bloom's | Stem | A | B | C | D | Answer | Explanation |";
		const sep =
			"|-----|-------|------------|---------|------|---|---|---|---|--------|-------------|";
		const rows = questions.map((q) => {
			const bloom = q.cognitive_level
				? BLOOM_LABELS[q.cognitive_level] || `L${q.cognitive_level}`
				: "—";
			const correctLetter = CHOICE_LETTERS[q.correct_index] || "?";
			const escapePipe = (s: string) => s.replace(/\|/g, "∣").replace(/\n/g, " ");
			return `| ${q.id} | ${escapePipe(q.topic)} | ${q.difficulty} | ${bloom} | ${escapePipe(q.stem)} | ${escapePipe(q.choices[0] || "")} | ${escapePipe(q.choices[1] || "")} | ${escapePipe(q.choices[2] || "")} | ${escapePipe(q.choices[3] || "")} | ${correctLetter} | ${escapePipe(q.explanation)} |`;
		});
		const mdTable = [header, sep, ...rows].join("\n");
		const outPath = resolve(repoRoot, `docs/${sectionArg}-questions-review.md`);
		writeFileSync(outPath, `# ${sectionArg!.toUpperCase()} Questions\n\n${mdTable}\n`);
		console.log(outPath);
	}
}

main();
