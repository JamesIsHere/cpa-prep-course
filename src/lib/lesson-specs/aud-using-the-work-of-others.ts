import type { LessonSpec } from "./types";

// Twentieth authored spec — third spec of Stage 3. Selected from the
// Stage 2 drift census as a clean rightful-owner candidate: 64
// questions, 18 flagged by the universal ban set (28.1%), all 18 on
// `component auditor` — a term the Audit Evidence spec bans because
// group-audit mechanics are not audit-evidence territory. This topic
// IS the group-audit topic (plus internal audit reliance, specialist
// reliance, and service organization SOC report reliance). Authoring
// the spec should whitelist all 18 hits.
//
// ## Anchor
//
// AICPA 2026 Blueprint places "Planning for and using the work of
// others" at AUD/II/F (Topic 0 direct). The scaffolder mis-anchored to
// AUD/II/G, which is actually "Specific areas of engagement risk"
// (compliance, fraud, estimates). Corrected to AUD/II/F.
//
// The blueprint tasks explicitly enumerate the six categories of
// "others" whose work may be used: internal audit function, IT
// auditor, auditor's specialist, management's specialist, component
// auditor, and referred-to auditor. The question sample also includes
// service organization / SOC report reliance (AU-C 402), which
// properly belongs here as another form of "using others' work" from
// the user auditor's perspective.
//
// ## Scope line
//
// This topic owns AU-C 600 (group audits — component auditor usage,
// group engagement partner responsibilities, referred-to auditor
// option), AU-C 610 (internal audit function reliance — competence,
// objectivity, extent of use), AU-C 620 (auditor's specialist and
// management's specialist), and AU-C 402 (user auditor reliance on
// service organizations with SOC 1 Type 1 vs Type 2 reports). All at
// the AU-C private-company depth that the AUD CPA exam tests.
//
// Not this topic: PCAOB-specific integrated audit standards (AS 2201
// and related), SOC engagement execution methodology (SSAE 18 /
// AT-C 320, SOC 2 trust services criteria, SOC for cybersecurity —
// those belong to Attestation Engagements or ISC SOC topics if
// specced), IT general controls testing depth (ISC Internal Controls
// territory), quality management standards (Quality Management topic),
// and ISACA-framework IT audit methodology depth.

