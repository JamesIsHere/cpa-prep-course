import { describe, expect, it } from "vitest";
import { getStudyFramework, type StudyFramework } from "@/lib/study-frameworks";

const allCodes = ["aud", "bar", "far", "isc", "reg", "tcp"];
const populatedCodes = ["aud", "far", "reg"];

describe("getStudyFramework", () => {
	it("returns a framework for each section code", () => {
		for (const code of allCodes) {
			const fw = getStudyFramework(code);
			expect(fw).toBeDefined();
			expect(fw!.sectionCode).toBe(code);
		}
	});

	it("returns undefined for an invalid code", () => {
		expect(getStudyFramework("xyz")).toBeUndefined();
		expect(getStudyFramework("")).toBeUndefined();
	});
});

describe("study framework content", () => {
	const frameworks: StudyFramework[] = populatedCodes.map(
		(c) => getStudyFramework(c)!,
	);

	it("each framework has at least 1 concept map", () => {
		for (const fw of frameworks) {
			expect(fw.conceptMaps.length).toBeGreaterThanOrEqual(1);
		}
	});

	it("each framework has at least 1 decision tree", () => {
		for (const fw of frameworks) {
			expect(fw.decisionTrees.length).toBeGreaterThanOrEqual(1);
		}
	});

	it("each framework has at least 1 formula", () => {
		for (const fw of frameworks) {
			expect(fw.formulas.length).toBeGreaterThanOrEqual(1);
		}
	});

	it("each framework has at least 1 reference table", () => {
		for (const fw of frameworks) {
			expect(fw.referenceTables.length).toBeGreaterThanOrEqual(1);
		}
	});

	it("each framework has at least 1 mnemonic", () => {
		for (const fw of frameworks) {
			expect(fw.mnemonics.length).toBeGreaterThanOrEqual(1);
		}
	});

	it("concept map nodes have non-empty labels", () => {
		for (const fw of frameworks) {
			for (const map of fw.conceptMaps) {
				expect(map.title).toBeTruthy();
				expect(map.root.label).toBeTruthy();
			}
		}
	});

	it("decision tree nodes have non-empty questions", () => {
		for (const fw of frameworks) {
			for (const tree of fw.decisionTrees) {
				expect(tree.title).toBeTruthy();
				expect(tree.root.question).toBeTruthy();
			}
		}
	});

	it("formula entries have name and formula", () => {
		for (const fw of frameworks) {
			for (const f of fw.formulas) {
				expect(f.name).toBeTruthy();
				expect(f.formula).toBeTruthy();
			}
		}
	});

	it("reference table rows match header column count", () => {
		for (const fw of frameworks) {
			for (const table of fw.referenceTables) {
				const colCount = table.headers.length;
				for (const row of table.rows) {
					expect(row).toHaveLength(colCount);
				}
			}
		}
	});

	it("mnemonics have acronym, expansion, and explanation", () => {
		for (const fw of frameworks) {
			for (const m of fw.mnemonics) {
				expect(m.acronym).toBeTruthy();
				expect(m.expansion).toBeTruthy();
				expect(m.explanation).toBeTruthy();
			}
		}
	});
});
