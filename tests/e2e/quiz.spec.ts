import { expect, test } from "@playwright/test";

test.describe
	.serial("Quiz Flow — Authenticated", () => {
		test("quiz config page loads with Start Quiz button", async ({ page }) => {
			await page.goto("/sections/aud/quizzes");
			await expect(page.locator("h1")).toContainText(
				"Auditing and Attestation",
			);
			await expect(
				page.getByRole("button", { name: /start quiz/i }),
			).toBeVisible();
		});

		test("starting quiz transitions to active state with Question 1", async ({
			page,
		}) => {
			await page.goto("/sections/aud/quizzes");
			await page.getByRole("button", { name: /start quiz/i }).click();

			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});
		});

		test("selecting an answer enables Next button", async ({ page }) => {
			await page.goto("/sections/aud/quizzes");
			await page.getByRole("button", { name: /start quiz/i }).click();

			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			// Select the first choice
			await page.getByTestId("choice-A").click();

			// Next button should be available and enabled
			const nextButton = page.getByRole("button", {
				name: "Next",
				exact: true,
			});
			await expect(nextButton).toBeVisible();
			await expect(nextButton).toBeEnabled();
		});

		test("Previous button disabled on first question", async ({ page }) => {
			await page.goto("/sections/aud/quizzes");
			await page.getByRole("button", { name: /start quiz/i }).click();

			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			// Previous button should be disabled on Q1
			const prevButton = page.getByRole("button", { name: /previous/i });
			await expect(prevButton).toBeVisible();
			await expect(prevButton).toBeDisabled();
		});

		test("progress bar updates as questions are answered", async ({ page }) => {
			await page.goto("/sections/aud/quizzes");
			await page.getByRole("button", { name: /start quiz/i }).click();

			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			// Get initial progress bar width
			const progressBar = page.locator(".bg-emerald-500.h-2");
			const initialWidth = await progressBar.getAttribute("style");

			// Answer and go to next question
			await page.getByTestId("choice-A").click();
			await page.getByRole("button", { name: "Next", exact: true }).click();

			await expect(page.locator("text=Question 2 of")).toBeVisible();

			// Progress bar should have advanced
			const newWidth = await progressBar.getAttribute("style");
			expect(newWidth).not.toBe(initialWidth);
		});

		test("full quiz flow: answer questions, submit, and see results", async ({
			page,
		}) => {
			await page.goto("/sections/aud/quizzes");
			await page.getByRole("button", { name: /start quiz/i }).click();

			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			// Answer all questions by selecting A and clicking Next
			const totalText = await page.locator("text=Question 1 of").textContent();
			const total = parseInt(totalText?.match(/of (\d+)/)?.[1] ?? "10");

			for (let i = 0; i < total; i++) {
				await page.getByTestId("choice-A").click();

				if (i < total - 1) {
					await page.getByRole("button", { name: "Next", exact: true }).click();
					await expect(page.locator(`text=Question ${i + 2} of`)).toBeVisible();
				}
			}

			// Submit the quiz (last question shows Submit instead of Next)
			await page.getByRole("button", { name: /submit quiz/i }).click();

			// Verify results page
			await expect(page.locator("text=/\\d+ of \\d+ correct/")).toBeVisible({
				timeout: 10_000,
			});
		});

		test("results show per-question review", async ({ page }) => {
			// Start a fresh quiz to test results display
			await page.goto("/sections/aud/quizzes");
			await page.getByRole("button", { name: /start quiz/i }).click();

			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			const totalText = await page.locator("text=Question 1 of").textContent();
			const total = parseInt(totalText?.match(/of (\d+)/)?.[1] ?? "10");

			for (let i = 0; i < total; i++) {
				await page.getByTestId("choice-A").click();
				if (i < total - 1) {
					await page.getByRole("button", { name: "Next", exact: true }).click();
				}
			}

			await page.getByRole("button", { name: /submit quiz/i }).click();

			await expect(page.locator("text=/\\d+ of \\d+ correct/")).toBeVisible({
				timeout: 10_000,
			});

			// Should have question review heading and review items
			await expect(page.getByText("Question Review")).toBeVisible();
			// Review items are expandable buttons showing "1.", "2.", etc.
			await expect(
				page.locator("button", { hasText: "1." }).first(),
			).toBeVisible({
				timeout: 5_000,
			});
		});

		test("Try Again returns to quiz config", async ({ page }) => {
			await page.goto("/sections/aud/quizzes");
			await page.getByRole("button", { name: /start quiz/i }).click();

			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			const totalText = await page.locator("text=Question 1 of").textContent();
			const total = parseInt(totalText?.match(/of (\d+)/)?.[1] ?? "10");

			for (let i = 0; i < total; i++) {
				await page.getByTestId("choice-A").click();
				if (i < total - 1) {
					await page.getByRole("button", { name: "Next", exact: true }).click();
				}
			}

			await page.getByRole("button", { name: /submit quiz/i }).click();

			await expect(page.locator("text=/\\d+ of \\d+ correct/")).toBeVisible({
				timeout: 10_000,
			});

			// Click Try Again
			const tryAgain = page
				.getByRole("button", { name: /try again/i })
				.or(page.getByRole("link", { name: /try again/i }));
			await tryAgain.click();

			// Should be back at quiz config
			await expect(
				page.getByRole("button", { name: /start quiz/i }),
			).toBeVisible({ timeout: 10_000 });
		});
	});
