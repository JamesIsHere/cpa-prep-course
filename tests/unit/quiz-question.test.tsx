import { cleanup, fireEvent, render, screen } from "@testing-library/react";
import { afterEach, describe, expect, it, vi } from "vitest";
import QuizQuestionCard from "@/components/quiz-question";

describe("QuizQuestionCard", () => {
	afterEach(() => {
		cleanup();
	});

	const defaultQuestion = {
		id: 1,
		stem: "What is the primary purpose of an audit?",
		choices: [
			"To detect fraud",
			"To express an opinion on financial statements",
			"To prepare tax returns",
			"To evaluate management performance",
		],
	};

	const defaultProps = {
		question: defaultQuestion,
		questionNumber: 1,
		totalQuestions: 10,
		selectedIndex: null,
		onSelect: vi.fn(),
	};

	it("renders the question stem", () => {
		render(<QuizQuestionCard {...defaultProps} />);

		expect(
			screen.getByText("What is the primary purpose of an audit?"),
		).toBeTruthy();
	});

	it("renders all choice options with letters", () => {
		render(<QuizQuestionCard {...defaultProps} />);

		expect(screen.getByText("A")).toBeTruthy();
		expect(screen.getByText("B")).toBeTruthy();
		expect(screen.getByText("C")).toBeTruthy();
		expect(screen.getByText("D")).toBeTruthy();

		expect(screen.getByText("To detect fraud")).toBeTruthy();
		expect(
			screen.getByText("To express an opinion on financial statements"),
		).toBeTruthy();
	});

	it("shows question number and total", () => {
		render(<QuizQuestionCard {...defaultProps} />);

		expect(screen.getByText("Question 1 of 10")).toBeTruthy();
	});

	it("renders progress bar", () => {
		const { container } = render(<QuizQuestionCard {...defaultProps} />);

		const progressBar = container.querySelector(".bg-emerald-500");
		expect(progressBar).toBeTruthy();

		// Width should be 10% (1/10)
		expect(progressBar?.getAttribute("style")).toContain("10%");
	});

	it("progress bar updates with question number", () => {
		const { container } = render(
			<QuizQuestionCard {...defaultProps} questionNumber={5} />,
		);

		const progressBar = container.querySelector(".bg-emerald-500");
		// Width should be 50% (5/10)
		expect(progressBar?.getAttribute("style")).toContain("50%");
	});

	it("calls onSelect when a choice is clicked", () => {
		const onSelect = vi.fn();
		render(<QuizQuestionCard {...defaultProps} onSelect={onSelect} />);

		fireEvent.click(screen.getByText("To detect fraud"));
		expect(onSelect).toHaveBeenCalledWith(0);

		fireEvent.click(
			screen.getByText("To express an opinion on financial statements"),
		);
		expect(onSelect).toHaveBeenCalledWith(1);
	});

	it("highlights selected choice with emerald styling", () => {
		const { container } = render(
			<QuizQuestionCard {...defaultProps} selectedIndex={1} />,
		);

		const buttons = container.querySelectorAll("button");
		// Second button (index 1) should have emerald border
		expect(buttons[1].className).toContain("border-emerald-500");
		// First button should not
		expect(buttons[0].className).not.toContain("border-emerald-500");
	});

	it("selected choice letter badge turns emerald", () => {
		const { container } = render(
			<QuizQuestionCard {...defaultProps} selectedIndex={0} />,
		);

		// The "A" letter badge should have emerald background
		const badges = container.querySelectorAll("span.flex-shrink-0");
		expect(badges[0].className).toContain("bg-emerald-500");
		// "B" badge should be gray
		expect(badges[1].className).toContain("bg-gray-100");
	});
});
