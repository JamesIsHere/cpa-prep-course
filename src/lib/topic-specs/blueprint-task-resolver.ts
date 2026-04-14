// Helper for resolving a TopicSpec's `blueprintRef` (e.g. "BAR/I/B/1") into the
// corresponding node in `alignment/aicpa-blueprint-tasks.json`. The JSON is the canonical
// source of AICPA representative tasks and skill levels for all 6 sections; specs avoid
// duplicating it inline by referencing this resolver.

import aicpaBlueprintTasks from "../../../alignment/aicpa-blueprint-tasks.json";

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

const data = aicpaBlueprintTasks as unknown as AicpaJson;

export interface ResolvedBlueprintNode {
	section: string;
	area: AicpaArea;
	group: AicpaGroup;
	topic: AicpaTopic;
	tasks: AicpaTask[];
}

/**
 * Resolve a blueprintRef like "BAR/I/B/1" to its node in the AICPA JSON.
 * Returns null if any segment of the path is invalid.
 */
export function resolveBlueprintRef(ref: string): ResolvedBlueprintNode | null {
	const parts = ref.split("/");
	if (parts.length !== 4) return null;
	const [sectionCode, areaId, groupLetter, topicNumStr] = parts;
	const topicNum = parseInt(topicNumStr, 10);
	if (isNaN(topicNum)) return null;

	const sectionAreas = data[sectionCode];
	if (!sectionAreas) return null;

	const area = sectionAreas.find((a) => a.area === areaId);
	if (!area) return null;

	const group = area.groups.find((g) => g.letter === groupLetter);
	if (!group) return null;

	const topic = group.topics.find((t) => t.number === topicNum);
	if (!topic) return null;

	return { section: sectionCode, area, group, topic, tasks: topic.tasks ?? [] };
}

/** Whether a blueprintRef is valid (resolves in the AICPA JSON). */
export function isValidBlueprintRef(ref: string): boolean {
	return resolveBlueprintRef(ref) !== null;
}

/** Get the AICPA-canonical topic name for a blueprintRef. */
export function getBlueprintTopicName(ref: string): string | null {
	return resolveBlueprintRef(ref)?.topic.name ?? null;
}
