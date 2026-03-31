// Quality analyzer — scores each question on a 0-10 composite scale
// Detects formulaic stems, weak explanations, banned distractor patterns

import type { DbQuestion } from "../db-client";

export interface QuestionScore {
	id: number;
	section_id: string;
	topic: string;
	difficulty: string;
	score: number;
	flags: string[];
	stemWords: number;
	explanationWords: number;
}

export interface QualityAnalysis {
	scores: QuestionScore[];
	distribution: { critical: number; moderate: number; acceptable: number };
	avgScore: number;
	sectionAvgs: Map<string, number>;
}

// Standard citation patterns — aligned with validate-migration.ts
const STANDARD_PATTERN =
	/\b(AU-C|ASC|IRC|FASB|GASB|SSARS|AT-C|AR-C|SAS|PCAOB|Sec\.|Section|SQMS|SSAE|GAGAS|AICPA|NIST|COBIT|ITIL|GDPR|FIPS|ISO|RFC|IETF|COSO|SSTS|SFAC|UCC|Restatement)\b/i;

// "Addresses wrong answers" patterns
const WRONG_ANSWER_PATTERN =
	/\b(while|whereas|although|however|in contrast|not .* because|incorrect because|rather than|unlike)\b/i;

// Banned choice patterns
const ALL_NONE_PATTERN = /^(all|none) of the above$/i;
const BOTH_PATTERN = /^both [A-D] and [A-D]$/i;

// Lazy wrong-answer traps
const ABSOLUTE_PATTERN =
	/\b(absolute assurance|guarantee[sd]?|ensure[sd]? with certainty)\b/i;

// Named entity detection — proper nouns, company-like names
const NAMED_ENTITY_PATTERN =
	/\b([A-Z][a-z]+(?:\s(?:Corp|Inc|LLC|Ltd|Co|Associates|Partners|Group|Industries|Enterprises|Services|Technologies|Manufacturing|Consulting|Holdings|International|National|Global|Regional|Capital|Financial|Healthcare|Solutions|Systems|Development|Properties|Construction|Engineering|Retail|Wholesale|Insurance|Investments|Management|Advisors|Analytics|Logistics|Distribution|Communications|Media|Publishing|Energy|Resources|Mining|Transportation|Aerospace|Defense|Pharmaceuticals|Medical|Dental|Legal|Education|University|Foundation|Institute|Association|Society|Council|Board|Committee|Agency|Department|Bureau|Commission|Authority|Office)\.?)?)\b/;

function countWords(text: string): number {
	return text.trim().split(/\s+/).filter(Boolean).length;
}

export function scoreQuestion(q: DbQuestion): QuestionScore {
	let score = 7; // Start at baseline
	const flags: string[] = [];
	const stemWords = countWords(q.stem);
	const explanationWords = countWords(q.explanation);

	// Context-aware stem length check: L1 questions are intentionally shorter
	const isL1 =
		q.cognitive_level === 1 ||
		(q.cognitive_level == null && q.difficulty === "easy");
	const shortStemThreshold = isL1 ? 8 : 12;
	if (stemWords < shortStemThreshold) {
		score -= 2;
		flags.push(
			`short-stem (${stemWords} words, threshold ${shortStemThreshold})`,
		);
	}

	// Named entity bonus
	if (NAMED_ENTITY_PATTERN.test(q.stem)) {
		score += 1;
		flags.push("has-entity");
	}

	// Explanation length check
	if (explanationWords < 30) {
		score -= 2;
		flags.push(`short-explanation (${explanationWords} words)`);
	}

	// Standard citation bonus
	if (STANDARD_PATTERN.test(q.explanation)) {
		score += 1;
		flags.push("cites-standard");
	}

	// Addresses wrong answers bonus
	if (WRONG_ANSWER_PATTERN.test(q.explanation)) {
		score += 1;
		flags.push("addresses-wrong");
	}

	// Check choices
	const choices = q.choices;

	// All/None of the above
	if (choices.some((c) => ALL_NONE_PATTERN.test(c) || BOTH_PATTERN.test(c))) {
		score -= 3;
		flags.push("all-none-above");
	}

	// Choice length cuing
	const choiceLengths = choices.map((c) => c.length);
	const maxLen = Math.max(...choiceLengths);
	const minLen = Math.min(...choiceLengths);
	if (minLen > 0 && maxLen / minLen > 3) {
		score -= 1;
		flags.push("length-cuing");
	}

	// Absolute assurance in wrong answers
	const wrongChoices = choices.filter((_, i) => i !== q.correct_index);
	if (wrongChoices.some((c) => ABSOLUTE_PATTERN.test(c))) {
		score -= 2;
		flags.push("absolute-assurance-trap");
	}

	// Clamp to 0-10
	score = Math.max(0, Math.min(10, score));

	return {
		id: q.id,
		section_id: String(q.section_id),
		topic: q.topic,
		difficulty: q.difficulty,
		score,
		flags,
		stemWords,
		explanationWords,
	};
}

export function analyzeQuality(questions: DbQuestion[]): QualityAnalysis {
	const scores = questions.map(scoreQuestion);

	const critical = scores.filter((s) => s.score <= 3).length;
	const moderate = scores.filter((s) => s.score === 4).length;
	const acceptable = scores.filter((s) => s.score >= 5).length;

	const avgScore =
		scores.length > 0
			? scores.reduce((sum, s) => sum + s.score, 0) / scores.length
			: 0;

	// Per-section averages
	const sectionSums = new Map<string, { total: number; count: number }>();
	for (const s of scores) {
		const entry = sectionSums.get(s.section_id) ?? { total: 0, count: 0 };
		entry.total += s.score;
		entry.count++;
		sectionSums.set(s.section_id, entry);
	}

	const sectionAvgs = new Map<string, number>();
	for (const [section, { total, count }] of sectionSums) {
		sectionAvgs.set(section, Math.round((total / count) * 10) / 10);
	}

	return {
		scores,
		distribution: { critical, moderate, acceptable },
		avgScore,
		sectionAvgs,
	};
}
