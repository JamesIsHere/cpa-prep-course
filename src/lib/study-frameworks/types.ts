export interface ConceptMapNode {
	label: string;
	children?: ConceptMapNode[];
}

export interface ConceptMap {
	title: string;
	root: ConceptMapNode;
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
}

export interface FormulaEntry {
	name: string;
	formula: string;
	description?: string;
}

export interface ReferenceTable {
	title: string;
	headers: string[];
	rows: string[][];
}

export interface Mnemonic {
	acronym: string;
	expansion: string;
	explanation: string;
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
