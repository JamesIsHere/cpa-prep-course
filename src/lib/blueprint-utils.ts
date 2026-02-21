import {
	type BlueprintGroup,
	type BlueprintSection,
	cpaBlueprint,
	questionCounts,
} from "./blueprint";

export { questionCounts };

import { getStudyFramework } from "./study-frameworks";
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
