// Formats all analyzer outputs into a markdown report

import type { BloomsDistribution, BloomsSourceStats } from "./analyzers/blooms";
import { BLOOMS_TARGETS } from "./analyzers/blooms";
import type { CoverageAnalysis } from "./analyzers/coverage";
import type { DifficultyAnalysis } from "./analyzers/difficulty";
import type { DuplicateAnalysis } from "./analyzers/duplicates";
import type { QualityAnalysis, QuestionScore } from "./analyzers/quality";

interface ReportData {
	date: string;
	sectionFilter?: string;
	totalQuestions: number;
	difficulty: DifficultyAnalysis;
	coverage: CoverageAnalysis;
	quality: QualityAnalysis;
	blooms: BloomsDistribution[];
	bloomsSourceStats?: BloomsSourceStats;
	duplicates: DuplicateAnalysis;
	sectionCodeMap: Map<string, string>;
}

function inRange(pct: number, range: [number, number]): string {
	if (range[0] === 0 && range[1] === 0) return pct === 0 ? "OK" : "OVER";
	if (pct < range[0]) return "LOW";
	if (pct > range[1]) return "HIGH";
	return "OK";
}

export function generateReport(data: ReportData): string {
	const lines: string[] = [];
	const { difficulty, coverage, quality, blooms, duplicates, sectionCodeMap } =
		data;

	// Reverse map for display: section_id → code
	const idToCode = new Map<string, string>();
	for (const [id, code] of sectionCodeMap) {
		idToCode.set(id, code);
	}

	lines.push(`# CPA Question Quality Audit Report`);
	lines.push("");
	lines.push(`**Date:** ${data.date}`);
	lines.push(
		`**Scope:** ${data.sectionFilter ? data.sectionFilter.toUpperCase() : "All sections"}`,
	);
	lines.push(`**Total questions analyzed:** ${data.totalQuestions}`);
	lines.push("");

	// === Quality Summary ===
	lines.push("## Quality Summary");
	lines.push("");
	lines.push(
		`| Category   | Count | Pct    | Description                        |`,
	);
	lines.push(
		`|------------|-------|--------|------------------------------------|`,
	);
	lines.push(
		`| Critical   | ${quality.distribution.critical.toString().padStart(5)} | ${Math.round(
			(quality.distribution.critical / data.totalQuestions) * 100,
		)
			.toString()
			.padStart(4)}%  | Score 0-3: must rewrite            |`,
	);
	lines.push(
		`| Moderate   | ${quality.distribution.moderate.toString().padStart(5)} | ${Math.round(
			(quality.distribution.moderate / data.totalQuestions) * 100,
		)
			.toString()
			.padStart(4)}%  | Score 4-6: should upgrade          |`,
	);
	lines.push(
		`| Acceptable | ${quality.distribution.acceptable.toString().padStart(5)} | ${Math.round(
			(quality.distribution.acceptable / data.totalQuestions) * 100,
		)
			.toString()
			.padStart(4)}%  | Score 7-10: leave as-is            |`,
	);
	lines.push("");
	lines.push(
		`**Average quality score:** ${Math.round(quality.avgScore * 10) / 10}/10`,
	);
	lines.push("");

	// Per-section quality averages
	lines.push("### Per-Section Quality");
	lines.push("");
	lines.push(`| Section | Avg Score | Rating     |`);
	lines.push(`|---------|-----------|------------|`);
	for (const [sectionId, avg] of quality.sectionAvgs) {
		const code = (idToCode.get(sectionId) ?? sectionId).toUpperCase();
		const rating = avg >= 7 ? "Acceptable" : avg >= 4 ? "Moderate" : "Critical";
		lines.push(
			`| ${code.padEnd(7)} | ${avg.toFixed(1).padStart(9)} | ${rating.padEnd(10)} |`,
		);
	}
	lines.push("");

	// === Difficulty Distribution ===
	lines.push("## Difficulty Distribution");
	lines.push("");
	lines.push("Target: 30% easy / 50% medium / 20% hard");
	lines.push("");
	lines.push(`| Section | Total | Easy       | Medium     | Hard       |`);
	lines.push(`|---------|-------|------------|------------|------------|`);
	for (const d of difficulty.sections) {
		const code = (idToCode.get(d.section) ?? d.section).toUpperCase();
		const eDelta = d.easyDelta >= 0 ? `+${d.easyDelta}` : `${d.easyDelta}`;
		const mDelta =
			d.mediumDelta >= 0 ? `+${d.mediumDelta}` : `${d.mediumDelta}`;
		const hDelta = d.hardDelta >= 0 ? `+${d.hardDelta}` : `${d.hardDelta}`;
		lines.push(
			`| ${code.padEnd(7)} | ${d.total.toString().padStart(5)} | ${d.easyPct}% (${eDelta})`.padEnd(
				48,
			) +
				` | ${d.mediumPct}% (${mDelta})`.padEnd(13) +
				` | ${d.hardPct}% (${hDelta})`.padEnd(13) +
				` |`,
		);
	}
	lines.push("");

	if (difficulty.flaggedTopics.length > 0) {
		lines.push("### Flagged Topics (uniform difficulty)");
		lines.push("");
		for (const t of difficulty.flaggedTopics) {
			const flag = t.allEasy ? "ALL EASY" : "ALL HARD";
			lines.push(`- **${t.topic}** (${t.total} questions): ${flag}`);
		}
		lines.push("");
	}

	// === Bloom's Cognitive Levels ===
	lines.push("## Bloom's Cognitive Level Distribution");
	lines.push("");
	if (data.bloomsSourceStats) {
		lines.push(
			`**Source:** ${data.bloomsSourceStats.dbCount} from DB \`cognitive_level\` column, ${data.bloomsSourceStats.heuristicCount} from heuristic classifier`,
		);
		lines.push("");
	}
	lines.push(
		`| Section | L1 R&U     | L2 App     | L3 Analysis | L4 Eval    |`,
	);
	lines.push(
		`|---------|------------|------------|-------------|------------|`,
	);
	for (const b of blooms) {
		const targets = BLOOMS_TARGETS[b.section];
		const l1Status = targets ? inRange(b.l1Pct, targets.l1) : "?";
		const l2Status = targets ? inRange(b.l2Pct, targets.l2) : "?";
		const l3Status = targets ? inRange(b.l3Pct, targets.l3) : "?";
		const l4Status = targets ? inRange(b.l4Pct, targets.l4) : "?";
		lines.push(
			`| ${b.section.toUpperCase().padEnd(7)} | ${b.l1Pct}% ${l1Status.padEnd(5)} | ${b.l2Pct}% ${l2Status.padEnd(5)} | ${b.l3Pct}% ${l3Status.padEnd(6)} | ${b.l4Pct}% ${l4Status.padEnd(5)} |`,
		);
	}
	lines.push("");

	// Bloom's target reference table
	lines.push("### AICPA Target Ranges");
	lines.push("");
	lines.push(
		`| Section | L1 R&U     | L2 App     | L3 Analysis | L4 Eval    |`,
	);
	lines.push(
		`|---------|------------|------------|-------------|------------|`,
	);
	for (const [code, t] of Object.entries(BLOOMS_TARGETS)) {
		lines.push(
			`| ${code.toUpperCase().padEnd(7)} | ${t.l1[0]}-${t.l1[1]}%`.padEnd(23) +
				` | ${t.l2[0]}-${t.l2[1]}%`.padEnd(13) +
				` | ${t.l3[0]}-${t.l3[1]}%`.padEnd(14) +
				` | ${t.l4[0]}-${t.l4[1]}%`.padEnd(13) +
				` |`,
		);
	}
	lines.push("");

	// === Coverage ===
	lines.push("## Topic Coverage");
	lines.push("");
	lines.push(
		`**Live DB total:** ${coverage.totalDbQuestions} | **Hardcoded total:** ${coverage.totalHardcoded} | **Delta:** ${coverage.totalDbQuestions - coverage.totalHardcoded}`,
	);
	lines.push("");

	if (coverage.orphanedTopics.length > 0) {
		lines.push("### Orphaned Topics (in DB but not in blueprint)");
		lines.push("");
		for (const t of coverage.orphanedTopics) {
			lines.push(`- **${t.topic}** (${t.dbCount} questions)`);
		}
		lines.push("");
	}

	if (coverage.coverageGaps.length > 0) {
		lines.push("### Low-Coverage Blueprint Groups (<10 questions)");
		lines.push("");
		for (const g of coverage.coverageGaps) {
			lines.push(
				`- [${g.sectionCode.toUpperCase()}] Group ${g.groupLetter}: ${g.groupName} — ${g.totalQuestions} questions (topics: ${g.questionTopics.join(", ")})`,
			);
		}
		lines.push("");
	}

	// Topics with delta from hardcoded counts
	const bigDeltas = coverage.topicCounts.filter((t) => Math.abs(t.delta) > 5);
	if (bigDeltas.length > 0) {
		lines.push("### Significant Count Deltas (|delta| > 5)");
		lines.push("");
		lines.push(`| Topic | DB Count | Hardcoded | Delta |`);
		lines.push(`|-------|----------|-----------|-------|`);
		for (const t of bigDeltas.sort(
			(a, b) => Math.abs(b.delta) - Math.abs(a.delta),
		)) {
			lines.push(
				`| ${t.topic} | ${t.dbCount} | ${t.hardcodedCount} | ${t.delta > 0 ? "+" : ""}${t.delta} |`,
			);
		}
		lines.push("");
	}

	// === Duplicates ===
	lines.push("## Duplicate Detection");
	lines.push("");
	lines.push(
		`**Near-duplicates (>0.6):** ${duplicates.nearDuplicateCount} | **Likely duplicates (>0.8):** ${duplicates.likelyDuplicateCount}`,
	);
	lines.push("");

	if (duplicates.pairs.length > 0) {
		const showLimit = 50;
		const shown = duplicates.pairs.slice(0, showLimit);
		lines.push(`### Top ${shown.length} Pairs (sorted by similarity)`);
		lines.push("");
		for (const p of shown) {
			lines.push(`- **${p.severity}** (${p.similarity}) [${p.topic}]`);
			lines.push(`  - Q${p.id1}: ${p.stem1}`);
			lines.push(`  - Q${p.id2}: ${p.stem2}`);
		}
		if (duplicates.pairs.length > showLimit) {
			lines.push(
				`\n_...and ${duplicates.pairs.length - showLimit} more pairs_`,
			);
		}
		lines.push("");
	}

	// === Critical Questions Detail ===
	const criticals = quality.scores.filter((s) => s.score <= 3);
	if (criticals.length > 0) {
		lines.push("## Critical Questions (score 0-3)");
		lines.push("");
		lines.push(
			`${criticals.length} questions need full rewrite. Grouped by topic:`,
		);
		lines.push("");

		// Group by topic
		const byTopic = new Map<string, QuestionScore[]>();
		for (const s of criticals) {
			if (!byTopic.has(s.topic)) byTopic.set(s.topic, []);
			byTopic.get(s.topic)!.push(s);
		}

		for (const [topic, scores] of [...byTopic.entries()].sort(
			(a, b) => b[1].length - a[1].length,
		)) {
			lines.push(`### ${topic} (${scores.length} critical)`);
			lines.push("");
			for (const s of scores.slice(0, 10)) {
				lines.push(
					`- Q${s.id} [score: ${s.score}] [${s.difficulty}] — ${s.flags.join(", ")}`,
				);
			}
			if (scores.length > 10) {
				lines.push(`  _...and ${scores.length - 10} more_`);
			}
			lines.push("");
		}
	}

	// === Prioritized Fix List ===
	lines.push("## Prioritized Fix List");
	lines.push("");
	lines.push(
		"Sorted by: `(area weight) x (quality deficit) x (question count)`",
	);
	lines.push("");

	// Build priority scores per topic
	const topicPriorities: {
		topic: string;
		section: string;
		criticalCount: number;
		moderateCount: number;
		avgScore: number;
		priority: number;
	}[] = [];

	const scoresByTopic = new Map<string, QuestionScore[]>();
	for (const s of quality.scores) {
		if (!scoresByTopic.has(s.topic)) scoresByTopic.set(s.topic, []);
		scoresByTopic.get(s.topic)!.push(s);
	}

	for (const [topic, scores] of scoresByTopic) {
		const critCount = scores.filter((s) => s.score <= 3).length;
		const modCount = scores.filter((s) => s.score >= 4 && s.score <= 6).length;
		if (critCount === 0 && modCount === 0) continue;

		const avg = scores.reduce((sum, s) => sum + s.score, 0) / scores.length;
		const deficit = 7 - avg; // How far below acceptable
		const priority = deficit * scores.length;
		const sectionId = scores[0].section_id;
		const code = idToCode.get(sectionId) ?? sectionId;

		topicPriorities.push({
			topic,
			section: code.toUpperCase(),
			criticalCount: critCount,
			moderateCount: modCount,
			avgScore: Math.round(avg * 10) / 10,
			priority: Math.round(priority * 10) / 10,
		});
	}

	topicPriorities.sort((a, b) => b.priority - a.priority);

	lines.push(
		`| Priority | Section | Topic | Critical | Moderate | Avg Score |`,
	);
	lines.push(
		`|----------|---------|-------|----------|----------|-----------|`,
	);
	for (const t of topicPriorities.slice(0, 30)) {
		lines.push(
			`| ${t.priority.toFixed(1).padStart(8)} | ${t.section.padEnd(7)} | ${t.topic} | ${t.criticalCount.toString().padStart(8)} | ${t.moderateCount.toString().padStart(8)} | ${t.avgScore.toFixed(1).padStart(9)} |`,
		);
	}
	if (topicPriorities.length > 30) {
		lines.push(
			`\n_...and ${topicPriorities.length - 30} more topics with issues_`,
		);
	}
	lines.push("");

	// === Flag Frequency ===
	lines.push("## Quality Flag Frequency");
	lines.push("");
	const flagCounts = new Map<string, number>();
	for (const s of quality.scores) {
		for (const f of s.flags) {
			const flagName = f.replace(/\s*\(\d+ words?\)/, "");
			flagCounts.set(flagName, (flagCounts.get(flagName) ?? 0) + 1);
		}
	}
	const sortedFlags = [...flagCounts.entries()].sort((a, b) => b[1] - a[1]);
	lines.push(`| Flag | Count | Pct |`);
	lines.push(`|------|-------|-----|`);
	for (const [flag, count] of sortedFlags) {
		lines.push(
			`| ${flag} | ${count} | ${Math.round((count / data.totalQuestions) * 100)}% |`,
		);
	}
	lines.push("");

	return lines.join("\n");
}
