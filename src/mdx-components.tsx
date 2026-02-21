import type { MDXComponents } from "mdx/types";

export function useMDXComponents(components: MDXComponents): MDXComponents {
	return {
		h1: ({ children }) => (
			<h1 className="text-3xl font-bold mb-6 text-gray-900">{children}</h1>
		),
		h2: ({ children }) => (
			<h2 className="text-2xl font-semibold mt-8 mb-4 text-gray-800">
				{children}
			</h2>
		),
		h3: ({ children }) => (
			<h3 className="text-xl font-semibold mt-6 mb-3 text-gray-700">
				{children}
			</h3>
		),
		p: ({ children }) => (
			<p className="text-gray-600 leading-7 mb-4">{children}</p>
		),
		ul: ({ children }) => (
			<ul className="list-disc pl-6 mb-4 space-y-2 text-gray-600">
				{children}
			</ul>
		),
		ol: ({ children }) => (
			<ol className="list-decimal pl-6 mb-4 space-y-2 text-gray-600">
				{children}
			</ol>
		),
		strong: ({ children }) => (
			<strong className="font-semibold text-gray-900">{children}</strong>
		),
		blockquote: ({ children }) => (
			<blockquote className="border-l-4 border-emerald-500 pl-4 my-4 text-gray-600 italic">
				{children}
			</blockquote>
		),
		code: ({ children }) => (
			<code className="bg-gray-100 px-1.5 py-0.5 rounded text-sm font-mono text-emerald-700">
				{children}
			</code>
		),
		table: ({ children }) => (
			<div className="overflow-x-auto mb-6 rounded-lg border border-gray-200">
				<table className="w-full text-sm">{children}</table>
			</div>
		),
		thead: ({ children }) => (
			<thead className="bg-emerald-700 text-white">{children}</thead>
		),
		th: ({ children }) => (
			<th className="px-4 py-2.5 text-left text-xs font-semibold tracking-wide">
				{children}
			</th>
		),
		td: ({ children }) => (
			<td className="px-4 py-2.5 text-gray-700 border-t border-gray-100">
				{children}
			</td>
		),
		tr: ({ children }) => <tr className="even:bg-gray-50">{children}</tr>,
		...components,
	};
}
