// Drift-prevention test for the topic-spec layer. Validates that every registered spec
// is internally consistent with the two upstream sources of truth:
//
//   1. `src/lib/blueprint.ts` — Slayer's questionTopics tagging vocabulary
//   2. `alignment/aicpa-blueprint-tasks.json` — AICPA's canonical representative tasks
//
// Specs are the bridge between Slayer's structural reorganization and the AICPA blueprint.
// If either upstream source moves, this test catches the resulting spec staleness before
// it ships to the generator or the validator.

import { describe, expect, it } from "vitest";
import { cpaBlueprint } from "@/lib/blueprint";
import {
	allTopicSpecs,
	getTopicSpec,
	specifiedTopics,
} from "@/lib/topic-specs";
import { resolveBlueprintRef } from "@/lib/topic-specs/blueprint-task-resolver";

// Build the union of all questionTopics across all blueprint groups, once.
function allQuestionTopics(): Set<string> {
	const set = new Set<string>();
	for (const sec of cpaBlueprint) {
		for (const area of sec.areas) {
			for (const group of area.groups) {
				for (const t of group.questionTopics ?? []) set.add(t);
			}
		}
	}
	return set;
}

describe("topic-specs: drift prevention", () => {
	const specs = allTopicSpecs();
	const blueprintTopics = allQuestionTopics();

	it("at least one spec is registered (sanity)", () => {
		expect(specs.length).toBeGreaterThan(0);
	});

	describe.each(specs)("spec for $topic", (spec) => {
		it("topic exists in some questionTopics[] in blueprint.ts", () => {
			expect(blueprintTopics.has(spec.topic)).toBe(true);
		});

		it("blueprintRef resolves in alignment/aicpa-blueprint-tasks.json", () => {
			const node = resolveBlueprintRef(spec.blueprintRef);
			expect(node).not.toBeNull();
		});

		it("section field matches blueprintRef section prefix (case-insensitive)", () => {
			const refSection = spec.blueprintRef.split("/")[0]?.toLowerCase();
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

	it("getTopicSpec returns the registered spec for a known topic", () => {
		const oneTopic = specifiedTopics()[0];
		const spec = getTopicSpec(oneTopic);
		expect(spec).toBeDefined();
		expect(spec?.topic).toBe(oneTopic);
	});

	it("getTopicSpec returns undefined for an unknown topic", () => {
		expect(getTopicSpec("Nonexistent Topic Name 12345")).toBeUndefined();
	});
});

describe("topic-specs: blueprintRef resolver basics", () => {
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
