import { expect, test } from "@playwright/test";

test.describe
	.serial("Practice Exam Flow — Authenticated", () => {
		let examUrl: string;

		test("exam config page loads with section selector", async ({ page }) => {
			await page.goto("/exam");
			await expect(page.locator("h1")).toContainText("Practice Exam");

			// Section buttons should be visible
			await expect(page.getByRole("button", { name: "AUD" })).toBeVisible();
			await expect(page.getByRole("button", { name: "FAR" })).toBeVisible();
			await expect(page.getByRole("button", { name: "REG" })).toBeVisible();
		});

		test("starting exam navigates to exam page", async ({ page }) => {
			await page.goto("/exam");

			// If there's an in-progress exam, resume it instead
			const resumeLink = page.getByRole("link", { name: "Resume Exam" });
			if (await resumeLink.isVisible({ timeout: 2_000 }).catch(() => false)) {
				await resumeLink.click();
			} else {
				await page.getByRole("button", { name: "AUD" }).click();
				await page.getByRole("button", { name: "Start Exam" }).click();
			}

			await page.waitForURL("**/exam/*", { timeout: 15_000 });
			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			// Save the exam URL for subsequent tests
			examUrl = page.url();
		});

		test("timer visible and counting", async ({ page }) => {
			await page.goto(examUrl);

			// Timer should be visible (font-mono class)
			const timer = page.locator(".font-mono");
			await expect(timer).toBeVisible({ timeout: 10_000 });

			// Timer should show a time format (HH:MM:SS)
			await expect(timer).toHaveText(/\d{2}:\d{2}:\d{2}/);
		});

		test("answering marks question in nav grid", async ({ page }) => {
			await page.goto(examUrl);
			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			// Answer a question
			await page.locator('button:has-text("A")').first().click();

			// Nav grid cell for Q1 should show answered state (emerald bg)
			const navGrid = page.locator(".grid");
			const firstCell = navGrid.locator("button").first();
			await expect(firstCell).toHaveClass(/emerald/);
		});

		test("flagging shows amber indicator", async ({ page }) => {
			await page.goto(examUrl);
			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			// Flag the current question
			await page.getByRole("button", { name: /flag/i }).click();

			// Nav grid should show amber indicator on Q1
			const navGrid = page.locator(".grid");
			const flagIndicator = navGrid.locator(".bg-amber-500").first();
			await expect(flagIndicator).toBeVisible();
		});

		test("nav grid cell click navigates to question", async ({ page }) => {
			await page.goto(examUrl);
			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			// Answer Q1 and go to Q2
			await page.locator('button:has-text("A")').first().click();
			await page.locator('button:has-text("Next"):not([disabled])').click();
			await expect(page.locator("text=Question 2 of")).toBeVisible();

			// Click Q1 in nav grid to go back
			const navGrid = page.locator(".grid");
			const firstCell = navGrid.locator("button").first();
			await firstCell.click();

			await expect(page.locator("text=Question 1 of")).toBeVisible();
		});

		test("full exam flow: answer, submit, see results", async ({ page }) => {
			await page.goto(examUrl);
			await expect(page.locator("text=Question 1 of")).toBeVisible({
				timeout: 10_000,
			});

			// Answer first 3 questions
			for (let i = 0; i < 3; i++) {
				await page.locator('button:has-text("A")').first().click();

				if (i < 2) {
					const nextButton = page.locator(
						'button:has-text("Next"):not([disabled])',
					);
					if (await nextButton.isVisible()) {
						await nextButton.click();
					}
				}
			}

			// Submit the exam
			await page.getByRole("button", { name: "Submit Exam" }).click();

			// Verify results page shows
			await expect(page.locator("text=Score by Topic")).toBeVisible({
				timeout: 10_000,
			});
			await expect(page.locator("text=Question Review")).toBeVisible();
		});

		test("results have Take Another Exam and Back to Dashboard links", async ({
			page,
		}) => {
			// The previous test submitted the exam, so visit the same URL to see results
			await page.goto(examUrl);

			// Results should still be visible (or the exam page shows completed state)
			await expect(page.locator("text=Score by Topic")).toBeVisible({
				timeout: 10_000,
			});

			// Action links should be present
			await expect(
				page.getByRole("link", { name: "Take Another Exam" }),
			).toBeVisible();
			await expect(
				page.getByRole("link", { name: "Back to Dashboard" }),
			).toBeVisible();
		});
	});
