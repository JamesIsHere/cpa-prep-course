"use client";

import { useRouter } from "next/navigation";
import { useCallback, useEffect, useMemo, useState, useRef } from "react";
import { sections } from "@/lib/sections";
import { getStudyFramework } from "@/lib/study-frameworks";

interface SearchResult {
	id: string;
	title: string;
	subtitle: string;
	type: "lesson" | "mnemonic" | "formula";
	link: string;
	section: string;
}

export default function SearchPalette() {
	const router = useRouter();
	const [isOpen, setIsOpen] = useState(false);
	const [query, setQuery] = useState("");
	const [selectedIndex, setSelectedIndex] = useState(0);
	const inputRef = useRef<HTMLInputElement>(null);

	const closePalette = useCallback(() => {
		setIsOpen(false);
	}, []);

	// Toggle on Ctrl+K / Escape
	useEffect(() => {
		function handleKeyDown(e: KeyboardEvent) {
			if (e.key === "k" && (e.metaKey || e.ctrlKey)) {
				e.preventDefault();
				setIsOpen((prev) => {
					if (!prev) {
						setQuery("");
						setSelectedIndex(0);
						setTimeout(() => inputRef.current?.focus(), 50);
					}
					return !prev;
				});
			}
			if (e.key === "Escape") {
				setIsOpen(false);
			}
		}
		window.addEventListener("keydown", handleKeyDown);
		return () => window.removeEventListener("keydown", handleKeyDown);
	}, []);

	// Derive search results from query (no effect needed)
	const results = useMemo(() => {
		if (query.length < 2) return [];

		const allResults: SearchResult[] = [];
		const q = query.toLowerCase();

		sections.forEach((section) => {
			// Search Lessons
			section.lessons.forEach((l) => {
				if (l.title.toLowerCase().includes(q)) {
					allResults.push({
						id: `l-${l.slug}`,
						title: l.title,
						subtitle: `Lesson in ${section.code.toUpperCase()}`,
						type: "lesson",
						link: `/sections/${section.slug}/lessons/${l.slug}`,
						section: section.code,
					});
				}
			});

			// Search Frameworks
			const framework = getStudyFramework(section.code);
			if (framework) {
				framework.mnemonics.forEach((m) => {
					if (m.acronym.toLowerCase().includes(q) || m.expansion.toLowerCase().includes(q)) {
						allResults.push({
							id: `m-${section.code}-${m.acronym}`,
							title: m.acronym,
							subtitle: `${m.expansion} (Mnemonic in ${section.code.toUpperCase()})`,
							type: "mnemonic",
							link: `/sections/${section.slug}/flashcards`,
							section: section.code,
						});
					}
				});
				framework.formulas.forEach((f) => {
					if (f.name.toLowerCase().includes(q) || f.formula.toLowerCase().includes(q)) {
						allResults.push({
							id: `f-${section.code}-${f.name}`,
							title: f.name,
							subtitle: `${f.formula} (Formula in ${section.code.toUpperCase()})`,
							type: "formula",
							link: `/sections/${section.slug}/flashcards`,
							section: section.code,
						});
					}
				});
			}
		});

		return allResults.slice(0, 8);
	}, [query]);

	function handleSelect(result: SearchResult) {
		router.push(result.link);
		closePalette();
	}

	function handleQueryChange(value: string) {
		setQuery(value);
		setSelectedIndex(0);
	}

	function handleKeyDown(e: React.KeyboardEvent) {
		if (e.key === "ArrowDown") {
			e.preventDefault();
			setSelectedIndex((prev) => (prev + 1) % results.length);
		} else if (e.key === "ArrowUp") {
			e.preventDefault();
			setSelectedIndex((prev) => (prev - 1 + results.length) % results.length);
		} else if (e.key === "Enter" && results[selectedIndex]) {
			handleSelect(results[selectedIndex]);
		}
	}

	if (!isOpen) return null;

	return (
		<div className="fixed inset-0 z-50 flex items-start justify-center pt-24 px-4 sm:px-6">
			{/* Overlay */}
			<div 
				className="fixed inset-0 bg-gray-900/60 backdrop-blur-sm transition-opacity" 
				onClick={closePalette}
			/>

			{/* Palette */}
			<div className="relative w-full max-w-xl bg-white rounded-2xl shadow-2xl border border-gray-200 overflow-hidden animate-in fade-in zoom-in duration-200">
				<div className="flex items-center px-4 border-b border-gray-100">
					<svg className="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
					</svg>
					<input
						ref={inputRef}
						type="text"
						value={query}
						onChange={(e) => handleQueryChange(e.target.value)}
						onKeyDown={handleKeyDown}
						placeholder="Search lessons, mnemonics, or formulas..."
						className="w-full py-4 px-3 text-gray-900 placeholder-gray-400 focus:outline-none text-base sm:text-lg"
					/>
					<div className="hidden sm:flex items-center gap-1">
						<span className="text-[10px] font-bold text-gray-400 border border-gray-200 px-1.5 py-0.5 rounded shadow-sm">ESC</span>
					</div>
				</div>

				<div className="max-h-[60vh] overflow-y-auto">
					{results.length > 0 ? (
						<div className="p-2">
							{results.map((result, i) => (
								<button
									key={result.id}
									onClick={() => handleSelect(result)}
									onMouseEnter={() => setSelectedIndex(i)}
									className={`w-full text-left flex items-start gap-4 p-3 rounded-xl transition-all ${
										selectedIndex === i ? "bg-emerald-50" : "bg-white"
									}`}
								>
									<div className={`w-10 h-10 rounded-lg flex items-center justify-center shrink-0 ${
										result.type === "lesson" ? "bg-blue-100 text-blue-600" :
										result.type === "mnemonic" ? "bg-amber-100 text-amber-600" :
										"bg-purple-100 text-purple-600"
									}`}>
										{result.type === "lesson" ? "📚" : result.type === "mnemonic" ? "🧠" : "➗"}
									</div>
									<div className="flex-1 min-w-0">
										<div className="flex items-center justify-between">
											<p className={`font-bold truncate ${selectedIndex === i ? "text-emerald-900" : "text-gray-900"}`}>
												{result.title}
											</p>
											<span className="text-[10px] font-bold text-gray-400 uppercase tracking-widest">{result.section}</span>
										</div>
										<p className="text-xs text-gray-500 truncate">{result.subtitle}</p>
									</div>
								</button>
							))}
						</div>
					) : query.length >= 2 ? (
						<div className="p-12 text-center">
							<p className="text-gray-500 italic">No results found for &ldquo;{query}&rdquo;</p>
						</div>
					) : (
						<div className="p-8 text-center">
							<p className="text-sm text-gray-400">Type at least 2 characters to search across all sections...</p>
						</div>
					)}
				</div>

				<div className="bg-gray-50 px-4 py-3 flex items-center justify-between border-t border-gray-100">
					<div className="flex items-center gap-4 text-[10px] font-bold text-gray-400 uppercase tracking-widest">
						<span className="flex items-center gap-1">
							<span className="border border-gray-200 bg-white px-1 rounded shadow-sm">↑↓</span> Navigate
						</span>
						<span className="flex items-center gap-1">
							<span className="border border-gray-200 bg-white px-1 rounded shadow-sm">Enter</span> Select
						</span>
					</div>
					<p className="text-[10px] font-medium text-gray-400 italic">Search indexed locally for speed</p>
				</div>
			</div>
		</div>
	);
}
