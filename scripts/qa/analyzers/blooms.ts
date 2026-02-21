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
	/\b(which .+ would you recommend|what action should|appropriate response)\b/i,
];

const L3_PATTERNS = [
	// Direct analysis keywords
	/\b(analyze|compare|contrast|distinguish|differentiate|classify|categorize)\b/i,
	// Effect/impact/consequence patterns
	/\b(effect of .+ on|what is the (impact|effect)|how would .+ affect|how does .+ affect|implications? of|what would be the consequence)\b/i,
	/\b(which .+ would result|what is the result|resulting .+ would be)\b/i,
	// Conditional/causal reasoning
	/\b(what happens? (if|when)|if .+ (what|how|which)|what would happen)\b/i,
	/\b(as a result of|because of .+ the|the reason .+ is|why (does|would|is|do))\b/i,
	// Multi-concept interaction
	/\b(relationship between|interaction between|differs? from|difference between|how does .+ differ)\b/i,
	/\b(rather than|instead of|as opposed to|compared to|in contrast)\b/i,
	// Inferential patterns (most likely, least likely with scenario)
	/\b(most likely indicates?|would most likely|least likely to)\b/i,
	// Multi-step reasoning signals
	/\b(first .+ then|after .+ the|before .+ must|in order to .+ must)\b/i,
	// "What is the effect on" (common CPA analysis pattern)
	/what .+ (reported|recognized|recorded|included) .+ (income statement|balance sheet|financial statements|equity|retained earnings)/i,
];

// Conditional/causal language that elevates scenario+numbers from L2 to L3
const L3_CONDITIONAL_PATTERNS = [
	/\b(if|assuming|suppose|given that|provided that|in the event)\b/i,
	/\b(what is the effect|how does this affect|what impact|what would be the|how should .+ be (reported|treated|classified))\b/i,
	/\b(when .+ (happens?|occurs?|changes?|increases?|decreases?|is sold|is converted|defaults?))\b/i,
	/\b(what adjustment|how should .+ adjust|what entry|what is the .+ after)\b/i,
];

const L2_PATTERNS = [
	/\b(calculate|determine the amount|compute|how much|what amount|what is the .+ balance)\b/i,
	/\b(record the|prepare the|journal entry)\b/i,
	/\b(what gain|what loss|adjusted basis|taxable income|net income|total assets)\b/i,
];

const L1_PATTERNS = [
	/\b(which of the following (best )?(describes?|defines?|is\b|are\b|represents?))/i,
	/\b(identify|which statement|define|the definition of)\b/i,
	/\b(true (about|regarding|of)|is characterized by|is known as|refers to)\b/i,
];

// Detect scenario-based stems (named entity or "a company/taxpayer" patterns)
function hasScenarioContext(stem: string): boolean {
	return (
		/\b[A-Z][a-z]+(?:\s(?:Corp|Inc|LLC|Ltd|Co|Company|Partnership)\.?)?\b/.test(
			stem,
		) ||
		/\b(a (company|corporation|taxpayer|partnership|client|firm|CPA|auditor|shareholder|employee|employer)|an (individual|entity|employee|employer|auditor))\b/i.test(
			stem,
		)
	);
}

function hasNumericContext(stem: string): boolean {
	return /\$[\d,]+|\b\d{2,}(?:,\d{3})*\b/.test(stem);
}

export function classifyBloomsLevel(stem: string): {
	level: BloomsLevel;
	confidence: "high" | "medium" | "low";
} {
	// Check L4 first (most specific)
	if (L4_PATTERNS.some((p) => p.test(stem))) {
		return { level: 4, confidence: "high" };
	}

	// L3 — explicit analysis keywords
	if (L3_PATTERNS.some((p) => p.test(stem))) {
		return { level: 3, confidence: "high" };
	}

	// L2 — pure computation/application
	const isComputation = L2_PATTERNS.some((p) => p.test(stem));

	// Check if a computation question also has conditional/causal reasoning → L3
	if (isComputation) {
		const hasConditional = L3_CONDITIONAL_PATTERNS.some((p) => p.test(stem));
		const wordCount = stem.trim().split(/\s+/).length;
		// Long scenario + computation + conditional = analysis, not just application
		if (hasConditional && wordCount > 30) {
			return { level: 3, confidence: "medium" };
		}
		return { level: 2, confidence: "high" };
	}

	// Scenario-based stems with numbers
	const scenario = hasScenarioContext(stem);
	const numbers = hasNumericContext(stem);

	if (scenario && numbers) {
		// If the scenario has conditional/causal language, it's L3 analysis
		if (L3_CONDITIONAL_PATTERNS.some((p) => p.test(stem))) {
			return { level: 3, confidence: "medium" };
		}
		return { level: 2, confidence: "medium" };
	}

	// L1 — remembering & understanding
	if (L1_PATTERNS.some((p) => p.test(stem))) {
		return { level: 1, confidence: "high" };
	}

	// Scenario without numbers but with conditional language → L3
	if (scenario && L3_CONDITIONAL_PATTERNS.some((p) => p.test(stem))) {
		return { level: 3, confidence: "low" };
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
