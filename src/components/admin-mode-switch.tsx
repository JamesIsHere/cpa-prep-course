"use client";

export default function AdminModeSwitch() {
	function switchToReview() {
		document.cookie = "admin_mode=; path=/; max-age=0";
		window.location.href = "/admin-gate";
	}

	return (
		<button
			type="button"
			onClick={switchToReview}
			className="border border-gray-200 rounded-xl p-4 hover:border-emerald-300 hover:bg-emerald-50/50 transition-colors flex items-center gap-3 w-full text-left"
		>
			<span className="text-lg">&#128269;</span>
			<div>
				<p className="font-medium text-gray-900 text-sm">Switch to Review Mode</p>
				<p className="text-xs text-gray-500">Go back to the admin gate and choose review</p>
			</div>
		</button>
	);
}
