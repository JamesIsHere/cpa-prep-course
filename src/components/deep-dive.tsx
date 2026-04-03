"use client";

import { useState } from "react";

export default function DeepDive({
	title,
	children,
}: {
	title: string;
	children: React.ReactNode;
}) {
	const [open, setOpen] = useState(false);

	return (
		<div className="my-6 border border-indigo-200 rounded-lg bg-indigo-50/30">
			<button
				onClick={() => setOpen(!open)}
				className="w-full flex items-center justify-between px-4 py-3 text-left cursor-pointer hover:bg-indigo-50/60 transition-colors rounded-lg"
			>
				<span className="text-sm font-semibold text-indigo-700 flex items-center gap-2">
					<span className="text-base">🔬</span>
					{title}
				</span>
				<span className="text-indigo-400 text-lg">{open ? "−" : "+"}</span>
			</button>
			{open && (
				<div className="px-4 pb-4 text-sm text-gray-600 leading-7 space-y-3 border-t border-indigo-100">
					{children}
				</div>
			)}
		</div>
	);
}
