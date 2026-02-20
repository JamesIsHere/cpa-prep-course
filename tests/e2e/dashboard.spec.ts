import { expect, test } from "@playwright/test";

test.describe("Dashboard — Authenticated", () => {
	test("dashboard loads with welcome message", async ({ page }) => {
		await page.goto("/dashboard");
		await expect(page.locator("h1")).toContainText("Dashboard");
		await expect(page.locator("text=Welcome back")).toBeVisible();
	});

	test("all 6 section cards displayed", async ({ page }) => {
		await page.goto("/dashboard");
		await expect(page.locator("h1")).toContainText("Dashboard");

		// "Your Sections" heading
		await expect(page.locator("text=Your Sections")).toBeVisible();

		// All 6 section codes should be visible
		const sectionCodes = ["AUD", "FAR", "REG", "BAR", "ISC", "TCP"];
		for (const code of sectionCodes) {
			await expect(page.locator(`text=${code}`).first()).toBeVisible();
		}
	});

	test("section cards link to section detail pages", async ({ page }) => {
		await page.goto("/dashboard");
		await expect(page.locator("h1")).toContainText("Dashboard");

		// Click the first section card link
		const sectionLink = page.locator('a[href*="/sections/"]').first();
		await expect(sectionLink).toBeVisible();
		await sectionLink.click();

		// Should navigate to a section detail page
		await expect(page).toHaveURL(/\/sections\//);
	});
});
