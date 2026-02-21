import { describe, expect, it } from "vitest";
import { cpaBlueprint } from "@/lib/blueprint";
import {
	getBlueprintGroup,
	getBlueprintSection,
	getFrameworkItemCount,
	getFrameworkItemsForGroup,
	getGroupQuestionCount,
	getGroupSlug,
	parseGroupSlug,
	questionCounts,
} from "@/lib/blueprint-utils";

describe("getBlueprintSection", () => {
	it("returns AUD section", () => {
		const section = getBlueprintSection("aud");
		expect(section).toBeDefined();
		expect(section!.title).toBe("Auditing and Attestation");
	});

	it("returns undefined for invalid code", () => {
		expect(getBlueprintSection("xyz")).toBeUndefined();
	});

	it("returns all 6 sections", () => {
		for (const code of ["aud", "far", "reg", "bar", "isc", "tcp"]) {
			expect(getBlueprintSection(code)).toBeDefined();
		}
	});
});

describe("getBlueprintGroup", () => {
	it("returns AUD area 2 group F", () => {
		const group = getBlueprintGroup("aud", 2, "F");
		expect(group).toBeDefined();
		expect(group!.name).toBeTruthy();
		expect(group!.letter).toBe("F");
	});

	it("returns undefined for invalid area", () => {
		expect(getBlueprintGroup("aud", 99, "A")).toBeUndefined();
	});

	it("returns undefined for invalid letter", () => {
		expect(getBlueprintGroup("aud", 1, "Z")).toBeUndefined();
	});

	it("returns undefined for invalid section code", () => {
		expect(getBlueprintGroup("xyz", 1, "A")).toBeUndefined();
	});
});

describe("getGroupQuestionCount", () => {
	it("returns positive count for groups with questionTopics", () => {
		const group = getBlueprintGroup("aud", 2, "F");
		expect(group).toBeDefined();
		if (group && group.questionTopics.length > 0) {
			expect(getGroupQuestionCount(group)).toBeGreaterThan(0);
		}
	});

	it("returns 0 for groups with no questionTopics", () => {
		// Find a group with empty questionTopics
		for (const section of cpaBlueprint) {
			for (const area of section.areas) {
				for (const group of area.groups) {
					if (group.questionTopics.length === 0) {
						expect(getGroupQuestionCount(group)).toBe(0);
						return;
					}
				}
			}
		}
	});

	it("sums counts correctly from questionCounts", () => {
		const group = getBlueprintGroup("far", 1, "A");
		expect(group).toBeDefined();
		if (group) {
			const expected = group.questionTopics.reduce(
				(sum, topic) => sum + (questionCounts[topic] ?? 0),
				0,
			);
			expect(getGroupQuestionCount(group)).toBe(expected);
		}
	});
});

describe("getFrameworkItemsForGroup", () => {
	it("returns structure with all 5 categories", () => {
		const items = getFrameworkItemsForGroup("aud", 1, "A");
		expect(items).toHaveProperty("conceptMaps");
		expect(items).toHaveProperty("decisionTrees");
		expect(items).toHaveProperty("formulas");
		expect(items).toHaveProperty("referenceTables");
		expect(items).toHaveProperty("mnemonics");
	});

	it("returns empty arrays for invalid section", () => {
		const items = getFrameworkItemsForGroup("xyz", 1, "A");
		expect(items.conceptMaps).toEqual([]);
		expect(items.decisionTrees).toEqual([]);
		expect(items.formulas).toEqual([]);
		expect(items.referenceTables).toEqual([]);
		expect(items.mnemonics).toEqual([]);
	});

	it("returns arrays of correct types", () => {
		const items = getFrameworkItemsForGroup("far", 1, "A");
		expect(Array.isArray(items.conceptMaps)).toBe(true);
		expect(Array.isArray(items.formulas)).toBe(true);
	});
});

describe("getFrameworkItemCount", () => {
	it("sums all categories", () => {
		const items = {
			conceptMaps: [{ title: "a", root: { label: "r" } }],
			decisionTrees: [],
			formulas: [
				{ name: "f", formula: "x" },
				{ name: "g", formula: "y" },
			],
			referenceTables: [],
			mnemonics: [],
		};
		expect(getFrameworkItemCount(items)).toBe(3);
	});

	it("returns 0 for empty items", () => {
		const items = {
			conceptMaps: [],
			decisionTrees: [],
			formulas: [],
			referenceTables: [],
			mnemonics: [],
		};
		expect(getFrameworkItemCount(items)).toBe(0);
	});
});

describe("getGroupSlug / parseGroupSlug", () => {
	it("creates correct slug", () => {
		expect(getGroupSlug(1, "A")).toBe("1-A");
		expect(getGroupSlug(3, "F")).toBe("3-F");
	});

	it("parses valid slugs", () => {
		expect(parseGroupSlug("1-A")).toEqual({ area: 1, letter: "A" });
		expect(parseGroupSlug("3-F")).toEqual({ area: 3, letter: "F" });
		expect(parseGroupSlug("12-Z")).toEqual({ area: 12, letter: "Z" });
	});

	it("returns null for invalid slugs", () => {
		expect(parseGroupSlug("")).toBeNull();
		expect(parseGroupSlug("1-a")).toBeNull(); // lowercase
		expect(parseGroupSlug("A-1")).toBeNull(); // reversed
		expect(parseGroupSlug("abc")).toBeNull();
	});

	it("roundtrips correctly", () => {
		const slug = getGroupSlug(2, "C");
		const parsed = parseGroupSlug(slug);
		expect(parsed).toEqual({ area: 2, letter: "C" });
	});
});
