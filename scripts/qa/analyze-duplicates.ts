/**
 * Duplicate cluster analysis — READ-ONLY report.
 *
 * Fetches all questions, runs trigram duplicate detection, clusters
 * overlapping pairs via union-find, picks a suggested keeper per cluster,
 * and outputs a JSON report + human-readable summary.
 *
 * Usage:
 *   npx tsx scripts/qa/analyze-duplicates.ts
 *   npx tsx scripts/qa/analyze-duplicates.ts --threshold=0.7
 *   npx tsx scripts/qa/analyze-duplicates.ts --output=json
 */

import { fetchAllQuestions, supabase, type DbQuestion } from "./db-client";
import { analyzeDuplicates } from "./analyzers/duplicates";

// ─── CLI args ──────────────────────────────────────────────────
const args = process.argv.slice(2);
const threshold = parseFloat(
	args.find((a) => a.startsWith("--threshold="))?.split("=")[1] ?? "0.7",
);
const outputJson = args.includes("--output=json");

// ─── Section lookup ────────────────────────────────────────────
async function loadSectionMap(): Promise<{
	idToCode: Map<number, string>;
	codeToId: Map<string, number>;
}> {
	const { data } = await supabase
		.from("sections")
		.select("id, code")
		.order("id");
	const idToCode = new Map<number, string>();
	const codeToId = new Map<string, number>();
	for (const s of data ?? []) {
		idToCode.set(s.id, s.code);
		codeToId.set(s.code, s.id);
	}
	return { idToCode, codeToId };
}

// ─── Union-Find ────────────────────────────────────────────────
class UnionFind {
	parent: Map<number, number> = new Map();
	rank: Map<number, number> = new Map();

