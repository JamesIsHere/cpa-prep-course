"use client";

import { useState } from "react";

interface FlashcardProps {
	front: React.ReactNode;
	back: React.ReactNode;
	type: string;
}

export default function Flashcard({ front, back, type }: FlashcardProps) {
	const [isFlipped, setIsFlipped] = useState(false);

	return (
		<div 
			className="group perspective-1000 w-full h-64 cursor-pointer"
			onClick={() => setIsFlipped(!isFlipped)}
		>
			<div className={`relative w-full h-full transition-transform duration-500 transform-style-3d ${isFlipped ? "rotate-y-180" : ""}`}>
				{/* Front */}
				<div className="absolute inset-0 backface-hidden bg-white border-2 border-emerald-100 rounded-3xl shadow-sm flex flex-col items-center justify-center p-8 text-center">
					<span className="absolute top-4 left-6 text-[10px] font-bold text-emerald-600 uppercase tracking-widest bg-emerald-50 px-2 py-1 rounded-full">
						{type}
					</span>
					<div className="text-3xl font-bold text-gray-900 leading-tight">
						{front}
					</div>
					<p className="mt-6 text-xs text-gray-400 font-medium uppercase tracking-tighter">
						Click to flip
					</p>
				</div>

				{/* Back */}
				<div className="absolute inset-0 backface-hidden bg-emerald-600 border-2 border-emerald-500 rounded-3xl shadow-xl flex flex-col items-center justify-center p-8 text-center rotate-y-180">
					<div className="text-white">
						{back}
					</div>
					<p className="mt-6 text-xs text-emerald-200 font-medium uppercase tracking-tighter">
						Click to flip back
					</p>
				</div>
			</div>
		</div>
	);
}
