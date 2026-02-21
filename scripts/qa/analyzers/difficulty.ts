// Difficulty distribution analyzer
// Compares actual distribution against 30/50/20 target (easy/medium/hard)

import type { DbQuestion } from "../db-client";

export interface DifficultyResult {
	section: string;
	total: number;
	easy: number;
	medium: number;
	hard: number;
	easyPct: number;
	mediumPct: number;
	hardPct: number;
	easyDelta: number;
	mediumDelta: number;
	hardDelta: number;
}

export interface TopicDifficultyResult {
	section: string;
	topic: string;
	total: number;
	easy: number;
	medium: number;
	hard: number;
	allEasy: boolean;
	allHard: boolean;
}

export interface DifficultyAnalysis {
	sections: DifficultyResult[];
	flaggedTopics: TopicDifficultyResult[];
}

const TARGETS = { easy: 30, medium: 50, hard: 20 };

export function analyzeDifficulty(questions: DbQuestion[]): DifficultyAnalysis {
	// Group by section_id (convert to string for consistent Map keys)
	const bySectionId = new Map<string, DbQuestion[]>();
	for (const q of questions) {
		const key = String(q.section_id);
		if (!bySectionId.has(key)) bySectionId.set(key, []);
		bySectionId.get(key)!.push(q);
	}

	const sections: DifficultyResult[] = [];

	for (const [sectionId, qs] of bySectionId) {
		const total = qs.length;
		const easy = qs.filter((q) => q.difficulty === "easy").length;
		const medium = qs.filter((q) => q.difficulty === "medium").length;
		const hard = qs.filter((q) => q.difficulty === "hard").length;

		const easyPct = Math.round((easy / total) * 100);
		const mediumPct = Math.round((medium / total) * 100);
		const hardPct = Math.round((hard / total) * 100);

		sections.push({
			section: sectionId,
			total,
			easy,
			medium,
			hard,
			easyPct,
			mediumPct,
			hardPct,
			easyDelta: easyPct - TARGETS.easy,
			mediumDelta: mediumPct - TARGETS.medium,
			hardDelta: hardPct - TARGETS.hard,
		});
	}

	// Per-topic analysis — flag topics where all questions are same difficulty
	const byTopic = new Map<string, DbQuestion[]>();
	for (const q of questions) {
		const key = `${q.section_id}::${q.topic}`;
		if (!byTopic.has(key)) byTopic.set(key, []);
		byTopic.get(key)!.push(q);
	}

	const flaggedTopics: TopicDifficultyResult[] = [];
	for (const [key, qs] of byTopic) {
		const [section, topic] = key.split("::");
		const total = qs.length;
		const easy = qs.filter((q) => q.difficulty === "easy").length;
		const medium = qs.filter((q) => q.difficulty === "medium").length;
		const hard = qs.filter((q) => q.difficulty === "hard").length;
		const allEasy = easy === total;
		const allHard = hard === total;

		if (allEasy || allHard) {
			flaggedTopics.push({
				section,
				topic,
				total,
				easy,
				medium,
				hard,
				allEasy,
				allHard,
			});
		}
	}

	sections.sort((a, b) => a.section.localeCompare(b.section));
	return { sections, flaggedTopics };
}
