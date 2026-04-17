// Stage 2 drift census — sniff-test unspecced topics against a universal
// banned-term filter built from the existing authored specs.
//
// Strategy:
//   1. Load all registered topic specs (currently 17).
//   2. Union their bannedTerms by term string. Count how many specs include
//      each term. Keep only terms appearing in >= MIN_SPEC_AGREEMENT specs
//      (default 2). The >= 2 filter eliminates topic-specific bans like
//      "hot assets" (banned in Owner-Entity, allowed in Partnerships) from
//      polluting the census with false positives, while keeping universal
//      drift markers like "Section 704(b)" that multiple specs agree are
//      out of scope across contexts.
//   3. Query distinct (section, topic) pairs from the question bank.
//      Filter out topics that already have a spec.
//   4. For each unspecced topic, scan every question (stem / choices /
//      explanation) against the filtered universal ban set. Count flagged
//      questions.
//   5. Emit a ranked markdown table: topic, section, questions, flagged,
//      flagged %, top 3 banned terms hit.
//
// Output is written to docs/drift-census-<date>.md by default, or to the
// path given by --out=<path>. Ranking is by flagged % descending, with a
// secondary absolute-count column so both signals are visible.
//
// Usage:
//   npx tsx scripts/qa/drift-census.ts [--min-agreement=2] [--out=docs/x.md]

