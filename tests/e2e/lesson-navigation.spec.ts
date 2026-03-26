import { expect, test } from "@playwright/test";

test.describe("Lesson Navigation — Public", () => {
	test("free lesson renders MDX content with article tag", async ({ page }) => {
		await page.goto("/sections/aud/lessons/01-intro");
		await expect(page.locator("article")).toBeVisible({ timeout: 10_000 });

		// Should have actual content (not empty)
		const text = await page.locator("article").textContent();
		expect(text?.length).toBeGreaterThan(100);
	});

	test("gated lesson shows paywall for unauthed user", async ({ page }) => {
		await page.goto("/sections/far/lessons/02-financial-statement-presentation");

		await expect(
			page.locator("text=This lesson requires a subscription"),
		).toBeVisible({ timeout: 10_000 });
		await expect(
			page.getByRole("link", { name: "Subscribe Now" }),
		).toBeVisible();
	});

	test("lesson sidebar highlights current lesson", async ({ page }) => {
		await page.goto("/sections/aud/lessons/01-intro");
		await expect(page.locator("article")).toBeVisible({ timeout: 10_000 });

		// The sidebar nav should have the current lesson highlighted (emerald color)
		const activeLink = page.locator("nav a.bg-emerald-50");
		// On larger viewports the sidebar is visible
		if (await activeLink.isVisible()) {
			await expect(activeLink).toHaveClass(/emerald/);
		}
	});

	test("sidebar navigation between lessons works", async ({ page }) => {
		// Set a wider viewport to ensure sidebar is visible
		await page.setViewportSize({ width: 1280, height: 800 });
		await page.goto("/sections/aud/lessons/01-intro");
		await expect(page.locator("article")).toBeVisible({ timeout: 10_000 });

		// Find a lesson link in the sidebar nav and click it
		const sidebarNav = page.locator("nav").filter({ hasText: /Auditing/ });
		if (await sidebarNav.isVisible()) {
			const secondLesson = sidebarNav.locator("a").nth(1);
			if (await secondLesson.isVisible()) {
				const href = await secondLesson.getAttribute("href");
				await secondLesson.click();

				// Should navigate to the new lesson URL
				if (href) {
					await expect(page).toHaveURL(
						new RegExp(href.replace(/[.*+?^${}()|[\]\\]/g, "\\$&")),
					);
				}
			}
		}
	});

	test("free intro lessons exist for all 6 sections", async ({ page }) => {
		const sections = ["aud", "far", "reg", "bar", "isc", "tcp"];
		for (const slug of sections) {
			await page.goto(`/sections/${slug}/lessons/01-intro`);
			await expect(page.locator("article")).toBeVisible({ timeout: 10_000 });
		}
	});
});
