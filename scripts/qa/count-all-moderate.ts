import { createClient } from "@supabase/supabase-js";
import dotenv from "dotenv";

dotenv.config({ path: ".env.local" });

const supabase = createClient(
	process.env.NEXT_PUBLIC_SUPABASE_URL!,
	process.env.SUPABASE_SERVICE_ROLE_KEY!,
);

function countWords(text: string) {
	return text.trim().split(/\s+/).filter(Boolean).length;
}

const entityRe =
	/\b([A-Z][a-z]+(?:\s(?:Corp|Inc|LLC|Ltd|Co|Associates|Partners|Group|Industries|Enterprises|Services|Technologies|Manufacturing|Consulting|Holdings|International|National|Global|Regional|Capital|Financial|Healthcare|Solutions|Systems|Development|Properties|Construction|Engineering|Retail|Wholesale|Insurance|Investments|Management|Advisors|Analytics|Logistics|Distribution|Communications|Media|Publishing|Energy|Resources|Mining|Transportation|Aerospace|Defense|Pharmaceuticals|Medical|Dental|Legal|Education|University|Foundation|Institute|Association|Society|Council|Board|Committee|Agency|Department|Bureau|Commission|Authority|Office)\.?)?)\b/;
const citesRe =
	/\b(AU-C|ASC|IRC|FASB|GASB|SSARS|AT-C|SAS|PCAOB|Sec\.|Section|SQMS|SSAE)\b/i;
const wrongRe =
	/\b(while|whereas|although|however|in contrast|not .* because|incorrect because|rather than|unlike)\b/i;
const absRe =
	/\b(absolute assurance|guarantee[sd]?|ensure[sd]? with certainty)\b/i;

interface Q {
	id: number;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
	difficulty: string;
	topic: string;
}

function scoreQuestion(q: Q) {
	let score = 7;
	const flags: string[] = [];

	if (countWords(q.stem) < 12) flags.push(`short-stem`);
	if (countWords(q.stem) < 12) score -= 2;
	if (entityRe.test(q.stem)) score += 1;
	if (countWords(q.explanation) < 30) score -= 2;
	if (citesRe.test(q.explanation)) score += 1;
	if (wrongRe.test(q.explanation)) score += 1;
	for (let i = 0; i < q.choices.length; i++) {
		if (i !== q.correct_index && absRe.test(q.choices[i])) {
			score -= 2;
			break;
		}
	}
	if (
		q.choices.some(
			(c) =>
				/^(all|none) of the above$/i.test(c) ||
				/^both [A-D] and [A-D]$/i.test(c),
		)
	) {
		score -= 3;
	}
	const lens = q.choices.map((c) => c.length);
	const maxLen = Math.max(...lens);
	const minLen = Math.min(...lens);
	if (minLen > 0 && maxLen / minLen > 3) score -= 1;

	return Math.max(0, Math.min(10, score));
}

async function main() {
	// Paginate to fetch all questions (Supabase caps at 1000 per request)
	const allData: Q[] = [];
	let offset = 0;
	const pageSize = 1000;
	while (true) {
		const { data: page, error: pageError } = await supabase
			.from("questions")
			.select(
				"id, stem, choices, correct_index, explanation, difficulty, topic",
			)
			.order("id")
			.range(offset, offset + pageSize - 1);
		if (pageError) {
			console.error(pageError);
			process.exit(1);
		}
		allData.push(...(page as Q[]));
		if (page.length < pageSize) break;
		offset += pageSize;
	}
	const data = allData;
	const error = null;

	if (error) {
		console.error(error);
		process.exit(1);
	}

	const topicCounts: Record<string, { moderate: number; total: number }> = {};

	for (const q of data) {
		const score = scoreQuestion(q);
		if (!topicCounts[q.topic]) topicCounts[q.topic] = { moderate: 0, total: 0 };
		topicCounts[q.topic].total++;
		if (score >= 4 && score <= 6) topicCounts[q.topic].moderate++;
	}

	const sorted = Object.entries(topicCounts)
		.filter(([, v]) => v.moderate > 0)
		.sort((a, b) => b[1].moderate - a[1].moderate);

	let totalModerate = 0;
	console.log("Topic                                        | Mod | Total");
	console.log("---------------------------------------------|-----|------");
	for (const [topic, counts] of sorted) {
		totalModerate += counts.moderate;
		console.log(
			`${topic.padEnd(45)}| ${String(counts.moderate).padStart(3)} | ${counts.total}`,
		);
	}
	console.log(`\nTotal moderate: ${totalModerate} / ${data.length}`);
}

main();
