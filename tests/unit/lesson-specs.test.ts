// Drift-prevention test for the lesson-spec layer. Validates that every registered
// spec is internally consistent with its AICPA anchor and has non-trivial scope.
//
// Historical note: this file was `tests/unit/topic-specs.test.ts` before the
// Strategy Z rename. Under the old model, `spec.topic` had to match a DB
// `questionTopics[]` entry; under lesson-specs, `spec.topic` is a Slayer lesson
// name and does not need to round-trip to the DB taxonomy. That assertion was
// removed when the rename landed.

import { describe, expect, it } from "vitest";
import {
	allLessonSpecs,
	getLessonSpec,
	specifiedLessons,
} from "@/lib/lesson-specs";
import { resolveBlueprintRef } from "@/lib/lesson-specs/blueprint-task-resolver";

describe("lesson-specs: drift prevention", () => {
	const specs = allLessonSpecs();

	it("at least one spec is registered (sanity)", () => {
		expect(specs.length).toBeGreaterThan(0);
	});

	describe.each(specs)("spec for $topic", (spec) => {
		it("primaryRef resolves in alignment/aicpa-blueprint-tasks.json", () => {
			const node = resolveBlueprintRef(spec.primaryRef);
			expect(node).not.toBeNull();
		});

		it("section field matches primaryRef section prefix (case-insensitive)", () => {
			const refSection = spec.primaryRef.split("/")[0]?.toLowerCase();
			expect(refSection).toBe(spec.section);
		});

		it("inScope and outOfScope are non-empty", () => {
			expect(spec.inScope.length).toBeGreaterThan(0);
			expect(spec.outOfScope.length).toBeGreaterThan(0);
		});

		it("inScope and outOfScope items are non-trivial (>10 chars each)", () => {
			for (const item of spec.inScope) {
				expect(item.length).toBeGreaterThan(10);
			}
			for (const item of spec.outOfScope) {
				expect(item.length).toBeGreaterThan(10);
			}
		});
	});

	it("getLessonSpec returns the registered spec for a known topic", () => {
		const oneTopic = specifiedLessons()[0];
		const spec = getLessonSpec(oneTopic);
		expect(spec).toBeDefined();
		expect(spec?.topic).toBe(oneTopic);
	});

	it("getLessonSpec returns undefined for an unknown topic", () => {
		expect(getLessonSpec("Nonexistent Topic Name 12345")).toBeUndefined();
	});
});

describe("lesson-specs: primaryRef resolver basics", () => {
	it("resolves a known good ref (BAR/I/B/1)", () => {
		const node = resolveBlueprintRef("BAR/I/B/1");
		expect(node).not.toBeNull();
		expect(node?.topic?.name).toContain("Budgeting");
	});

	it("returns null for a malformed ref", () => {
		expect(resolveBlueprintRef("nonsense")).toBeNull();
		expect(resolveBlueprintRef("BAR/I")).toBeNull();
		expect(resolveBlueprintRef("BAR/I/B/999")).toBeNull();
		expect(resolveBlueprintRef("BAR/I/Z")).toBeNull();
		expect(resolveBlueprintRef("BAD/I/A/1")).toBeNull();
	});

	it("resolves a 3-part group-level ref (REG/V/C) and concatenates topic tasks", () => {
		const node = resolveBlueprintRef("REG/V/C");
		expect(node).not.toBeNull();
		expect(node?.topic).toBeNull();
		expect(node?.group.name).toContain("S corporations");
		expect((node?.tasks.length ?? 0)).toBeGreaterThan(0);
	});
});
