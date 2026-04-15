import { describe, it, expect } from "vitest";
import {
	allTaskSpecs,
	validateAllAicpaRefs,
	SKILL_TO_BLOOM,
} from "../../src/lib/task-specs/index";
import { resolveTaskRef } from "../../src/lib/topic-specs/blueprint-task-resolver";

describe("task-specs registry", () => {
	const specs = allTaskSpecs();

	it("has at least one registered spec", () => {
		expect(specs.length).toBeGreaterThan(0);
	});

	it("all aicpaRef values resolve in the AICPA JSON", () => {
		const result = validateAllAicpaRefs();
		if (result.ok === false) {
			throw new Error(
				`Invalid aicpaRefs: ${result.invalid.join(", ")}`,
			);
		}
		expect(result.ok).toBe(true);
	});

	it("no two specs share the same aicpaRef", () => {
		const refs = specs.map((s) => s.aicpaRef);
		const unique = new Set(refs);
		expect(unique.size).toBe(refs.length);
	});
});

describe("task-specs Bloom's derivation", () => {
	const specs = allTaskSpecs();

	for (const spec of specs) {
		describe(spec.aicpaRef, () => {
			it("bloomLevel matches SKILL_TO_BLOOM mapping for aicpaSkill", () => {
				expect(spec.bloomLevel).toBe(SKILL_TO_BLOOM[spec.aicpaSkill]);
			});

			it("aicpaTask matches the literal AICPA task sentence from the JSON", () => {
				const resolved = resolveTaskRef(spec.aicpaRef);
				expect(resolved).not.toBeNull();
				expect(resolved!.task.task).toBe(spec.aicpaTask);
			});

			it("aicpaSkill matches the AICPA JSON skill label for this task", () => {
				const resolved = resolveTaskRef(spec.aicpaRef);
				expect(resolved).not.toBeNull();
				expect(resolved!.task.skill).toBe(spec.aicpaSkill);
			});

			it("section matches the first path segment of aicpaRef (lowercased)", () => {
				const firstSegment = spec.aicpaRef.split("/")[0].toLowerCase();
				expect(spec.section).toBe(firstSegment);
			});

			it("difficultyMix percentages sum to 100", () => {
				const { easy, medium, hard } = spec.difficultyMix;
				expect(easy + medium + hard).toBe(100);
			});

			it("targetCount is positive", () => {
				expect(spec.targetCount).toBeGreaterThan(0);
			});

			it("has at least one entry in inScope", () => {
				expect(spec.inScope.length).toBeGreaterThan(0);
			});
		});
	}
});
