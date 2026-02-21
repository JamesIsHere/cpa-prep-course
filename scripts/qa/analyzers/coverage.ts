// Coverage analyzer — cross-references live DB topic counts against blueprint

import {
	cpaBlueprint,
	questionCounts as hardcodedCounts,
} from "../../../src/lib/blueprint";
import type { DbQuestion } from "../db-client";

export interface TopicCount {
	topic: string;
	dbCount: number;
	hardcodedCount: number;
	delta: number;
}

export interface OrphanedTopic {
	topic: string;
	dbCount: number;
}

export interface CoverageGap {
	sectionCode: string;
	areaName: string;
	groupName: string;
	groupLetter: string;
	questionTopics: string[];
	totalQuestions: number;
}

export interface CoverageAnalysis {
	topicCounts: TopicCount[];
	orphanedTopics: OrphanedTopic[];
	coverageGaps: CoverageGap[];
	totalDbQuestions: number;
	totalHardcoded: number;
}

export function analyzeCoverage(questions: DbQuestion[]): CoverageAnalysis {
	// Count questions per topic from live DB
	const dbTopicCounts = new Map<string, number>();
	for (const q of questions) {
		dbTopicCounts.set(q.topic, (dbTopicCounts.get(q.topic) ?? 0) + 1);
	}

	// Build set of all blueprint question topics
	const blueprintTopics = new Set<string>();
	for (const section of cpaBlueprint) {
		for (const area of section.areas) {
			for (const group of area.groups) {
				for (const topic of group.questionTopics) {
					blueprintTopics.add(topic);
				}
			}
		}
	}

	// Compare DB topics against blueprint
	const topicCounts: TopicCount[] = [];
	const orphanedTopics: OrphanedTopic[] = [];

	// All topics from DB
	for (const [topic, dbCount] of dbTopicCounts) {
		const hardcoded = hardcodedCounts[topic] ?? 0;
		topicCounts.push({
			topic,
			dbCount,
			hardcodedCount: hardcoded,
			delta: dbCount - hardcoded,
		});

		if (!blueprintTopics.has(topic) && !hardcodedCounts[topic]) {
			orphanedTopics.push({ topic, dbCount });
		}
	}

	// Blueprint groups with no/few questions
	const coverageGaps: CoverageGap[] = [];
	for (const section of cpaBlueprint) {
		for (const area of section.areas) {
			for (const group of area.groups) {
				const total = group.questionTopics.reduce(
					(sum, t) => sum + (dbTopicCounts.get(t) ?? 0),
					0,
				);
				if (total < 10) {
					coverageGaps.push({
						sectionCode: section.code,
						areaName: area.name,
						groupName: group.name,
						groupLetter: group.letter,
						questionTopics: group.questionTopics,
						totalQuestions: total,
					});
				}
			}
		}
	}

	topicCounts.sort((a, b) => a.topic.localeCompare(b.topic));
	orphanedTopics.sort((a, b) => b.dbCount - a.dbCount);
	coverageGaps.sort((a, b) => a.totalQuestions - b.totalQuestions);

	const totalDbQuestions = questions.length;
	const totalHardcoded = Object.values(hardcodedCounts).reduce(
		(a, b) => a + b,
		0,
	);

	return {
		topicCounts,
		orphanedTopics,
		coverageGaps,
		totalDbQuestions,
		totalHardcoded,
	};
}
