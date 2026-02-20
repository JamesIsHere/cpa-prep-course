import { cleanup, render, screen } from "@testing-library/react";
import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";
import ExamTimer from "@/components/exam-timer";

describe("ExamTimer", () => {
	beforeEach(() => {
		vi.useFakeTimers();
	});

	afterEach(() => {
		vi.useRealTimers();
		cleanup();
	});

	it("renders formatted time HH:MM:SS", () => {
		const now = new Date().toISOString();
		render(
			<ExamTimer
				startedAt={now}
				timeLimitMinutes={60}
				onTimeExpired={vi.fn()}
			/>,
		);

		// Should show roughly 01:00:00
		expect(screen.getByText(/\d{2}:\d{2}:\d{2}/)).toBeTruthy();
	});

	it("displays gray color when plenty of time remains", () => {
		const now = new Date().toISOString();
		const { container } = render(
			<ExamTimer
				startedAt={now}
				timeLimitMinutes={60}
				onTimeExpired={vi.fn()}
			/>,
		);

		const timer = container.querySelector(".font-mono");
		expect(timer?.className).toContain("text-gray-700");
	});

	it("displays amber color when under 30 minutes remain", () => {
		// Start 35 minutes ago with 60 min limit → 25 min remaining
		const startedAt = new Date(Date.now() - 35 * 60 * 1000).toISOString();
		const { container } = render(
			<ExamTimer
				startedAt={startedAt}
				timeLimitMinutes={60}
				onTimeExpired={vi.fn()}
			/>,
		);

		const timer = container.querySelector(".font-mono");
		expect(timer?.className).toContain("text-amber-600");
	});

	it("displays red color when under 5 minutes remain", () => {
		// Start 57 minutes ago with 60 min limit → 3 min remaining
		const startedAt = new Date(Date.now() - 57 * 60 * 1000).toISOString();
		const { container } = render(
			<ExamTimer
				startedAt={startedAt}
				timeLimitMinutes={60}
				onTimeExpired={vi.fn()}
			/>,
		);

		const timer = container.querySelector(".font-mono");
		expect(timer?.className).toContain("text-red-600");
	});

	it("calls onTimeExpired when timer reaches zero", () => {
		const onTimeExpired = vi.fn();
		// Start 59 minutes and 59 seconds ago with 60 min limit
		const startedAt = new Date(
			Date.now() - (60 * 60 * 1000 - 1000),
		).toISOString();

		render(
			<ExamTimer
				startedAt={startedAt}
				timeLimitMinutes={60}
				onTimeExpired={onTimeExpired}
			/>,
		);

		// Advance past the remaining time
		vi.advanceTimersByTime(2000);

		expect(onTimeExpired).toHaveBeenCalled();
	});

	it("shows 00:00:00 when time has already expired", () => {
		// Start 2 hours ago with 60 min limit → already expired
		const startedAt = new Date(Date.now() - 2 * 60 * 60 * 1000).toISOString();

		render(
			<ExamTimer
				startedAt={startedAt}
				timeLimitMinutes={60}
				onTimeExpired={vi.fn()}
			/>,
		);

		expect(screen.getByText("00:00:00")).toBeTruthy();
	});
});
