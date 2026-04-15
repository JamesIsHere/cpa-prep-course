// Taxonomic coherence scan — part of the multi-dimensional bank audit.
//
// Questions:
//   1. How many distinct topic strings exist in the DB?
//   2. Which DB topic strings are NOT declared in blueprint.ts? (orphans)
//   3. Which blueprint.ts declared topic strings have ZERO questions? (empty)
//   4. Which topic strings share a kebab-normalized "base" name? (proliferations)
//   5. For each topic, how many distinct sections own questions? (cross-section drift)
//   6. Which topics have mixed-content evidence — named with a slash or hyphen
//      that implies two categories?

import { config } from "dotenv";
config({ path: ".env.local" });
import { createClient } from "@supabase/supabase-js";
import { cpaBlueprint } from "../../src/lib/blueprint";

async function main() {
	const sb = createClient(
		process.env.NEXT_PUBLIC_SUPABASE_URL!,
		process.env.SUPABASE_SERVICE_ROLE_KEY!,
	);

	// Build section_id → code map
	const { data: sections } = await sb.from("sections").select("id,slug");
	const idToCode = new Map<string, string>();
	for (const s of (sections ?? []) as Array<{ id: string; slug: string }>) {
		idToCode.set(String(s.id), s.slug);
	}

	// ---------------------------------------------------------------------
	// Collect all distinct (section, topic) pairs from the DB
	// ---------------------------------------------------------------------
	const rowsBySection: Record<string, Map<string, number>> = {};
	const rowsByTopic: Record<string, Set<string>> = {};
	for (let offset = 0; ; offset += 1000) {
		const { data, error } = await sb
			.from("questions")
			.select("section_id,topic")
			.range(offset, offset + 999);
		if (error) throw error;
		if (!data || data.length === 0) break;
		for (const row of data as Array<{ section_id: string; topic: string }>) {
			const section = idToCode.get(String(row.section_id)) ?? String(row.section_id);
			(rowsBySection[section] ??= new Map());
			rowsBySection[section].set(
				row.topic,
				(rowsBySection[section].get(row.topic) ?? 0) + 1,
			);
			(rowsByTopic[row.topic] ??= new Set()).add(section);
		}
		if (data.length < 1000) break;
	}

	const allPairs: Array<{ section: string; topic: string; count: number }> = [];
	for (const [section, m] of Object.entries(rowsBySection)) {
		for (const [topic, count] of m) {
			allPairs.push({ section, topic, count });
		}
	}

	const totalPairs = allPairs.length;
	const totalDistinctTopics = Object.keys(rowsByTopic).length;
	const totalQuestions = allPairs.reduce((a, p) => a + p.count, 0);

	console.log(`\n=== TAXONOMIC COHERENCE SCAN ===\n`);
	console.log(`Total questions: ${totalQuestions}`);
	console.log(`Distinct (section, topic) pairs: ${totalPairs}`);
	console.log(`Distinct topic strings: ${totalDistinctTopics}`);

	// ---------------------------------------------------------------------
	// 1. Declared topic strings from blueprint.ts
	// ---------------------------------------------------------------------
	const declaredTopics = new Set<string>();
	for (const section of cpaBlueprint) {
		for (const area of section.areas) {
			for (const group of area.groups) {
				for (const t of group.questionTopics ?? []) declaredTopics.add(t);
			}
		}
	}
	console.log(`\nDeclared in blueprint.ts: ${declaredTopics.size} topic strings`);

	// ---------------------------------------------------------------------
	// 2. Orphans — DB topic not declared in blueprint.ts
	// ---------------------------------------------------------------------
	const orphans = Object.keys(rowsByTopic).filter((t) => !declaredTopics.has(t));
	console.log(
		`\n--- ORPHAN TOPICS (in DB, not declared in blueprint.ts) ---`,
	);
	if (orphans.length === 0) console.log("  none");
	else
		for (const t of orphans.sort()) {
			const sections = [...rowsByTopic[t]].sort().join(",");
			const count = allPairs
				.filter((p) => p.topic === t)
				.reduce((a, p) => a + p.count, 0);
			console.log(`  [${sections}] ${t} (${count} qs)`);
		}

	// ---------------------------------------------------------------------
	// 3. Empty declared — declared in blueprint.ts, zero questions
	// ---------------------------------------------------------------------
	const empty = [...declaredTopics].filter((t) => !rowsByTopic[t]);
	console.log(`\n--- EMPTY DECLARED TOPICS (declared, 0 questions) ---`);
	if (empty.length === 0) console.log("  none");
	else for (const t of empty.sort()) console.log(`  ${t}`);

	// ---------------------------------------------------------------------
	// 4. Cross-section contamination — same topic string in >1 section
	// ---------------------------------------------------------------------
	const crossSection = Object.entries(rowsByTopic)
		.filter(([, sects]) => sects.size > 1)
		.map(([t, sects]) => ({ topic: t, sections: [...sects].sort() }));
	console.log(
		`\n--- CROSS-SECTION TOPICS (same topic string appears in multiple sections) ---`,
	);
	if (crossSection.length === 0) console.log("  none");
	else
		for (const { topic, sections } of crossSection) {
			console.log(`  [${sections.join(",")}] ${topic}`);
		}

	// ---------------------------------------------------------------------
	// 5. Mixed-content naming — topic string contains ":" "/" or " and "
	//    (heuristic for "Credits/AMT", "Filing/Credits", etc.)
	// ---------------------------------------------------------------------
	const mixedNamed = Object.keys(rowsByTopic).filter((t) => /[/]/.test(t));
	console.log(`\n--- MIXED-CONTENT NAMED TOPICS (contain slash) ---`);
	if (mixedNamed.length === 0) console.log("  none");
	else
		for (const t of mixedNamed.sort()) {
			const count = allPairs
				.filter((p) => p.topic === t)
				.reduce((a, p) => a + p.count, 0);
			console.log(`  ${t} (${count} qs)`);
		}

	// ---------------------------------------------------------------------
	// 6. Near-duplicate topic names — same normalized stem
	// ---------------------------------------------------------------------
	const normalize = (s: string) =>
		s
			.toLowerCase()
			.replace(/[^a-z0-9]+/g, " ")
			.trim()
			.replace(/\s+/g, " ");
	const byNormalized: Record<string, string[]> = {};
	for (const t of Object.keys(rowsByTopic)) {
		(byNormalized[normalize(t)] ??= []).push(t);
	}
	const dupes = Object.entries(byNormalized).filter(
		([, variants]) => variants.length > 1,
	);
	console.log(`\n--- NEAR-DUPLICATE TOPIC NAMES (same normalized form) ---`);
	if (dupes.length === 0) console.log("  none");
	else for (const [, v] of dupes) console.log(`  ${v.join(" | ")}`);

	// ---------------------------------------------------------------------
	// 7. Proliferation family — multiple topics sharing a prefix
	// ---------------------------------------------------------------------
	const families: Record<string, string[]> = {};
	for (const t of Object.keys(rowsByTopic)) {
		// Take first 2 words as the family key
		const key = t.split(" ").slice(0, 2).join(" ");
		(families[key] ??= []).push(t);
	}
	const prolif = Object.entries(families).filter(
		([, members]) => members.length >= 3,
	);
	console.log(
		`\n--- PROLIFERATION FAMILIES (3+ topics sharing the first 2 words) ---`,
	);
	if (prolif.length === 0) console.log("  none");
	else
		for (const [key, members] of prolif.sort((a, b) => b[1].length - a[1].length)) {
			console.log(`  "${key}" family:`);
			for (const m of members.sort()) {
				const count = allPairs
					.filter((p) => p.topic === m)
					.reduce((a, p) => a + p.count, 0);
				console.log(`    - ${m} (${count} qs)`);
			}
		}

	// ---------------------------------------------------------------------
	// Summary totals
	// ---------------------------------------------------------------------
	console.log(`\n=== SUMMARY ===`);
	console.log(`  Orphan topics (in DB, not in blueprint.ts): ${orphans.length}`);
	console.log(`  Empty declared topics: ${empty.length}`);
	console.log(`  Cross-section topics: ${crossSection.length}`);
	console.log(`  Slash-named (mixed) topics: ${mixedNamed.length}`);
	console.log(`  Near-duplicate name pairs: ${dupes.length}`);
	console.log(`  Proliferation families (3+ variants): ${prolif.length}`);
}

main().catch((e) => { console.error("ERROR:", e); process.exit(1); });
