import { createClient } from "@supabase/supabase-js";
import { config } from "dotenv";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
config({ path: resolve(__dirname, "../../.env.local") });

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
const allNoneRe = /^(all|none) of the above$/i;
const bothRe = /^both [A-D] and [A-D]$/i;

interface Q {
	id: number;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
	difficulty: string;
	topic: string;
	cognitive_level: number | null;
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
	if (q.choices.some((c) => allNoneRe.test(c) || bothRe.test(c))) {
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

const TOPICS = [
	"Terms of Engagement",
	"Other Information and Supplementary Information",
	"Materiality",
	"Specific Areas and Transactions",
	"Governmental Accounting Fundamentals",
];

async function main() {
	const allModerate: Array<Q & { score: number; flags: string[] }> = [];

	for (const topic of TOPICS) {
		const { data, error } = await supabase
			.from("questions")
			.select(
				"id, stem, choices, correct_index, explanation, difficulty, topic, cognitive_level",
			)
			.eq("topic", topic)
			.order("id");

		if (error) {
			console.error(`Error fetching "${topic}":`, error);
			continue;
		}

		let topicModerate = 0;
		for (const q of data as Q[]) {
			const { score, flags } = scoreQuestion(q);
			if (score >= 4 && score <= 6) {
				topicModerate++;
				allModerate.push({ ...q, score, flags });
			}
		}
		console.error(
			`${topic}: ${data.length} total, ${topicModerate} moderate (4-6)`,
		);
	}

	console.error(`\nTotal moderate questions: ${allModerate.length}\n`);

	// Output as JSON for processing
	const output = allModerate.map((q) => ({
		id: q.id,
		topic: q.topic,
		difficulty: q.difficulty,
		cognitive_level: q.cognitive_level,
		score: q.score,
		flags: q.flags,
		question: q.stem,
		option_a: q.choices[0],
		option_b: q.choices[1],
		option_c: q.choices[2],
		option_d: q.choices[3],
		correct_answer: ["A", "B", "C", "D"][q.correct_index],
		explanation: q.explanation,
	}));

	console.log(JSON.stringify(output, null, 2));
}

main();
