export interface ConceptMapNode {
	label: string;
	children?: ConceptMapNode[];
}

export interface ConceptMap {
	title: string;
	root: ConceptMapNode;
	blueprintGroups?: string[];
}

export type DecisionTreeBranch = DecisionTreeNode | string;

export interface DecisionTreeNode {
	question: string;
	yes: DecisionTreeBranch;
	no: DecisionTreeBranch;
}

export interface DecisionTree {
	title: string;
	root: DecisionTreeNode;
	blueprintGroups?: string[];
}

export interface FormulaEntry {
	name: string;
	formula: string;
	description?: string;
	blueprintGroups?: string[];
}

export interface ReferenceTable {
	title: string;
	headers: string[];
	rows: string[][];
	blueprintGroups?: string[];
}

export interface Mnemonic {
	acronym: string;
	expansion: string;
	explanation: string;
	blueprintGroups?: string[];
}

export interface StudyFramework {
	sectionCode: string;
	sectionTitle: string;
	conceptMaps: ConceptMap[];
	decisionTrees: DecisionTree[];
	formulas: FormulaEntry[];
	referenceTables: ReferenceTable[];
	mnemonics: Mnemonic[];
}
