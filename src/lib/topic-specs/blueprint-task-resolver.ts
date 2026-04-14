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
	/** Topic node when the ref is topic-level (4-part); null when ref is group-level (3-part). */
	topic: AicpaTopic | null;
	/** All representative tasks at the resolved scope: a single topic for a 4-part ref, or every topic in the group concatenated for a 3-part ref. */
	tasks: AicpaTask[];
}

/**
 * Resolve a blueprintRef to its node in the AICPA JSON.
 *
 * Supports two forms:
 *   - Topic-level (4-part), e.g. "BAR/I/B/1" — anchors to a single AICPA topic.
 *   - Group-level (3-part), e.g. "REG/V/C"   — anchors to an entire AICPA group when
 *     a single Slayer tagging string maps to multiple AICPA topics in the same group
 *     (e.g., REG "S Corporations" covers eligibility, ordinary income, and basis).
 *
 * Returns null if any segment of the path is invalid.
 */
export function resolveBlueprintRef(ref: string): ResolvedBlueprintNode | null {
	const parts = ref.split("/");
	if (parts.length !== 3 && parts.length !== 4) return null;
	const [sectionCode, areaId, groupLetter, topicNumStr] = parts;

	const sectionAreas = data[sectionCode];
	if (!sectionAreas) return null;

	const area = sectionAreas.find((a) => a.area === areaId);
	if (!area) return null;

	const group = area.groups.find((g) => g.letter === groupLetter);
	if (!group) return null;

	if (parts.length === 3) {
		const tasks = group.topics.flatMap((t) => t.tasks ?? []);
		return { section: sectionCode, area, group, topic: null, tasks };
	}

	const topicNum = parseInt(topicNumStr, 10);
	if (isNaN(topicNum)) return null;
	const topic = group.topics.find((t) => t.number === topicNum);
	if (!topic) return null;

	return { section: sectionCode, area, group, topic, tasks: topic.tasks ?? [] };
}

/** Whether a blueprintRef is valid (resolves in the AICPA JSON). */
export function isValidBlueprintRef(ref: string): boolean {
	return resolveBlueprintRef(ref) !== null;
}

/** Get the AICPA-canonical name for a blueprintRef — topic name for 4-part, group name for 3-part. */
export function getBlueprintTopicName(ref: string): string | null {
	const node = resolveBlueprintRef(ref);
	if (!node) return null;
	return node.topic ? node.topic.name : node.group.name;
}
