import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/1/7 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/1/7",
	section: "aud",

	aicpaTask: "Perform tests of details, including the analysis of exceptions, to identify potential misstatements in an audit of financial statements.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Tests of details: vouching, tracing, scanning, and other procedures to identify potential misstatements",
		"Vouching (existence/occurrence direction) vs tracing (completeness direction) and appropriate assertion coverage",
		"Exception analysis in tests of details: evaluating whether exceptions indicate systematic misstatement or isolated error",
		"Selecting items for testing: statistical vs nonstatistical sampling, targeting high-risk transactions, stratification",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
