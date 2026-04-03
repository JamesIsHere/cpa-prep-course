"use client";

import { getFrameworkItemsForGroup } from "@/lib/blueprint-utils";
import {
	ConceptMapPreview,
	DecisionTreePreview,
	FormulaPreview,
	MnemonicPreview,
	ReferenceTablePreview,
} from "./framework-preview";

/** Parse a blueprint group ID like "far.3.D" into section, area, letter */
function parseGroupId(groupId: string) {
	const parts = groupId.split(".");
	return {
		sectionCode: parts[0],
		areaNumber: parseInt(parts[1], 10),
		groupLetter: parts[2],
	};
}

export function FrameworkConceptMap({
	groupId,
	title,
}: {
	groupId: string;
	title?: string;
}) {
	const { sectionCode, areaNumber, groupLetter } = parseGroupId(groupId);
	const items = getFrameworkItemsForGroup(sectionCode, areaNumber, groupLetter);
	const matches = title
		? items.conceptMaps.filter((m) => m.title === title)
		: items.conceptMaps;
	if (matches.length === 0) return null;
	return (
		<div className="my-4 space-y-3">
			{matches.map((item, i) => (
				<ConceptMapPreview key={i} item={item} />
			))}
		</div>
	);
}

export function FrameworkDecisionTree({
	groupId,
	title,
}: {
	groupId: string;
	title?: string;
}) {
	const { sectionCode, areaNumber, groupLetter } = parseGroupId(groupId);
	const items = getFrameworkItemsForGroup(sectionCode, areaNumber, groupLetter);
	const matches = title
		? items.decisionTrees.filter((t) => t.title === title)
		: items.decisionTrees;
	if (matches.length === 0) return null;
	return (
		<div className="my-4 space-y-3">
			{matches.map((item, i) => (
				<DecisionTreePreview key={i} item={item} />
			))}
		</div>
	);
}

export function FrameworkFormula({
	groupId,
	name,
}: {
	groupId: string;
	name?: string;
}) {
	const { sectionCode, areaNumber, groupLetter } = parseGroupId(groupId);
	const items = getFrameworkItemsForGroup(sectionCode, areaNumber, groupLetter);
	const matches = name
		? items.formulas.filter((f) => f.name === name)
		: items.formulas;
	if (matches.length === 0) return null;
	return (
		<div className="my-4 space-y-3">
			{matches.map((item, i) => (
				<FormulaPreview key={i} item={item} />
			))}
		</div>
	);
}

export function FrameworkTable({
	groupId,
	title,
}: {
	groupId: string;
	title?: string;
	type?: string;
}) {
	const { sectionCode, areaNumber, groupLetter } = parseGroupId(groupId);
	const items = getFrameworkItemsForGroup(sectionCode, areaNumber, groupLetter);
	const matches = title
		? items.referenceTables.filter((t) => t.title === title)
		: items.referenceTables;
	if (matches.length === 0) return null;
	return (
		<div className="my-4 space-y-3">
			{matches.map((item, i) => (
				<ReferenceTablePreview key={i} item={item} />
			))}
		</div>
	);
}

export function FrameworkMnemonic({
	groupId,
	acronym,
}: {
	groupId: string;
	acronym?: string;
}) {
	const { sectionCode, areaNumber, groupLetter } = parseGroupId(groupId);
	const items = getFrameworkItemsForGroup(sectionCode, areaNumber, groupLetter);
	const matches = acronym
		? items.mnemonics.filter((m) => m.acronym === acronym)
		: items.mnemonics;
	if (matches.length === 0) return null;
	return (
		<div className="my-4 space-y-3">
			{matches.map((item, i) => (
				<MnemonicPreview key={i} item={item} />
			))}
		</div>
	);
}
