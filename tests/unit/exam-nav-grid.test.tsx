import { cleanup, fireEvent, render, screen } from "@testing-library/react";
import { afterEach, describe, expect, it, vi } from "vitest";
import ExamNavGrid from "@/components/exam-nav-grid";

describe("ExamNavGrid", () => {
	afterEach(() => {
		cleanup();
	});

	const defaultProps = {
		totalQuestions: 10,
		currentIndex: 0,
		answeredIds: new Set<number>(),
		flaggedIds: new Set<number>(),
		questionIds: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
		onNavigate: vi.fn(),
	};

	it("renders correct number of cells", () => {
		render(<ExamNavGrid {...defaultProps} />);

		const buttons = screen.getAllByRole("button");
		expect(buttons).toHaveLength(10);
	});

	it("displays cell numbers starting at 1", () => {
		render(<ExamNavGrid {...defaultProps} />);

		expect(screen.getByText("1")).toBeTruthy();
		expect(screen.getByText("10")).toBeTruthy();
	});

	it("highlights current question with ring", () => {
		const { container } = render(
			<ExamNavGrid {...defaultProps} currentIndex={2} />,
		);

		const buttons = container.querySelectorAll("button");
		// Third button (index 2) should have ring class
		expect(buttons[2].className).toContain("ring-2");
		// First button should not
		expect(buttons[0].className).not.toContain("ring-2");
	});

	it("shows answered styling for answered questions", () => {
		const { container } = render(
			<ExamNavGrid {...defaultProps} answeredIds={new Set([1, 3])} />,
		);

		const buttons = container.querySelectorAll("button");
		// Q1 (index 0, id 1) should be emerald
		expect(buttons[0].className).toContain("bg-emerald-100");
		// Q2 (index 1, id 2) should be gray
		expect(buttons[1].className).toContain("bg-gray-100");
		// Q3 (index 2, id 3) should be emerald
		expect(buttons[2].className).toContain("bg-emerald-100");
	});

	it("shows flagged indicator for flagged questions", () => {
		const { container } = render(
			<ExamNavGrid {...defaultProps} flaggedIds={new Set([2])} />,
		);

		// Second button (id 2) should have an amber dot
		const buttons = container.querySelectorAll("button");
		const flagDot = buttons[1].querySelector(".bg-amber-500");
		expect(flagDot).toBeTruthy();

		// First button should not have flag
		const noFlagDot = buttons[0].querySelector(".bg-amber-500");
		expect(noFlagDot).toBeNull();
	});

	it("calls onNavigate with correct index when cell is clicked", () => {
		const onNavigate = vi.fn();
		render(<ExamNavGrid {...defaultProps} onNavigate={onNavigate} />);

		fireEvent.click(screen.getByText("5"));
		expect(onNavigate).toHaveBeenCalledWith(4); // 0-indexed
	});

	it("shows answered count in summary text", () => {
		render(<ExamNavGrid {...defaultProps} answeredIds={new Set([1, 2, 3])} />);

		expect(screen.getByText("3 of 10 answered")).toBeTruthy();
	});

	it("shows flagged count when flags exist", () => {
		render(
			<ExamNavGrid
				{...defaultProps}
				answeredIds={new Set([1])}
				flaggedIds={new Set([2, 3])}
			/>,
		);

		expect(screen.getByText(/1 of 10 answered/)).toBeTruthy();
		expect(screen.getByText(/2 flagged/)).toBeTruthy();
	});

	it("does not show flagged count when no flags", () => {
		render(<ExamNavGrid {...defaultProps} answeredIds={new Set([1])} />);

		expect(screen.queryByText(/flagged/)).toBeNull();
	});
});
