import type { LessonSpec } from "./types";

// ISC/II/D — Incident response.
// AICPA group covers the full incident response lifecycle at 4 tasks
// (preparation, detection/analysis, containment/eradication/recovery,
// post-incident activity). Created 2026-04-19 to route the 100 DB
// "Incident Response and Recovery" questions out of II/B (Security),
// where 96 of 100 were homeless because II/B task-specs cover
// controls/threats/monitoring but not incident response methodology.

export const spec: LessonSpec = {
	topic: "Incident Response and Recovery",
	section: "isc",
	primaryRef: "ISC/II/D",
	secondaryRefs: ["ISC/II/B"],

	inScope: [
		"NIST SP 800-61 incident response lifecycle: preparation, detection and analysis, containment/eradication/recovery, and post-incident activity — phase purposes, sequencing, and deliverables at the governance level",
		"Preparation phase: policies, procedures, team formation (CSIRT), communication plans, playbooks, tooling, and regular exercises before any incident occurs",
		"Detection and analysis: event vs incident distinction, indicators of compromise (IoC), triage, classification by severity, and escalation procedures",
		"Containment: short-term vs long-term containment strategies, isolation of compromised systems, trade-offs between stopping damage and preserving forensic evidence",
		"Eradication and recovery: removing attacker persistence, restoring from clean backups, verification of system integrity before return to production, and monitoring for recurrence",
		"Post-incident activity: lessons learned reviews, root cause analysis, updating playbooks and controls, and metrics to measure response effectiveness",
		"Communication and reporting: internal notification protocols, external reporting obligations (regulators, customers, law enforcement), breach notification timelines, and chain of custody for digital evidence",
		"Business continuity and disaster recovery from the incident perspective: relationship between security incidents and BC/DR, recovery time objectives (RTO) and recovery point objectives (RPO), failover/failback procedures, and DR plan testing methods (tabletop, parallel, full interruption)",
	],

	outOfScope: [
		"Security controls, monitoring, and threat prevention — ISC/II/B (Security)",
		"Digital forensics at practitioner depth — forensic imaging tools, file system analysis, memory forensics, registry analysis",
		"Malware reverse engineering — disassembly, sandbox behavioral analysis, signature creation",
		"Regulatory breach notification at compliance-officer depth — GDPR 72-hour mechanics, state-law variations (touches ISC/II/C Privacy)",
	],

	keyStandards: [
		"NIST SP 800-61 — Computer Security Incident Handling Guide",
		"NIST SP 800-34 — Contingency Planning Guide (for BC/DR)",
		"NIST CSF — Respond and Recover functions",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
