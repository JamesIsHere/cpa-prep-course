import { defineConfig, devices } from "@playwright/test";
import dotenv from "dotenv";

dotenv.config({ path: ".env.local", quiet: true });

const isProduction = !!process.env.BASE_URL;
const isCI = !!process.env.CI;

export default defineConfig({
	testDir: "./tests/e2e",
	timeout: 30_000,
	retries: isProduction || isCI ? 1 : 0,
	forbidOnly: isCI,
	reporter: isCI ? [["html", { open: "never" }], ["list"]] : "list",
	use: {
		baseURL: process.env.BASE_URL || "http://localhost:3000",
		headless: true,
	},
	projects: [
		// Auth setup — runs first, saves session state
		{
			name: "setup",
			testMatch: "auth.setup.ts",
		},

		// Public tests — no auth needed, runs on all browsers
		{
			name: "public-chromium",
			testIgnore: [
				"auth.setup.ts",
				"auth-flow.spec.ts",
				"quiz.spec.ts",
				"exam.spec.ts",
				"dashboard.spec.ts",
				"account.spec.ts",
			],
			use: { ...devices["Desktop Chrome"] },
		},
		{
			name: "public-firefox",
			testIgnore: [
				"auth.setup.ts",
				"auth-flow.spec.ts",
				"quiz.spec.ts",
				"exam.spec.ts",
				"dashboard.spec.ts",
				"account.spec.ts",
			],
			use: { ...devices["Desktop Firefox"] },
		},
		{
			name: "public-webkit",
			testIgnore: [
				"auth.setup.ts",
				"auth-flow.spec.ts",
				"quiz.spec.ts",
				"exam.spec.ts",
				"dashboard.spec.ts",
				"account.spec.ts",
			],
			use: { ...devices["Desktop Safari"] },
		},

		// Authenticated tests — depend on setup, Chromium only, single worker
		// to prevent parallel Supabase token refresh conflicts
		{
			name: "authenticated",
			testMatch: [
				"auth-flow.spec.ts",
				"quiz.spec.ts",
				"exam.spec.ts",
				"dashboard.spec.ts",
				"account.spec.ts",
			],
			dependencies: ["setup"],
			fullyParallel: false,
			use: {
				...devices["Desktop Chrome"],
				storageState: "tests/e2e/.auth/user.json",
			},
		},
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
