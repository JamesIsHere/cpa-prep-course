// Find duplicate question clusters for bulk cleanup
// Usage: npx tsx scripts/qa/find-duplicates-for-cleanup.ts [--section=aud] [--threshold=0.7]
//
// Per section:
//   1. Fetch all questions from DB
//   2. Compute normalized trigram Jaccard for all pairs within each topic
//   3. Build clusters via union-find (transitive closure)
//   4. Pick keeper per cluster: has citation > higher Bloom's > longer explanation > lowest ID
//   5. Output JSON with keeper IDs + delete IDs + TODO stubs

import { fetchAllQuestions, type DbQuestion } from "./db-client";
import { trigrams, jaccardSimilarity, normalizeStem } from "./utils";

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const thresholdArg = process.argv
	.find((a) => a.startsWith("--threshold="))
	?.split("=")[1];

const THRESHOLD = thresholdArg ? parseFloat(thresholdArg) : 0.7;
const SECTIONS = sectionArg
	? [sectionArg]
	: ["aud", "far", "reg", "bar", "isc", "tcp"];

// ─── Union-Find ─────────────────────────────────────────────────

class UnionFind {
	private parent: Map<number, number> = new Map();
	private rank: Map<number, number> = new Map();

	add(x: number): void {
		if (!this.parent.has(x)) {
			this.parent.set(x, x);
			this.rank.set(x, 0);
		}
	}

	find(x: number): number {
		let root = x;
		while (this.parent.get(root) !== root) {
			root = this.parent.get(root)!;
		}
		// Path compression
		let current = x;
		while (current !== root) {
			const next = this.parent.get(current)!;
			this.parent.set(current, root);
			current = next;
		}
		return root;
	}

	union(a: number, b: number): void {
		const ra = this.find(a);
		const rb = this.find(b);
		if (ra === rb) return;
		const rankA = this.rank.get(ra)!;
		const rankB = this.rank.get(rb)!;
		if (rankA < rankB) {
			this.parent.set(ra, rb);
		} else if (rankA > rankB) {
			this.parent.set(rb, ra);
		} else {
			this.parent.set(rb, ra);
			this.rank.set(ra, rankA + 1);
		}
	}

	clusters(): Map<number, number[]> {
		const groups = new Map<number, number[]>();
		for (const id of this.parent.keys()) {
			const root = this.find(id);
			if (!groups.has(root)) groups.set(root, []);
			groups.get(root)!.push(id);
		}
		return groups;
	}
}

// ─── Keeper selection ───────────────────────────────────────────

function hasCitation(q: DbQuestion): boolean {
	if (!q.explanation) return false;
	// Check for common citation patterns: ASC, FASB, GAAS, AU-C, PCAOB, IRC, etc.
	return /(?:ASC|FASB|GAAS|AU-C|PCAOB|IRC|§|Section\s+\d|Circular\s+230|SSARS|SSAE|SAS)/i.test(
		q.explanation,
	);
}

function selectKeeper(cluster: DbQuestion[]): DbQuestion {
	// Sort by priority: has citation > higher Bloom's > longer explanation > lowest ID
	const sorted = [...cluster].sort((a, b) => {
		// Citation presence
		const citA = hasCitation(a) ? 1 : 0;
		const citB = hasCitation(b) ? 1 : 0;
		if (citA !== citB) return citB - citA;

		// Higher Bloom's level
		const blA = a.cognitive_level ?? 0;
		const blB = b.cognitive_level ?? 0;
		if (blA !== blB) return blB - blA;

		// Longer explanation
		const expA = (a.explanation ?? "").length;
		const expB = (b.explanation ?? "").length;
		if (expA !== expB) return expB - expA;

		// Lowest ID (oldest = most likely reviewed)
		return a.id - b.id;
	});
	return sorted[0];
}

// ─── Main ───────────────────────────────────────────────────────

interface ClusterResult {
	keeperId: number;
	keeperStem: string;
	deleteIds: number[];
	clusterSize: number;
	topic: string;
	sampleSimilarity: number;
}

interface SectionResult {
	section: string;
	totalQuestions: number;
	todoCount: number;
	todoIds: number[];
	clusterCount: number;
	totalDuplicates: number;
	clusters: ClusterResult[];
}

