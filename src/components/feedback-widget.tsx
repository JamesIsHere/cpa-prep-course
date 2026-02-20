"use client";

import { usePathname } from "next/navigation";
import { useState } from "react";

const categories = [
	{ value: "content_issue", label: "Content issue" },
	{ value: "bug", label: "Bug" },
	{ value: "suggestion", label: "Suggestion" },
];

export default function FeedbackWidget() {
	const pathname = usePathname();
	const [open, setOpen] = useState(false);
	const [category, setCategory] = useState("content_issue");
	const [message, setMessage] = useState("");
	const [status, setStatus] = useState<"idle" | "sending" | "sent" | "error">(
		"idle",
	);

	async function handleSubmit(e: React.FormEvent) {
		e.preventDefault();
		if (!message.trim()) return;

		setStatus("sending");
		try {
			const res = await fetch("/api/feedback", {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ pageUrl: pathname, category, message }),
			});
			if (!res.ok) throw new Error();
			setStatus("sent");
			setMessage("");
			setTimeout(() => {
				setOpen(false);
				setStatus("idle");
			}, 2000);
		} catch {
			setStatus("error");
		}
	}

	if (!open) {
		return (
			<button
				type="button"
				onClick={() => setOpen(true)}
				className="text-sm text-gray-400 hover:text-emerald-600 transition-colors"
			>
				Report an issue
			</button>
		);
	}

	return (
		<div className="bg-gray-50 rounded-lg border border-gray-200 p-4 mt-4">
			<div className="flex justify-between items-center mb-3">
				<span className="text-sm font-medium text-gray-700">
					Report an issue
				</span>
				<button
					type="button"
					onClick={() => {
						setOpen(false);
						setStatus("idle");
					}}
					className="text-gray-400 hover:text-gray-600 text-sm"
				>
					Close
				</button>
			</div>

			{status === "sent" ? (
				<p className="text-sm text-emerald-600">Thanks for the feedback!</p>
			) : (
				<form onSubmit={handleSubmit} className="space-y-3">
					<div className="flex gap-2">
						{categories.map((c) => (
							<button
								key={c.value}
								type="button"
								onClick={() => setCategory(c.value)}
								className={`text-xs px-3 py-1 rounded-full border transition-colors ${
									category === c.value
										? "bg-emerald-100 border-emerald-300 text-emerald-700"
										: "border-gray-200 text-gray-500 hover:border-gray-300"
								}`}
							>
								{c.label}
							</button>
						))}
					</div>
					<textarea
						value={message}
						onChange={(e) => setMessage(e.target.value)}
						placeholder="Describe the issue..."
						rows={3}
						className="w-full text-sm border border-gray-200 rounded-lg px-3 py-2 focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-transparent resize-none"
					/>
					<div className="flex justify-between items-center">
						<span className="text-xs text-gray-400">Page: {pathname}</span>
						<button
							type="submit"
							disabled={status === "sending" || !message.trim()}
							className="text-sm bg-emerald-600 text-white px-4 py-1.5 rounded-lg hover:bg-emerald-700 transition-colors disabled:opacity-50"
						>
							{status === "sending" ? "Sending..." : "Submit"}
						</button>
					</div>
					{status === "error" && (
						<p className="text-sm text-red-500">
							Failed to send. Please try again.
						</p>
					)}
				</form>
			)}
		</div>
	);
}
