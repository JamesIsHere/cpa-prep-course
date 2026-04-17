// Generate TopicSpec stub files for unspecced topics in blueprint.ts so future
// spec authoring is a ~5-minute editing job (fill in the in-scope, out-of-scope,
// and bannedTerms lists) instead of a ~30-minute boilerplate authoring job.
//
// Usage:
//   npx tsx scripts/qa/scaffold-topic-spec.ts --topic="Capital Structure and Valuation"
//   npx tsx scripts/qa/scaffold-topic-spec.ts --topic="Gift Tax" --section=reg
//   npx tsx scripts/qa/scaffold-topic-spec.ts --all-unspecced
//   npx tsx scripts/qa/scaffold-topic-spec.ts --all-unspecced --dry-run
//
// Resolution strategy:
//   1. For each target topic, walk blueprint.ts to find the (section, area,
//      group) that contains it in a questionTopics[] array.
//   2. Emit a 3-part (group-level) blueprintRef of the form
//      `<SECTION>/<AREA_ROMAN>/<GROUP_LETTER>`. This is the safest default
//      because Slayer and AICPA diverge at the group level (blueprint.ts
//      reorganizes some AICPA groups into Slayer teaching groups). A group-
//      level ref resolves against the resolver's 3-part support and lets
//      the spec author narrow to a topic-level ref later if wanted.
//   3. Validate the blueprintRef against the AICPA JSON via
//      resolveBlueprintRef. If it doesn't resolve, emit with `blueprintRef: "TODO"`
//      and a comment explaining what the scaffolder couldn't match — the author
//      has to hand-resolve these edge cases (typically Slayer-only groups that
//      have no AICPA counterpart, or cross-section drift).
//   4. Populate representativeDifficulty with the modal difficulty from
//      blueprint.ts's targetDifficulty hint when available, otherwise "mixed".
//
// Output: writes the stub to src/lib/topic-specs/<section>-<kebab-topic>.ts
// and prints the import/register lines that should be added to index.ts. The
// scaffolder does NOT auto-edit index.ts — that would be risky to do in bulk
// and the register step is a 30-second manual job.

