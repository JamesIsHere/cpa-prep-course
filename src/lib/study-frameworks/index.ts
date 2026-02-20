import { audFramework } from "./aud";
import { barFramework } from "./bar";
import { farFramework } from "./far";
import { iscFramework } from "./isc";
import { regFramework } from "./reg";
import { tcpFramework } from "./tcp";
import type { StudyFramework } from "./types";

export type {
	ConceptMap,
	ConceptMapNode,
	DecisionTree,
	DecisionTreeBranch,
	DecisionTreeNode,
	FormulaEntry,
	Mnemonic,
	ReferenceTable,
	StudyFramework,
} from "./types";

const frameworks: Record<string, StudyFramework> = {
	aud: audFramework,
	bar: barFramework,
	far: farFramework,
	isc: iscFramework,
	reg: regFramework,
	tcp: tcpFramework,
};

export function getStudyFramework(
	sectionCode: string,
): StudyFramework | undefined {
	return frameworks[sectionCode];
}
