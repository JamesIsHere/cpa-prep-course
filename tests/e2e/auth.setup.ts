import { expect, test as setup } from "@playwright/test";

const authFile = "tests/e2e/.auth/user.json";

setup("authenticate test user", async ({ page }) => {
	const email = process.env.E2E_TEST_EMAIL;
	const password = process.env.E2E_TEST_PASSWORD;

	if (!email || !password) {
		throw new Error(
			"E2E_TEST_EMAIL and E2E_TEST_PASSWORD must be set to run authenticated tests",
		);
	}

	await page.goto("/login");
	await expect(page.locator("text=Welcome back")).toBeVisible();

	await page.fill('input[type="email"]', email);
	await page.fill('input[type="password"]', password);
	await page.getByRole("button", { name: "Log In" }).click();

	// Wait for redirect to dashboard
	await page.waitForURL("**/dashboard", { timeout: 15_000 });
	await expect(page.locator("h1")).toContainText("Dashboard");

	// Save auth state
	await page.context().storageState({ path: authFile });
});
