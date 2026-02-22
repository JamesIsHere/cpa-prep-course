import { cleanup, fireEvent, render, screen } from "@testing-library/react";
import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

// Mock next/navigation
vi.mock("next/navigation", () => ({
	usePathname: () => "/sections/aud/lessons/01-intro",
}));

// Import after mocking
import FeedbackWidget from "@/components/feedback-widget";

describe("FeedbackWidget", () => {
	beforeEach(() => {
		vi.restoreAllMocks();
	});

	afterEach(() => {
		cleanup();
	});

	it("renders collapsed as 'Report an issue' button", () => {
		render(<FeedbackWidget />);

		expect(screen.getByText("Report an issue")).toBeTruthy();
		// Textarea should not be visible when collapsed
		expect(screen.queryByRole("textbox")).toBeNull();
	});

	it("expands when 'Report an issue' is clicked", () => {
		render(<FeedbackWidget />);

		fireEvent.click(screen.getByText("Report an issue"));

		// Form elements should now be visible
		expect(screen.getByText("Content issue")).toBeTruthy();
		expect(screen.getByText("Bug")).toBeTruthy();
		expect(screen.getByText("Suggestion")).toBeTruthy();
		expect(screen.getByPlaceholderText("Describe the issue...")).toBeTruthy();
	});

	it("shows Close button when expanded", () => {
		render(<FeedbackWidget />);
		fireEvent.click(screen.getByText("Report an issue"));

		expect(screen.getByText("Close")).toBeTruthy();
	});

	it("collapses when Close is clicked", () => {
		render(<FeedbackWidget />);
		fireEvent.click(screen.getByText("Report an issue"));

		// Verify expanded
		expect(screen.getByPlaceholderText("Describe the issue...")).toBeTruthy();

		// Close
		fireEvent.click(screen.getByText("Close"));

		// Should be collapsed again
		expect(screen.queryByPlaceholderText("Describe the issue...")).toBeNull();
	});

	it("category toggle switches active category", () => {
		render(<FeedbackWidget />);
		fireEvent.click(screen.getByText("Report an issue"));

		// "Content issue" is default selected (emerald)
		const contentButton = screen.getByText("Content issue");
		expect(contentButton.className).toContain("emerald");

		// Click "Bug"
		const bugButton = screen.getByText("Bug");
		fireEvent.click(bugButton);

		// "Bug" should now be active
		expect(bugButton.className).toContain("emerald");
	});

	it("submit button disabled when message is empty", () => {
		render(<FeedbackWidget />);
		fireEvent.click(screen.getByText("Report an issue"));

		const submitButton = screen.getByText("Submit");
		expect(submitButton).toBeDisabled();
	});

	it("submit button enabled when message has content", () => {
		render(<FeedbackWidget />);
		fireEvent.click(screen.getByText("Report an issue"));

		fireEvent.change(screen.getByPlaceholderText("Describe the issue..."), {
			target: { value: "There is a typo in the first paragraph." },
		});

		const submitButton = screen.getByText("Submit");
		expect(submitButton).not.toBeDisabled();
	});

	it("submits with mock fetch and shows success", async () => {
		const fetchMock = vi.fn().mockResolvedValue({
			ok: true,
			json: () => Promise.resolve({}),
		});
		global.fetch = fetchMock;

		render(<FeedbackWidget />);
		fireEvent.click(screen.getByText("Report an issue"));

		fireEvent.change(screen.getByPlaceholderText("Describe the issue..."), {
			target: { value: "Test feedback message" },
		});

		fireEvent.click(screen.getByText("Submit"));

		// Verify fetch was called with correct payload
		expect(fetchMock).toHaveBeenCalledWith("/api/feedback", {
			method: "POST",
			headers: { "Content-Type": "application/json" },
			body: JSON.stringify({
				pageUrl: "/sections/aud/lessons/01-intro",
				category: "content_issue",
				message: "Test feedback message",
			}),
		});

		// Wait for success message
		const successMsg = await screen.findByText("Thanks for the feedback!");
		expect(successMsg).toBeTruthy();
	});

	it("shows error message on fetch failure", async () => {
		const fetchMock = vi.fn().mockResolvedValue({ ok: false });
		global.fetch = fetchMock;

		render(<FeedbackWidget />);
		fireEvent.click(screen.getByText("Report an issue"));

		fireEvent.change(screen.getByPlaceholderText("Describe the issue..."), {
			target: { value: "Test feedback message" },
		});

		fireEvent.click(screen.getByText("Submit"));

		const errorMsg = await screen.findByText(
			"Failed to send. Please try again.",
		);
		expect(errorMsg).toBeTruthy();
	});

	it("displays current page URL", () => {
		render(<FeedbackWidget />);
		fireEvent.click(screen.getByText("Report an issue"));

		expect(
			screen.getByText("Page: /sections/aud/lessons/01-intro"),
		).toBeTruthy();
	});
});
