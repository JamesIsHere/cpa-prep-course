import { expect, test } from "@playwright/test";

// This test requires a running dev server with a logged-in user who has an active subscription.
// It exercises the full quiz flow: configure → start → answer questions → submit → verify results.
// Run with: E2E_ENABLED=1 npm run test:e2e

test.describe("Quiz Flow", () => {
	test.skip(
		!process.env.E2E_ENABLED,
		"Set E2E_ENABLED=1 to run (requires auth session)",
	);

	test("start quiz, answer questions, submit, and see results", async ({
		page,
	}) => {
		// Navigate to AUD quiz page
		await page.goto("/sections/aud/quizzes");
		await expect(page.locator("h1")).toContainText("Auditing and Attestation");

		// Start a quiz (click Start Quiz button)
		await page.getByRole("button", { name: /start quiz/i }).click();

		// Wait for first question to load
		await expect(page.locator("text=Question 1 of")).toBeVisible({
			timeout: 10_000,
		});

		// Answer 3 questions by selecting the first choice each time
		for (let i = 0; i < 3; i++) {
			// Click first radio/button choice
			const choices = page.locator('[role="radio"], [data-choice]').first();
			await choices.click();

			// Click Next if not the last question we want to answer
			if (i < 2) {
				const nextButton = page.getByRole("button", { name: /next/i });
				if (await nextButton.isVisible()) {
					await nextButton.click();
				}
			}
		}

		// Submit the quiz
		await page.getByRole("button", { name: /submit/i }).click();

		// Verify results page
		await expect(page.locator("text=/\\d+ out of \\d+/")).toBeVisible({
			timeout: 10_000,
		});
	});
});
