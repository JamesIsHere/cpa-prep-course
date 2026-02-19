"use client";

import { useEffect, useState } from "react";

interface ExamTimerProps {
	startedAt: string;
	timeLimitMinutes: number;
	onTimeExpired: () => void;
}

export default function ExamTimer({
	startedAt,
	timeLimitMinutes,
	onTimeExpired,
}: ExamTimerProps) {
	const [remainingSeconds, setRemainingSeconds] = useState(() => {
		const elapsed = (Date.now() - new Date(startedAt).getTime()) / 1000;
		return Math.max(0, timeLimitMinutes * 60 - elapsed);
	});

	useEffect(() => {
		const interval = setInterval(() => {
			const elapsed = (Date.now() - new Date(startedAt).getTime()) / 1000;
			const remaining = Math.max(0, timeLimitMinutes * 60 - elapsed);
			setRemainingSeconds(remaining);

			if (remaining <= 0) {
				clearInterval(interval);
				onTimeExpired();
			}
		}, 1000);

		return () => clearInterval(interval);
	}, [startedAt, timeLimitMinutes, onTimeExpired]);

	const hours = Math.floor(remainingSeconds / 3600);
	const minutes = Math.floor((remainingSeconds % 3600) / 60);
	const seconds = Math.floor(remainingSeconds % 60);

	const pad = (n: number) => n.toString().padStart(2, "0");

	let colorClass = "text-gray-700";
	if (remainingSeconds < 5 * 60) {
		colorClass = "text-red-600";
	} else if (remainingSeconds < 30 * 60) {
		colorClass = "text-amber-600";
	}

	return (
		<div className={`font-mono text-lg font-bold ${colorClass} tabular-nums`}>
			{pad(hours)}:{pad(minutes)}:{pad(seconds)}
		</div>
	);
}
