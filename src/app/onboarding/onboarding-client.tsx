"use client";

import { useRouter } from "next/navigation";
import { useState } from "react";

interface OnboardingClientProps {
	sections: { code: string; title: string }[];
}

export default function OnboardingClient({ sections }: OnboardingClientProps) {
	const router = useRouter();
	const [step, setStep] = useState(1);
	const [selectedSection, setSelectedSection] = useState("aud");
	const [goal, setGoal] = useState(20);
	const [loading, setLoading] = useState(false);

	async function handleComplete() {
		setLoading(true);
		try {
			// Update section
			await fetch("/api/account/active-section", {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ sectionCode: selectedSection }),
			});

			// Update onboarding flag + goals (we'll need a new API for this or reuse account)
			// For speed, we'll create a dedicated onboarding completion endpoint
			const res = await fetch("/api/account/complete-onboarding", {
				method: "POST",
				headers: { "Content-Type": "application/json" },
				body: JSON.stringify({ 
					questionsGoal: goal,
					lessonsGoal: 1
				}),
			});

			if (res.ok) {
				router.push("/dashboard");
			}
		} finally {
			setLoading(false);
		}
	}

	return (
		<div className="max-w-md w-full bg-white rounded-3xl shadow-xl border border-gray-100 overflow-hidden">
			<div className="h-2 bg-gray-100">
				<div 
					className="h-full bg-emerald-600 transition-all duration-500" 
					style={{ width: `${(step / 3) * 100}%` }}
				/>
			</div>

			<div className="p-8 sm:p-10">
				{step === 1 && (
					<div className="animate-fade-in">
						<div className="w-16 h-16 bg-emerald-100 rounded-2xl flex items-center justify-center mb-6 mx-auto">
							<span className="text-3xl">🎯</span>
						</div>
						<h1 className="text-2xl font-bold text-center text-gray-900 mb-2">Welcome to Slayer</h1>
						<p className="text-gray-500 text-center mb-8">Let&apos;s get you ready to pass the CPA exam. Which section are you tackling first?</p>
						
						<div className="grid grid-cols-2 gap-3 mb-8">
							{sections.map(s => (
								<button
									key={s.code}
									onClick={() => setSelectedSection(s.code)}
									className={`p-4 rounded-xl border-2 transition-all text-left ${
										selectedSection === s.code ? "border-emerald-600 bg-emerald-50" : "border-gray-100 hover:border-gray-200"
									}`}
								>
									<span className="block text-xs font-bold uppercase text-gray-400 mb-1">{s.code}</span>
									<span className="block text-sm font-bold text-gray-700 leading-tight">{s.title.split(" ")[0]}</span>
								</button>
							))}
						</div>

						<button
							onClick={() => setStep(2)}
							className="w-full bg-emerald-600 text-white py-4 rounded-2xl font-bold hover:bg-emerald-700 transition-all shadow-lg"
						>
							Continue
						</button>
					</div>
				)}

				{step === 2 && (
					<div className="animate-fade-in">
						<div className="w-16 h-16 bg-emerald-100 rounded-2xl flex items-center justify-center mb-6 mx-auto">
							<span className="text-3xl">⚡</span>
						</div>
						<h1 className="text-2xl font-bold text-center text-gray-900 mb-2">Set Your Pace</h1>
						<p className="text-gray-500 text-center mb-8">How many practice questions do you want to target each day?</p>
						
						<div className="space-y-3 mb-8">
							{[10, 20, 50].map(n => (
								<button
									key={n}
									onClick={() => setGoal(n)}
									className={`w-full p-4 rounded-xl border-2 transition-all flex items-center justify-between ${
										goal === n ? "border-emerald-600 bg-emerald-50" : "border-gray-100 hover:border-gray-200"
									}`}
								>
									<span className="font-bold text-gray-700">{n} Questions</span>
									<span className="text-xs text-gray-400">{n === 10 ? "Casual" : n === 20 ? "Steady" : "Slayer Mode"}</span>
								</button>
							))}
						</div>

						<div className="flex gap-3">
							<button
								onClick={() => setStep(1)}
								className="flex-1 border border-gray-200 text-gray-500 py-4 rounded-2xl font-bold hover:bg-gray-50 transition-all"
							>
								Back
							</button>
							<button
								onClick={() => setStep(3)}
								className="flex-2 bg-emerald-600 text-white py-4 px-8 rounded-2xl font-bold hover:bg-emerald-700 transition-all shadow-lg"
							>
								Almost Done
							</button>
						</div>
					</div>
				)}

				{step === 3 && (
					<div className="animate-fade-in">
						<div className="w-16 h-16 bg-emerald-100 rounded-2xl flex items-center justify-center mb-6 mx-auto text-3xl">
							🚀
						</div>
						<h1 className="text-2xl font-bold text-center text-gray-900 mb-2">You&apos;re Ready!</h1>
						<p className="text-gray-500 text-center mb-8">We&apos;ve customized your dashboard for {selectedSection.toUpperCase()}. Your path to passing starts now.</p>
						
						<div className="bg-gray-50 rounded-2xl p-6 mb-8 border border-gray-100">
							<div className="flex items-center gap-4 mb-4">
								<div className="w-10 h-10 bg-white rounded-lg flex items-center justify-center shadow-sm">📚</div>
								<div>
									<p className="text-xs text-gray-400 font-bold uppercase tracking-wider">Exam</p>
									<p className="text-sm font-bold text-gray-700">{selectedSection.toUpperCase()}</p>
								</div>
							</div>
							<div className="flex items-center gap-4">
								<div className="w-10 h-10 bg-white rounded-lg flex items-center justify-center shadow-sm">🎯</div>
								<div>
									<p className="text-xs text-gray-400 font-bold uppercase tracking-wider">Daily Goal</p>
									<p className="text-sm font-bold text-gray-700">{goal} Questions</p>
								</div>
							</div>
						</div>

						<button
							onClick={handleComplete}
							disabled={loading}
							className="w-full bg-emerald-600 text-white py-4 rounded-2xl font-bold hover:bg-emerald-700 transition-all shadow-lg disabled:opacity-50"
						>
							{loading ? "Preparing Dashboard..." : "Enter Dashboard"}
						</button>
					</div>
				)}
			</div>
		</div>
	);
}
