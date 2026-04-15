// Fetch specific question IDs from the live DB for analysis.
// Usage: npx tsx scripts/qa/fetch-flagged.ts

import { supabase } from "./db-client.js";
import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));

const flagged: Record<string, { fail: number[]; review: number[] }> = {
	aud: { fail: [15814, 15837, 12837, 13093, 13869], review: [] },
	far: { fail: [4754, 15148, 15149, 15150], review: [15202] },
	bar: {
		fail: [14936, 15051, 15058, 15060, 15062, 15595, 15614],
		review: [14456, 15094],
	},
	isc: { fail: [15749], review: [] },
	tcp: { fail: [15794], review: [14194, 15795] },
};

async function main() {
	const allIds: number[] = [];
	for (const s of Object.values(flagged)) {
		allIds.push(...s.fail, ...s.review);
	}

	const { data, error } = await supabase
		.from("questions")
		.select(
			"id, section_id, topic, difficulty, stem, choices, correct_index, explanation, cognitive_level",
		)
		.in("id", allIds);

	if (error) {
		console.error(error);
		process.exit(1);
	}

	const byId = new Map<number, (typeof data)[number]>();
	for (const q of data!) byId.set(q.id, q);

	const out: Array<Record<string, unknown>> = [];
	for (const [section, lists] of Object.entries(flagged)) {
		for (const id of lists.fail) {
			const q = byId.get(id);
			if (!q) {
				out.push({ id, section, verdict: "fail", missing: true });
				continue;
			}
			out.push({
				id: q.id,
				section,
				verdict: "fail",
				topic: q.topic,
				difficulty: q.difficulty,
				cognitive_level: q.cognitive_level,
				stem: q.stem,
				choices: q.choices,
				correct_index: q.correct_index,
				correct_letter: String.fromCharCode(65 + q.correct_index),
				correct_text: q.choices[q.correct_index],
				explanation: q.explanation,
			});
		}
		for (const id of lists.review) {
			const q = byId.get(id);
			if (!q) {
				out.push({ id, section, verdict: "review", missing: true });
				continue;
			}
			out.push({
				id: q.id,
				section,
				verdict: "review",
				topic: q.topic,
				difficulty: q.difficulty,
				cognitive_level: q.cognitive_level,
				stem: q.stem,
				choices: q.choices,
				correct_index: q.correct_index,
				correct_letter: String.fromCharCode(65 + q.correct_index),
				correct_text: q.choices[q.correct_index],
				explanation: q.explanation,
			});
		}
	}

	const outPath = resolve(__dirname, "../../docs/trust-audit-flagged.json");
	writeFileSync(outPath, JSON.stringify(out, null, 2));
	console.log(`Fetched ${out.length} flagged questions → ${outPath}`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
