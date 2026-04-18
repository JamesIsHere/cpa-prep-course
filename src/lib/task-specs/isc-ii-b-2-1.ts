import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/II/B/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/II/B/2/1",
	section: "isc",

	aicpaTask: "Identify ways to protect networks and devices used to access the network remotely (e.g., isolation and segmentation, virtual private network (VPN), wireless network security, endpoint security, system hardening, intrusion prevention and detection systems).",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-security",
};
