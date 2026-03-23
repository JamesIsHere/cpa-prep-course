"use client";

import { useRouter } from "next/navigation";

export default function GateButtons() {
	const router = useRouter();

	function chooseStudyMode() {
		document.cookie = "admin_mode=study; path=/; max-age=86400; SameSite=Lax";
		router.push("/dashboard");
	}

	return (
		<div className="space-y-4">
			<button
				type="button"
				onClick={() => router.push("/admin")}
				className="block w-full border-2 border-gray-200 rounded-2xl p-6 hover:border-emerald-400 hover:bg-emerald-50/50 transition-all group text-left"
			>
				<div className="flex items-center gap-4">
					<span className="text-3xl">&#128269;</span>
					<div>
						<p className="text-lg font-bold text-gray-900 group-hover:text-emerald-700 transition-colors">
							Review Questions
						</p>
						<p className="text-sm text-gray-500">
							Admin hub — review, flag, browse, track progress
						</p>
					</div>
				</div>
			</button>

			<button
				type="button"
				onClick={chooseStudyMode}
				className="block w-full border-2 border-gray-200 rounded-2xl p-6 hover:border-blue-400 hover:bg-blue-50/50 transition-all group text-left"
			>
				<div className="flex items-center gap-4">
					<span className="text-3xl">&#127891;</span>
					<div>
						<p className="text-lg font-bold text-gray-900 group-hover:text-blue-700 transition-colors">
							Study Mode
						</p>
						<p className="text-sm text-gray-500">
							See what users see — dashboard, lessons, quizzes
						</p>
					</div>
				</div>
			</button>
		</div>
	);
}
