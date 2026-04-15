// Representative-task coverage audit.
//
// For each AICPA representative task (597 total), compute an approximate
// per-task question count and compare to an ideal. Questions are tagged to
// topic strings, not tasks, so we approximate by dividing each group's
// question count by the number of representative tasks in that group.
//
// Outputs a ranked report of the most under-covered and most over-covered
// groups, plus a section-level summary of tasks, questions, and the implied
// per-task ratio.

import { config } from "dotenv";
config({ path: ".env.local" });
import { createClient } from "@supabase/supabase-js";
import { readFileSync } from "fs";
import { cpaBlueprint } from "../../src/lib/blueprint";

interface AicpaTask {
	skill: string;
	task: string;
}

interface AicpaTopic {
	number: number;
	name: string;
	tasks: AicpaTask[];
}

interface AicpaGroup {
	letter: string;
	name: string;
	topics: AicpaTopic[];
}

interface AicpaArea {
	area: string;
	name: string;
	weight?: string;
	groups: AicpaGroup[];
}

type AicpaJson = Record<string, AicpaArea[]>;

async function main() {
	const sb = createClient(
		process.env.NEXT_PUBLIC_SUPABASE_URL!,
		process.env.SUPABASE_SERVICE_ROLE_KEY!,
	);

	// Load section metadata
	const { data: sections } = await sb.from("sections").select("id,slug");
	const idToCode = new Map<string, string>();
	for (const s of (sections ?? []) as Array<{ id: string; slug: string }>) {
		idToCode.set(String(s.id), s.slug);
	}

	// Load all questions (section, topic, cognitive_level)
	const questionsByTopic: Record<string, { section: string; level: number | null }[]> = {};
	for (let offset = 0; ; offset += 1000) {
		const { data, error } = await sb
			.from("questions")
			.select("section_id,topic,cognitive_level")
			.range(offset, offset + 999);
		if (error) throw error;
		if (!data || data.length === 0) break;
		for (const row of data as Array<{ section_id: string; topic: string; cognitive_level: number | null }>) {
			const section = idToCode.get(String(row.section_id)) ?? "";
			(questionsByTopic[row.topic] ??= []).push({ section, level: row.cognitive_level });
		}
		if (data.length < 1000) break;
	}

	// Load AICPA representative tasks
	const aicpa: AicpaJson = JSON.parse(
		readFileSync("alignment/aicpa-blueprint-tasks.json", "utf-8"),
	);

	// Build a group-keyed map: "AUD/I/A" → { tasks, topics, skillHist }
	// Count tasks + classify by skill level from the JSON.
	// Slayer blueprint maps each group to a list of questionTopics; we sum
	// questions across those topics to get the group's question count.
	const SKILL_TO_BLOOM: Record<string, number> = {
		Remembering: 1,
		Understanding: 1,
		Application: 2,
		Analysis: 3,
		Evaluation: 4,
	};

	type GroupRow = {
		section: string;
		area: string;
		group: string;
		groupName: string;
		taskCount: number;
		taskSkills: Record<number, number>;
		questionTopics: string[];
		questionCount: number;
		questionsByLevel: Record<number, number>;
		perTaskRatio: number;
	};

	const groupRows: GroupRow[] = [];

	for (const [sectionCode, areas] of Object.entries(aicpa)) {
		for (const area of areas) {
			for (const group of area.groups) {
				const taskCount = group.topics.reduce((a, t) => a + (t.tasks?.length ?? 0), 0);
				if (taskCount === 0) continue;
				const taskSkills: Record<number, number> = { 1: 0, 2: 0, 3: 0, 4: 0 };
				for (const t of group.topics) {
					for (const task of t.tasks ?? []) {
						const lvl = SKILL_TO_BLOOM[task.skill] ?? 2;
						taskSkills[lvl]++;
					}
				}

				// Find the matching group in blueprint.ts to get questionTopics
				const ROMAN: Record<string, number> = { I: 1, II: 2, III: 3, IV: 4, V: 5, VI: 6, VII: 7 };
				const sectionNode = cpaBlueprint.find((s) => s.code.toLowerCase() === sectionCode.toLowerCase());
				if (!sectionNode) continue;
				const areaNum = ROMAN[area.area];
				const areaNode = sectionNode.areas.find((a) => a.area === areaNum);
				if (!areaNode) continue;
				const groupNode = areaNode.groups.find((g) => g.letter === group.letter);
				if (!groupNode) continue;

				const questionTopics = groupNode.questionTopics ?? [];
				let questionCount = 0;
				const questionsByLevel: Record<number, number> = { 1: 0, 2: 0, 3: 0, 4: 0 };
				for (const qt of questionTopics) {
					const qs = questionsByTopic[qt] ?? [];
					questionCount += qs.length;
					for (const q of qs) {
						if (q.level != null && q.level >= 1 && q.level <= 4) {
							questionsByLevel[q.level]++;
						}
					}
				}

				groupRows.push({
					section: sectionCode,
					area: area.area,
					group: group.letter,
					groupName: group.name,
					taskCount,
					taskSkills,
					questionTopics,
					questionCount,
					questionsByLevel,
					perTaskRatio: questionCount / taskCount,
				});
			}
		}
	}

	// Section-level aggregates
	const sectionAgg: Record<string, { tasks: number; questions: number; groups: number }> = {};
	for (const row of groupRows) {
		const agg = (sectionAgg[row.section] ??= { tasks: 0, questions: 0, groups: 0 });
		agg.tasks += row.taskCount;
		agg.questions += row.questionCount;
		agg.groups++;
	}

	console.log("\n=== REPRESENTATIVE-TASK COVERAGE AUDIT ===\n");
	console.log("Section-level aggregates:\n");
	console.log("  section | groups | tasks | questions | q/task");
	console.log("  --------+--------+-------+-----------+-------");
	let totalTasks = 0;
	let totalQuestions = 0;
	for (const [sec, a] of Object.entries(sectionAgg).sort()) {
		const ratio = (a.questions / a.tasks).toFixed(1);
		console.log(`  ${sec.padEnd(7)} | ${String(a.groups).padStart(6)} | ${String(a.tasks).padStart(5)} | ${String(a.questions).padStart(9)} | ${ratio.padStart(6)}`);
		totalTasks += a.tasks;
		totalQuestions += a.questions;
	}
	console.log(`  --------+--------+-------+-----------+-------`);
	console.log(`  TOTAL   |        | ${String(totalTasks).padStart(5)} | ${String(totalQuestions).padStart(9)} | ${(totalQuestions / totalTasks).toFixed(1).padStart(6)}`);

	const globalRatio = totalQuestions / totalTasks;
	console.log(`\nGlobal questions-per-task ratio: ${globalRatio.toFixed(1)}`);
	console.log(`(If target is ~14 q/task for 597 tasks × 14 = 8358 questions baseline)`);

	// Rank deficit groups (lowest q/task ratio)
	console.log("\n--- TOP 25 DEFICIT GROUPS (lowest questions/task ratio) ---\n");
	const sortedDeficit = [...groupRows].sort((a, b) => a.perTaskRatio - b.perTaskRatio).slice(0, 25);
	console.log("  section | group | ratio | tasks | qs | group name");
	console.log("  --------+-------+-------+-------+----+-----------");
	for (const r of sortedDeficit) {
		console.log(
			`  ${r.section.padEnd(7)} | ${`${r.area}/${r.group}`.padEnd(5)} | ${r.perTaskRatio.toFixed(1).padStart(5)} | ${String(r.taskCount).padStart(5)} | ${String(r.questionCount).padStart(2)} | ${r.groupName}`,
		);
	}

	// Rank surplus groups (highest q/task ratio — likely drift surface)
	console.log("\n--- TOP 15 SURPLUS GROUPS (highest questions/task ratio) ---\n");
	const sortedSurplus = [...groupRows].sort((a, b) => b.perTaskRatio - a.perTaskRatio).slice(0, 15);
	console.log("  section | group | ratio | tasks | qs | group name");
	console.log("  --------+-------+-------+-------+----+-----------");
	for (const r of sortedSurplus) {
		console.log(
			`  ${r.section.padEnd(7)} | ${`${r.area}/${r.group}`.padEnd(5)} | ${r.perTaskRatio.toFixed(1).padStart(5)} | ${String(r.taskCount).padStart(5)} | ${String(r.questionCount).padStart(3)} | ${r.groupName}`,
		);
	}

	// Groups with ZERO questions (severe)
	const zeroQ = groupRows.filter((r) => r.questionCount === 0);
	console.log(`\n--- GROUPS WITH ZERO QUESTIONS (${zeroQ.length}) ---\n`);
	if (zeroQ.length === 0) console.log("  none");
	else {
		for (const r of zeroQ) {
			console.log(`  ${r.section} ${r.area}/${r.group} — ${r.groupName} (${r.taskCount} tasks)`);
		}
	}

	// Groups with orphan topics — question topics referenced in blueprint.ts but not in DB
	const orphanTopics = new Set<string>();
	for (const row of groupRows) {
		for (const qt of row.questionTopics) {
			if (!questionsByTopic[qt]) orphanTopics.add(qt);
		}
	}
	console.log(`\n--- BLUEPRINT TOPICS WITH ZERO DB QUESTIONS (${orphanTopics.size}) ---\n`);
	if (orphanTopics.size === 0) console.log("  none");
	else {
		for (const t of [...orphanTopics].sort()) console.log(`  ${t}`);
	}

	// Bloom's alignment check: compare AICPA task skill distribution to actual question cognitive levels
	console.log(`\n--- BLOOM'S ALIGNMENT (section-level, expected from AICPA skills vs actual from DB) ---\n`);
	console.log("  section | skill L1 | skill L2 | skill L3 | skill L4 | actual L1 | actual L2 | actual L3 | actual L4");
	console.log("  --------+----------+----------+----------+----------+-----------+-----------+-----------+----------");
	const sectionBlooms: Record<string, { taskSkills: Record<number, number>; actual: Record<number, number> }> = {};
	for (const r of groupRows) {
		const agg = (sectionBlooms[r.section] ??= {
			taskSkills: { 1: 0, 2: 0, 3: 0, 4: 0 },
			actual: { 1: 0, 2: 0, 3: 0, 4: 0 },
		});
		for (const l of [1, 2, 3, 4]) {
			agg.taskSkills[l] += r.taskSkills[l];
			agg.actual[l] += r.questionsByLevel[l];
		}
	}
	for (const [sec, agg] of Object.entries(sectionBlooms).sort()) {
		const taskTotal = Object.values(agg.taskSkills).reduce((a, b) => a + b, 0) || 1;
		const actualTotal = Object.values(agg.actual).reduce((a, b) => a + b, 0) || 1;
		const pct = (n: number, d: number) => `${Math.round((100 * n) / d)}%`.padStart(8);
		console.log(
			`  ${sec.padEnd(7)} | ${pct(agg.taskSkills[1], taskTotal)} | ${pct(agg.taskSkills[2], taskTotal)} | ${pct(agg.taskSkills[3], taskTotal)} | ${pct(agg.taskSkills[4], taskTotal)} | ${pct(agg.actual[1], actualTotal).padStart(9)} | ${pct(agg.actual[2], actualTotal).padStart(9)} | ${pct(agg.actual[3], actualTotal).padStart(9)} | ${pct(agg.actual[4], actualTotal).padStart(9)}`,
		);
	}

	console.log("\n");
}

main().catch((e) => { console.error("ERROR:", e); process.exit(1); });
