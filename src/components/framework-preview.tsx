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

const tierStyles = [
	{ bg: "bg-indigo-50", text: "text-indigo-900" },
	{ bg: "bg-emerald-50", text: "text-emerald-900" },
	{ bg: "bg-amber-50", text: "text-amber-900" },
	{ bg: "bg-gray-50", text: "text-gray-800" },
];

const detailStyle = { bg: "bg-white", text: "text-gray-600 text-xs" };

function ConceptMapPreview({ item }: { item: ConceptMap }) {
	function renderNode(node: ConceptMapNode, depth: number, parentDepth: number) {
		const isTotal = node.label.startsWith("=");

		// Total rows: same style as their parent header, no accent lines
		if (isTotal) {
			const t = tierStyles[Math.min(parentDepth, tierStyles.length - 1)];
			return (
				<div key={node.label} className={`${t.bg} rounded-md px-3 py-2`}>
					<span className={`text-sm font-semibold ${t.text}`}>
						{node.label.replace(/^=\s*/, "")}
					</span>
				</div>
			);
		}

		const hasChildren = node.children && node.children.length > 0;
		const isLeaf = !hasChildren;

		// Leaf detail rows: plain white, small text
		if (isLeaf) {
			return (
				<div key={node.label} className={`${detailStyle.bg} rounded-md px-3 py-1.5`}>
					<span className={`text-sm ${detailStyle.text}`}>{node.label}</span>
				</div>
			);
		}

		// Header rows: colored by depth
		const t = tierStyles[Math.min(depth, tierStyles.length - 1)];
		return (
			<div key={node.label} className="space-y-1.5">
				<div className={`${t.bg} rounded-md px-3 py-2`}>
					<span className={`text-sm font-semibold ${t.text}`}>{node.label}</span>
				</div>
				<div className="ml-4 space-y-1.5">
					{node.children!.map((child) => renderNode(child, depth + 1, depth))}
				</div>
			</div>
		);
	}

	return (
		<div className="border border-gray-100 rounded-lg p-5">
			<h4 className="text-sm font-semibold text-gray-800 mb-3">{item.title}</h4>
			<div className="space-y-1.5">{renderNode(item.root, 0, 0)}</div>
		</div>
	);
}

function DecisionTreeLeaf({ label, text }: { label: string; text: string }) {
	const isYes = label === "Yes";
	return (
		<div
			className={`rounded-lg border-2 px-3 py-2 text-sm ${
				isYes
					? "border-emerald-300 bg-emerald-50 text-emerald-700"
					: "border-red-300 bg-red-50 text-red-700"
			}`}
		>
			{text}
		</div>
	);
}

function DecisionTreeQuestion({
	branch,
	depth,
}: {
	branch: Exclude<DecisionTreeBranch, string>;
	depth: number;
}) {
	if (depth > 3) {
		return <span className="text-xs text-gray-400">...</span>;
	}

	return (
		<div className="flex flex-col items-center">
			{/* Question node */}
			<div className="rounded-lg border-2 border-indigo-200 bg-indigo-50 px-4 py-2.5 text-sm font-medium text-indigo-900 text-center max-w-md">
				{branch.question}
			</div>

			{/* Connector lines */}
			<div className="flex w-full justify-center">
				{/* Vertical line down from question */}
				<div className="w-px h-4 bg-gray-300" />
			</div>

			{/* Branches */}
			<div className="relative flex w-full justify-center">
				{/* Horizontal connector bar */}
				<div className="absolute top-0 left-1/4 right-1/4 h-px bg-gray-300" />

				{/* Yes branch (left) */}
				<div className="flex flex-col items-center w-1/2 px-2">
					<div className="w-px h-4 bg-gray-300" />
					<span className="text-xs font-bold text-emerald-700 mb-1">Yes</span>
					{typeof branch.yes === "string" ? (
						<DecisionTreeLeaf label="Yes" text={branch.yes} />
					) : (
						<DecisionTreeQuestion branch={branch.yes} depth={depth + 1} />
					)}
				</div>

				{/* No branch (right) */}
				<div className="flex flex-col items-center w-1/2 px-2">
					<div className="w-px h-4 bg-gray-300" />
					<span className="text-xs font-bold text-red-700 mb-1">No</span>
					{typeof branch.no === "string" ? (
						<DecisionTreeLeaf label="No" text={branch.no} />
					) : (
						<DecisionTreeQuestion branch={branch.no} depth={depth + 1} />
					)}
				</div>
			</div>
		</div>
	);
}

function DecisionTreePreview({ item }: { item: DecisionTree }) {
	return (
		<div className="border border-gray-100 rounded-lg p-6 overflow-x-auto">
			<h4 className="text-sm font-semibold text-gray-800 mb-4 text-center">
				{item.title}
			</h4>
			<DecisionTreeQuestion branch={item.root} depth={0} />
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
					{item.rows.map((row, i) => (
						<tr key={i} className="border-t border-gray-50">
							{row.map((cell, j) => (
								<td key={j} className="py-1 pr-3 text-gray-700">
									{cell}
								</td>
							))}
						</tr>
					))}
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
