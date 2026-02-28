import {
	type BlueprintGroup,
	type BlueprintSection,
	cpaBlueprint,
	questionCounts,
} from "./blueprint";

export { questionCounts };

import { sections } from "./sections";
import { getStudyFramework } from "./study-frameworks";
import type { TopicPerformance } from "./weak-topics";
import type {
	ConceptMap,
	DecisionTree,
	FormulaEntry,
	Mnemonic,
	ReferenceTable,
} from "./study-frameworks/types";

// --- Lookup helpers ---

export function getBlueprintSection(
	code: string,
): BlueprintSection | undefined {
	return cpaBlueprint.find((s) => s.code === code);
}

export function getBlueprintGroup(
	code: string,
	area: number,
	letter: string,
): BlueprintGroup | undefined {
	const section = getBlueprintSection(code);
	if (!section) return undefined;
	const areaData = section.areas.find((a) => a.area === area);
	if (!areaData) return undefined;
	return areaData.groups.find((g) => g.letter === letter);
}

// --- Question counting ---

export function getGroupQuestionCount(group: BlueprintGroup): number {
	return group.questionTopics.reduce(
		(sum, topic) => sum + (questionCounts[topic] ?? 0),
		0,
	);
}

// --- Framework filtering ---

type FrameworkItem =
	| ConceptMap
	| DecisionTree
	| FormulaEntry
	| ReferenceTable
	| Mnemonic;

function hasMatchingGroup(item: FrameworkItem, groupId: string): boolean {
	if (!("blueprintGroups" in item) || !item.blueprintGroups) return false;
	return item.blueprintGroups.includes(groupId);
}

export interface GroupFrameworkItems {
	conceptMaps: ConceptMap[];
	decisionTrees: DecisionTree[];
	formulas: FormulaEntry[];
	referenceTables: ReferenceTable[];
	mnemonics: Mnemonic[];
}

export function getFrameworkItemsForGroup(
	sectionCode: string,
	area: number,
	letter: string,
): GroupFrameworkItems {
	const framework = getStudyFramework(sectionCode);
	const groupId = `${sectionCode}.${area}.${letter}`;

	if (!framework) {
		return {
			conceptMaps: [],
			decisionTrees: [],
			formulas: [],
			referenceTables: [],
			mnemonics: [],
		};
	}

	return {
		conceptMaps: framework.conceptMaps.filter((item) =>
			hasMatchingGroup(item, groupId),
		),
		decisionTrees: framework.decisionTrees.filter((item) =>
			hasMatchingGroup(item, groupId),
		),
		formulas: framework.formulas.filter((item) =>
			hasMatchingGroup(item, groupId),
		),
		referenceTables: framework.referenceTables.filter((item) =>
			hasMatchingGroup(item, groupId),
		),
		mnemonics: framework.mnemonics.filter((item) =>
			hasMatchingGroup(item, groupId),
		),
	};
}

export function getFrameworkItemCount(items: GroupFrameworkItems): number {
	return (
		items.conceptMaps.length +
		items.decisionTrees.length +
		items.formulas.length +
		items.referenceTables.length +
		items.mnemonics.length
	);
}

// --- URL slug helpers ---

export function getGroupSlug(area: number, letter: string): string {
	return `${area}-${letter}`;
}

export function parseGroupSlug(
	slug: string,
): { area: number; letter: string } | null {
	const match = slug.match(/^(\d+)-([A-Z])$/);
	if (!match) return null;
	return { area: Number.parseInt(match[1], 10), letter: match[2] };
}

export function getTopicsForLesson(
	sectionCode: string,
	lessonSlug: string,
): string[] {
	const section = getBlueprintSection(sectionCode);
	if (!section) return [];

	const topics = new Set<string>();
	for (const area of section.areas) {
		for (const group of area.groups) {
			if (group.lessonSlugs.includes(lessonSlug)) {
				for (const t of group.questionTopics) {
					topics.add(t);
				}
			}
		}
	}
	return Array.from(topics);
}

