import { describe, expect, it } from "vitest";
import type { SectionProgress } from "@/components/section-progress-card";
import { computeReadiness } from "@/lib/readiness";

function makeProgress(
	overrides: Partial<SectionProgress> = {},
): SectionProgress {
	return {
		questionsPracticed: 0,
		totalCorrect: 0,
		totalQuestions: 1000,
		blueprintGroupsTouched: 0,
		blueprintGroupsTotal: 20,
		recentScores: [],
		...overrides,
	};
}

describe("computeReadiness", () => {
	it("returns zero for no progress", () => {
		const r = computeReadiness(makeProgress());
		expect(r.score).toBe(0);
		expect(r.coverage).toBe(0);
		expect(r.volume).toBe(0);
		expect(r.accuracy).toBe(0);
	});

	it("computes coverage correctly", () => {
		const r = computeReadiness(
			makeProgress({ blueprintGroupsTouched: 10, blueprintGroupsTotal: 20 }),
		);
		expect(r.coverage).toBeCloseTo(0.5);
	});

	it("caps volume at 1.0", () => {
		const r = computeReadiness(
			makeProgress({
				questionsPracticed: 2000,
				totalCorrect: 1500,
				totalQuestions: 1000,
			}),
		);
		expect(r.volume).toBe(1);
	});

	it("requires 30+ questions for accuracy", () => {
		const r = computeReadiness(
			makeProgress({ questionsPracticed: 29, totalCorrect: 29 }),
		);
		expect(r.accuracy).toBe(0);
	});

	it("computes accuracy at 30+ questions", () => {
		const r = computeReadiness(
			makeProgress({ questionsPracticed: 100, totalCorrect: 75 }),
		);
		expect(r.accuracy).toBeCloseTo(0.75);
	});

	it("computes composite score correctly", () => {
		// Full coverage, full volume, perfect accuracy
		const r = computeReadiness(
			makeProgress({
				blueprintGroupsTouched: 20,
				blueprintGroupsTotal: 20,
				questionsPracticed: 1000,
				totalCorrect: 1000,
				totalQuestions: 1000,
			}),
		);
		// 33 + 33 + 34 = 100
		expect(r.score).toBe(100);
	});

	it("handles zero totalQuestions gracefully", () => {
		const r = computeReadiness(
			makeProgress({ totalQuestions: 0, questionsPracticed: 50 }),
		);
		expect(r.volume).toBe(0);
	});

	it("handles zero blueprintGroupsTotal gracefully", () => {
		const r = computeReadiness(makeProgress({ blueprintGroupsTotal: 0 }));
		expect(r.coverage).toBe(0);
	});
});
