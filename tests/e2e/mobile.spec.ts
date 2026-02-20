import { expect, test } from "@playwright/test";

test.describe("Mobile Viewport", () => {
	test.use({ viewport: { width: 375, height: 812 } });

	test("hamburger menu visible at mobile width", async ({ page }) => {
		await page.goto("/");

		// Hamburger button should be visible
		const menuButton = page.getByRole("button", { name: "Toggle menu" });
		await expect(menuButton).toBeVisible();

		// Desktop nav links should be hidden
		const desktopNav = page.locator("nav .hidden.sm\\:flex");
		await expect(desktopNav).not.toBeVisible();
	});

	test("menu opens and closes correctly", async ({ page }) => {
		await page.goto("/");

		const menuButton = page.getByRole("button", { name: "Toggle menu" });
		await menuButton.click();

		// Mobile menu should be visible with links
		await expect(
			page.locator("nav").getByRole("link", { name: "Sections" }),
		).toBeVisible();

		// Close menu
		await menuButton.click();

		// Mobile dropdown should collapse — check the mobile menu container is gone
		const mobileMenu = page.locator("nav .sm\\:hidden.border-t");
		await expect(mobileMenu).not.toBeVisible();
	});

	test("navigation works at mobile viewport", async ({ page }) => {
		await page.goto("/");

		// Open mobile menu
		await page.getByRole("button", { name: "Toggle menu" }).click();

		// Click Sections link
		await page.locator("nav").getByRole("link", { name: "Sections" }).click();

		// Should navigate to sections page
		await expect(page).toHaveURL(/\/sections/);
		await expect(page.locator("h1")).toContainText("CPA Sections");
	});

	test("key pages render without horizontal overflow", async ({ page }) => {
		const pages = ["/", "/sections", "/login", "/signup", "/contact"];

		for (const path of pages) {
			await page.goto(path);

			// Check that body doesn't overflow horizontally
			const bodyWidth = await page.evaluate(() => document.body.scrollWidth);
			const viewportWidth = await page.evaluate(() => window.innerWidth);

			// Allow 1px tolerance for rounding
			expect(bodyWidth).toBeLessThanOrEqual(viewportWidth + 1);
		}
	});

	test("homepage hero and pricing visible on mobile", async ({ page }) => {
		await page.goto("/");

		await expect(page.locator("h1")).toContainText("Pass the CPA Exam");
		await expect(page.getByText("$9.99", { exact: true })).toBeVisible();
	});
});
