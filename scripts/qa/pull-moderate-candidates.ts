// Identify "Moderate" quality questions (score 4-6) that need an upgrade
// Usage: npx tsx scripts/qa/pull-moderate-candidates.ts --section=aud --count=30

import { fetchAllQuestions } from "./db-client";
import { scoreQuestion } from "./analyzers/quality";
import { cpaBlueprint } from "../../src/lib/blueprint";
import { getFrameworkItemsForGroup } from "../../src/lib/blueprint-utils";

const sectionArg = process.argv.find((a) => a.startsWith("--section="))?.split("=")[1];
const countArg = parseInt(process.argv.find((a) => a.startsWith("--count="))?.split("=")[1] || "30");
const excludeFile = process.argv.find((a) => a.startsWith("--exclude-ids="))?.split("=")[1];

async function main() {
	if (!sectionArg) {
		console.error("Usage: npx tsx scripts/qa/pull-moderate-candidates.ts --section=aud --count=30");
		process.exit(1);
	}

	let excludeIds: number[] = [];
	if (excludeFile) {
		const { readFileSync, existsSync } = await import("fs");
		const path = await import("path");
		const fullPath = path.resolve(process.cwd(), excludeFile);
		if (existsSync(fullPath)) {
			excludeIds = JSON.parse(readFileSync(fullPath, "utf-8"));
		}
	}

	const all = await fetchAllQuestions(sectionArg!);

	// Helper to find lesson/framework for a topic
	const getTopicContext = (topic: string) => {
		let slugs: string[] = [];
		let items: any = null;
		const bpSection = cpaBlueprint.find((s) => s.code === sectionArg);
		if (bpSection) {
			for (const area of bpSection.areas) {
				for (const group of area.groups) {
					if (group.questionTopics.includes(topic)) {
						slugs = group.lessonSlugs;
						items = getFrameworkItemsForGroup(
							sectionArg!,
							area.area,
							group.letter,
						);
						break;
					}
				}
				if (slugs.length > 0) break;
			}
		}
		return { slugs, items };
	};

	// Score and filter for moderate quality (4-6)
	const candidates = all
		.filter((q) => !excludeIds.includes(q.id))
		.map((q) => ({ question: q, analysis: scoreQuestion(q) }))
		.filter((res) => res.analysis.score >= 4 && res.analysis.score <= 6)
		// Prioritize lower scores within the moderate range
		.sort((a, b) => a.analysis.score - b.analysis.score)
		.slice(0, countArg)
		.map((res) => {
			const context = getTopicContext(res.question.topic);
			return {
				...res.question,
				lessonSlugs: context.slugs,
				frameworkItems: context.items,
			};
		});

	// Output as JSON to stdout
	console.log(JSON.stringify(candidates, null, 2));
}

main();
