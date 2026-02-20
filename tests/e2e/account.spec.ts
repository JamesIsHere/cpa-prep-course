import { expect, test } from "@playwright/test";

test.describe("Account — Authenticated", () => {
	test("account page shows user email", async ({ page }) => {
		await page.goto("/account");
		await expect(page.locator("h1")).toContainText("Account");

		// Email label and value should be visible
		await expect(page.locator("text=Email")).toBeVisible();
		// The email should contain an @ sign
		await expect(page.locator("text=/@/")).toBeVisible();
	});

	test("account page shows subscription status", async ({ page }) => {
		await page.goto("/account");
		await expect(page.locator("h1")).toContainText("Account");

		// Subscription label should be visible
		await expect(page.locator("text=Subscription")).toBeVisible();

		// Status badge should show Active (test user has active subscription)
		await expect(page.locator("text=Active")).toBeVisible();
	});

	test("active subscriber without Stripe ID does not show Manage button", async ({
		page,
	}) => {
		await page.goto("/account");
		await expect(page.locator("h1")).toContainText("Account");

		// Test user has active status but no stripe_customer_id,
		// so Manage Subscription should NOT appear (requires both)
		await expect(
			page.getByRole("button", { name: /manage subscription/i }),
		).not.toBeVisible();
	});
});
