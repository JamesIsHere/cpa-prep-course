"use client";

import type {
	ConceptMap,
	ConceptMapNode,
	DecisionTree,
	DecisionTreeBranch,
	FormulaEntry,
	Mnemonic,
	ReferenceTable,
} from "@/lib/study-frameworks/types";

function ConceptMapPreview({ item }: { item: ConceptMap }) {
	function renderNode(node: ConceptMapNode, depth: number) {
		return (
			<li key={node.label}>
				<span className="text-sm text-gray-700">{node.label}</span>
				{node.children && node.children.length > 0 && (
					<ul className={`ml-4 ${depth < 2 ? "mt-1" : ""} space-y-0.5`}>
						{node.children.map((child) => renderNode(child, depth + 1))}
					</ul>
				)}
			</li>
		);
	}

	return (
		<div className="border border-gray-100 rounded-lg p-4">
			<h4 className="text-sm font-semibold text-gray-800 mb-2">{item.title}</h4>
			<ul className="space-y-1">{renderNode(item.root, 0)}</ul>
		</div>
	);
}

function DecisionTreePreview({ item }: { item: DecisionTree }) {
	function renderBranch(
		branch: DecisionTreeBranch,
		depth: number,
	): React.ReactNode {
		if (typeof branch === "string") {
			return (
				<span className="text-sm text-emerald-700 font-medium">{branch}</span>
			);
		}
		if (depth > 3) {
			return <span className="text-xs text-gray-400">...</span>;
		}
		return (
			<div className="ml-4 text-sm">
				<p className="text-gray-700 font-medium">{branch.question}</p>
				<div className="ml-3 mt-1 space-y-1">
					<div className="flex items-start gap-2">
						<span className="text-emerald-600 text-xs font-bold mt-0.5">
							Yes:
						</span>
						{renderBranch(branch.yes, depth + 1)}
					</div>
					<div className="flex items-start gap-2">
						<span className="text-red-500 text-xs font-bold mt-0.5">No:</span>
						{renderBranch(branch.no, depth + 1)}
					</div>
				</div>
			</div>
		);
	}

	return (
		<div className="border border-gray-100 rounded-lg p-4">
			<h4 className="text-sm font-semibold text-gray-800 mb-2">{item.title}</h4>
			{renderBranch(item.root, 0)}
		</div>
	);
}

function FormulaPreview({ item }: { item: FormulaEntry }) {
	return (
		<div className="border border-gray-100 rounded-lg p-4">
			<h4 className="text-sm font-semibold text-gray-800 mb-1">{item.name}</h4>
			<p className="text-sm font-mono text-emerald-700 bg-emerald-50 px-2 py-1 rounded">
				{item.formula}
			</p>
			{item.description && (
				<p className="text-xs text-gray-500 mt-1">{item.description}</p>
			)}
		</div>
	);
}

function ReferenceTablePreview({ item }: { item: ReferenceTable }) {
	return (
		<div className="border border-gray-100 rounded-lg p-4 overflow-x-auto">
			<h4 className="text-sm font-semibold text-gray-800 mb-2">{item.title}</h4>
			<table className="text-xs w-full">
				<thead>
					<tr>
						{item.headers.map((h) => (
							<th
								key={h}
								className="text-left text-gray-500 font-medium pb-1 pr-3"
							>
								{h}
							</th>
						))}
					</tr>
				</thead>
				<tbody>
					{item.rows.slice(0, 5).map((row, i) => (
						<tr key={i} className="border-t border-gray-50">
							{row.map((cell, j) => (
								<td key={j} className="py-1 pr-3 text-gray-700">
									{cell}
								</td>
							))}
						</tr>
					))}
					{item.rows.length > 5 && (
						<tr>
							<td
								colSpan={item.headers.length}
								className="py-1 text-gray-400 text-xs"
							>
								+{item.rows.length - 5} more rows
							</td>
						</tr>
					)}
				</tbody>
			</table>
		</div>
	);
}

function MnemonicPreview({ item }: { item: Mnemonic }) {
	return (
		<div className="border border-gray-100 rounded-lg p-4">
			<div className="flex items-baseline gap-2 mb-1">
				<span className="text-sm font-bold text-emerald-700">
					{item.acronym}
				</span>
				<span className="text-sm text-gray-600">{item.expansion}</span>
			</div>
			<p className="text-xs text-gray-500">{item.explanation}</p>
		</div>
	);
}

export {
	ConceptMapPreview,
	DecisionTreePreview,
	FormulaPreview,
	ReferenceTablePreview,
	MnemonicPreview,
};
