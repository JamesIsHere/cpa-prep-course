// Generate full AICPA Blueprint → Lesson → Question traceability workbook
// Each row = one representative task (most granular AICPA level)
// Usage: npx tsx scripts/generate-blueprint-workbook.ts

import XLSX from "xlsx";
import { readFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));
const rootDir = resolve(__dirname, "..");

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
	weight: string;
	groups: AicpaGroup[];
}
type AicpaBlueprintTasks = Record<string, AicpaArea[]>;

async function main() {
	// Import app data
	const { cpaBlueprint, questionCounts, sectionQuestionTotals } = await import(
		"../src/lib/blueprint.js"
	);
	const { sections } = await import("../src/lib/sections.js");

	// Load extracted representative tasks
	const tasksPath = resolve(rootDir, "alignment", "aicpa-blueprint-tasks.json");
	const aicpaTasks: AicpaBlueprintTasks = JSON.parse(
		readFileSync(tasksPath, "utf-8"),
	);

	// Build lesson lookup: slug → title
	const lessonLookup: Record<string, string> = {};
	for (const section of sections) {
		for (const lesson of section.lessons) {
			lessonLookup[lesson.slug] = lesson.title;
		}
	}

	const wb = XLSX.utils.book_new();
	const summaryRows: Record<string, unknown>[] = [];

	for (const section of cpaBlueprint) {
		const code = section.code.toUpperCase();
		const rows: Record<string, unknown>[] = [];
		const aicpaAreas = aicpaTasks[code] || [];

		let sectionTaskCount = 0;
		let sectionQuestionCount = 0;
		let sectionGaps = 0;
		let sectionMissingLessons = 0;

		for (const area of section.areas) {
			const weightStr = `${area.weight[0]}–${area.weight[1]}%`;

			// Find matching AICPA area by Roman numeral
			const romanNums = ["", "I", "II", "III", "IV", "V"];
			const aicpaArea = aicpaAreas.find(
				(a: AicpaArea) => a.area === romanNums[area.area],
			);

			for (const group of area.groups) {
				// Resolve lesson names
				const lessonNames = group.lessonSlugs
					.map((slug: string) => lessonLookup[slug] || `[MISSING: ${slug}]`)
					.join("; ");

				const hasLesson =
					group.lessonSlugs.length > 0 &&
					group.lessonSlugs.every((slug: string) => lessonLookup[slug]);

				// Sum question count for this group
				const qTopics = group.questionTopics;
				const qCount = qTopics.reduce(
					(sum: number, t: string) => sum + (questionCounts[t] || 0),
					0,
				);

				const missingQTopics = qTopics.filter(
					(t: string) => !(t in questionCounts) || questionCounts[t] === 0,
				);

				// Find matching AICPA group by letter
				const aicpaGroup = aicpaArea?.groups.find(
					(g: AicpaGroup) => g.letter === group.letter,
				);

				// Collect all representative tasks for this group
				const repTasks: Array<{
					topicNum: number;
					topicName: string;
					skill: string;
					task: string;
				}> = [];

				if (aicpaGroup) {
					for (const topic of aicpaGroup.topics) {
						for (const task of topic.tasks) {
							repTasks.push({
								topicNum: topic.number,
								topicName: topic.name === "(direct)" ? "" : topic.name,
								skill: task.skill,
								task: task.task,
							});
						}
					}
				}

				if (repTasks.length > 0) {
					// One row per representative task
					for (const rt of repTasks) {
						sectionTaskCount++;
						rows.push({
							"Area #": area.area,
							"Area Name": area.name,
							Weight: weightStr,
							Group: group.letter,
							"Group Name": group.name,
							"Topic #": rt.topicNum || "",
							"AICPA Topic": rt.topicName,
							"Skill Level": rt.skill,
							"Representative Task": rt.task,
							"Lesson(s)": lessonNames,
							"Question Topic(s)": qTopics.join("; "),
							Questions: qCount,
							"Lesson Gap": hasLesson ? "" : "MISSING",
							"Question Gap":
								missingQTopics.length > 0
									? `No Qs: ${missingQTopics.join(", ")}`
									: "",
						});
					}
				} else {
					// No tasks extracted — still show the group with our blueprint topics
					for (const topic of group.topics) {
						sectionTaskCount++;
						rows.push({
							"Area #": area.area,
							"Area Name": area.name,
							Weight: weightStr,
							Group: group.letter,
							"Group Name": group.name,
							"Topic #": "",
							"AICPA Topic": topic.name,
							"Skill Level": "",
							"Representative Task": "[not extracted from PDF]",
							"Lesson(s)": lessonNames,
							"Question Topic(s)": qTopics.join("; "),
							Questions: qCount,
							"Lesson Gap": hasLesson ? "" : "MISSING",
							"Question Gap":
								missingQTopics.length > 0
									? `No Qs: ${missingQTopics.join(", ")}`
									: "",
						});
					}
				}

				sectionQuestionCount += qCount;
				if (!hasLesson) sectionMissingLessons++;
				if (missingQTopics.length > 0) sectionGaps++;
			}
		}

		// Add sheet
		const ws = XLSX.utils.json_to_sheet(rows);
		ws["!cols"] = [
			{ wch: 7 }, // Area #
			{ wch: 45 }, // Area Name
			{ wch: 10 }, // Weight
			{ wch: 6 }, // Group
			{ wch: 50 }, // Group Name
			{ wch: 8 }, // Topic #
			{ wch: 45 }, // AICPA Topic
			{ wch: 28 }, // Skill Level
			{ wch: 80 }, // Representative Task
			{ wch: 50 }, // Lesson(s)
			{ wch: 40 }, // Question Topic(s)
			{ wch: 10 }, // Questions
			{ wch: 10 }, // Lesson Gap
			{ wch: 30 }, // Question Gap
		];

		XLSX.utils.book_append_sheet(wb, ws, code);

		summaryRows.push({
			Section: code,
			Title: section.title,
			Areas: section.areas.length,
			Groups: section.areas.reduce(
				(s: number, a: { groups: unknown[] }) => s + a.groups.length,
				0,
			),
			"Representative Tasks": sectionTaskCount,
			"Total Questions":
				sectionQuestionTotals[section.code] || sectionQuestionCount,
			"Groups Missing Lessons": sectionMissingLessons,
			"Groups Missing Questions": sectionGaps,
		});
	}

	// Insert summary sheet at front
	const summaryWs = XLSX.utils.json_to_sheet(summaryRows);
	summaryWs["!cols"] = [
		{ wch: 8 },
		{ wch: 40 },
		{ wch: 6 },
		{ wch: 7 },
		{ wch: 20 },
		{ wch: 15 },
		{ wch: 22 },
		{ wch: 24 },
	];
	XLSX.utils.book_append_sheet(wb, summaryWs, "Summary");

	// Move Summary to first position
	const sheetNames = wb.SheetNames;
	const summaryIdx = sheetNames.indexOf("Summary");
	sheetNames.splice(summaryIdx, 1);
	sheetNames.unshift("Summary");
	wb.SheetNames = sheetNames;

	const outPath = resolve(
		rootDir,
		"alignment",
		"aicpa-blueprint-traceability.xlsx",
	);
	XLSX.writeFile(wb, outPath);
	console.log(`\nGenerated: ${outPath}`);
	console.log(`Sheets: ${wb.SheetNames.join(", ")}`);
}

main().catch((err) => {
	console.error(err);
	process.exit(1);
});
