// Task-specs registry — the master list of authored task-specs anchored to
// AICPA representative tasks.
//
// ## How to register a new task-spec
//
//   1. Create a file `src/lib/task-specs/<section>-<area>-<group>-<topic>-<task>.ts`
//      (example: `reg-v-c-1-1.ts` for REG/V/C/1/1). Lowercase all parts.
//   2. The file exports `const spec: TaskSpec = { ... }`.
//   3. Import the spec below and add it to the `TASK_SPECS` record keyed by
//      its `aicpaRef` (e.g., "REG/V/C/1/1").
//   4. Run `npm test -- task-specs` to verify the drift test passes.
//
// ## Lookup
//
//   - `getTaskSpec(ref)` → TaskSpec | undefined
//   - `allTaskSpecs()` → TaskSpec[]
//   - `taskSpecsByGroup(groupRef)` → TaskSpec[] for all tasks in an AICPA group
//   - `taskSpecsBySection(section)` → TaskSpec[] for a section

import type { TaskSpec } from "./types";
import { isValidTaskRef } from "../topic-specs/blueprint-task-resolver";

// REG/V/C S corporations — 9 task-specs
import { spec as regVC11 } from "./reg-v-c-1-1";
import { spec as regVC12 } from "./reg-v-c-1-2";
import { spec as regVC13 } from "./reg-v-c-1-3";
import { spec as regVC21 } from "./reg-v-c-2-1";
import { spec as regVC22 } from "./reg-v-c-2-2";
import { spec as regVC23 } from "./reg-v-c-2-3";
import { spec as regVC24 } from "./reg-v-c-2-4";
import { spec as regVC31 } from "./reg-v-c-3-1";
import { spec as regVC32 } from "./reg-v-c-3-2";

const TASK_SPECS: Record<string, TaskSpec> = {
	[regVC11.aicpaRef]: regVC11,
	[regVC12.aicpaRef]: regVC12,
	[regVC13.aicpaRef]: regVC13,
	[regVC21.aicpaRef]: regVC21,
	[regVC22.aicpaRef]: regVC22,
	[regVC23.aicpaRef]: regVC23,
	[regVC24.aicpaRef]: regVC24,
	[regVC31.aicpaRef]: regVC31,
	[regVC32.aicpaRef]: regVC32,
};

/** Look up a task-spec by its AICPA ref. */
export function getTaskSpec(ref: string): TaskSpec | undefined {
	return TASK_SPECS[ref];
}

/** Get all registered task-specs. */
export function allTaskSpecs(): TaskSpec[] {
	return Object.values(TASK_SPECS);
}

/** Get all task-specs whose AICPA ref starts with the given group ref. */
export function taskSpecsByGroup(groupRef: string): TaskSpec[] {
	const prefix = groupRef + "/";
	return allTaskSpecs().filter((s) => s.aicpaRef.startsWith(prefix));
}

/** Get all task-specs for a given section. */
export function taskSpecsBySection(section: TaskSpec["section"]): TaskSpec[] {
	return allTaskSpecs().filter((s) => s.section === section);
}

/**
 * Validate that every registered task-spec's `aicpaRef` resolves in the
 * AICPA JSON. Throws if any don't. Called by the test harness.
 */
export function validateAllAicpaRefs(): { ok: true } | { ok: false; invalid: string[] } {
	const invalid: string[] = [];
	for (const spec of allTaskSpecs()) {
		if (!isValidTaskRef(spec.aicpaRef)) {
			invalid.push(`${spec.aicpaRef} (${spec.section})`);
		}
	}
	return invalid.length === 0 ? { ok: true } : { ok: false, invalid };
}

export type { TaskSpec, BannedTerm, Difficulty, AicpaSkill, BloomLevel, GroupBase } from "./types";
export { SKILL_TO_BLOOM } from "./types";