async function processSection(section: string): Promise<SectionResult> {
	const questions = await fetchAllQuestions(section);
	console.error(
		`[${section.toUpperCase()}] Loaded ${questions.length} questions`,
	);

	// Identify TODO stubs
	const todoIds = questions
		.filter((q) => /^TODO:/.test(q.stem))
		.map((q) => q.id);

	// Filter out TODOs for duplicate analysis
	const validQuestions = questions.filter((q) => !/^TODO:/.test(q.stem));

	// Group by topic
	const byTopic = new Map<string, DbQuestion[]>();
	for (const q of validQuestions) {
		if (!byTopic.has(q.topic)) byTopic.set(q.topic, []);
		byTopic.get(q.topic)!.push(q);
	}

	const uf = new UnionFind();
	const questionMap = new Map<number, DbQuestion>();
	const pairSimilarities = new Map<string, number>();

	for (const [topic, qs] of byTopic) {
		// Pre-compute trigrams (raw + normalized)
		const cache = qs.map((q) => {
			uf.add(q.id);
			questionMap.set(q.id, q);
			return {
				q,
				tris: trigrams(q.stem),
				normTris: trigrams(normalizeStem(q.stem)),
			};
		});

		// Pairwise comparison
		for (let i = 0; i < cache.length; i++) {
			for (let j = i + 1; j < cache.length; j++) {
				// Size pre-filter
				const sizeA = cache[i].tris.size;
				const sizeB = cache[j].tris.size;
				const maxSize = Math.max(sizeA, sizeB);
				if (maxSize > 0 && Math.abs(sizeA - sizeB) / maxSize > 0.5)
					continue;

				const sim = Math.max(
					jaccardSimilarity(cache[i].tris, cache[j].tris),
					jaccardSimilarity(cache[i].normTris, cache[j].normTris),
				);

				if (sim >= THRESHOLD) {
					uf.union(cache[i].q.id, cache[j].q.id);
					const key = `${Math.min(cache[i].q.id, cache[j].q.id)}-${Math.max(cache[i].q.id, cache[j].q.id)}`;
					pairSimilarities.set(key, sim);
				}
			}
		}

		if (qs.length > 100) {
			console.error(
				`  [${topic}] ${qs.length} questions — pairwise done`,
			);
		}
	}

	// Extract clusters with >1 member
	const allClusters = uf.clusters();
	const dupeClusters: ClusterResult[] = [];

	for (const [, memberIds] of allClusters) {
		if (memberIds.length <= 1) continue;

		const members = memberIds
			.map((id) => questionMap.get(id)!)
			.filter(Boolean);
		if (members.length <= 1) continue;

		const keeper = selectKeeper(members);
		const deleteIds = members
			.filter((q) => q.id !== keeper.id)
			.map((q) => q.id);

		// Find a representative similarity score
		let maxSim = 0;
		for (const did of deleteIds) {
			const key = `${Math.min(keeper.id, did)}-${Math.max(keeper.id, did)}`;
			const s = pairSimilarities.get(key);
			if (s && s > maxSim) maxSim = s;
		}

		dupeClusters.push({
			keeperId: keeper.id,
			keeperStem: keeper.stem.slice(0, 120),
			deleteIds,
			clusterSize: members.length,
			topic: keeper.topic,
			sampleSimilarity: Math.round(maxSim * 1000) / 1000,
		});
	}

	// Sort by cluster size descending
	dupeClusters.sort((a, b) => b.clusterSize - a.clusterSize);

	const totalDuplicates = dupeClusters.reduce(
		(sum, c) => sum + c.deleteIds.length,
		0,
	);
	console.error(
		`[${section.toUpperCase()}] Found ${dupeClusters.length} clusters, ${totalDuplicates} duplicates to delete, ${todoIds.length} TODOs`,
	);

	return {
		section,
		totalQuestions: questions.length,
		todoCount: todoIds.length,
		todoIds,
		clusterCount: dupeClusters.length,
		totalDuplicates,
		clusters: dupeClusters,
	};
}

async function main() {
	const results: SectionResult[] = [];

	for (const section of SECTIONS) {
		const result = await processSection(section);
		results.push(result);
	}

	// Summary
	const grandTotalDupes = results.reduce(
		(s, r) => s + r.totalDuplicates,
		0,
	);
	const grandTotalTodos = results.reduce((s, r) => s + r.todoCount, 0);
	console.error(`\n═══ SUMMARY ═══`);
	for (const r of results) {
		console.error(
			`  ${r.section.toUpperCase()}: ${r.totalQuestions} total → ${r.totalDuplicates} dupes + ${r.todoCount} TODOs = ${r.totalDuplicates + r.todoCount} to delete → ${r.totalQuestions - r.totalDuplicates - r.todoCount} remaining`,
		);
	}
	console.error(
		`  TOTAL: ${grandTotalDupes} duplicates + ${grandTotalTodos} TODOs = ${grandTotalDupes + grandTotalTodos} to delete`,
	);

	// Output JSON to stdout
	console.log(JSON.stringify(results, null, 2));
}

main();
