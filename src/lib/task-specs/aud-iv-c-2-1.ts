import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/C/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/C/2/1",
	section: "aud",

	aicpaTask: "Identify the factors that an accountant should consider when reporting on an engagement to compile an entity’s financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Compilation engagement reporting factors: accountant's independence, departures from applicable framework (AR-C 80)",
		"Compilation report requirements: no assurance expressed, management responsibility stated, accountant responsibility described",
		"Impact of lack of independence on compilation report: required disclosure of non-independence without reason",
		"Departures from applicable financial reporting framework in compilations: known departure disclosure requirements",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-review-and-compilation",
};
