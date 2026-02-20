import {
	Document,
	Font,
	Page,
	StyleSheet,
	Text,
	View,
} from "@react-pdf/renderer";
import type {
	ConceptMap,
	ConceptMapNode,
	DecisionTree,
	DecisionTreeBranch,
	FormulaEntry,
	Mnemonic,
	ReferenceTable,
	StudyFramework,
} from "./types";

Font.register({
	family: "Helvetica",
	fonts: [
		{ src: "Helvetica" },
		{ src: "Helvetica-Bold", fontWeight: "bold" },
		{ src: "Helvetica-Oblique", fontStyle: "italic" },
	],
});

const colors = {
	emerald: "#059669",
	emeraldLight: "#d1fae5",
	emeraldDark: "#065f46",
	gray900: "#111827",
	gray700: "#374151",
	gray500: "#6b7280",
	gray200: "#e5e7eb",
	gray100: "#f3f4f6",
	gray50: "#f9fafb",
	white: "#ffffff",
	amber: "#d97706",
	amberLight: "#fef3c7",
	blue: "#2563eb",
	blueLight: "#dbeafe",
};

const styles = StyleSheet.create({
	page: {
		padding: 40,
		fontFamily: "Helvetica",
		fontSize: 10,
		color: colors.gray900,
	},
	// Title page
	titlePage: {
		flex: 1,
		justifyContent: "center",
		alignItems: "center",
	},
	titleMain: {
		fontSize: 28,
		fontWeight: "bold",
		color: colors.emeraldDark,
		marginBottom: 8,
	},
	titleSub: {
		fontSize: 16,
		color: colors.gray500,
		marginBottom: 4,
	},
	titleDate: {
		fontSize: 11,
		color: colors.gray500,
		marginTop: 20,
	},
	// Section headers
	sectionHeader: {
		fontSize: 18,
		fontWeight: "bold",
		color: colors.emeraldDark,
		marginBottom: 12,
		marginTop: 4,
		paddingBottom: 4,
		borderBottomWidth: 2,
		borderBottomColor: colors.emerald,
	},
	itemTitle: {
		fontSize: 13,
		fontWeight: "bold",
		color: colors.gray900,
		marginBottom: 8,
		marginTop: 12,
	},
	// TOC
	tocEntry: {
		flexDirection: "row",
		justifyContent: "space-between",
		paddingVertical: 3,
		borderBottomWidth: 1,
		borderBottomColor: colors.gray100,
	},
	tocLabel: {
		fontSize: 11,
		color: colors.gray700,
	},
	// Concept map
	mapNode: {
		paddingLeft: 12,
		borderLeftWidth: 2,
		borderLeftColor: colors.emerald,
		marginBottom: 3,
		marginLeft: 4,
	},
	mapNodeLabel: {
		fontSize: 10,
		color: colors.gray900,
		paddingVertical: 2,
	},
	mapRootLabel: {
		fontSize: 11,
		fontWeight: "bold",
		color: colors.emeraldDark,
		marginBottom: 4,
	},
	// Decision tree
	dtBox: {
		borderWidth: 1,
		borderColor: colors.gray200,
		borderRadius: 4,
		padding: 8,
		marginBottom: 6,
		backgroundColor: colors.gray50,
	},
	dtQuestion: {
		fontSize: 10,
		fontWeight: "bold",
		color: colors.gray900,
		marginBottom: 4,
	},
	dtBranch: {
		flexDirection: "row",
		marginBottom: 2,
		paddingLeft: 8,
	},
	dtBranchLabel: {
		fontSize: 9,
		fontWeight: "bold",
		color: colors.emerald,
		width: 28,
	},
	dtBranchLabelNo: {
		fontSize: 9,
		fontWeight: "bold",
		color: colors.amber,
		width: 28,
	},
	dtLeaf: {
		fontSize: 9,
		color: colors.gray700,
		flex: 1,
	},
	// Formula table
	formulaRow: {
		flexDirection: "row",
		borderBottomWidth: 1,
		borderBottomColor: colors.gray200,
		paddingVertical: 4,
	},
	formulaName: {
		width: "30%",
		fontSize: 9,
		fontWeight: "bold",
		color: colors.gray900,
		paddingRight: 8,
	},
	formulaExpr: {
		width: "40%",
		fontSize: 9,
		color: colors.emeraldDark,
		paddingRight: 8,
	},
	formulaDesc: {
		width: "30%",
		fontSize: 8,
		color: colors.gray500,
	},
	// Reference table
	tableHeader: {
		flexDirection: "row",
		backgroundColor: colors.emeraldDark,
		paddingVertical: 4,
		paddingHorizontal: 6,
	},
	tableHeaderCell: {
		fontSize: 9,
		fontWeight: "bold",
		color: colors.white,
		flex: 1,
		paddingHorizontal: 2,
	},
	tableRow: {
		flexDirection: "row",
		paddingVertical: 3,
		paddingHorizontal: 6,
	},
	tableRowAlt: {
		flexDirection: "row",
		paddingVertical: 3,
		paddingHorizontal: 6,
		backgroundColor: colors.gray50,
	},
	tableCell: {
		fontSize: 8,
		color: colors.gray700,
		flex: 1,
		paddingHorizontal: 2,
	},
	// Mnemonic
	mnemonicCard: {
		borderWidth: 1,
		borderColor: colors.emerald,
		borderRadius: 6,
		padding: 10,
		marginBottom: 10,
		backgroundColor: colors.emeraldLight,
	},
	mnemonicAcronym: {
		fontSize: 16,
		fontWeight: "bold",
		color: colors.emeraldDark,
		marginBottom: 2,
	},
	mnemonicExpansion: {
		fontSize: 10,
		fontWeight: "bold",
		color: colors.gray900,
		marginBottom: 4,
	},
	mnemonicExplanation: {
		fontSize: 9,
		color: colors.gray700,
		fontStyle: "italic",
	},
	// Footer
	footer: {
		position: "absolute",
		bottom: 20,
		left: 40,
		right: 40,
		flexDirection: "row",
		justifyContent: "space-between",
		fontSize: 8,
		color: colors.gray500,
	},
});

