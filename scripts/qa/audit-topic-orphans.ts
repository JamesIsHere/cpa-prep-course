// Topic-tag orphan audit. Compares distinct question.topic values in the live DB against
// the union of all questionTopics[] arrays in blueprint.ts. Reports:
//
//   - DB orphans   = topics tagged on questions that are NOT in any blueprint group
//   - Blueprint orphans = topics in blueprint.ts that have ZERO tagged questions
//   - Cross-section drift = topics whose blueprint section ≠ the section a question is in
//
// Used to size the data hygiene problem before committing to a topic-spec architecture.

import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.js";
import { cpaBlueprint } from "../../src/lib/blueprint.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

async function main() {
	const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;

	// Build maps from blueprint.ts:
	//   topicToSection: which section the blueprint says this topic belongs to
	//   topicToGroup:   the group letter under which it's listed
	//   blueprintTopics: union of all questionTopics across all groups
	const topicToSection = new Map<string, string>();
	const topicToGroup = new Map<string, string>();
	const blueprintTopics = new Set<string>();

	for (const sec of cpaBlueprint) {
		for (const area of sec.areas) {
			for (const group of area.groups) {
				for (const t of group.questionTopics ?? []) {
					blueprintTopics.add(t);
					if (!topicToSection.has(t)) topicToSection.set(t, sec.code);
					if (!topicToGroup.has(t))
						topicToGroup.set(t, `${sec.code}.${area.area}.${group.letter}`);
				}
			}
		}
	}

	// Pull DB topics per section.
	const dbTopicsPerSection = new Map<string, Map<string, number>>();
	for (const sec of sections) {
		const counts = new Map<string, number>();
		const qs = await fetchAllQuestions(sec);
		for (const q of qs) {
			counts.set(q.topic, (counts.get(q.topic) ?? 0) + 1);
		}
		dbTopicsPerSection.set(sec, counts);
	}

	// Aggregate DB topics across sections (with section provenance).
	const dbTopicSections = new Map<string, Set<string>>();
	const dbTopicTotalCount = new Map<string, number>();
	for (const [sec, counts] of dbTopicsPerSection) {
		for (const [t, c] of counts) {
			if (!dbTopicSections.has(t)) dbTopicSections.set(t, new Set());
			dbTopicSections.get(t)!.add(sec);
			dbTopicTotalCount.set(t, (dbTopicTotalCount.get(t) ?? 0) + c);
		}
	}

	console.log("");
	console.log("TOPIC-TAG ORPHAN AUDIT");
	console.log("=======================");
	console.log("");
	console.log(`Distinct topics in blueprint.ts:  ${blueprintTopics.size}`);
	console.log(`Distinct topics in live DB:       ${dbTopicSections.size}`);
	console.log("");

	// DB orphans: in the live DB but not anywhere in blueprint.ts
	const dbOrphans: Array<[string, number, string[]]> = [];
	for (const [t, secs] of dbTopicSections) {
		if (!blueprintTopics.has(t)) {
			dbOrphans.push([t, dbTopicTotalCount.get(t) ?? 0, [...secs]]);
		}
	}
	dbOrphans.sort((a, b) => b[1] - a[1]);

	console.log(`DB orphans (topics on questions but not in blueprint.ts): ${dbOrphans.length}`);
	console.log("");
	if (dbOrphans.length > 0) {
		console.log("  Topic                                                | Count | Sections");
		console.log("  -----------------------------------------------------|-------|---------");
		for (const [t, c, secs] of dbOrphans.slice(0, 30)) {
			console.log(
				`  ${t.slice(0, 53).padEnd(53)}|${String(c).padStart(6)} | ${secs.join(",")}`,
			);
		}
		if (dbOrphans.length > 30) {
			console.log(`  ... and ${dbOrphans.length - 30} more`);
		}
		console.log("");
	}

	// Blueprint orphans: in blueprint.ts but no questions tagged with that topic in the DB
	const blueprintOrphans: string[] = [];
	for (const t of blueprintTopics) {
		if (!dbTopicSections.has(t)) blueprintOrphans.push(t);
	}
	console.log(
		`Blueprint orphans (topics in blueprint.ts with ZERO questions): ${blueprintOrphans.length}`,
	);
	if (blueprintOrphans.length > 0 && blueprintOrphans.length <= 30) {
		for (const t of blueprintOrphans.sort()) {
			console.log(`  - ${t} (${topicToGroup.get(t)})`);
		}
	} else if (blueprintOrphans.length > 30) {
		console.log(`  (showing first 10) `);
		for (const t of blueprintOrphans.sort().slice(0, 10)) {
			console.log(`  - ${t} (${topicToGroup.get(t)})`);
		}
	}
	console.log("");

	// Cross-section drift: topic exists in blueprint section X, but questions tagged with
	// it live in section Y in the DB.
	const crossSectionDrift: Array<{
		topic: string;
		blueprintSection: string;
		dbSections: string[];
		count: number;
	}> = [];
	for (const [t, secs] of dbTopicSections) {
		if (!blueprintTopics.has(t)) continue;
		const bpSec = topicToSection.get(t)!;
		const dbSecs = [...secs];
		if (dbSecs.some((s) => s !== bpSec)) {
			crossSectionDrift.push({
				topic: t,
				blueprintSection: bpSec,
				dbSections: dbSecs,
				count: dbTopicTotalCount.get(t) ?? 0,
			});
		}
	}
	console.log(
		`Cross-section drift (topic in blueprint section X but tagged in section Y): ${crossSectionDrift.length}`,
	);
	if (crossSectionDrift.length > 0) {
		console.log("");
		for (const d of crossSectionDrift.slice(0, 20)) {
			console.log(
				`  ${d.topic} — blueprint=${d.blueprintSection} db=[${d.dbSections.join(",")}] (${d.count} questions)`,
			);
		}
		if (crossSectionDrift.length > 20) {
			console.log(`  ... and ${crossSectionDrift.length - 20} more`);
		}
	}
	console.log("");

	// Write detailed JSON for follow-up
	const fs = await import("fs");
	fs.writeFileSync(
		resolve(repoRoot, "docs/trust-audit-topic-orphans.json"),
		JSON.stringify(
			{
				blueprintTopicCount: blueprintTopics.size,
				dbTopicCount: dbTopicSections.size,
				dbOrphans: dbOrphans.map(([t, c, s]) => ({ topic: t, count: c, sections: s })),
				blueprintOrphans,
				crossSectionDrift,
			},
			null,
			2,
		),
	);
	console.log(`→ docs/trust-audit-topic-orphans.json`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
