import { describe, expect, it } from "vitest";
import { analyzeTopicPerformance } from "@/lib/weak-topics";

describe("analyzeTopicPerformance", () => {
	it("returns empty arrays for no data", () => {
		const result = analyzeTopicPerformance([]);
		expect(result.weakTopics).toEqual([]);
		expect(result.strongTopics).toEqual([]);
	});

	it("excludes topics with fewer than 3 attempts", () => {
		const result = analyzeTopicPerformance([
			[{ topic: "Ethics", correct: 1, total: 2 }],
		]);
		expect(result.weakTopics).toEqual([]);
	});

	it("includes topics with 3+ attempts", () => {
		const result = analyzeTopicPerformance([
			[{ topic: "Ethics", correct: 2, total: 3 }],
		]);
		expect(result.weakTopics).toHaveLength(1);
		expect(result.weakTopics[0].topic).toBe("Ethics");
		expect(result.weakTopics[0].accuracy).toBeCloseTo(2 / 3);
	});

	it("aggregates across multiple quiz attempts", () => {
		const result = analyzeTopicPerformance([
			[{ topic: "Revenue", correct: 1, total: 2 }],
			[{ topic: "Revenue", correct: 2, total: 3 }],
		]);
		// 3/5 total
		expect(result.weakTopics[0].correct).toBe(3);
		expect(result.weakTopics[0].total).toBe(5);
		expect(result.weakTopics[0].accuracy).toBeCloseTo(0.6);
	});

	it("ranks weak topics by accuracy ascending", () => {
		const result = analyzeTopicPerformance([
			[
				{ topic: "Ethics", correct: 3, total: 10 }, // 30%
				{ topic: "Revenue", correct: 7, total: 10 }, // 70%
				{ topic: "Leases", correct: 5, total: 10 }, // 50%
				{ topic: "Equity", correct: 9, total: 10 }, // 90%
			],
		]);
		expect(result.weakTopics.map((t) => t.topic)).toEqual([
			"Ethics",
			"Leases",
			"Revenue",
		]);
	});

	it("returns top 3 strong topics sorted by accuracy descending", () => {
		const result = analyzeTopicPerformance([
			[
				{ topic: "Ethics", correct: 3, total: 10 },
				{ topic: "Revenue", correct: 7, total: 10 },
				{ topic: "Leases", correct: 5, total: 10 },
				{ topic: "Equity", correct: 9, total: 10 },
			],
		]);
		expect(result.strongTopics.map((t) => t.topic)).toEqual([
			"Equity",
			"Revenue",
			"Leases",
		]);
	});

	it("limits to 3 weak and 3 strong even with many topics", () => {
		const topics = Array.from({ length: 10 }, (_, i) => ({
			topic: `Topic ${i}`,
			correct: i + 1,
			total: 10,
		}));
		const result = analyzeTopicPerformance([topics]);
		expect(result.weakTopics).toHaveLength(3);
		expect(result.strongTopics).toHaveLength(3);
	});
});
