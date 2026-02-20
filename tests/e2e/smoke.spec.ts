import { expect, test } from "@playwright/test";

test.describe("Public Pages — Smoke Tests", () => {
	test("homepage loads with hero, features, sections, and pricing", async ({
		page,
	}) => {
		await page.goto("/");

		// Hero
		await expect(page.locator("h1")).toContainText("Pass the CPA Exam");
		await expect(
			page.getByRole("link", { name: "Start Learning" }),
		).toBeVisible();

		// Features section (use headings to avoid matching multiple elements)
		await expect(
			page.getByRole("heading", { name: "Comprehensive Lessons" }),
		).toBeVisible();
		await expect(
			page.getByRole("heading", { name: "Practice Quizzes" }),
		).toBeVisible();
		await expect(
			page.getByRole("heading", { name: "Timed Exams" }),
		).toBeVisible();
		await expect(
			page.getByRole("heading", { name: "Study Frameworks" }),
		).toBeVisible();

		// Section cards
		await expect(
			page.getByRole("heading", { name: "Auditing and Attestation" }),
		).toBeVisible();
		await expect(
			page.getByRole("heading", {
				name: "Financial Accounting and Reporting",
			}),
		).toBeVisible();
		await expect(
			page.getByRole("heading", { name: "Taxation and Regulation" }),
		).toBeVisible();

		// Pricing
		await expect(page.locator("text=$9.99")).toBeVisible();
		await expect(
			page.getByRole("link", { name: "Start Free Trial" }),
		).toBeVisible();
	});

	test("sections page lists all three CPA sections", async ({ page }) => {
		await page.goto("/sections");

		await expect(page.locator("h1")).toContainText("CPA Sections");
		await expect(
			page.getByRole("heading", { name: "Auditing and Attestation" }),
		).toBeVisible();
		await expect(
			page.getByRole("heading", {
				name: "Financial Accounting and Reporting",
			}),
		).toBeVisible();
		await expect(
			page.getByRole("heading", { name: "Taxation and Regulation" }),
		).toBeVisible();
	});

	test("section detail page loads with lessons list", async ({ page }) => {
		await page.goto("/sections/aud");

		await expect(page.locator("h1")).toContainText("Auditing and Attestation");
		// Should have lesson links
		await expect(page.locator('a[href*="/lessons/"]').first()).toBeVisible();
	});

	test("free intro lesson loads MDX content", async ({ page }) => {
		await page.goto("/sections/aud/lessons/01-intro");

		// Should render lesson content (not a paywall)
		await expect(page.locator("article")).toBeVisible({ timeout: 10_000 });
	});

	test("login page renders form", async ({ page }) => {
		await page.goto("/login");

		await expect(page.locator("text=Welcome back")).toBeVisible();
		await expect(page.locator('input[type="email"]')).toBeVisible();
		await expect(page.locator('input[type="password"]')).toBeVisible();
	});

	test("signup page renders form", async ({ page }) => {
		await page.goto("/signup");

		await expect(page.locator("text=Create your account")).toBeVisible();
		await expect(page.locator('input[type="email"]')).toBeVisible();
		await expect(page.locator('input[type="password"]')).toBeVisible();
	});

	test("404 page renders for unknown routes", async ({ page }) => {
		await page.goto("/this-page-does-not-exist");

		await expect(page.locator("text=404")).toBeVisible();
	});

	test("navigation links are present", async ({ page }) => {
		await page.goto("/");

		await expect(page.getByRole("link", { name: "Sections" })).toBeVisible();
		await expect(page.getByRole("link", { name: "Log In" })).toBeVisible();
	});
});

test.describe("Auth-Gated Pages — Redirect Tests", () => {
	test("dashboard redirects unauthenticated users to login", async ({
		page,
	}) => {
		await page.goto("/dashboard");

		// Should redirect to login
		await page.waitForURL("**/login**", { timeout: 10_000 });
		await expect(page.locator('input[type="email"]')).toBeVisible();
	});

	test("account redirects unauthenticated users to login", async ({ page }) => {
		await page.goto("/account");

		await page.waitForURL("**/login**", { timeout: 10_000 });
		await expect(page.locator('input[type="email"]')).toBeVisible();
	});
});

test.describe("Cross-Page Navigation", () => {
	test("homepage → sections → section detail → free lesson", async ({
		page,
	}) => {
		await page.goto("/");

		// Click "Start Learning" → sections page
		await page.getByRole("link", { name: "Start Learning" }).click();
		await expect(page).toHaveURL(/\/sections/);

		// Click first section card
		await page.locator('a[href="/sections/aud"]').click();
		await expect(page).toHaveURL(/\/sections\/aud/);
		await expect(page.locator("h1")).toContainText("Auditing and Attestation");

		// Click first lesson link
		await page.locator('a[href*="/lessons/01-intro"]').click();
		await expect(page).toHaveURL(/\/lessons\/01-intro/);
		await expect(page.locator("article")).toBeVisible({ timeout: 10_000 });
	});
});