export function getLessonForTopic(
	sectionCode: string,
	topic: string,
): { slug: string; sectionSlug: string } | undefined {
	const section = getBlueprintSection(sectionCode);
	if (!section) return undefined;

	// Find the section slug from our static sections list
	const mainSection = sections.find((s) => s.code === sectionCode.toLowerCase());
	if (!mainSection) return undefined;

	for (const area of section.areas) {
		for (const group of area.groups) {
			if (group.questionTopics.includes(topic) && group.lessonSlugs.length > 0) {
				return { 
					slug: group.lessonSlugs[0], 
					sectionSlug: mainSection.slug 
				};
			}
		}
	}
	return undefined;
}

export function getBlueprintGroupForLesson(
	sectionCode: string,
	lessonSlug: string,
): { area: number; group: BlueprintGroup } | undefined {
	const section = getBlueprintSection(sectionCode);
	if (!section) return undefined;
	for (const area of section.areas) {
		for (const group of area.groups) {
			if (group.lessonSlugs.includes(lessonSlug)) {
				return { area: area.area, group };
			}
		}
	}
	return undefined;
}

export interface NextStep {
	type: "lesson" | "quiz" | "exam";
	title: string;
	description: string;
	link: string;
	reason: string;
}

export interface SectionProgressData {
	questionsPracticed: number;
	totalCorrect: number;
	totalQuestions: number;
	blueprintGroupsTouched: number;
	blueprintGroupsTotal: number;
	recentScores: { score: number; total: number }[];
}

export function getNextBestStep(
	sectionCode: string,
	sectionSlug: string,
	progress: SectionProgressData,
	weakTopics: TopicPerformance[],
	blueprint: BlueprintSection,
): NextStep {
	// 1. If brand new, start with first lesson
	if (progress.questionsPracticed === 0) {
		return {
			type: "lesson",
			title: "Start at the Beginning",
			description: "Begin your journey with the introductory lesson.",
			link: `/sections/${sectionSlug}/lessons/01-intro`,
			reason: "New Section",
		};
	}

	// 2. If they have serious gaps (accuracy < 60%) in a topic, go back to that lesson
	if (weakTopics.length > 0 && (weakTopics[0].accuracy * 100) < 60) {
		const weakest = weakTopics[0].topic;
		// Find lesson for this topic
		for (const area of blueprint.areas) {
			for (const group of area.groups) {
				if (group.questionTopics.includes(weakest) && group.lessonSlugs.length > 0) {
					return {
						type: "lesson",
						title: `Review: ${group.name}`,
						description: `Revisit the material for ${weakest} to build a stronger foundation.`,
						link: `/sections/${sectionSlug}/lessons/${group.lessonSlugs[0]}`,
						reason: "Critical Gap",
					};
				}
			}
		}
	}

	// 3. If coverage is low, find the first un-touched group
	for (const area of blueprint.areas) {
		for (const _group of area.groups) {
			// We'll need the raw progress data here, but for now we'll check if it's in weakTopics or has 0 questions
			// Logic: If coverage is < 80%, pick a group they haven't done yet.
			// Simplified check:
			if (progress.blueprintGroupsTouched < progress.blueprintGroupsTotal) {
				return {
					type: "quiz",
					title: "Expand Your Base",
					description: "Try a quiz on a new topic area to increase your blueprint coverage.",
					link: `/sections/${sectionSlug}/quizzes`,
					reason: "Low Coverage",
				};
			}
		}
	}

	// 4. If high readiness, suggest a full exam
	if (progress.totalCorrect / progress.questionsPracticed > 0.75) {
		return {
			type: "exam",
			title: "Simulated Exam",
			description: "You're looking ready! Take a full 4-hour practice exam to test your stamina.",
			link: "/exam",
			reason: "Exam Ready",
		};
	}

	// Default to remediation
	return {
		type: "quiz",
		title: "Blast Your Gaps",
		description: "Keep drilling those missed questions to push your passing probability higher.",
		link: `/sections/${sectionSlug}/quizzes`,
		reason: "Optimization",
	};
}
