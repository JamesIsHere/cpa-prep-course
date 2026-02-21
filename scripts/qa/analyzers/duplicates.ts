// Near-duplicate detector using trigram Jaccard similarity
// Scoped within same topic to keep pairwise comparisons manageable

import type { DbQuestion } from "../db-client";

export interface DuplicatePair {
	id1: number;
	id2: number;
	topic: string;
	similarity: number;
	stem1: string;
	stem2: string;
	severity: "near-duplicate" | "likely-duplicate";
}

export interface DuplicateAnalysis {
	pairs: DuplicatePair[];
	nearDuplicateCount: number;
	likelyDuplicateCount: number;
}

/**
 * Generate character trigrams from text.
 */
function trigrams(text: string): Set<string> {
	const normalized = text
		.toLowerCase()
		.replace(/[^a-z0-9\s]/g, "")
		.replace(/\s+/g, " ")
		.trim();
	const result = new Set<string>();
	for (let i = 0; i <= normalized.length - 3; i++) {
		result.add(normalized.slice(i, i + 3));
	}
	return result;
}

/**
 * Jaccard similarity between two trigram sets.
 */
function jaccardSimilarity(a: Set<string>, b: Set<string>): number {
	if (a.size === 0 && b.size === 0) return 1;
	let intersection = 0;
	for (const t of a) {
		if (b.has(t)) intersection++;
	}
	const union = a.size + b.size - intersection;
	return union === 0 ? 0 : intersection / union;
}

export function analyzeDuplicates(questions: DbQuestion[]): DuplicateAnalysis {
	// Group by topic
	const byTopic = new Map<string, DbQuestion[]>();
	for (const q of questions) {
		if (!byTopic.has(q.topic)) byTopic.set(q.topic, []);
		byTopic.get(q.topic)!.push(q);
	}

	const pairs: DuplicatePair[] = [];

	for (const [topic, qs] of byTopic) {
		// Pre-compute trigrams
		const trigramCache = qs.map((q) => ({ q, tris: trigrams(q.stem) }));

		// Pairwise comparison
		for (let i = 0; i < trigramCache.length; i++) {
			for (let j = i + 1; j < trigramCache.length; j++) {
				const sim = jaccardSimilarity(
					trigramCache[i].tris,
					trigramCache[j].tris,
				);
				if (sim > 0.6) {
					pairs.push({
						id1: trigramCache[i].q.id,
						id2: trigramCache[j].q.id,
						topic,
						similarity: Math.round(sim * 1000) / 1000,
						stem1: trigramCache[i].q.stem.slice(0, 100),
						stem2: trigramCache[j].q.stem.slice(0, 100),
						severity: sim > 0.8 ? "likely-duplicate" : "near-duplicate",
					});
				}
			}
		}
	}

	pairs.sort((a, b) => b.similarity - a.similarity);

	return {
		pairs,
		nearDuplicateCount: pairs.filter((p) => p.severity === "near-duplicate")
			.length,
		likelyDuplicateCount: pairs.filter((p) => p.severity === "likely-duplicate")
			.length,
	};
}
