import { describe, expect, it } from "vitest";
import {
	cpaBlueprint,
	questionCounts,
	sectionQuestionTotals,
} from "@/lib/blueprint";
import {
	computeGroupQuestionTarget,
	formatCoverageReport,
	generateCoverageReport,
} from "@/lib/blueprint-coverage";
import { sections } from "@/lib/sections";

describe("blueprint structure", () => {
	it("has all 6 CPA exam sections", () => {
		const codes = cpaBlueprint.map((s) => s.code).sort();
		expect(codes).toEqual(["aud", "bar", "far", "isc", "reg", "tcp"]);
	});

	it("each section has at least 2 areas", () => {
		for (const section of cpaBlueprint) {
			expect(section.areas.length).toBeGreaterThanOrEqual(2);
		}
	});

	it("area weights roughly sum to 100% per section", () => {
		for (const section of cpaBlueprint) {
			const lowSum = section.areas.reduce((s, a) => s + a.weight[0], 0);
			const highSum = section.areas.reduce((s, a) => s + a.weight[1], 0);
			// Low bounds should be under 100, high bounds should be over 100
			// Midpoints should be near 100
			const midSum = (lowSum + highSum) / 2;
			expect(midSum).toBeGreaterThanOrEqual(85);
			expect(midSum).toBeLessThanOrEqual(115);
		}
	});

	it("area weights are valid ranges", () => {
		for (const section of cpaBlueprint) {
			for (const area of section.areas) {
				expect(area.weight[0]).toBeLessThan(area.weight[1]);
				expect(area.weight[0]).toBeGreaterThanOrEqual(0);
				expect(area.weight[1]).toBeLessThanOrEqual(100);
			}
		}
	});

	it("has expected group counts per section", () => {
		const groupCounts: Record<string, number> = {};
		for (const section of cpaBlueprint) {
			groupCounts[section.code] = section.areas.reduce(
				(sum, a) => sum + a.groups.length,
				0,
			);
		}
		expect(groupCounts.aud).toBe(27);
		expect(groupCounts.far).toBe(22);
		expect(groupCounts.reg).toBe(21);
		expect(groupCounts.bar).toBe(16);
		expect(groupCounts.isc).toBe(18);
		expect(groupCounts.tcp).toBe(16);
	});
});

describe("blueprint topic IDs", () => {
	it("all topic IDs are globally unique", () => {
		const ids: string[] = [];
		for (const section of cpaBlueprint) {
			for (const area of section.areas) {
				for (const group of area.groups) {
					for (const topic of group.topics) {
						ids.push(topic.id);
					}
				}
			}
		}
		expect(new Set(ids).size).toBe(ids.length);
	});

	it("topic IDs follow naming convention", () => {
		for (const section of cpaBlueprint) {
			for (const area of section.areas) {
				for (const group of area.groups) {
					for (const topic of group.topics) {
						expect(topic.id).toMatch(/^[a-z]{3}\.\d+\.[A-Z]\.\d+$/);
						expect(topic.id).toContain(`${section.code}.`);
					}
				}
			}
		}
	});
});

describe("lesson slug cross-references", () => {
	it("all lesson slugs reference valid lessons in sections.ts", () => {
		const validSlugs = new Set<string>();
		for (const section of sections) {
			for (const lesson of section.lessons) {
				validSlugs.add(lesson.slug);
			}
		}

		for (const bpSection of cpaBlueprint) {
			for (const area of bpSection.areas) {
				for (const group of area.groups) {
					for (const slug of group.lessonSlugs) {
						expect(validSlugs.has(slug)).toBe(true);
					}
				}
			}
		}
	});

	it("all question topics reference known topics in questionCounts", () => {
		for (const section of cpaBlueprint) {
			for (const area of section.areas) {
				for (const group of area.groups) {
					for (const topic of group.questionTopics) {
						expect(questionCounts[topic]).toBeDefined();
					}
				}
			}
		}
	});
});

