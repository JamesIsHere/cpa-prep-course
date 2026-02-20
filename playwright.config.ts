import { defineConfig, devices } from "@playwright/test";

const isProduction = !!process.env.BASE_URL;

export default defineConfig({
	testDir: "./tests/e2e",
	timeout: 30_000,
	retries: isProduction ? 1 : 0,
	use: {
		baseURL: process.env.BASE_URL || "http://localhost:3000",
		headless: true,
	},
	projects: [
		{ name: "chromium", use: { ...devices["Desktop Chrome"] } },
		{ name: "firefox", use: { ...devices["Desktop Firefox"] } },
		{ name: "webkit", use: { ...devices["Desktop Safari"] } },
	],
	...(isProduction
		? {}
		: {
				webServer: {
					command: "npm run dev",
					port: 3000,
					reuseExistingServer: true,
				},
			}),
});
