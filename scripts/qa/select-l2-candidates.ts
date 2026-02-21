// Select L2 candidates for L1 (or L4) rewriting, spread across topics with 30% cap
// Usage: npx tsx scripts/qa/select-l2-candidates.ts --section=bar --count=23 [--target=l1|l4]

import { analyzeBlooms } from "./analyzers/blooms";
import { fetchAllQuestions, supabase } from "./db-client";

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const countArg = parseInt(
	process.argv.find((a) => a.startsWith("--count="))?.split("=")[1] || "0",
);
const targetLevel = (process.argv
	.find((a) => a.startsWith("--target="))
	?.split("=")[1] || "l1") as "l1" | "l4";

if (!sectionArg || !countArg) {
	console.error(
		"Usage: npx tsx scripts/qa/select-l2-candidates.ts --section=bar --count=23 [--target=l1|l4]",
	);
	process.exit(1);
}

async function main() {
	const { data: sections } = await supabase.from("sections").select("id, code");
	const sectionCodeMap = new Map<string, string>();
	for (const s of sections!) sectionCodeMap.set(String(s.id), s.code);

	const questions = await fetchAllQuestions(sectionArg!);
	const { results } = analyzeBlooms(questions, sectionCodeMap);

	// Build per-topic counts
	const topicTotal = new Map<string, number>();
	const topicL1 = new Map<string, number>();
	const topicL2Questions: Map<
		string,
		Array<{
			id: number;
			stem: string;
			choices: string[];
			correct_index: number;
			explanation: string;
			difficulty: string;
			topic: string;
		}>
	> = new Map();

	for (const r of results) {
		topicTotal.set(r.topic, (topicTotal.get(r.topic) || 0) + 1);
		if (r.level === 1) topicL1.set(r.topic, (topicL1.get(r.topic) || 0) + 1);
	}

	// Build L2 question lookup
	const l2Ids = new Set(results.filter((r) => r.level === 2).map((r) => r.id));
	for (const q of questions) {
		if (l2Ids.has(q.id)) {
			const topic = q.topic;
			if (!topicL2Questions.has(topic)) topicL2Questions.set(topic, []);
			topicL2Questions.get(topic)!.push({
				id: q.id,
				stem: q.stem,
				choices: q.choices as string[],
				correct_index: q.correct_index,
				explanation: q.explanation,
				difficulty: q.difficulty,
				topic: q.topic,
			});
		}
	}

	// Calculate room per topic (30% cap applies only for L1 target)
	const topicRoom = new Map<string, number>();
	for (const [topic, total] of topicTotal) {
		if (targetLevel === "l1") {
			const cap = Math.floor(total * 0.3);
			const current = topicL1.get(topic) || 0;
			topicRoom.set(topic, Math.max(0, cap - current));
		} else {
			// L4 has no per-topic cap, allow any L2 question
			topicRoom.set(topic, topicL2Questions.get(topic)?.length || 0);
		}
	}

	// Sort topics by room descending, pick proportionally
	const sortedTopics = [...topicRoom.entries()]
		.filter(([, room]) => room > 0)
		.sort((a, b) => b[1] - a[1]);

	const totalRoom = sortedTopics.reduce((s, [, r]) => s + r, 0);
	const selected: Array<{
		id: number;
		stem: string;
		choices: string[];
		correct_index: number;
		explanation: string;
		difficulty: string;
		topic: string;
	}> = [];
	let remaining = countArg;

	// Round-robin: pick proportionally from each topic
	for (const [topic, room] of sortedTopics) {
		if (remaining <= 0) break;
		const proportion = Math.max(1, Math.round((room / totalRoom) * countArg));
		const pick = Math.min(proportion, room, remaining);
		const candidates = topicL2Questions.get(topic) || [];
		// Pick first N candidates (they're already in the order from DB)
		for (let i = 0; i < pick && i < candidates.length; i++) {
			selected.push(candidates[i]);
			remaining--;
		}
	}

	// If we didn't get enough (rounding), fill from topics with most room
	if (remaining > 0) {
		const usedIds = new Set(selected.map((s) => s.id));
		for (const [topic] of sortedTopics) {
			if (remaining <= 0) break;
			const candidates = topicL2Questions.get(topic) || [];
			for (const c of candidates) {
				if (remaining <= 0) break;
				if (!usedIds.has(c.id)) {
					selected.push(c);
					usedIds.add(c.id);
					remaining--;
				}
			}
		}
	}

	// Output
	console.log(JSON.stringify(selected, null, 2));
	console.error(
		`\nSelected ${selected.length} L2 questions for ${targetLevel.toUpperCase()} rewrite`,
	);
	const topicCounts = new Map<string, number>();
	for (const s of selected) {
		topicCounts.set(s.topic, (topicCounts.get(s.topic) || 0) + 1);
	}
	for (const [topic, count] of [...topicCounts.entries()].sort(
		(a, b) => b[1] - a[1],
	)) {
		console.error(`  ${topic}: ${count}`);
	}
}

main();