import { writeFileSync, existsSync, mkdirSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { cpaBlueprint } from "../../src/lib/blueprint";
import { getTopicSpec } from "../../src/lib/lesson-specs";
import { resolveBlueprintRef } from "../../src/lib/lesson-specs/blueprint-task-resolver";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");
const specsDir = resolve(repoRoot, "src/lib/topic-specs");

const ROMAN = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"];

interface ResolvedTopic {
	topic: string;
	section: string;
	sectionUpper: string;
	areaRoman: string;
	groupLetter: string;
	groupName: string;
	blueprintRefCandidate: string;
	blueprintRefResolves: boolean;
	lessonSlugs: string[];
}

function slugify(s: string): string {
	return s
		.toLowerCase()
		.replace(/[^a-z0-9]+/g, "-")
		.replace(/^-+|-+$/g, "");
}

function parseArg(name: string): string | undefined {
	return process.argv.find((a) => a.startsWith(`--${name}=`))?.split("=").slice(1).join("=");
}

function hasFlag(name: string): boolean {
	return process.argv.includes(`--${name}`);
}

function resolveTopicInBlueprint(topic: string): ResolvedTopic | null {
	for (const sec of cpaBlueprint) {
		for (const area of sec.areas) {
			for (const group of area.groups) {
				if (!group.questionTopics?.includes(topic)) continue;
				const areaRoman = ROMAN[area.area] ?? String(area.area);
				const ref = `${sec.code.toUpperCase()}/${areaRoman}/${group.letter}`;
				const resolved = resolveBlueprintRef(ref);
				return {
					topic,
					section: sec.code,
					sectionUpper: sec.code.toUpperCase(),
					areaRoman,
					groupLetter: group.letter,
					groupName: group.name,
					blueprintRefCandidate: ref,
					blueprintRefResolves: resolved !== null,
					lessonSlugs: group.lessonSlugs ?? [],
				};
			}
		}
	}
	return null;
}

function collectAllQuestionTopics(): string[] {
	const set = new Set<string>();
	for (const sec of cpaBlueprint) {
		for (const area of sec.areas) {
			for (const group of area.groups) {
				for (const t of group.questionTopics ?? []) set.add(t);
			}
		}
	}
	return Array.from(set).sort();
}

function generateStub(r: ResolvedTopic): string {
	const fileSlug = `${r.section}-${slugify(r.topic)}`;
	const refField = r.blueprintRefResolves
		? JSON.stringify(r.blueprintRefCandidate)
		: `"TODO"`;
	const refNote = r.blueprintRefResolves
		? `// Anchored to AICPA group ${r.blueprintRefCandidate}. Refine to a 4-part\n// topic-level ref (${r.blueprintRefCandidate}/<N>) if this Slayer topic maps 1:1 to a\n// single AICPA representative-task topic.`
		: `// blueprintRef="TODO" — the scaffolder could not resolve ${r.blueprintRefCandidate}\n// in alignment/aicpa-blueprint-tasks.json. This usually means Slayer's\n// blueprint.ts uses a group letter that doesn't exist in the AICPA JSON at\n// that area. Hand-resolve by reading the AICPA 2026 Blueprint PDF pages for\n// ${r.sectionUpper} and picking the correct path.`;

	const slayerLessons = r.lessonSlugs.length
		? `\n// Slayer lesson(s): ${r.lessonSlugs.join(", ")}`
		: "";

	return `import type { TopicSpec } from "./types";

// STUB — generated by scripts/qa/scaffold-topic-spec.ts on ${new Date().toISOString().slice(0, 10)}.
// This spec has NOT been authored yet. Before removing this banner, fill in:
//   - inScope[]              (what the candidate can be asked to DO)
//   - outOfScope[]           (named drift surfaces — graduate material, niche
//                             standards, adjacent topics that live elsewhere)
//   - keyStandards[]         (citation roots expected in explanations)
//   - commonMisconceptions[] (pedagogically valuable distractor fuel)
//   - bannedTerms[]          (regex-enforceable projection of outOfScope;
//                             see tcp-international-tax.ts for a worked example)
//   - notes                  (editorial rationale, audit findings, scope edges)
//
// ${refNote}
//
// Slayer group: ${r.sectionUpper}/${r.areaRoman}/${r.groupLetter} "${r.groupName}"${slayerLessons}
//
// After authoring, register in src/lib/topic-specs/index.ts:
//   import { spec as ${toCamel(fileSlug)} } from "./${fileSlug}";
//   const SPECS = { ..., [${toCamel(fileSlug)}.topic]: ${toCamel(fileSlug)} };
//
// Then run the drift test to confirm:
//   npx vitest run tests/unit/topic-specs.test.ts

export const spec: TopicSpec = {
\ttopic: ${JSON.stringify(r.topic)},
\tsection: "${r.section}",
\tblueprintRef: ${refField},

\tinScope: [
\t\t// TODO: list concepts and tasks that ARE testable for this topic at CPA depth.
\t\t// Write at the level of "things a question can ask the candidate to do."
\t],

\toutOfScope: [
\t\t// TODO: list concepts, techniques, and terms that are NOT testable but are
\t\t// easy to drift into (graduate material, advanced theory, adjacent topic
\t\t// territory). Each entry should be specific enough to grep for.
\t],

\tkeyStandards: [
\t\t// TODO: citation roots expected in correct-answer explanations (e.g.,
\t\t// "ASC 842 — Leases", "IRC §168", "AU-C 540").
\t],

\tcommonMisconceptions: [
\t\t// TODO: candidate confusion points that make good distractor content.
\t],

\trepresentativeDifficulty: "mixed",

\tbannedTerms: [
\t\t// TODO: machine-readable projection of outOfScope. Each entry:
\t\t//   { term: "<display>", pattern: "<regex>", category: "<group>",
\t\t//     why: "<one-sentence rationale>" }
\t\t// Omit pattern for a simple word-boundary case-insensitive match on term.
\t],

\tnotes:
\t\t"STUB — not yet authored. Remove this notes field or replace with real editorial context before removing the STUB banner above.",
};
`;
}

function toCamel(slug: string): string {
	return slug.replace(/-([a-z])/g, (_m, c) => c.toUpperCase());
}

function writeStub(r: ResolvedTopic, dryRun: boolean): string {
	const fileSlug = `${r.section}-${slugify(r.topic)}`;
	const filePath = resolve(specsDir, `${fileSlug}.ts`);
	if (existsSync(filePath)) {
		console.error(`  SKIP ${fileSlug}.ts — already exists`);
		return filePath;
	}
	const content = generateStub(r);
	if (dryRun) {
		console.error(`  DRY  ${fileSlug}.ts (${content.length} bytes${r.blueprintRefResolves ? "" : ", blueprintRef=TODO"})`);
	} else {
		mkdirSync(dirname(filePath), { recursive: true });
		writeFileSync(filePath, content, "utf-8");
		console.error(`  WROTE ${fileSlug}.ts${r.blueprintRefResolves ? "" : " (blueprintRef=TODO)"}`);
	}
	return filePath;
}

function main() {
	const singleTopic = parseArg("topic");
	const allMode = hasFlag("all-unspecced");
	const dryRun = hasFlag("dry-run");

	if (!singleTopic && !allMode) {
		console.error(
			'Usage:\n  npx tsx scripts/qa/scaffold-topic-spec.ts --topic="Topic Name"\n  npx tsx scripts/qa/scaffold-topic-spec.ts --all-unspecced [--dry-run]',
		);
		process.exit(2);
	}

	const targets: string[] = singleTopic ? [singleTopic] : collectAllQuestionTopics();

	let wrote = 0;
	let skipped = 0;
	let unresolved = 0;
	const registerLines: string[] = [];

	for (const topic of targets) {
		if (getTopicSpec(topic)) {
			if (allMode) skipped++;
			else console.error(`Spec already exists for "${topic}" — nothing to do.`);
			continue;
		}
		const r = resolveTopicInBlueprint(topic);
		if (!r) {
			console.error(`  ORPHAN ${topic} — not found in any group's questionTopics[]`);
			unresolved++;
			continue;
		}
		writeStub(r, dryRun);
		if (!r.blueprintRefResolves) unresolved++;
		wrote++;
		const fileSlug = `${r.section}-${slugify(r.topic)}`;
		registerLines.push(
			`import { spec as ${toCamel(fileSlug)} } from "./${fileSlug}";`,
		);
	}

	console.error("");
	console.error(
		`Summary: ${wrote} stub${wrote === 1 ? "" : "s"} ${dryRun ? "would be written" : "written"}, ${skipped} already-specced skipped, ${unresolved} with blueprintRef=TODO`,
	);

	if (!dryRun && registerLines.length > 0) {
		console.error("");
		console.error("Add these lines to src/lib/topic-specs/index.ts:");
		console.error("");
		for (const line of registerLines) console.error(`  ${line}`);
		console.error("");
		console.error("Then add each spec to the SPECS map by its .topic key.");
	}
}

main();