	find(x: number): number {
		if (!this.parent.has(x)) {
			this.parent.set(x, x);
			this.rank.set(x, 0);
		}
		if (this.parent.get(x) !== x) {
			this.parent.set(x, this.find(this.parent.get(x)!));
		}
		return this.parent.get(x)!;
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
}

// ─── Keeper scoring ────────────────────────────────────────────
// Higher = better keeper. Prefer: has citation > higher Bloom's > longer explanation > lower ID (older)
function keeperScore(q: DbQuestion): number {
	let score = 0;
	// Citation in explanation (+100)
	if (
		q.explanation &&
		/(?:ASC|GASB|IRC|Section|§|PCAOB|AU-C|SAS|SSARS|SSAE|Circular\s+230)\s*\d/i.test(
			q.explanation,
		)
	) {
		score += 100;
	}
	// Bloom's level (+0-40)
	score += (q.cognitive_level ?? 1) * 10;
	// Explanation length (normalized, +0-30)
	const explLen = q.explanation?.length ?? 0;
	score += Math.min(30, Math.floor(explLen / 50));
	// Prefer older (lower ID) as tiebreak — subtract a tiny fraction of ID
	score -= q.id * 0.0001;
	return score;
}

// ─── Main ──────────────────────────────────────────────────────
async function main() {
	const { idToCode } = await loadSectionMap();
	const questions = await fetchAllQuestions();
	const qMap = new Map<number, DbQuestion>();
	for (const q of questions) qMap.set(q.id, q);

	// Run existing duplicate analyzer (uses 0.6 threshold internally)
	const { pairs } = analyzeDuplicates(questions);

	// Filter to requested threshold
	const filtered = pairs.filter((p) => p.similarity >= threshold);

	if (filtered.length === 0) {
		console.log(`No duplicate pairs at threshold ${threshold}.`);
		process.exit(0);
	}

	// Build clusters via union-find
	const uf = new UnionFind();
	for (const p of filtered) {
		uf.union(p.id1, p.id2);
	}

	// Group into clusters
	const clusterMap = new Map<number, Set<number>>();
	const allIds = new Set<number>();
	for (const p of filtered) {
		allIds.add(p.id1);
		allIds.add(p.id2);
	}
	for (const id of allIds) {
		const root = uf.find(id);
		if (!clusterMap.has(root)) clusterMap.set(root, new Set());
		clusterMap.get(root)!.add(id);
	}

	// Build cluster details
	interface ClusterInfo {
		clusterId: number;
		section: string;
		topic: string;
		size: number;
		keeperId: number;
		keeperScore: number;
		removeIds: number[];
		questions: {
			id: number;
			score: number;
			difficulty: string;
			blooms: number | null;
			stemPreview: string;
			isKeeper: boolean;
		}[];
		maxSimilarity: number;
	}

	const clusters: ClusterInfo[] = [];
	let clusterIdx = 0;

	for (const [, memberIds] of clusterMap) {
		clusterIdx++;
		const members = [...memberIds]
			.map((id) => qMap.get(id)!)
			.filter(Boolean);
		if (members.length < 2) continue;

		// All members should be same topic (enforced by analyzer)
		const topic = members[0].topic;
		const section = idToCode.get(members[0].section_id) ?? "?";

		// Score each member
		const scored = members.map((q) => ({
			q,
			score: keeperScore(q),
		}));
		scored.sort((a, b) => b.score - a.score);

		const keeper = scored[0];
		const removeIds = scored.slice(1).map((s) => s.q.id);

		// Find max similarity within this cluster
		let maxSim = 0;
		for (const p of filtered) {
			if (memberIds.has(p.id1) && memberIds.has(p.id2)) {
				if (p.similarity > maxSim) maxSim = p.similarity;
			}
		}

		clusters.push({
			clusterId: clusterIdx,
			section,
			topic,
			size: members.length,
			keeperId: keeper.q.id,
			keeperScore: keeper.score,
			removeIds,
			questions: scored.map((s) => ({
				id: s.q.id,
				score: s.score,
				difficulty: s.q.difficulty,
				blooms: s.q.cognitive_level,
				stemPreview: s.q.stem.slice(0, 120),
				isKeeper: s.q.id === keeper.q.id,
			})),
			maxSimilarity: maxSim,
		});
	}

	// Sort by similarity desc, then section
	clusters.sort((a, b) => b.maxSimilarity - a.maxSimilarity);

	// ─── Section summary ───────────────────────────────────────
	const sectionSummary = new Map<
		string,
		{ clusters: number; removals: number; currentCount: number }
	>();
	for (const c of clusters) {
		if (!sectionSummary.has(c.section)) {
			sectionSummary.set(c.section, { clusters: 0, removals: 0, currentCount: 0 });
		}
		const s = sectionSummary.get(c.section)!;
		s.clusters += 1;
		s.removals += c.removeIds.length;
	}

	// Get current counts per section
	const sectionCounts = new Map<string, number>();
	for (const q of questions) {
		const code = idToCode.get(q.section_id) ?? "?";
		sectionCounts.set(code, (sectionCounts.get(code) ?? 0) + 1);
	}
	for (const [code, info] of sectionSummary) {
		info.currentCount = sectionCounts.get(code) ?? 0;
	}

	// ─── Output ────────────────────────────────────────────────
	const report = {
		threshold,
		totalPairs: filtered.length,
		totalClusters: clusters.length,
		totalRemovals: clusters.reduce((sum, c) => sum + c.removeIds.length, 0),
		sectionSummary: Object.fromEntries(
			[...sectionSummary.entries()]
				.sort(([a], [b]) => a.localeCompare(b))
				.map(([code, info]) => [
					code,
					{
						...info,
						afterCount: info.currentCount - info.removals,
					},
				]),
		),
		clusters,
	};

	if (outputJson) {
		console.log(JSON.stringify(report, null, 2));
	} else {
		// Human-readable
		console.log(`\n=== Duplicate Cluster Analysis ===`);
		console.log(`Threshold: ${threshold}`);
		console.log(`Pairs found: ${filtered.length}`);
		console.log(`Clusters: ${clusters.length}`);
		console.log(
			`Total removals (suggested): ${report.totalRemovals}\n`,
		);

		console.log(`--- Section Impact ---`);
		console.log(
			"Section  Clusters  Removals  Current  After",
		);
		console.log("-------  --------  --------  -------  -----");
		for (const [code, info] of [...sectionSummary.entries()].sort(
			([a], [b]) => a.localeCompare(b),
		)) {
			const after = info.currentCount - info.removals;
			console.log(
				`${code.toUpperCase().padEnd(7)}  ${String(info.clusters).padStart(8)}  ${String(info.removals).padStart(8)}  ${String(info.currentCount).padStart(7)}  ${String(after).padStart(5)}`,
			);
		}

		console.log(`\n--- Clusters (sorted by similarity) ---\n`);
		for (const c of clusters) {
			console.log(
				`Cluster #${c.clusterId} — ${c.section.toUpperCase()} / ${c.topic} (sim: ${c.maxSimilarity}, size: ${c.size})`,
			);
			console.log(`  Keeper: Q${c.keeperId} (score: ${c.keeperScore.toFixed(1)})`);
			console.log(`  Remove: ${c.removeIds.map((id) => `Q${id}`).join(", ")}`);
			for (const q of c.questions) {
				const tag = q.isKeeper ? " ★" : "  ";
				console.log(
					`  ${tag} Q${q.id} [${q.difficulty}, L${q.blooms ?? "?"}] (${q.score.toFixed(1)}) ${q.stemPreview}`,
				);
			}
			console.log();
		}
	}
}

main().catch((err) => {
	console.error(err);
	process.exit(1);
});
