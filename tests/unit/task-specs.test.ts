import { describe, it, expect } from "vitest";
import {
	allTaskSpecs,
	validateAllAicpaRefs,
	SKILL_TO_BLOOM,
} from "../../src/lib/task-specs/index";
import {
	resolveTaskRef,
	resolveBlueprintRef,
	isValidRef,
	refLevel,
} from "../../src/lib/lesson-specs/blueprint-task-resolver";

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

describe("multi-level AICPA ref resolution (Direction W)", () => {
	describe("refLevel", () => {
		it("returns 'group' for 3-part refs", () => {
			expect(refLevel("REG/V/C")).toBe("group");
		});
		it("returns 'topic' for 4-part refs", () => {
			expect(refLevel("REG/V/C/1")).toBe("topic");
		});
		it("returns 'task' for 5-part refs", () => {
			expect(refLevel("REG/V/C/1/1")).toBe("task");
		});
		it("returns null for 1, 2, or 6+ part refs", () => {
			expect(refLevel("REG")).toBeNull();
			expect(refLevel("REG/V")).toBeNull();
			expect(refLevel("REG/V/C/1/1/extra")).toBeNull();
		});
	});

	describe("isValidRef", () => {
		it("validates a known 5-part task ref", () => {
			expect(isValidRef("REG/V/C/1/1")).toBe(true);
		});
		it("validates a known 4-part topic ref", () => {
			expect(isValidRef("REG/V/C/1")).toBe(true);
		});
		it("validates a known 3-part group ref", () => {
			expect(isValidRef("REG/V/C")).toBe(true);
		});
		it("rejects an invalid 5-part ref", () => {
			expect(isValidRef("REG/V/C/1/99")).toBe(false);
		});
		it("rejects an invalid 4-part ref", () => {
			expect(isValidRef("REG/V/C/99")).toBe(false);
		});
		it("rejects an invalid 3-part ref", () => {
			expect(isValidRef("REG/V/Z")).toBe(false);
		});
		it("rejects malformed refs", () => {
			expect(isValidRef("REG")).toBe(false);
			expect(isValidRef("")).toBe(false);
		});
	});

	describe("resolveBlueprintRef at group level", () => {
		it("resolves REG/V/C to S corporations group", () => {
			const node = resolveBlueprintRef("REG/V/C");
			expect(node).not.toBeNull();
			expect(node!.group.name).toContain("S corporation");
			expect(node!.topic).toBeNull();
			expect(node!.tasks.length).toBeGreaterThan(0);
		});
	});

	describe("resolveBlueprintRef at topic level", () => {
		it("resolves REG/V/C/1 to eligibility topic", () => {
			const node = resolveBlueprintRef("REG/V/C/1");
			expect(node).not.toBeNull();
			expect(node!.topic).not.toBeNull();
			expect(node!.topic!.name).toContain("Eligibility");
		});
	});
});