describe("question counts", () => {
	it("section totals match expected values", () => {
		expect(sectionQuestionTotals.aud).toBe(1446);
		expect(sectionQuestionTotals.far).toBe(1554);
		expect(sectionQuestionTotals.reg).toBe(1446);
		expect(sectionQuestionTotals.bar).toBe(1534);
		expect(sectionQuestionTotals.isc).toBe(1452);
		expect(sectionQuestionTotals.tcp).toBe(1421);
	});

	it("all question count values are non-negative integers", () => {
		for (const [, count] of Object.entries(questionCounts)) {
			expect(count).toBeGreaterThanOrEqual(0);
			expect(Number.isInteger(count)).toBe(true);
		}
	});

	it("all questionCounts keys map to at least one blueprint group", () => {
		// Every topic in questionCounts should appear in some group's questionTopics
		const mappedTopics = new Set<string>();
		for (const section of cpaBlueprint) {
			for (const area of section.areas) {
				for (const group of area.groups) {
					for (const topic of group.questionTopics) {
						mappedTopics.add(topic);
					}
				}
			}
		}

		for (const topic of Object.keys(questionCounts)) {
			expect(
				mappedTopics.has(topic),
				`Topic "${topic}" in questionCounts has no blueprint group mapping`,
			).toBe(true);
		}
	});

	it("no two questionCounts keys are suspiciously similar", () => {
		// Levenshtein distance check to catch near-duplicate topic names
		// Known legitimate similar pairs are excluded
		const allowedPairs = new Set([
			"C Corporations|S Corporations",
			"Federal Tax Procedures|Tax Procedures",
			"Entity Formation and Liquidation|Entity Formation and Restructuring",
			"SOC Reporting|SOC Reporting and Trust Services Criteria",
		]);
		const keys = Object.keys(questionCounts);
		function levenshtein(a: string, b: string): number {
			const m = a.length;
			const n = b.length;
			const dp: number[][] = Array.from({ length: m + 1 }, () =>
				Array(n + 1).fill(0),
			);
			for (let i = 0; i <= m; i++) dp[i][0] = i;
			for (let j = 0; j <= n; j++) dp[0][j] = j;
			for (let i = 1; i <= m; i++) {
				for (let j = 1; j <= n; j++) {
					const cost = a[i - 1] === b[j - 1] ? 0 : 1;
					dp[i][j] = Math.min(
						dp[i - 1][j] + 1,
						dp[i][j - 1] + 1,
						dp[i - 1][j - 1] + cost,
					);
				}
			}
			return dp[m][n];
		}

		for (let i = 0; i < keys.length; i++) {
			for (let j = i + 1; j < keys.length; j++) {
				const pairKey = [keys[i], keys[j]].sort().join("|");
				if (allowedPairs.has(pairKey)) continue;
				const dist = levenshtein(keys[i].toLowerCase(), keys[j].toLowerCase());
				expect(
					dist,
					`Topics "${keys[i]}" and "${keys[j]}" are suspiciously similar (Levenshtein distance: ${dist})`,
				).toBeGreaterThanOrEqual(3);
			}
		}
	});
});

describe("computeGroupQuestionTarget", () => {
	it("computes target based on weight midpoint", () => {
		// Area with 20-30% weight, 5 groups, 200 total questions
		// Midpoint = 25%, area target = 50, per group = 10
		const target = computeGroupQuestionTarget([20, 30], 5, 200);
		expect(target).toBe(10);
	});

	it("rounds to nearest integer", () => {
		const target = computeGroupQuestionTarget([15, 25], 7, 200);
		// Midpoint = 20%, area target = 40, per group = 40/7 ≈ 5.71 → 6
		expect(target).toBe(6);
	});
});

describe("coverage report", () => {
	it("generates without errors", () => {
		const report = generateCoverageReport(
			cpaBlueprint,
			questionCounts,
			sectionQuestionTotals,
		);
		expect(report.sections).toHaveLength(6);
		expect(report.summary.totalGroups).toBe(120);
		expect(report.summary.totalGaps).toBeGreaterThan(0);
	});

	it("has no lesson gaps after full blueprint coverage", () => {
		const report = generateCoverageReport(
			cpaBlueprint,
			questionCounts,
			sectionQuestionTotals,
		);
		const missingLessonGaps = report.gaps.filter((g) => g.missingLessons);
		// All FAR groups now have lessons after AICPA 2026 restructure
		expect(missingLessonGaps.length).toBe(0);

		// REG Group D (Filing status and dependents) should now be covered
		const regSection = report.sections.find((s) => s.code === "reg");
		expect(regSection?.lessonCoverage).toBe(100);
	});

	it("formats report as readable string", () => {
		const report = generateCoverageReport(
			cpaBlueprint,
			questionCounts,
			sectionQuestionTotals,
		);
		const formatted = formatCoverageReport(report);
		expect(formatted).toContain("AICPA BLUEPRINT COVERAGE REPORT");
		expect(formatted).toContain("AUD");
		expect(formatted).toContain("COVERAGE GAPS");
		expect(formatted).toContain("SUMMARY");
	});

	it("coverage percentages are between 0 and 100", () => {
		const report = generateCoverageReport(
			cpaBlueprint,
			questionCounts,
			sectionQuestionTotals,
		);
		for (const section of report.sections) {
			expect(section.lessonCoverage).toBeGreaterThanOrEqual(0);
			expect(section.lessonCoverage).toBeLessThanOrEqual(100);
		}
		expect(report.summary.overallLessonCoverage).toBeGreaterThanOrEqual(0);
		expect(report.summary.overallLessonCoverage).toBeLessThanOrEqual(100);
	});
});
