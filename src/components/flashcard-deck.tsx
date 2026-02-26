"use client";

import { useState } from "react";
import Flashcard from "./flashcard";

interface FlashcardData {
	id: string;
	front: React.ReactNode;
	back: React.ReactNode;
	type: string;
}

interface FlashcardDeckProps {
	cards: FlashcardData[];
}

export default function FlashcardDeck({ cards }: FlashcardDeckProps) {
	const [currentIndex, setCurrentIndex] = useState(0);
	const [shuffledCards, setShuffledCards] = useState(cards);

	function shuffle() {
		const next = [...shuffledCards].sort(() => Math.random() - 0.5);
		setShuffledCards(next);
		setCurrentIndex(0);
	}

	const currentCard = shuffledCards[currentIndex];

	return (
		<div className="max-w-xl mx-auto">
			<div className="flex items-center justify-between mb-6">
				<span className="text-sm font-bold text-gray-400">
					Card {currentIndex + 1} of {shuffledCards.length}
				</span>
				<button 
					onClick={shuffle}
					className="text-xs font-bold text-emerald-600 hover:text-emerald-700 uppercase tracking-wider flex items-center gap-1"
				>
					<svg className="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path strokeLinecap="round" strokeLinejoin="round" strokeWidth={3} d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15" />
					</svg>
					Shuffle
				</button>
			</div>

			<Flashcard 
				key={`${currentCard.id}-${currentIndex}`} // Force reset flip on card change
				front={currentCard.front}
				back={currentCard.back}
				type={currentCard.type}
			/>

			<div className="flex items-center justify-center gap-4 mt-8">
				<button
					onClick={() => setCurrentIndex(Math.max(0, currentIndex - 1))}
					disabled={currentIndex === 0}
					className="w-12 h-12 rounded-full border border-gray-200 flex items-center justify-center text-gray-400 hover:bg-gray-50 disabled:opacity-20 transition-all"
				>
					<svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
					</svg>
				</button>
				
				<button
					onClick={() => setCurrentIndex(Math.min(shuffledCards.length - 1, currentIndex + 1))}
					disabled={currentIndex === shuffledCards.length - 1}
					className="w-12 h-12 rounded-full bg-emerald-600 flex items-center justify-center text-white hover:bg-emerald-700 shadow-md hover:shadow-lg disabled:opacity-20 transition-all"
				>
					<svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
						<path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
					</svg>
				</button>
			</div>
		</div>
	);
}
