// Audit every question tagged with a given topic against a banned-terms list
// derived from its topic-spec outOfScope. Produces a markdown report of flagged
// questions with matching term and ~80-char context snippets.
//
// Usage:
//   npx tsx scripts/qa/audit-topic-content.ts \
//     --topic="International Tax" \
//     --section=tcp \
//     [--terms=path/to/terms.json] \
//     [--out=docs/topic-audits/international-tax-audit.md]
//
// Term source resolution (first match wins):
//   1. --terms=<path>    Explicit JSON file override (legacy; still supported)
//   2. spec.bannedTerms  Inline on the topic-spec (preferred going forward —
//                        keeps the banned terms in the same file as the spec
//                        they belong to, so audits and the spec-aware
//                        validator cannot drift out of sync)
//
// If neither source provides any terms, the audit exits with an error —
// running an audit on a topic with no banned-terms configured is almost
// always user error.
//
// BannedTerm shape (see src/lib/topic-specs/types.ts for the canonical
// definition):
//   { term: "GILTI", pattern?: "\\bGILTI\\b", category?: "named provision",
//     why?: "AICPA 2026 Blueprint restricts TCP/II/A/4 to sourcing concepts..." }
//
// If `pattern` is omitted, the script auto-escapes `term` into a word-boundary
// case-insensitive regex. Use `pattern` for anything fancy (e.g., matching both
// "Section 245A" and "245A" or "IRC §245A").
//
// Exit code: 0 if no flags, 1 if any flags (so CI can gate on it).

import { readFileSync, writeFileSync, existsSync, mkdirSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions, type DbQuestion } from "./db-client";
import { getLessonSpec, type BannedTerm } from "../../src/lib/lesson-specs";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

interface CompiledTerm extends BannedTerm {
	regex: RegExp;
}

interface TermHit {
	term: string;
	category?: string;
	field: "stem" | "choices" | "explanation";
	snippet: string;
}

interface FlaggedQuestion {
	id: number;
	difficulty: string;
	cognitive_level: number | null;
	hits: TermHit[];
}

function parseArg(name: string): string | undefined {
	return process.argv.find((a) => a.startsWith(`--${name}=`))?.split("=").slice(1).join("=");
}

