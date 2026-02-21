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

	if (countWords(q.stem) < 12) {
		score -= 2;
		flags.push(`short-stem(${countWords(q.stem)}w)`);
	}
	if (entityRe.test(q.stem)) {
		score += 1;
		flags.push("has-entity");
	}
	if (countWords(q.explanation) < 30) {
		score -= 2;
		flags.push(`short-expl(${countWords(q.explanation)}w)`);
	}
	if (citesRe.test(q.explanation)) {
		score += 1;
		flags.push("cites-standard");
	}
	if (wrongRe.test(q.explanation)) {
		score += 1;
		flags.push("addresses-wrong");
	}
	for (let i = 0; i < q.choices.length; i++) {
		if (i !== q.correct_index && absRe.test(q.choices[i])) {
			score -= 2;
			flags.push("absolute-assurance");
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
		flags.push("all-none-above");
	}
	const lens = q.choices.map((c) => c.length);
	const maxLen = Math.max(...lens);
	const minLen = Math.min(...lens);
	if (minLen > 0 && maxLen / minLen > 3) {
		score -= 1;
		flags.push(`length-cuing(${minLen}/${maxLen})`);
	}

	return { score: Math.max(0, Math.min(10, score)), flags };
}

async function main() {
	const topic = process.argv[2] || "State and Local Government Reporting";

	const { data, error } = await supabase
		.from("questions")
		.select("id, stem, choices, correct_index, explanation, difficulty, topic")
		.eq("topic", topic)
		.order("id");

	if (error) {
		console.error(error);
		process.exit(1);
	}

	console.log(`Topic: ${topic} (${data.length} total questions)\n`);

	let moderateCount = 0;
	for (const q of data) {
		const { score, flags } = scoreQuestion(q);
		if (score >= 4 && score <= 6) {
			moderateCount++;
			console.log("---");
			console.log(
				`Q${q.id} [score:${score}] [${q.difficulty}] flags: ${flags.join(", ")}`,
			);
			console.log(`STEM: ${q.stem}`);
			console.log(`CHOICES: ${JSON.stringify(q.choices)}`);
			console.log(`CORRECT: ${q.correct_index}`);
			console.log(`EXPLANATION: ${q.explanation}`);
		}
	}
	console.log(`\n--- ${moderateCount} moderate questions found ---`);
}

main();
