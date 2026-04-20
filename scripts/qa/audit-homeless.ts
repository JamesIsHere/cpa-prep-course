// Regenerate homeless-audit.json for a section from classify-*.json + current lesson-specs.
// Groups the classifier's homeless question_ids by (topic, routed_group) so we can see
// which topics concentrate homelessness — candidates for routing audits.
//
// Usage: npx tsx scripts/qa/audit-homeless.ts --section=aud

import { readFileSync, readdirSync, writeFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");

const args = process.argv.slice(2);
const sectionArg = args.find((a) => a.startsWith("--section="))?.split("=")[1];
if (!sectionArg) {
	console.error("Usage: npx tsx scripts/qa/audit-homeless.ts --section=<code>");
	process.exit(1);
}

// 1) Load classifier output
const classifyPath = resolve(root, `docs/classify-${sectionArg}.json`);
const classify = JSON.parse(readFileSync(classifyPath, "utf-8"));
const homelessIds = new Set<number>(
	(classify.suggestions as { question_id: number; pin_ref: string | null }[])
		.filter((r) => !r.pin_ref)
		.map((r) => r.question_id),
);

// 2) Build topicToGroup from current lesson-specs (same logic as classify-section.ts)
const topicToGroup: Record<string, string> = {};
const lsDir = resolve(root, "src/lib/lesson-specs");
const lsFiles = readdirSync(lsDir).filter(
	(f) =>
		f.startsWith(`${sectionArg}-`) && f.endsWith(".ts") && !f.startsWith("_"),
);
for (const f of lsFiles) {
	const raw = readFileSync(resolve(lsDir, f), "utf-8");
	const content = raw.replace(/\/\/.*$/gm, "");
	const topicMatch = content.match(/topic:\s*"([^"]+)"/);
	const refMatch = content.match(/primaryRef:\s*"([^"]+)"/);
	if (topicMatch && refMatch) {
		const groupRef = refMatch[1].split("/").slice(0, 3).join("/");
		topicToGroup[topicMatch[1]] = groupRef;
	}
	const aliasBlock = content.match(/topicAliases:\s*\[([\s\S]*?)\]/);
	if (aliasBlock && refMatch) {
		const groupRef = refMatch[1].split("/").slice(0, 3).join("/");
		const aliases = [...aliasBlock[1].matchAll(/"([^"]+)"/g)].map((m) => m[1]);
		for (const alias of aliases) topicToGroup[alias] = groupRef;
	}
}

// 3) Count task-specs per group
const tsDir = resolve(root, "src/lib/task-specs");
const tsFiles = readdirSync(tsDir).filter(
	(f) =>
		f.startsWith(`${sectionArg}-`) && f.endsWith(".ts") && !f.startsWith("_"),
);
const taskGroupCount: Record<string, number> = {};
for (const f of tsFiles) {
	const raw = readFileSync(resolve(tsDir, f), "utf-8");
	const content = raw.replace(/\/\/.*$/gm, "");
	const refMatch = content.match(/aicpaRef:\s*"([^"]+)"/);
	if (refMatch) {
		const grp = refMatch[1].split("/").slice(0, 3).join("/");
		taskGroupCount[grp] = (taskGroupCount[grp] ?? 0) + 1;
	}
}

async function main() {
// 4) Pull DB questions (id → topic)
const questions = await fetchAllQuestions(sectionArg);
const idToTopic = new Map<number, string>();
for (const q of questions) idToTopic.set(q.id, q.topic);

// 5) Aggregate: (topic, grp) → count of homeless
const key = (t: string, g: string) => `${t}|||${g}`;
const counts = new Map<string, { topic: string; grp: string; count: number }>();
const topicTotals = new Map<string, number>();
for (const qid of homelessIds) {
	const topic = idToTopic.get(qid);
	if (!topic) continue;
	const grp = topicToGroup[topic] ?? "UNMAPPED";
	const k = key(topic, grp);
	const row = counts.get(k) ?? { topic, grp, count: 0 };
	row.count++;
	counts.set(k, row);
	topicTotals.set(topic, (topicTotals.get(topic) ?? 0) + 1);
}

// 6) Also compute total questions per topic for context (denominator)
const topicTotalAll = new Map<string, number>();
for (const q of questions) {
	topicTotalAll.set(q.topic, (topicTotalAll.get(q.topic) ?? 0) + 1);
}

const rows = [...counts.values()]
	.map((r) => ({
		topic: r.topic,
		grp: r.grp,
		count: r.count,
		total_in_topic: topicTotalAll.get(r.topic) ?? 0,
		homeless_rate: +(
			(100 * r.count) /
			(topicTotalAll.get(r.topic) ?? 1)
		).toFixed(1),
		hasTasks: (taskGroupCount[r.grp] ?? 0) > 0,
		taskCount: taskGroupCount[r.grp] ?? 0,
	}))
	.sort((a, b) => b.count - a.count);

const out = {
	generatedAt: new Date().toISOString(),
	section: sectionArg,
	totalHomeless: homelessIds.size,
	rows,
	taskGroupCount,
	topicToGroup,
};

const outPath = resolve(
	root,
	`docs/classify-${sectionArg}.homeless-audit.json`,
);
writeFileSync(outPath, JSON.stringify(out, null, 2));
console.log(`Wrote ${outPath}`);
console.log(`${sectionArg.toUpperCase()} homeless: ${homelessIds.size}`);
console.log(`Top 15 by count:`);
console.table(rows.slice(0, 15));
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
