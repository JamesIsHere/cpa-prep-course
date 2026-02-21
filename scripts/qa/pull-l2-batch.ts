// Pull L2-classified questions for Bloom's L3 rebalancing
// Usage: npx tsx scripts/qa/pull-l2-batch.ts --section=reg [--json]

import { analyzeBlooms } from "./analyzers/blooms";
import { fetchAllQuestions, supabase } from "./db-client";

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];

const jsonOutput = process.argv.includes("--json");

if (!sectionArg) {
	console.error("Usage: npx tsx scripts/qa/pull-l2-batch.ts --section=reg");
	process.exit(1);
}

const sectionFlag: string = sectionArg;

async function main() {
	// Build section code map
	const { data: sections, error } = await supabase
		.from("sections")
		.select("id, code");

	if (error || !sections) {
		console.error("Failed to fetch sections:", error?.message);
		process.exit(1);
	}

	const sectionCodeMap = new Map<string, string>();
	for (const s of sections) {
		sectionCodeMap.set(String(s.id), s.code);
	}

	// Fetch questions for this section
	const questions = await fetchAllQuestions(sectionFlag);
	console.error(
		`Fetched ${questions.length} questions for ${sectionFlag.toUpperCase()}`,
	);

	// Classify all questions
	const { results, distributions } = analyzeBlooms(questions, sectionCodeMap);

	// Print distribution
	const dist = distributions.find((d) => d.section === sectionFlag);
	if (dist) {
		console.error(`\nCurrent distribution for ${sectionFlag.toUpperCase()}:`);
		console.error(`  L1: ${dist.l1} (${dist.l1Pct}%)`);
		console.error(`  L2: ${dist.l2} (${dist.l2Pct}%)`);
		console.error(`  L3: ${dist.l3} (${dist.l3Pct}%)`);
		console.error(`  L4: ${dist.l4} (${dist.l4Pct}%)`);
	}

	// Filter to L2-only results
	const l2Results = results.filter((r) => r.level === 2);
	const l2Ids = new Set(l2Results.map((r) => r.id));
	const l2Questions = questions.filter((q) => l2Ids.has(q.id));

	console.error(`\nL2 questions: ${l2Questions.length}`);

	// Group by topic
	const byTopic = new Map<string, typeof l2Questions>();
	for (const q of l2Questions) {
		if (!byTopic.has(q.topic)) byTopic.set(q.topic, []);
		byTopic.get(q.topic)!.push(q);
	}

	// Sort topics by count descending (most L2-heavy first)
	const sortedTopics = [...byTopic.entries()].sort(
		(a, b) => b[1].length - a[1].length,
	);

	if (jsonOutput) {
		// Output JSON for programmatic consumption
		const output = sortedTopics.map(([topic, qs]) => ({
			topic,
			count: qs.length,
			questions: qs.map((q) => ({
				id: q.id,
				stem: q.stem,
				choices: q.choices,
				correct_index: q.correct_index,
				explanation: q.explanation,
				difficulty: q.difficulty,
			})),
		}));
		console.log(JSON.stringify(output, null, 2));
	} else {
		// Human-readable output
		console.error(`\n${"=".repeat(60)}`);
		console.error(`L2 Questions by Topic (${sectionFlag.toUpperCase()})`);
		console.error(`${"=".repeat(60)}\n`);

		for (const [topic, qs] of sortedTopics) {
			console.error(`\n--- ${topic} (${qs.length} L2 questions) ---\n`);
			for (const q of qs) {
				console.error(`  [ID ${q.id}] ${q.stem.slice(0, 120)}...`);
			}
		}

		// Summary table
		console.error(`\n${"=".repeat(60)}`);
		console.error("Topic Summary (sorted by L2 count)\n");
		console.error(`${"Topic".padEnd(45)} | Count`);
		console.error(`${"-".repeat(45)}-|------`);
		for (const [topic, qs] of sortedTopics) {
			console.error(`${topic.padEnd(45)} | ${qs.length}`);
		}
		console.error(`${"-".repeat(45)}-|------`);
		console.error(`${"TOTAL".padEnd(45)} | ${l2Questions.length}`);
	}
}

main().catch((err) => {
	console.error("Fatal error:", err);
	process.exit(1);
});
