// Quick scan a review sample JSON for common issues
// Usage: npx tsx scripts/qa/scan-review-sample.ts docs/bar-review-sample.json

import { readFileSync } from "fs";

const file = process.argv[2];
if (!file) { console.error("Usage: npx tsx scan-review-sample.ts <file>"); process.exit(1); }

interface Q {
	id: number;
	topic: string;
	difficulty: string;
	cognitive_level: number | null;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
}

const qs: Q[] = JSON.parse(readFileSync(file, "utf-8"));
const labels = ["A", "B", "C", "D"];

for (let i = 0; i < qs.length; i++) {
	const q = qs[i];
	const issues: string[] = [];

	// #1 giveaway longest
	const lens = q.choices.map(c => c.split(/\s+/).length);
	const correctLen = lens[q.correct_index];
	const wrongLens = lens.filter((_, j) => j !== q.correct_index);
	const avgWrong = wrongLens.reduce((a, b) => a + b, 0) / wrongLens.length;
	if (avgWrong > 0 && correctLen / avgWrong > 1.8) {
		issues.push(`#1(${(correctLen / avgWrong).toFixed(1)}x)`);
	}

	// #4 null cognitive
	if (!q.cognitive_level) issues.push("#4");

	// #9 citation in stem
	if (/\b(AU-C|ASC|GASB|IRC\s+Section|IRC\s+§|PCAOB\s+AS|SAS|SSARS|AT-C|AR-C)\s*\d/i.test(q.stem)) {
		issues.push("#9");
	}

	// #3 incomplete explanation
	const hasStructured = /Wrong\s*\([ABCD]\)/i.test(q.explanation);
	if (hasStructured) {
		const missing = labels.filter((l, idx) => {
			if (idx === q.correct_index) return false;
			return !new RegExp(`Wrong\\s*\\(${l}\\)`, "i").test(q.explanation);
		});
		if (missing.length > 0) issues.push(`#3(${missing.join("")})`);
	} else {
		// No structured explanation at all
		issues.push("#3(none)");
	}

	// #6 mismatch
	const cm = q.explanation.match(/Correct\s*\(([A-D])\)/i);
	if (cm && cm[1].toUpperCase() !== labels[q.correct_index]) {
		issues.push(`#6(says ${cm[1]}, should be ${labels[q.correct_index]})`);
	}

	const tag = issues.length === 0 ? "CLEAN" : issues.join(", ");
	console.log(
		`Q${String(i + 1).padStart(2)} [${q.id}] ${q.topic.substring(0, 32).padEnd(32)} ${q.difficulty.padEnd(6)} L${q.cognitive_level ?? "?"} ${tag}`
	);
}