function PageFooter({ sectionTitle }: { sectionTitle: string }) {
	return (
		<View style={styles.footer} fixed>
			<Text>{sectionTitle} — Study Framework</Text>
			<Text render={({ pageNumber }) => `Page ${pageNumber}`} />
		</View>
	);
}

function ConceptMapNodeView({
	node,
	depth,
}: {
	node: ConceptMapNode;
	depth: number;
}) {
	return (
		<View style={depth > 0 ? styles.mapNode : undefined}>
			<Text style={depth === 0 ? styles.mapRootLabel : styles.mapNodeLabel}>
				{node.label}
			</Text>
			{node.children?.map((child, i) => (
				<ConceptMapNodeView key={i} node={child} depth={depth + 1} />
			))}
		</View>
	);
}

function ConceptMapSection({ maps }: { maps: ConceptMap[] }) {
	return (
		<View>
			<Text style={styles.sectionHeader}>Concept Maps</Text>
			{maps.map((map, i) => (
				<View key={i} wrap={false}>
					<Text style={styles.itemTitle}>{map.title}</Text>
					<ConceptMapNodeView node={map.root} depth={0} />
				</View>
			))}
		</View>
	);
}

function DecisionBranchView({
	branch,
	label,
	depth,
}: {
	branch: DecisionTreeBranch;
	label: string;
	depth: number;
}) {
	const isYes = label === "Yes";
	if (typeof branch === "string") {
		return (
			<View style={styles.dtBranch}>
				<Text style={isYes ? styles.dtBranchLabel : styles.dtBranchLabelNo}>
					{label}:
				</Text>
				<Text style={styles.dtLeaf}>{branch}</Text>
			</View>
		);
	}
	return (
		<View style={{ paddingLeft: depth > 0 ? 12 : 0 }}>
			<View style={styles.dtBranch}>
				<Text style={isYes ? styles.dtBranchLabel : styles.dtBranchLabelNo}>
					{label}:
				</Text>
				<Text style={{ ...styles.dtLeaf, fontWeight: "bold" }}>
					{branch.question}
				</Text>
			</View>
			<View style={{ paddingLeft: 28 }}>
				<DecisionBranchView branch={branch.yes} label="Yes" depth={depth + 1} />
				<DecisionBranchView branch={branch.no} label="No" depth={depth + 1} />
			</View>
		</View>
	);
}

function DecisionTreeSection({ trees }: { trees: DecisionTree[] }) {
	return (
		<View>
			<Text style={styles.sectionHeader}>Decision Trees</Text>
			{trees.map((tree, i) => (
				<View key={i} wrap={false}>
					<Text style={styles.itemTitle}>{tree.title}</Text>
					<View style={styles.dtBox}>
						<Text style={styles.dtQuestion}>{tree.root.question}</Text>
						<DecisionBranchView branch={tree.root.yes} label="Yes" depth={0} />
						<DecisionBranchView branch={tree.root.no} label="No" depth={0} />
					</View>
				</View>
			))}
		</View>
	);
}

