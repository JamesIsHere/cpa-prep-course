import { describe, expect, it } from "vitest";
import { getLesson, getSection, sections } from "@/lib/sections";

describe("sections data", () => {
	it("has 6 sections", () => {
		expect(sections).toHaveLength(6);
	});

	it("each section has a unique slug", () => {
		const slugs = sections.map((s) => s.slug);
		expect(new Set(slugs).size).toBe(slugs.length);
	});

	it("each section has 10+ lessons", () => {
		for (const section of sections) {
			expect(section.lessons.length).toBeGreaterThanOrEqual(10);
		}
	});

	it("first lesson of each section is free", () => {
		for (const section of sections) {
			expect(section.lessons[0].isFree).toBe(true);
		}
	});

	it("all lesson slugs are unique within their section", () => {
		for (const section of sections) {
			const slugs = section.lessons.map((l) => l.slug);
			expect(new Set(slugs).size).toBe(slugs.length);
		}
	});

	it("covers all 6 CPA exam sections", () => {
		const codes = sections.map((s) => s.code).sort();
		expect(codes).toEqual(["aud", "bar", "far", "isc", "reg", "tcp"]);
	});
});

describe("getSection", () => {
	it("returns a section by slug", () => {
		const section = getSection("aud");
		expect(section).toBeDefined();
		expect(section?.title).toBe("Auditing and Attestation");
	});

	it("returns undefined for unknown slug", () => {
		expect(getSection("nonexistent")).toBeUndefined();
	});
});

describe("getLesson", () => {
	it("returns section and lesson by slugs", () => {
		const result = getLesson("far", "01-financial-reporting-for-profit");
		expect(result).toBeDefined();
		expect(result?.section.code).toBe("far");
		expect(result?.lesson.title).toBe(
			"Financial Reporting: For-Profit Entities",
		);
	});

	it("returns undefined for unknown section", () => {
		expect(getLesson("xyz", "01-intro")).toBeUndefined();
	});

	it("returns undefined for unknown lesson", () => {
		expect(getLesson("aud", "99-fake")).toBeUndefined();
	});
});