export const spec: LessonSpec = {
	topic: "Using the Work of Others",
	section: "aud",
	blueprintRef: "AUD/II/F",

	inScope: [
		"AU-C 610 reliance on the internal audit function: the external auditor's evaluation of the internal audit function's objectivity (organizational status reporting directly to those charged with governance, absence of conflicting duties, rotation of staff), competence (training, certifications, experience, quality control of internal audit work), and application of a systematic and disciplined approach (adherence to professional standards such as IIA standards).",
		"Limits on the nature and scope of work that can be delegated to the internal audit function: matters involving significant risks, significant judgments, or the need for external auditor independence (e.g., significant accounting estimates, management bias assessments, unusual transactions, related party identification) generally cannot be delegated to internal audit regardless of the internal audit function's capability.",
		"The external auditor's direct use of internal audit staff to assist with audit procedures under the external auditor's direction, supervision, and review. This is distinct from relying on work previously completed by internal audit — it is co-performance of audit procedures.",
		"AU-C 620 auditor's specialist vs management's specialist distinction: an auditor's specialist is engaged by the auditor to provide expertise used in obtaining audit evidence (responsibility for the conclusion remains with the auditor); a management's specialist is engaged by management and the auditor uses the specialist's work as audit evidence. The evaluation framework differs: for an auditor's specialist, the auditor evaluates competence, capabilities, objectivity, and reviews the work; for a management's specialist, the auditor evaluates relevance and reasonableness of assumptions, appropriateness of methods, and the underlying source data.",
		"The auditor's responsibility when using a specialist: the audit opinion is not divided and the auditor cannot refer to the specialist in an unmodified opinion. Reference to a specialist is permitted only in a modified report when the auditor wishes to explain the basis for a modification, and only with the specialist's permission.",
		"AU-C 600 group audit concepts: identification of the group and components, determination of which components are significant (by size — typically greater than 15% of group assets or revenue — or by risk), and the use of component auditors (auditors who perform work on the financial information of a component for the group audit).",
		"The group engagement partner's responsibilities: overall responsibility for the direction, supervision, and performance of the group audit engagement; evaluation of whether sufficient appropriate audit evidence has been obtained from the audit work performed on the components and the group consolidation process; and the basis for the group audit opinion.",
		"Communication with component auditors: the group engagement team communicates scope instructions, materiality thresholds for the component, identified risks of material misstatement relevant to the component's work, and ethical and independence requirements to be complied with by the component auditor.",
		"The divided-responsibility (referred-to auditor) alternative: the group engagement partner may assume responsibility for the component auditor's work, OR may choose to divide responsibility by making reference to the component auditor's audit in the group auditor's report. Reference requires that the component auditor performed the audit under generally accepted auditing standards (or equivalent), is independent, has appropriate professional competence, and the component's financial statements follow the same financial reporting framework.",
		"When a component auditor's work is used without reference (assumed responsibility), the group engagement partner must evaluate the component auditor's competence and independence, obtain an understanding of the work performed, determine the type and extent of involvement in the component auditor's work (which varies by the component's significance and risk), and communicate findings.",
		"AU-C 402 user auditor reliance on service organization controls: when a client outsources processes to a service organization (payroll processor, cloud-hosted application, custody of securities), the user auditor must understand the service organization's services and the controls that operate at the service organization affecting the client's financial reporting.",
		"SOC 1 reports as a source of audit evidence for the user auditor: Type 1 reports cover the description and design of controls at a point in time; Type 2 reports cover description, design, AND operating effectiveness over a period. Type 2 is more useful for a user auditor planning to reduce substantive testing because it provides evidence of operating effectiveness; Type 1 only provides evidence of design.",
		"When a SOC 1 report does not provide sufficient appropriate evidence: the user auditor may need to perform additional procedures directly at the service organization, engage a subservice auditor, or obtain other evidence. The user auditor remains responsible for the audit opinion regardless of the SOC report.",
		"Complementary user entity controls (CUECs): controls that must be implemented at the user entity to complement the controls at the service organization for the SOC report's conclusions to be relied upon. The user auditor tests the CUECs at the client as part of evaluating whether the service organization's controls can support the audit conclusions.",
		"The use of a non-CPA specialist (actuary, appraiser, geologist, engineer, attorney) as evidence for specific account balances or estimates: the auditor evaluates the specialist's credentials (professional certification, reputation, experience with similar engagements), evaluates the relationships and interests that may create threats to objectivity, and evaluates the adequacy of the specialist's work as audit evidence relative to the financial statement assertion being tested.",
		"The concept that using the work of others does NOT reduce the external auditor's responsibility for the audit opinion. The auditor remains responsible for the sufficiency and appropriateness of audit evidence and for the conclusions drawn from it, regardless of whose work produced the evidence.",
	],

	outOfScope: [
		"PCAOB auditing standards for using the work of others — PCAOB AS 1205 (Part of Audit Performed by Other Independent Auditors), AS 2605 (Using the Work of Internal Auditors), and AS 1210 (Using the Work of a Specialist). The AICPA CPA exam AUD section tests AU-C standards for private company audits; PCAOB standards are tested as distinctions only, not at depth",
		"PCAOB integrated audit of internal control over financial reporting under AS 2201 — that is a separate integrated audit concept, tested in the Attestation Engagements topic if anywhere",
		"SOC engagement execution methodology from the service auditor's perspective: SSAE 18 / AT-C 320 reporting-at-service-organizations attestation procedures, SOC 2 trust services criteria (security, availability, processing integrity, confidentiality, privacy), SOC 3 general-use reporting, SOC for Cybersecurity, SOC for Supply Chain. The user auditor's reliance on the resulting SOC 1 report is in scope; the service auditor's methodology for producing one is not",
		"Detailed IT general controls (ITGC) testing methodology, application control testing, access provisioning reviews, change management testing depth, segregation of duties analysis — belongs to Internal Controls (AUD) and SOC Testing Controls (ISC)",
		"ISACA CISA framework, COBIT framework mechanics, and ITIL / NIST CSF implementation details — IT auditor is mentioned in the blueprint as one category of 'others,' but the IT auditor's framework depth is not what this topic tests",
		"Specialist valuation methodology at mechanics depth: DCF model construction, comparable company analysis, option pricing (Black-Scholes, binomial lattice), lattice models for contingent payments, actuarial reserve computation methods, asset retirement obligation discount rate derivation. These are Fair Value or Financial Valuation Methods topic territory — the auditor's evaluation of a specialist using one of these methods is in scope at the assumption-and-data level, not at the methodology construction level",
		"Quality management standards for specialist firms or component audit firms — ISQM 1 / SQMS 1 applicable to the engagement team's own firm is the Quality Management topic. Specialist-firm or component-firm quality management is not a separate scope",
		"Deep actuarial model review — the policy and claim reserve projection methodology, loss development factor selection, credibility weighting, reinsurance retention modeling. The auditor's review of an actuarial specialist at the assumption-reasonableness level is in scope",
		"Deep geologic reserve evaluation — SEC reserve category definitions (proved vs probable vs possible), SPE/WPC classification standards, the sliding scale of reserve category. The auditor's use of a geologic specialist is in scope at the evaluation-of-credentials level",
		"Deep legal-opinion analysis — privileged communication between lawyer and client, attorney-client evidence frameworks, attorney litigation letter content beyond the standard AU-C 501 client representation requirement (which is a separate audit evidence topic)",
		"Jurisdictional audit firm licensing and state-board rules governing foreign auditor eligibility to perform U.S. audits (relevant to whether a referred-to auditor is 'appropriate')",
		"Specific foreign auditing standards (e.g., ISA 600 IFAC international standard for group audits) — this spec covers AU-C 600 U.S. GAAS; IFAC ISA differences at depth are out",
		"Tax provision review by a tax specialist at the technical tax position / ASC 740 uncertain tax position mechanics — belongs to Income Taxes Advanced if specced, or to Substantive Procedures at the auditor's evaluation level",
		"Internal audit charter best practices, audit committee oversight of the internal audit function, the IIA Standards for the Professional Practice of Internal Auditing at framework depth — the external auditor's evaluation of the internal audit function for competence, objectivity, and systematic approach is in scope at the concept level",
	],

	keyStandards: [
		"AU-C 600 — Special Considerations: Audits of Group Financial Statements (Including the Work of Component Auditors)",
		"AU-C 610 — Using the Work of Internal Auditors",
		"AU-C 620 — Using the Work of an Auditor's Specialist",
		"AU-C 402 — Audit Considerations Relating to an Entity Using a Service Organization",
		"AU-C 500 — Audit Evidence (management's specialist is addressed here for evaluation framework)",
		"AU-C 501 — Audit Evidence — Specific Considerations for Selected Items (attorney's letter)",
	],

	commonMisconceptions: [
		"Believing that using the work of others reduces the auditor's responsibility. The audit opinion is undivided (except in the explicit referred-to auditor scenario). The auditor remains fully responsible for the sufficiency and appropriateness of audit evidence regardless of whose work produced it.",
		"Conflating an auditor's specialist with a management's specialist. An auditor's specialist is engaged BY THE AUDITOR and the auditor evaluates competence, capabilities, objectivity, and reviews the work product. A management's specialist is engaged BY MANAGEMENT and the auditor evaluates the specialist's work as audit evidence using the AU-C 500 framework — relevance and reasonableness of assumptions, appropriateness of methods, source data adequacy.",
		"Thinking reference to a component auditor is the default in a group audit. Assumption of responsibility (no reference) is the general approach; reference is a specific election that requires the referred-to auditor to meet defined criteria (independent, competent, following GAAS-equivalent standards, same reporting framework) and results in a divided opinion.",
		"Believing the internal audit function's work can be used for any audit area if the function is competent and objective. Certain matters — significant risks, significant judgments, areas requiring audit independence — cannot be delegated to internal audit regardless of the function's capability.",
		"Confusing direct use of internal audit staff as audit team members (under the external auditor's direction) with reliance on internal audit work products. These are different scenarios with different evaluation and documentation requirements.",
		"Treating a SOC 1 Type 1 report as equivalent to a Type 2 for substantive test reduction. Type 1 addresses only design and implementation at a point in time; Type 2 addresses design AND operating effectiveness over a period. Only Type 2 provides evidence of operating effectiveness that the user auditor can use to reduce the extent of their own testing.",
		"Forgetting complementary user entity controls. A SOC report's conclusions often assume the user entity has implemented certain complementary controls; if those CUECs are missing or ineffective at the client, the SOC report's conclusions do not transfer to the client's audit.",
		"Believing the auditor can refer to a specialist in an unmodified opinion. Reference to a specialist is not permitted in an unmodified opinion. It is only permitted in a modified opinion, when the reference helps explain the basis for the modification, and requires the specialist's consent.",
		"Thinking the group engagement partner must always perform procedures on every component. Involvement in the component auditor's work varies with the component's significance and risk. For insignificant components, analytical procedures at the group level may suffice; for significant components, more substantive involvement is required.",
		"Assuming a service organization's SOC 2 report provides sufficient evidence for a financial statement audit. SOC 2 addresses trust services criteria (security, availability, etc.) — it is not a financial-reporting-controls report. The user auditor for a financial statement audit generally needs a SOC 1 report, not a SOC 2.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		// --- PCAOB standards (PCAOB is tested as a distinction in the AUD
		// exam but not at depth — private-company AU-C is the scope) ---
		{
			term: "AS 2201",
			pattern: "\\bAS\\s*2201\\b",
			category: "PCAOB depth",
			why: "PCAOB integrated audit of internal control standard — out of scope at depth. AU-C is the scope for this topic.",
		},
		{
			term: "AS 1205",
			pattern: "\\bAS\\s*1205\\b",
			category: "PCAOB depth",
			why: "PCAOB standard for part of audit performed by other independent auditors — out of scope at depth.",
		},
		{
			term: "AS 2605",
			pattern: "\\bAS\\s*2605\\b",
			category: "PCAOB depth",
			why: "PCAOB standard for using the work of internal auditors — out of scope at depth.",
		},
		{
			term: "AS 1210",
			pattern: "\\bAS\\s*1210\\b",
			category: "PCAOB depth",
			why: "PCAOB standard for using the work of a specialist — out of scope at depth.",
		},

		// --- SOC engagement execution (service auditor's methodology) ---
		{
			term: "SSAE 18",
			pattern: "\\bSSAE\\s*18\\b",
			category: "SOC engagement execution",
			why: "SSAE 18 governs the service auditor's methodology for a SOC engagement — out of scope. The user auditor's reliance on the resulting SOC report is in scope.",
		},
		{
			term: "AT-C 320",
			pattern: "\\bAT[-\\s]?C\\s*320\\b",
			category: "SOC engagement execution",
			why: "AT-C 320 reporting at service organizations standard — service auditor methodology, out of scope.",
		},
		{
			term: "trust services criteria",
			pattern: "trust\\s+services\\s+criteria",
			category: "SOC 2 territory",
			why: "SOC 2 trust services criteria (security, availability, processing integrity, confidentiality, privacy) — SOC 2 is not a financial reporting controls report and its trust services criteria are not the focus of user auditor reliance on service organizations.",
		},
		{
			term: "SOC for Cybersecurity",
			pattern: "SOC\\s+for\\s+Cybersecurity|cybersecurity\\s+risk\\s+management\\s+reporting",
			category: "SOC cybersecurity",
			why: "SOC for Cybersecurity attestation — specialized attestation engagement, out of scope.",
		},
		{
			term: "SOC for Supply Chain",
			pattern: "SOC\\s+for\\s+Supply\\s+Chain",
			category: "SOC specialized",
			why: "SOC for Supply Chain attestation — specialized attestation engagement, out of scope.",
		},

		// --- IT audit framework / ISACA depth ---
		{
			term: "COBIT",
			pattern: "\\bCOBIT\\b",
			category: "IT framework",
			why: "COBIT framework — ISACA IT governance framework, Internal Controls / ISC territory if anywhere. Out of scope for a 'using the work of others' topic.",
		},
		{
			term: "ITIL",
			pattern: "\\bITIL\\b",
			category: "IT framework",
			why: "IT Infrastructure Library — IT service management framework, out of scope.",
		},
		{
			term: "CISA",
			pattern: "\\bCISA\\b",
			category: "IT audit credential",
			why: "Certified Information Systems Auditor credential detail — out of scope. The concept of an IT auditor as a category of 'other' is in scope.",
		},

		// --- Specialist methodology depth ---
		{
			term: "lattice model",
			pattern: "lattice\\s+model",
			category: "valuation methodology",
			why: "Lattice models for option valuation — Financial Valuation Methods or Fair Value topic depth. The auditor's evaluation of a specialist using a lattice model is in scope at the assumption-reasonableness level, not at the construction level.",
		},
		{
			term: "Black-Scholes",
			pattern: "Black[-\\s]Scholes",
			category: "valuation methodology",
			why: "Black-Scholes option pricing — Financial Valuation Methods topic depth.",
		},
		{
			term: "loss development factor",
			pattern: "loss\\s+development\\s+factor",
			category: "actuarial methodology",
			why: "Actuarial reserve projection mechanics — out of scope. Auditor evaluation of an actuarial specialist is at the assumption-reasonableness level.",
		},

		// --- IFAC / ISA (not US GAAS) ---
		{
			term: "ISA 600",
			pattern: "\\bISA\\s*600\\b",
			category: "IFAC standards",
			why: "IFAC International Standard on Auditing 600 — non-US standard. This spec covers AU-C 600 US GAAS.",
		},
		{
			term: "ISA 610",
			pattern: "\\bISA\\s*610\\b",
			category: "IFAC standards",
			why: "IFAC ISA 610 internal auditors — non-US standard.",
		},
		{
			term: "ISA 620",
			pattern: "\\bISA\\s*620\\b",
			category: "IFAC standards",
			why: "IFAC ISA 620 specialists — non-US standard.",
		},

		// --- Quality management at specialist-firm depth ---
		{
			term: "ISQM 1",
			pattern: "\\bISQM\\s*1\\b",
			category: "QM depth",
			why: "International Standard on Quality Management 1 — Quality Management topic. The 'using others' topic evaluates the specialist's work product, not the specialist firm's own QM system.",
		},
		{
			term: "SQMS 1",
			pattern: "\\bSQMS\\s*1\\b",
			category: "QM depth",
			why: "AICPA Statement on Quality Management Standards 1 — Quality Management topic.",
		},

		// --- IIA internal audit standards at framework depth ---
		{
			term: "IPPF",
			pattern: "\\bIPPF\\b|International\\s+Professional\\s+Practices\\s+Framework",
			category: "IIA framework depth",
			why: "IIA International Professional Practices Framework — internal auditing self-regulation framework. The external auditor evaluates the IA function for competence, objectivity, and systematic approach at the concept level without needing the IPPF depth.",
		},
	],

	notes:
		"Using the Work of Others is the designated AUD/II/F topic covering AU-C 600 (group audits), AU-C 610 (internal audit), AU-C 620 (specialists), and AU-C 402 (service organizations / SOC reliance). The Stage 2 drift census flagged 18/64 questions at 28.1% — all on `component auditor` which the Audit Evidence spec legitimately bans as group-audit territory. This spec is the whitelist counterpart: the topic IS group audit from the user's perspective, and `component auditor` is on-topic. The same pattern applies to internal audit function evaluation, management's specialist vs auditor's specialist distinction, and SOC 1 Type 1 vs Type 2 reliance. The line this spec holds: AU-C private-company depth from the user auditor's reliance perspective. Deeper content — PCAOB equivalents, SOC engagement execution methodology (SSAE 18, SOC 2 trust services criteria, SOC for Cybersecurity), specialist methodology construction (lattice models, Black-Scholes, actuarial loss development factors), IT framework depth (COBIT, ITIL, CISA), IFAC non-US standards (ISA 600/610/620), quality management depth (ISQM 1 / SQMS 1), and IIA IPPF framework — is out of scope. The scaffolder mis-anchored the stub to AUD/II/G (which is actually Specific Areas of Engagement Risk); corrected to AUD/II/F during authoring.",
};