import { writeFileSync, mkdirSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import {
	fetchAllQuestions,
	supabase,
	type DbQuestion,
} from "./db-client";
import { allLessonSpecs, specifiedLessons } from "../../src/lib/lesson-specs";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const DEFAULT_MIN_AGREEMENT = 2;

interface CompiledTerm {
	term: string;
	pattern: string;
	regex: RegExp;
	specCount: number;
	categories: Set<string>;
}

interface TopicRow {
	section: string;
	topic: string;
	total: number;
	flagged: number;
	flaggedPct: number;
	topTerms: Array<{ term: string; count: number }>;
}

function parseArg(name: string): string | undefined {
	return process.argv
		.find((a) => a.startsWith(`--${name}=`))
		?.split("=")
		.slice(1)
		.join("=");
}

function escapeRegex(s: string): string {
	return s.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function normalizeTerm(t: string): string {
	return t.trim().toLowerCase();
}

// Build the universal ban set: term string → (spec count, first pattern seen,
// categories observed across specs). Only keep terms meeting the agreement
// threshold.
function buildUniversalBans(minAgreement: number): CompiledTerm[] {
	const specs = allLessonSpecs();
	const byTerm = new Map<
		string,
		{ term: string; pattern: string; specs: Set<string>; categories: Set<string> }
	>();

	for (const spec of specs) {
		if (!spec.bannedTerms) continue;
		// Dedup within a single spec by normalized term — a spec shouldn't
		// count multiple times against itself if it lists the same term twice.
		const seenInSpec = new Set<string>();
		for (const ban of spec.bannedTerms) {
			const key = normalizeTerm(ban.term);
			if (seenInSpec.has(key)) continue;
			seenInSpec.add(key);

			if (!byTerm.has(key)) {
				byTerm.set(key, {
					term: ban.term,
					pattern: ban.pattern ?? `\\b${escapeRegex(ban.term)}\\b`,
					specs: new Set(),
					categories: new Set(),
				});
			}
			const entry = byTerm.get(key)!;
			entry.specs.add(spec.topic);
			if (ban.category) entry.categories.add(ban.category);
		}
	}

	const universal: CompiledTerm[] = [];
	for (const entry of byTerm.values()) {
		if (entry.specs.size < minAgreement) continue;
		try {
			universal.push({
				term: entry.term,
				pattern: entry.pattern,
				regex: new RegExp(entry.pattern, "gi"),
				specCount: entry.specs.size,
				categories: entry.categories,
			});
		} catch (e) {
			console.error(`Failed to compile pattern for "${entry.term}": ${e}`);
		}
	}

	// Sort by spec agreement descending for readability in the report header.
	universal.sort((a, b) => b.specCount - a.specCount);
	return universal;
}

function scanQuestion(
	q: DbQuestion,
	terms: CompiledTerm[],
): Set<string> {
	// Return set of distinct terms hit (dedup across fields).
	const hit = new Set<string>();
	const fields = [q.stem ?? "", (q.choices ?? []).join(" | "), q.explanation ?? ""];
	for (const t of terms) {
		for (const text of fields) {
			t.regex.lastIndex = 0;
			if (t.regex.test(text)) {
				hit.add(t.term);
				break;
			}
		}
	}
	return hit;
}

async function fetchSections(): Promise<Array<{ id: number; code: string }>> {
	const { data, error } = await supabase
		.from("sections")
		.select("id, code")
		.order("code");
	if (error) throw error;
	return data ?? [];
}

async function main() {
	const minAgreement = parseInt(
		parseArg("min-agreement") ?? String(DEFAULT_MIN_AGREEMENT),
		10,
	);
	const outPath =
		parseArg("out") ?? `docs/drift-census-${new Date().toISOString().slice(0, 10)}.md`;

	console.error(`Drift census — min spec agreement: ${minAgreement}`);

	const universal = buildUniversalBans(minAgreement);
	console.error(
		`Universal ban set: ${universal.length} terms (${allLessonSpecs().length} specs loaded)`,
	);
	if (universal.length === 0) {
		console.error(
			"No terms met the agreement threshold. Lower --min-agreement or author more specs.",
		);
		process.exit(2);
	}

	const specced = new Set(specifiedLessons());
	const sections = await fetchSections();

	// Pull all questions for all sections, grouped by (section_code, topic).
	// Topics that are already specced are skipped.
	const topicKey = (section: string, topic: string) => `${section}::${topic}`;
	const buckets = new Map<
		string,
		{ section: string; topic: string; questions: DbQuestion[] }
	>();

	for (const section of sections) {
		const questions = await fetchAllQuestions(section.code);
		for (const q of questions) {
			if (specced.has(q.topic)) continue;
			const key = topicKey(section.code, q.topic);
			if (!buckets.has(key)) {
				buckets.set(key, { section: section.code, topic: q.topic, questions: [] });
			}
			buckets.get(key)!.questions.push(q);
		}
	}

	console.error(`Unspecced (section, topic) pairs: ${buckets.size}`);

	// Scan each bucket.
	const rows: TopicRow[] = [];
	for (const bucket of buckets.values()) {
		const termCounts = new Map<string, number>();
		let flagged = 0;
		for (const q of bucket.questions) {
			const hits = scanQuestion(q, universal);
			if (hits.size > 0) {
				flagged++;
				for (const t of hits) termCounts.set(t, (termCounts.get(t) ?? 0) + 1);
			}
		}
		const topTerms = Array.from(termCounts.entries())
			.sort((a, b) => b[1] - a[1])
			.slice(0, 3)
			.map(([term, count]) => ({ term, count }));
		rows.push({
			section: bucket.section.toUpperCase(),
			topic: bucket.topic,
			total: bucket.questions.length,
			flagged,
			flaggedPct: (flagged / Math.max(1, bucket.questions.length)) * 100,
			topTerms,
		});
	}

	// Rank primarily by flagged %, tiebreak by flagged count.
	rows.sort((a, b) => {
		if (b.flaggedPct !== a.flaggedPct) return b.flaggedPct - a.flaggedPct;
		return b.flagged - a.flagged;
	});

	// Totals for summary line.
	const totalQuestions = rows.reduce((s, r) => s + r.total, 0);
	const totalFlagged = rows.reduce((s, r) => s + r.flagged, 0);
	const dirtyTopics = rows.filter((r) => r.flagged > 0).length;

	// Build report.
	const lines: string[] = [];
	lines.push(`# Drift census — unspecced topics`);
	lines.push("");
	lines.push(`Generated: ${new Date().toISOString().slice(0, 10)}`);
	lines.push(`Spec agreement threshold: ≥${minAgreement} specs must agree on a ban`);
	lines.push(`Source specs: ${allLessonSpecs().length} registered`);
	lines.push(`Universal ban set size: ${universal.length} terms`);
	lines.push("");
	lines.push("## Summary");
	lines.push("");
	lines.push(
		`- Unspecced (section, topic) pairs scanned: **${rows.length}**`,
	);
	lines.push(`- Total unspecced questions scanned: **${totalQuestions}**`);
	lines.push(
		`- Total flagged questions: **${totalFlagged}** (${((totalFlagged / Math.max(1, totalQuestions)) * 100).toFixed(1)}%)`,
	);
	lines.push(
		`- Topics with any drift: **${dirtyTopics}** / ${rows.length} (${((dirtyTopics / Math.max(1, rows.length)) * 100).toFixed(1)}%)`,
	);
	lines.push("");

	lines.push("## Universal ban set (terms used for the scan)");
	lines.push("");
	lines.push(
		"Only terms appearing in the banned lists of at least the agreement-threshold number of specs are included. This filters out topic-specific bans (e.g., `hot assets` banned in Owner-Entity but explicitly allowed in Partnerships) that would generate false positives on a blind cross-topic sweep.",
	);
	lines.push("");
	lines.push("| Term | Specs agreeing | Categories |");
	lines.push("|------|----------------|------------|");
	for (const t of universal) {
		const cats = Array.from(t.categories).join(", ") || "—";
		lines.push(`| \`${t.term}\` | ${t.specCount} | ${cats} |`);
	}
	lines.push("");

	lines.push("## Ranked drift — primary sort by flagged %");
	lines.push("");
	lines.push(
		"Topics at the top are the highest-priority candidates for the next wave of spec authoring. Topics with 0 flagged are structurally clean against the universal ban set — they may still have topic-specific drift that this census cannot detect, but they are not candidates for reactive spec work.",
	);
	lines.push("");
	lines.push("| Rank | Section | Topic | Qs | Flagged | % | Top terms hit |");
	lines.push("|------|---------|-------|----|---------|---|---------------|");
	rows.forEach((r, i) => {
		const topTermsStr =
			r.topTerms.length > 0
				? r.topTerms.map((t) => `\`${t.term}\` (${t.count})`).join("; ")
				: "—";
		lines.push(
			`| ${i + 1} | ${r.section} | ${r.topic} | ${r.total} | ${r.flagged} | ${r.flaggedPct.toFixed(1)}% | ${topTermsStr} |`,
		);
	});
	lines.push("");

	lines.push("## Interpretation notes");
	lines.push("");
	lines.push(
		"- **False negatives are the dominant failure mode of this census.** The universal ban set is derived from the 17 authored specs and cannot catch drift in topic areas those specs do not cover. A topic with 0 flagged here may still have substantial drift in, for example, sampling theory (ISC/AUD), case-law depth (AUD), or lease mechanics (FAR) if no existing spec bans those patterns.",
	);
	lines.push(
		"- **False positives are reduced but not eliminated by the agreement filter.** A term banned in ≥2 specs is likely a genuine drift marker across contexts, but edge cases may remain (e.g., a term banned in C Corporations and S Corporations that is legitimately on-topic for a yet-to-be-specced corporate topic).",
	);
	lines.push(
		"- **Use the % column for triage priority, the absolute count for effort budgeting.** A small topic at 40% drift (16/40) is a faster cleanup than a large topic at 15% drift (30/200), but the large topic produces more total improved bank quality.",
	);
	lines.push("");

	const abs = resolve(repoRoot, outPath);
	mkdirSync(dirname(abs), { recursive: true });
	writeFileSync(abs, lines.join("\n") + "\n", "utf-8");
	console.error(`\nReport written to ${outPath}`);
	console.error(
		`Dirty topics: ${dirtyTopics} / ${rows.length}. Total flagged: ${totalFlagged} / ${totalQuestions}.`,
	);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
