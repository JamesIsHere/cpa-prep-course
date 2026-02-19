import { describe, expect, it } from "vitest";
import { getLesson, getSection, sections } from "@/lib/sections";

describe("sections data", () => {
	it("has 3 sections", () => {
		expect(sections).toHaveLength(3);
	});

	it("each section has a unique slug", () => {
		const slugs = sections.map((s) => s.slug);
		expect(new Set(slugs).size).toBe(slugs.length);
	});

	it("each section has at least one lesson", () => {
		for (const section of sections) {
			expect(section.lessons.length).toBeGreaterThan(0);
		}
	});

	it("covers AUD, FAR, and REG", () => {
		const codes = sections.map((s) => s.code).sort();
		expect(codes).toEqual(["aud", "far", "reg"]);
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
		const result = getLesson("far", "01-intro");
		expect(result).toBeDefined();
		expect(result?.section.code).toBe("far");
		expect(result?.lesson.title).toBe(
			"Introduction to Financial Accounting and Reporting",
		);
	});

	it("returns undefined for unknown section", () => {
		expect(getLesson("xyz", "01-intro")).toBeUndefined();
	});

	it("returns undefined for unknown lesson", () => {
		expect(getLesson("aud", "99-fake")).toBeUndefined();
	});
});
