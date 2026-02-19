import { audFramework } from "./aud";
import { farFramework } from "./far";
import { regFramework } from "./reg";
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
	far: farFramework,
	reg: regFramework,
};

export function getStudyFramework(
	sectionCode: string,
): StudyFramework | undefined {
	return frameworks[sectionCode];
}