function FormulaSection({ formulas }: { formulas: FormulaEntry[] }) {
	return (
		<View>
			<Text style={styles.sectionHeader}>Formula Sheet</Text>
			{formulas.map((f, i) => (
				<View key={i} style={styles.formulaRow} wrap={false}>
					<Text style={styles.formulaName}>{f.name}</Text>
					<Text style={styles.formulaExpr}>{f.formula}</Text>
					<Text style={styles.formulaDesc}>{f.description ?? ""}</Text>
				</View>
			))}
		</View>
	);
}

function ReferenceTableSection({ tables }: { tables: ReferenceTable[] }) {
	return (
		<View>
			<Text style={styles.sectionHeader}>Reference Tables</Text>
			{tables.map((table, i) => (
				<View key={i}>
					<Text style={styles.itemTitle}>{table.title}</Text>
					<View style={styles.tableHeader}>
						{table.headers.map((h, j) => (
							<Text key={j} style={styles.tableHeaderCell}>
								{h}
							</Text>
						))}
					</View>
					{table.rows.map((row, j) => (
						<View
							key={j}
							style={j % 2 === 1 ? styles.tableRowAlt : styles.tableRow}
							wrap={false}
						>
							{row.map((cell, k) => (
								<Text key={k} style={styles.tableCell}>
									{cell}
								</Text>
							))}
						</View>
					))}
				</View>
			))}
		</View>
	);
}

function MnemonicSection({ mnemonics }: { mnemonics: Mnemonic[] }) {
	return (
		<View>
			<Text style={styles.sectionHeader}>Mnemonics</Text>
			{mnemonics.map((m, i) => (
				<View key={i} style={styles.mnemonicCard} wrap={false}>
					<Text style={styles.mnemonicAcronym}>{m.acronym}</Text>
					<Text style={styles.mnemonicExpansion}>{m.expansion}</Text>
					<Text style={styles.mnemonicExplanation}>{m.explanation}</Text>
				</View>
			))}
		</View>
	);
}

function TableOfContents({ framework }: { framework: StudyFramework }) {
	const entries: string[] = [];
	if (framework.conceptMaps.length > 0) entries.push("Concept Maps");
	if (framework.decisionTrees.length > 0) entries.push("Decision Trees");
	if (framework.formulas.length > 0) entries.push("Formula Sheet");
	if (framework.referenceTables.length > 0) entries.push("Reference Tables");
	if (framework.mnemonics.length > 0) entries.push("Mnemonics");

	return (
		<View>
			<Text style={styles.sectionHeader}>Contents</Text>
			{entries.map((entry, i) => (
				<View key={i} style={styles.tocEntry}>
					<Text style={styles.tocLabel}>{entry}</Text>
				</View>
			))}
		</View>
	);
}

export function StudyGuidePdf({
	framework,
}: {
	framework: StudyFramework;
}): React.ReactElement {
	const today = new Date().toLocaleDateString("en-US", {
		year: "numeric",
		month: "long",
		day: "numeric",
	});

	return (
		<Document
			title={`${framework.sectionTitle} — Study Framework`}
			author="Slayer CPA"
		>
			{/* Title page */}
			<Page size="LETTER" style={styles.page}>
				<View style={styles.titlePage}>
					<Text style={styles.titleMain}>{framework.sectionTitle}</Text>
					<Text style={styles.titleSub}>Study Framework</Text>
					<Text style={styles.titleSub}>Slayer CPA</Text>
					<Text style={styles.titleDate}>Generated {today}</Text>
				</View>
			</Page>

			{/* TOC + Content pages */}
			<Page size="LETTER" style={styles.page}>
				<PageFooter sectionTitle={framework.sectionTitle} />
				<TableOfContents framework={framework} />
				{framework.conceptMaps.length > 0 && (
					<ConceptMapSection maps={framework.conceptMaps} />
				)}
				{framework.decisionTrees.length > 0 && (
					<DecisionTreeSection trees={framework.decisionTrees} />
				)}
				{framework.formulas.length > 0 && (
					<FormulaSection formulas={framework.formulas} />
				)}
				{framework.referenceTables.length > 0 && (
					<ReferenceTableSection tables={framework.referenceTables} />
				)}
				{framework.mnemonics.length > 0 && (
					<MnemonicSection mnemonics={framework.mnemonics} />
				)}
			</Page>
		</Document>
	);
}
