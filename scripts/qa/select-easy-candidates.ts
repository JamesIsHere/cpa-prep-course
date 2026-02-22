// Select easy questions for difficulty rebalancing (easy→medium rewrites)
// Usage: npx tsx scripts/qa/select-easy-candidates.ts --section=isc --count=50 [--floor=20]

import { fetchAllQuestions } from "./db-client";

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const countArg = parseInt(
	process.argv.find((a) => a.startsWith("--count="))?.split("=")[1] || "0",
);
const floorPct = parseInt(
	process.argv.find((a) => a.startsWith("--floor="))?.split("=")[1] || "20",
);

if (!sectionArg || !countArg) {
	console.error(
		"Usage: npx tsx scripts/qa/select-easy-candidates.ts --section=isc --count=50 [--floor=20]",
	);
	process.exit(1);
}

interface Candidate {
	id: number;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
	difficulty: string;
	topic: string;
	cognitive_level: number | null;
}

async function main() {
	const questions = await fetchAllQuestions(sectionArg!);

	// Build per-topic counts
	const topicTotal = new Map<string, number>();
	const topicEasyQuestions = new Map<string, Candidate[]>();

	for (const q of questions) {
		topicTotal.set(q.topic, (topicTotal.get(q.topic) || 0) + 1);
		if (q.difficulty === "easy") {
			if (!topicEasyQuestions.has(q.topic)) topicEasyQuestions.set(q.topic, []);
			topicEasyQuestions.get(q.topic)!.push({
				id: q.id,
				stem: q.stem,
				choices: q.choices as string[],
				correct_index: q.correct_index,
				explanation: q.explanation,
				difficulty: q.difficulty,
				topic: q.topic,
				cognitive_level: q.cognitive_level,
			});
		}
	}

	// Calculate available candidates per topic (keep floor% easy)
	const topicRoom = new Map<string, number>();
	for (const [topic, total] of topicTotal) {
		const easyCount = topicEasyQuestions.get(topic)?.length || 0;
		const floorCount = Math.ceil(total * (floorPct / 100));
		const available = Math.max(0, easyCount - floorCount);
		topicRoom.set(topic, available);
	}

	// Sort topics by room descending, pick proportionally
	const sortedTopics = [...topicRoom.entries()]
		.filter(([, room]) => room > 0)
		.sort((a, b) => b[1] - a[1]);

	const totalRoom = sortedTopics.reduce((s, [, r]) => s + r, 0);
	const selected: Candidate[] = [];
	let remaining = Math.min(countArg, totalRoom);

	// Round-robin: pick proportionally from each topic
	for (const [topic, room] of sortedTopics) {
		if (remaining <= 0) break;
		const proportion = Math.max(1, Math.round((room / totalRoom) * countArg));
		const pick = Math.min(proportion, room, remaining);
		const candidates = topicEasyQuestions.get(topic) || [];
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
			const candidates = topicEasyQuestions.get(topic) || [];
			const floorCount = Math.ceil(
				(topicTotal.get(topic) || 0) * (floorPct / 100),
			);
			let topicSelected = selected.filter((s) => s.topic === topic).length;
			const topicEasyCount = candidates.length;
			for (const c of candidates) {
				if (remaining <= 0) break;
				if (topicEasyCount - topicSelected <= floorCount) break;
				if (!usedIds.has(c.id)) {
					selected.push(c);
					usedIds.add(c.id);
					remaining--;
					topicSelected++;
				}
			}
		}
	}

	// Output JSON to stdout
	console.log(JSON.stringify(selected, null, 2));

	// Stats to stderr
	console.error(
		`\nSelected ${selected.length} easy questions for medium rewrite (${sectionArg!.toUpperCase()})`,
	);
	console.error(`  Floor: ${floorPct}% easy retained per topic`);

	const topicCounts = new Map<string, number>();
	for (const s of selected) {
		topicCounts.set(s.topic, (topicCounts.get(s.topic) || 0) + 1);
	}

	const easyTotal = [...topicEasyQuestions.values()].reduce(
		(s, arr) => s + arr.length,
		0,
	);
	const easyAfter = easyTotal - selected.length;
	const totalQ = questions.length;
	console.error(
		`  Easy before: ${easyTotal}/${totalQ} (${((easyTotal / totalQ) * 100).toFixed(0)}%)`,
	);
	console.error(
		`  Easy after:  ${easyAfter}/${totalQ} (${((easyAfter / totalQ) * 100).toFixed(0)}%)`,
	);
	console.error(`\n  Per-topic breakdown:`);
	for (const [topic, count] of [...topicCounts.entries()].sort(
		(a, b) => b[1] - a[1],
	)) {
		const topicE = topicEasyQuestions.get(topic)?.length || 0;
		const topicT = topicTotal.get(topic) || 0;
		console.error(
			`    ${topic}: ${count} selected (${topicE - count}/${topicT} easy remain = ${(((topicE - count) / topicT) * 100).toFixed(0)}%)`,
		);
	}
}

main();