function escapeRegex(s: string): string {
	return s.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function compileTerms(raw: BannedTerm[]): CompiledTerm[] {
	return raw.map((t) => ({
		...t,
		regex: new RegExp(t.pattern ?? `\\b${escapeRegex(t.term)}\\b`, "gi"),
	}));
}

function snippetAround(text: string, match: RegExpMatchArray, width = 80): string {
	const idx = match.index ?? 0;
	const start = Math.max(0, idx - Math.floor(width / 2));
	const end = Math.min(text.length, idx + match[0].length + Math.floor(width / 2));
	const prefix = start > 0 ? "…" : "";
	const suffix = end < text.length ? "…" : "";
	return (prefix + text.slice(start, end) + suffix).replace(/\s+/g, " ").trim();
}

function scanField(
	field: TermHit["field"],
	text: string,
	terms: CompiledTerm[],
): TermHit[] {
	const hits: TermHit[] = [];
	for (const t of terms) {
		t.regex.lastIndex = 0;
		let m: RegExpExecArray | null = t.regex.exec(text);
		while (m !== null) {
			hits.push({
				term: t.term,
				category: t.category,
				field,
				snippet: snippetAround(text, m),
			});
			// Avoid infinite loops on zero-width matches
			if (m.index === t.regex.lastIndex) t.regex.lastIndex++;
			m = t.regex.exec(text);
		}
	}
	return hits;
}

function auditQuestion(q: DbQuestion, terms: CompiledTerm[]): FlaggedQuestion | null {
	const hits: TermHit[] = [
		...scanField("stem", q.stem ?? "", terms),
		...scanField("choices", (q.choices ?? []).join(" | "), terms),
		...scanField("explanation", q.explanation ?? "", terms),
	];
	if (hits.length === 0) return null;
	return {
		id: q.id,
		difficulty: q.difficulty,
		cognitive_level: q.cognitive_level,
		hits,
	};
}

function dedupHits(hits: TermHit[]): TermHit[] {
	// Keep one hit per (term, field) combination to avoid reporting every
	// occurrence; one hit is enough to flag the question for review.
	const seen = new Set<string>();
	const out: TermHit[] = [];
	for (const h of hits) {
		const key = `${h.term}|${h.field}`;
		if (seen.has(key)) continue;
		seen.add(key);
		out.push(h);
	}
	return out;
}

async function main() {
	const topic = parseArg("topic");
	const sectionCode = parseArg("section");
	const termsPath = parseArg("terms");
	const outPath = parseArg("out");

	if (!topic || !sectionCode) {
		console.error(
			'Usage: npx tsx scripts/qa/audit-topic-content.ts --topic="Name" --section=<code> [--terms=<path>] [--out=<path>]',
		);
		process.exit(2);
	}

	// Confirm the topic has a spec so the audit is anchored to a real scope
	const spec = getLessonSpec(topic);
	if (!spec) {
		console.error(
			`No topic spec found for "${topic}". Author a spec in src/lib/topic-specs/ first.`,
		);
		process.exit(2);
	}
	if (spec.section !== sectionCode.toLowerCase()) {
		console.error(
			`Spec section mismatch: spec says "${spec.section}", audit invoked with "${sectionCode}".`,
		);
		process.exit(2);
	}

	// Resolve banned terms: explicit --terms path wins; otherwise fall back to
	// spec.bannedTerms inline. Erroring out when neither is present catches
	// the common "forgot to author terms" user error.
	let raw: BannedTerm[];
	let source: string;
	if (termsPath) {
		const absTermsPath = resolve(repoRoot, termsPath);
		if (!existsSync(absTermsPath)) {
			console.error(`Banned-terms file not found: ${absTermsPath}`);
			process.exit(2);
		}
		raw = JSON.parse(readFileSync(absTermsPath, "utf-8"));
		source = termsPath;
	} else if (spec.bannedTerms && spec.bannedTerms.length > 0) {
		raw = spec.bannedTerms;
		source = `spec.bannedTerms (inline in ${spec.section}-${slugify(spec.topic)}.ts)`;
	} else {
		console.error(
			`No banned terms available for "${topic}". Either pass --terms=<path> or add a bannedTerms[] field to the topic spec.`,
		);
		process.exit(2);
	}
	if (!Array.isArray(raw) || raw.length === 0) {
		console.error("Banned-terms source is empty or malformed.");
		process.exit(2);
	}
	const terms = compileTerms(raw);
	console.error(`Loaded ${terms.length} banned terms from ${source}`);

	// Fetch questions by section, filter to the topic
	const allForSection = await fetchAllQuestions(sectionCode);
	const topicQuestions = allForSection.filter((q) => q.topic === topic);
	console.error(
		`Fetched ${topicQuestions.length} questions tagged "${topic}" (${sectionCode.toUpperCase()})`,
	);

	// Scan
	const flagged: FlaggedQuestion[] = [];
	for (const q of topicQuestions) {
		const f = auditQuestion(q, terms);
		if (f) flagged.push(f);
	}

	// Dedup per-question
	for (const f of flagged) f.hits = dedupHits(f.hits);

	// Aggregate per-term frequency
	const termFreq = new Map<string, number>();
	for (const f of flagged) {
		const seen = new Set<string>();
		for (const h of f.hits) {
			if (seen.has(h.term)) continue;
			seen.add(h.term);
			termFreq.set(h.term, (termFreq.get(h.term) ?? 0) + 1);
		}
	}
	const termFreqSorted = Array.from(termFreq.entries()).sort((a, b) => b[1] - a[1]);

	// Build markdown report
	const lines: string[] = [];
	lines.push(`# Topic audit — ${topic} (${sectionCode.toUpperCase()})`);
	lines.push("");
	lines.push(`Spec anchor: \`${spec.blueprintRef}\``);
	lines.push(`Spec file: \`src/lib/topic-specs/${sectionCode.toLowerCase()}-${slugify(topic)}.ts\``);
	lines.push(`Terms source: \`${source}\` (${terms.length} terms)`);
	lines.push("");
	lines.push("## Summary");
	lines.push("");
	lines.push(`- Total questions tagged: **${topicQuestions.length}**`);
	lines.push(
		`- Questions flagged (hit one or more banned terms): **${flagged.length}** (${((flagged.length / Math.max(1, topicQuestions.length)) * 100).toFixed(1)}%)`,
	);
	lines.push(`- Distinct banned terms hit: **${termFreq.size} / ${terms.length}**`);
	lines.push("");

	if (termFreqSorted.length > 0) {
		lines.push("## Term frequency (distinct questions)");
		lines.push("");
		lines.push("| Rank | Term | Questions hit |");
		lines.push("|------|------|---------------|");
		termFreqSorted.forEach(([term, count], i) => {
			lines.push(`| ${i + 1} | \`${term}\` | ${count} |`);
		});
		lines.push("");
	}

	if (flagged.length > 0) {
		lines.push("## Flagged questions");
		lines.push("");
		flagged.sort((a, b) => a.id - b.id);
		for (const f of flagged) {
			lines.push(`### Q${f.id} (${f.difficulty}, L${f.cognitive_level ?? "?"})`);
			for (const h of f.hits) {
				lines.push(`- **${h.term}** in ${h.field}${h.category ? ` [${h.category}]` : ""}`);
				lines.push(`  - \`${h.snippet}\``);
			}
			lines.push("");
		}
	} else {
		lines.push("## Flagged questions");
		lines.push("");
		lines.push("_None. Bank is clean against the banned-terms list._");
		lines.push("");
	}

	const report = lines.join("\n") + "\n";

	if (outPath) {
		const abs = resolve(repoRoot, outPath);
		mkdirSync(dirname(abs), { recursive: true });
		writeFileSync(abs, report, "utf-8");
		console.error(`Report written to ${outPath}`);
	} else {
		process.stdout.write(report);
	}

	console.error(
		`\nResult: ${flagged.length} / ${topicQuestions.length} flagged`,
	);
	process.exit(flagged.length > 0 ? 1 : 0);
}

function slugify(s: string): string {
	return s
		.toLowerCase()
		.replace(/[^a-z0-9]+/g, "-")
		.replace(/^-+|-+$/g, "");
}

main();
