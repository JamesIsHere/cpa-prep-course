import { expect, test } from "@playwright/test";

// This test requires a running dev server with a logged-in user who has an active subscription.
// It exercises the full exam flow: start → answer questions → submit → verify results.
// Run with: npm run test:e2e

test.describe("Practice Exam Flow", () => {
	test.skip(
		!process.env.E2E_ENABLED,
		"Set E2E_ENABLED=1 to run (requires auth session)",
	);

	test("start exam, answer questions, submit, and see results", async ({
		page,
	}) => {
		// Navigate to exam config page
		await page.goto("/exam");
		await expect(page.locator("h1")).toContainText("Practice Exam");

		// Select AUD section (first button should be AUD)
		await page.getByRole("button", { name: "AUD" }).click();

		// Start the exam
		await page.getByRole("button", { name: "Start Exam" }).click();

		// Wait for exam page to load — should see timer and question
		await expect(page.locator('[class*="font-mono"]')).toBeVisible({
			timeout: 10_000,
		});
		await expect(page.locator("text=Question 1 of")).toBeVisible();

		// Answer first 3 questions by clicking the first choice each time
		for (let i = 0; i < 3; i++) {
			// Click first choice (A)
			const choices = page.locator('button:has-text("A")').first();
			await choices.click();

			// If not last question, click Next
			if (i < 2) {
				const nextButton = page.locator(
					'button:has-text("Next"):not([disabled])',
				);
				if (await nextButton.isVisible()) {
					await nextButton.click();
				}
			}
		}

		// Flag a question
		await page.getByRole("button", { name: "Flag" }).click();

		// Submit the exam
		await page.getByRole("button", { name: "Submit Exam" }).click();

		// Verify results page shows
		await expect(page.locator("text=Score by Topic")).toBeVisible({
			timeout: 10_000,
		});
		await expect(page.locator("text=Question Review")).toBeVisible();

		// Verify action buttons
		await expect(
			page.getByRole("link", { name: "Take Another Exam" }),
		).toBeVisible();
		await expect(
			page.getByRole("link", { name: "Back to Dashboard" }),
		).toBeVisible();
	});
});
