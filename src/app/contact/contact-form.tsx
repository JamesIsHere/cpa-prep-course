"use client";

import { useState } from "react";

const categories = [
	{ value: "general", label: "General question" },
	{ value: "content_issue", label: "Content issue" },
	{ value: "bug", label: "Bug report" },
	{ value: "suggestion", label: "Suggestion" },
];

export default function ContactForm() {
	const [email, setEmail] = useState("");
	const [category, setCategory] = useState("general");
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
				body: JSON.stringify({
					email: email || undefined,
					category,
					message,
				}),
			});
			if (!res.ok) throw new Error();
			setStatus("sent");
		} catch {
			setStatus("error");
		}
	}

	if (status === "sent") {
		return (
			<div className="text-center py-8">
				<div className="text-emerald-600 text-4xl mb-4">✓</div>
				<h2 className="text-lg font-semibold text-gray-900 mb-2">
					Message sent
				</h2>
				<p className="text-sm text-gray-500">
					Thanks for reaching out. We&apos;ll get back to you if a response is
					needed.
				</p>
			</div>
		);
	}

	return (
		<form onSubmit={handleSubmit} className="space-y-5">
			<div>
				<label
					htmlFor="email"
					className="block text-sm font-medium text-gray-700 mb-1"
				>
					Email <span className="text-gray-400 font-normal">(optional)</span>
				</label>
				<input
					id="email"
					type="email"
					value={email}
					onChange={(e) => setEmail(e.target.value)}
					placeholder="your@email.com"
					className="w-full border border-gray-200 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-transparent"
				/>
			</div>

			<div>
				<label className="block text-sm font-medium text-gray-700 mb-2">
					Category
				</label>
				<div className="flex flex-wrap gap-2">
					{categories.map((c) => (
						<button
							key={c.value}
							type="button"
							onClick={() => setCategory(c.value)}
							className={`text-sm px-4 py-1.5 rounded-full border transition-colors ${
								category === c.value
									? "bg-emerald-100 border-emerald-300 text-emerald-700"
									: "border-gray-200 text-gray-500 hover:border-gray-300"
							}`}
						>
							{c.label}
						</button>
					))}
				</div>
			</div>

			<div>
				<label
					htmlFor="message"
					className="block text-sm font-medium text-gray-700 mb-1"
				>
					Message
				</label>
				<textarea
					id="message"
					value={message}
					onChange={(e) => setMessage(e.target.value)}
					placeholder="Tell us what's on your mind..."
					rows={5}
					required
					className="w-full border border-gray-200 rounded-lg px-3 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-emerald-500 focus:border-transparent resize-none"
				/>
			</div>

			<button
				type="submit"
				disabled={status === "sending" || !message.trim()}
				className="w-full bg-emerald-600 text-white py-2.5 rounded-lg font-medium hover:bg-emerald-700 transition-colors disabled:opacity-50"
			>
				{status === "sending" ? "Sending..." : "Send Message"}
			</button>

			{status === "error" && (
				<p className="text-sm text-red-500 text-center">
					Something went wrong. Please try again.
				</p>
			)}
		</form>
	);
}
