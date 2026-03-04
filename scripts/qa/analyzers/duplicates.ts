// Near-duplicate detector using trigram Jaccard similarity
// Scoped within same topic to keep pairwise comparisons manageable

import type { DbQuestion } from "../db-client";
import { trigrams, jaccardSimilarity, normalizeStem } from "../utils";

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

export function analyzeDuplicates(questions: DbQuestion[]): DuplicateAnalysis {
	// Group by topic
	const byTopic = new Map<string, DbQuestion[]>();
	for (const q of questions) {
		if (!byTopic.has(q.topic)) byTopic.set(q.topic, []);
		byTopic.get(q.topic)!.push(q);
	}

	const pairs: DuplicatePair[] = [];

	for (const [topic, qs] of byTopic) {
		// Pre-compute trigrams (raw + normalized)
		const trigramCache = qs.map((q) => ({
			q,
			tris: trigrams(q.stem),
			normTris: trigrams(normalizeStem(q.stem)),
		}));

		// Pairwise comparison with size-based pre-filter
		for (let i = 0; i < trigramCache.length; i++) {
			for (let j = i + 1; j < trigramCache.length; j++) {
				// Skip pairs where set size difference makes Jaccard > 0.6 impossible
				const sizeA = trigramCache[i].tris.size;
				const sizeB = trigramCache[j].tris.size;
				const maxSize = Math.max(sizeA, sizeB);
				if (maxSize > 0 && Math.abs(sizeA - sizeB) / maxSize > 0.4) continue;

				// Max of raw and normalized similarity
				const sim = Math.max(
					jaccardSimilarity(
						trigramCache[i].tris,
						trigramCache[j].tris,
					),
					jaccardSimilarity(
						trigramCache[i].normTris,
						trigramCache[j].normTris,
					),
				);
				if (sim > 0.6) {
					pairs.push({
						id1: trigramCache[i].q.id,
						id2: trigramCache[j].q.id,
						topic,
						similarity: Math.round(sim * 1000) / 1000,
						stem1: trigramCache[i].q.stem.slice(0, 100),
						stem2: trigramCache[j].q.stem.slice(0, 100),
						severity: sim > 0.7 ? "likely-duplicate" : "near-duplicate",
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
