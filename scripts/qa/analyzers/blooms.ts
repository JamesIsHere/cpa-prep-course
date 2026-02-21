// Bloom's cognitive level estimator
// Heuristic classification based on stem keyword matching
// L1 = Remembering & Understanding, L2 = Application, L3 = Analysis, L4 = Evaluation

import type { DbQuestion } from "../db-client";

export type BloomsLevel = 1 | 2 | 3 | 4;

export interface BloomsResult {
	id: number;
	section_id: string;
	topic: string;
	level: BloomsLevel;
	confidence: "high" | "medium" | "low";
}

export interface BloomsDistribution {
	section: string;
	l1: number;
	l2: number;
	l3: number;
	l4: number;
	l1Pct: number;
	l2Pct: number;
	l3Pct: number;
	l4Pct: number;
}

export interface BloomsTarget {
	l1: [number, number];
	l2: [number, number];
	l3: [number, number];
	l4: [number, number];
}

// AICPA Bloom's targets by section
export const BLOOMS_TARGETS: Record<string, BloomsTarget> = {
	aud: { l1: [30, 40], l2: [30, 40], l3: [15, 25], l4: [5, 15] },
	far: { l1: [10, 20], l2: [50, 60], l3: [25, 35], l4: [0, 0] },
	reg: { l1: [25, 35], l2: [35, 45], l3: [25, 35], l4: [0, 0] },
	bar: { l1: [10, 20], l2: [45, 55], l3: [30, 40], l4: [0, 0] },
	isc: { l1: [55, 65], l2: [20, 30], l3: [10, 20], l4: [0, 0] },
	tcp: { l1: [5, 15], l2: [55, 65], l3: [20, 30], l4: [5, 15] },
};

// Keyword patterns for each level (checked in order: L4 first → L1 last)
const L4_PATTERNS = [
	/\b(evaluate|recommend|assess whether|should the auditor|should the CPA|advise|counsel|best course of action|most appropriate recommendation)\b/i,
];

const L3_PATTERNS = [
	/\b(most likely indicates?|effect of .+ on|compare|contrast|distinguish|analyze|what is the impact|how would .+ affect|implications? of|which .+ would result|what would be the consequence)\b/i,
];

const L2_PATTERNS = [
	/\b(calculate|determine the amount|compute|how much|what amount|what is the .+ balance|record the|prepare the|journal entry|what gain|what loss|adjusted basis|taxable income|net income|total assets)\b/i,
];

const L1_PATTERNS = [
	/\b(what is|which of the following (best )?(describes?|defines?|is|are|represents?)|identify|which statement|define|true (about|regarding|of)|the definition of|is characterized by|is known as|refers to)\b/i,
];

export function classifyBloomsLevel(stem: string): {
	level: BloomsLevel;
	confidence: "high" | "medium" | "low";
} {
	const stemLower = stem.toLowerCase();

	// Check L4 first (most specific)
	if (L4_PATTERNS.some((p) => p.test(stem))) {
		return { level: 4, confidence: "high" };
	}

	// L3 — analysis
	if (L3_PATTERNS.some((p) => p.test(stem))) {
		return { level: 3, confidence: "high" };
	}

	// L2 — application (also check for scenario indicators)
	if (L2_PATTERNS.some((p) => p.test(stem))) {
		return { level: 2, confidence: "high" };
	}

	// Scenario-based stems with named entities are likely L2+
	const hasScenario = /\b[A-Z][a-z]+(?:\s(?:Corp|Inc|LLC|Ltd|Co)\.?)?\b/.test(
		stem,
	);
	const hasNumbers = /\$[\d,]+|\b\d{4}\b/.test(stem);

	if (hasScenario && hasNumbers) {
		return { level: 2, confidence: "medium" };
	}

	// L1 — remembering & understanding
	if (L1_PATTERNS.some((p) => p.test(stem))) {
		return { level: 1, confidence: "high" };
	}

	// Default: short stems without scenarios → L1, others → L2
	const wordCount = stem.trim().split(/\s+/).length;
	if (wordCount < 15) {
		return { level: 1, confidence: "low" };
	}

	return { level: 2, confidence: "low" };
}

export function analyzeBlooms(
	questions: DbQuestion[],
	sectionCodeMap: Map<string, string>,
): { results: BloomsResult[]; distributions: BloomsDistribution[] } {
	const results: BloomsResult[] = questions.map((q) => {
		const { level, confidence } = classifyBloomsLevel(q.stem);
		return {
			id: q.id,
			section_id: String(q.section_id),
			topic: q.topic,
			level,
			confidence,
		};
	});

	// Build per-section distributions
	const sectionGroups = new Map<string, BloomsResult[]>();
	for (const r of results) {
		if (!sectionGroups.has(r.section_id)) sectionGroups.set(r.section_id, []);
		sectionGroups.get(r.section_id)!.push(r);
	}

	const distributions: BloomsDistribution[] = [];
	for (const [sectionId, group] of sectionGroups) {
		const total = group.length;
		const l1 = group.filter((r) => r.level === 1).length;
		const l2 = group.filter((r) => r.level === 2).length;
		const l3 = group.filter((r) => r.level === 3).length;
		const l4 = group.filter((r) => r.level === 4).length;

		const sectionCode = sectionCodeMap.get(sectionId) ?? sectionId;

		distributions.push({
			section: sectionCode,
			l1,
			l2,
			l3,
			l4,
			l1Pct: Math.round((l1 / total) * 100),
			l2Pct: Math.round((l2 / total) * 100),
			l3Pct: Math.round((l3 / total) * 100),
			l4Pct: Math.round((l4 / total) * 100),
		});
	}

	distributions.sort((a, b) => a.section.localeCompare(b.section));
	return { results, distributions };
}
