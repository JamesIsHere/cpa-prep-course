import type { StudyFramework } from "./types";

export const audFramework: StudyFramework = {
	sectionCode: "aud",
	sectionTitle: "Auditing and Attestation",
	conceptMaps: [
		{
			title: "The Audit Process",
			root: {
				label: "Audit Engagement",
				children: [
					{
						label: "Pre-Engagement",
						children: [
							{ label: "Client acceptance/continuance" },
							{ label: "Engagement letter" },
							{ label: "Independence assessment" },
						],
					},
					{
						label: "Planning",
						children: [
							{ label: "Understand entity & environment" },
							{ label: "Assess risks of material misstatement" },
							{ label: "Determine materiality" },
							{ label: "Develop audit strategy" },
						],
					},
					{
						label: "Fieldwork",
						children: [
							{ label: "Test controls (if relying)" },
							{ label: "Substantive procedures" },
							{ label: "Audit sampling" },
							{ label: "Evaluate evidence" },
						],
					},
					{
						label: "Completion & Reporting",
						children: [
							{ label: "Evaluate misstatements" },
							{ label: "Subsequent events review" },
							{ label: "Management representations" },
							{ label: "Issue audit report" },
						],
					},
				],
			},
		},
		{
			title: "Audit Evidence",
			root: {
				label: "Audit Evidence",
				children: [
					{
						label: "Nature of Procedures",
						children: [
							{ label: "Inspection of records/documents" },
							{ label: "Inspection of tangible assets" },
							{ label: "Observation" },
							{ label: "Inquiry" },
							{ label: "Confirmation" },
							{ label: "Recalculation" },
							{ label: "Reperformance" },
							{ label: "Analytical procedures" },
						],
					},
					{
						label: "Sufficiency (quantity)",
						children: [
							{ label: "Risk level drives sample size" },
							{ label: "Quality of evidence affects quantity" },
						],
					},
					{
						label: "Appropriateness (quality)",
						children: [
							{ label: "Relevance to assertion" },
							{ label: "Reliability of source" },
						],
					},
				],
			},
		},
		{
			title: "Internal Control Components (COSO)",
			root: {
				label: "Internal Control — Integrated Framework",
				children: [
					{
						label: "Control Environment",
						children: [
							{ label: "Integrity & ethical values" },
							{ label: "Board oversight" },
							{ label: "Organizational structure" },
						],
					},
					{
						label: "Risk Assessment",
						children: [
							{ label: "Identify risks" },
							{ label: "Analyze likelihood & impact" },
							{ label: "Assess fraud risk" },
						],
					},
					{
						label: "Control Activities",
						children: [
							{ label: "Authorization" },
							{ label: "Segregation of duties" },
							{ label: "IT general controls" },
						],
					},
					{
						label: "Information & Communication",
						children: [
							{ label: "Internal reporting" },
							{ label: "External reporting" },
						],
					},
					{
						label: "Monitoring Activities",
						children: [
							{ label: "Ongoing evaluations" },
							{ label: "Separate evaluations" },
							{ label: "Report deficiencies" },
						],
					},
				],
			},
		},
		{
			title: "Types of Audit Reports",
			root: {
				label: "Audit Report Types",
				children: [
					{
						label: "Unmodified Opinion",
						children: [
							{ label: "Standard (clean) report" },
							{ label: "Emphasis-of-Matter paragraph" },
							{ label: "Other-Matter paragraph" },
						],
					},
					{
						label: "Modified Opinions",
						children: [
							{ label: "Qualified — except for" },
							{ label: "Adverse — material & pervasive" },
							{ label: "Disclaimer — unable to obtain evidence" },
						],
					},
				],
			},
		},
		{
			title: "IT Controls Hierarchy",
			root: {
				label: "IT Controls",
				children: [
					{
						label: "IT General Controls (ITGCs)",
						children: [
							{ label: "Access security (user IDs, passwords, MFA)" },
							{ label: "Program change management (test, approve, migrate)" },
							{ label: "Computer operations (backups, job scheduling)" },
							{ label: "Program development (SDLC, user acceptance testing)" },
						],
					},
					{
						label: "Application Controls",
						children: [
							{ label: "Input controls (edit checks, validation rules)" },
							{ label: "Processing controls (run-to-run totals, limit tests)" },
							{
								label: "Output controls (report distribution, reconciliation)",
							},
						],
					},
					{
						label: "CAATs (Auditor Tools)",
						children: [
							{ label: "Test data" },
							{ label: "Integrated test facility (ITF)" },
							{ label: "Generalized audit software (GAS)" },
							{ label: "Embedded audit modules" },
						],
					},
				],
			},
		},
		{
			title: "Government Auditing Standards Hierarchy",
			root: {
				label: "Government Auditing Standards (GAGAS)",
				children: [
					{
						label: "Issued by GAO (Yellow Book)",
						children: [
							{
								label:
									"Applies to government entities and federal award recipients",
							},
							{ label: "Builds on GAAS with additional requirements" },
						],
					},
					{
						label: "Financial Audits",
						children: [
							{ label: "Follow GAAS + GAGAS supplements" },
							{
								label: "Additional reports on internal control and compliance",
							},
							{
								label:
									"Single Audit for entities expending ≥$750,000 in federal awards",
							},
						],
					},
					{
						label: "Performance Audits",
						children: [
							{ label: "Unique to GAGAS (no GAAS equivalent)" },
							{ label: "Evaluate effectiveness, economy, and efficiency" },
							{ label: "Findings: condition, criteria, cause, effect" },
						],
					},
					{
						label: "Attestation Engagements",
						children: [
							{ label: "Follow SSAE + GAGAS supplements" },
							{ label: "Examinations, reviews, AUP on compliance" },
						],
					},
				],
			},
		},
		{
			title: "SQMS No. 1 Components",
			root: {
				label: "System of Quality Management",
				children: [
					{
						label: "Foundation",
						children: [
							{ label: "Firm's risk assessment process" },
							{ label: "Governance and leadership" },
						],
					},
					{
						label: "Standards",
						children: [
							{ label: "Relevant ethical requirements" },
							{ label: "Acceptance and continuance" },
						],
					},
					{
						label: "Execution",
						children: [
							{ label: "Engagement performance" },
							{ label: "Resources (human, technological, intellectual)" },
						],
					},
					{
						label: "Oversight",
						children: [
							{ label: "Information and communication" },
							{ label: "Monitoring and remediation" },
						],
					},
				],
			},
		},
	],
	decisionTrees: [
		{
			title: "Audit Opinion Selection",
			root: {
				question: "Are the financial statements free of material misstatement?",
				yes: {
					question: "Is the auditor free from scope limitations?",
					yes: "Unmodified (clean) opinion",
					no: {
						question: "Is the scope limitation pervasive?",
						yes: "Disclaimer of opinion",
						no: "Qualified opinion (scope limitation)",
					},
				},
				no: {
					question:
						"Is the misstatement pervasive to the financial statements?",
					yes: "Adverse opinion",
					no: "Qualified opinion (misstatement)",
				},
			},
		},
		{
			title: "Control Deficiency Classification",
			root: {
				question:
					"Does a deficiency (or combination) exist in internal control?",
				yes: {
					question:
						"Is there a reasonable possibility that a material misstatement would not be prevented or detected on a timely basis?",
					yes: "Material weakness — must communicate to management and those charged with governance",
					no: {
						question:
							"Is the deficiency important enough to merit attention by those charged with governance?",
						yes: "Significant deficiency — communicate in writing to those charged with governance",
						no: "Deficiency — may communicate to management",
					},
				},
				no: "No control deficiency to report",
			},
		},
		{
			title: "Subsequent Events Treatment",
			root: {
				question: "Did the event occur before the balance sheet date?",
				yes: {
					question:
						"Did additional evidence about conditions at the balance sheet date arise?",
					yes: "Type I (recognized): Adjust the financial statements",
					no: "Not a subsequent event requiring adjustment",
				},
				no: {
					question:
						"Did the event occur between balance sheet date and report date?",
					yes: {
						question:
							"Does the event provide evidence about conditions at the balance sheet date?",
						yes: "Type I (recognized): Adjust the financial statements",
						no: "Type II (non-recognized): Disclose in notes, do not adjust",
					},
					no: "Outside the subsequent events window",
				},
			},
		},
		{
			title: "Going Concern Reporting",
			root: {
				question:
					"Do conditions or events raise substantial doubt about going concern?",
				yes: {
					question:
						"Are management's plans to mitigate the conditions feasible?",
					yes: {
						question: "Is substantial doubt alleviated by the plans?",
						yes: "No modification needed (consider adequacy of disclosure)",
						no: {
							question:
								"Has the entity adequately disclosed the going concern uncertainty?",
							yes: "Unmodified opinion with emphasis-of-matter paragraph",
							no: "Qualified or adverse opinion (GAAP departure)",
						},
					},
					no: {
						question:
							"Has the entity adequately disclosed the going concern uncertainty?",
						yes: "Unmodified opinion with emphasis-of-matter paragraph",
						no: "Qualified or adverse opinion (GAAP departure)",
					},
				},
				no: "No going concern reporting required",
			},
		},
		{
			title: "Is This Engagement Subject to GAGAS?",
			root: {
				question: "Is the entity a government organization or program?",
				yes: "Subject to GAGAS — apply Yellow Book requirements",
				no: {
					question:
						"Does the entity receive federal awards (grants, contracts, cooperative agreements)?",
					yes: {
						question:
							"Does the entity expend $750,000 or more in federal awards during the fiscal year?",
						yes: "Single Audit required under GAGAS and Uniform Guidance",
						no: "GAGAS may apply if required by the award terms, but Single Audit is not required",
					},
					no: {
						question:
							"Do any laws, regulations, or contractual agreements require a GAGAS audit?",
						yes: "Subject to GAGAS — apply Yellow Book requirements per the specific mandate",
						no: "GAGAS does not apply — standard GAAS engagement",
					},
				},
			},
		},
		{
			title: "SOC Report Selection",
			root: {
				question:
					"Are the controls relevant to user entities' financial reporting?",
				yes: {
					question:
						"Does the user auditor need evidence about operating effectiveness over a period?",
					yes: "SOC 1 Type 2 report",
					no: "SOC 1 Type 1 report (design and implementation only)",
				},
				no: {
					question: "Is the report intended for general public distribution?",
					yes: "SOC 3 report (general-use, condensed format)",
					no: "SOC 2 report (detailed, restricted distribution)",
				},
			},
		},
	],
	formulas: [
		{
			name: "Overall Materiality",
			formula: "Benchmark × Percentage",
			description:
				"Common benchmarks: 5% of pre-tax income, 0.5–1% of total revenue, 1–2% of total assets",
		},
		{
			name: "Performance Materiality",
			formula: "Overall Materiality × 50–75%",
			description:
				"Set below overall materiality to reduce the risk that aggregate uncorrected misstatements exceed materiality",
		},
		{
			name: "Tolerable Misstatement (sampling)",
			formula: "Performance Materiality allocated to account",
			description: "Maximum misstatement in an account that can be accepted",
		},
		{
			name: "Sample Size (attributes)",
			formula:
				"n = (Reliability Factor) / (Tolerable Rate − Expected Population Deviation Rate)",
			description:
				"Tests of controls: larger samples needed when tolerable rate is low or expected deviations are high",
		},
		{
			name: "Audit Risk Model",
			formula: "AR = IR × CR × DR",
			description:
				"Audit Risk = Inherent Risk × Control Risk × Detection Risk. Auditor controls DR by adjusting nature, timing, and extent of procedures.",
		},
		{
			name: "MUS Sampling Interval",
			formula: "Sampling Interval = Total Population Value / Sample Size",
			description:
				"Each nth dollar is a selection point. Larger balances have proportionally higher probability of selection.",
		},
		{
			name: "MUS Projected Misstatement",
			formula:
				"Projected Misstatement = Tainting % × Sampling Interval, where Tainting % = (Book − Audit) / Book",
			description:
				"Projects sample misstatements to the population. Items exceeding the interval use actual misstatement, not projection.",
		},
	],
	referenceTables: [
		{
			title: "Management Assertions by Category",
			headers: ["Category", "Assertion", "Description"],
			rows: [
				["Transactions", "Occurrence", "Transactions actually occurred"],
				["Transactions", "Completeness", "All transactions are recorded"],
				["Transactions", "Accuracy", "Amounts and data are correctly recorded"],
				["Transactions", "Cutoff", "Transactions recorded in correct period"],
				[
					"Transactions",
					"Classification",
					"Transactions recorded in proper accounts",
				],
				["Balances", "Existence", "Assets, liabilities, and equity exist"],
				[
					"Balances",
					"Rights & Obligations",
					"Entity holds rights to assets; liabilities are obligations",
				],
				["Balances", "Completeness", "All balances are recorded"],
				[
					"Balances",
					"Valuation & Allocation",
					"Recorded at appropriate amounts",
				],
				[
					"Disclosures",
					"Occurrence / Rights",
					"Disclosed events occurred and pertain to entity",
				],
				[
					"Disclosures",
					"Completeness",
					"All required disclosures are included",
				],
				[
					"Disclosures",
					"Classification / Understandability",
					"Information is clearly presented",
				],
				[
					"Disclosures",
					"Accuracy / Valuation",
					"Disclosed information is accurate",
				],
			],
		},
		{
			title: "Engagement Types Comparison",
			headers: [
				"Feature",
				"Audit",
				"Review",
				"Compilation",
				"Agreed-Upon Procedures",
			],
			rows: [
				[
					"Level of assurance",
					"Reasonable",
					"Limited",
					"None",
					"None (findings only)",
				],
				[
					"Key procedures",
					"Inspect, confirm, observe, recalculate",
					"Inquiry, analytical procedures",
					"Read for obvious errors",
					"Specified by engaging parties",
				],
				[
					"Report opinion",
					"Positive — FS are fairly stated",
					"Negative — nothing came to our attention",
					"No assurance expressed",
					"Report findings only",
				],
				[
					"Independence required",
					"Yes",
					"Yes",
					"No (but must disclose lack)",
					"Yes",
				],
			],
		},
		{
			title: "Sampling Approaches",
			headers: ["Approach", "Use", "Method"],
			rows: [
				[
					"Attribute sampling",
					"Tests of controls",
					"Determine rate of control deviations",
				],
				[
					"Variables sampling (MUS)",
					"Substantive testing",
					"Estimate monetary misstatement using monetary-unit sampling",
				],
				[
					"Classical variables",
					"Substantive testing",
					"Mean-per-unit, difference, or ratio estimation",
				],
				[
					"Non-statistical",
					"Either",
					"Auditor judgment for sample selection and evaluation",
				],
			],
		},
		{
			title: "PCAOB vs. AICPA GAAS",
			headers: ["Feature", "PCAOB (Issuers)", "GAAS (Non-Issuers)"],
			rows: [
				[
					"Standard setter",
					"PCAOB (SEC oversight)",
					"AICPA Auditing Standards Board",
				],
				[
					"Quality oversight",
					"PCAOB inspections (annual or triennial)",
					"Peer review (every 3 years)",
				],
				[
					"Internal control opinion",
					"Required (integrated audit)",
					"Not required",
				],
				[
					"Partner rotation",
					"Required by SOX (5-year rotation)",
					"Not required for most",
				],
				["CAMs/KAMs", "Required in audit report", "Not required"],
				["Auditor tenure disclosure", "Required in report", "Not required"],
			],
		},
		{
			title: "SOC Report Types",
			headers: ["Report", "Subject Matter", "Distribution", "Criteria"],
			rows: [
				[
					"SOC 1",
					"Controls relevant to user financial reporting",
					"Restricted",
					"SSAE (AT-C 320)",
				],
				[
					"SOC 2",
					"Security, availability, processing integrity, confidentiality, privacy",
					"Restricted",
					"Trust Services Criteria",
				],
				[
					"SOC 3",
					"Same as SOC 2 (condensed)",
					"General use",
					"Trust Services Criteria",
				],
			],
		},
		{
			title: "IT Control Categories",
			headers: ["Control Type", "Scope", "Examples"],
			rows: [
				[
					"IT General Controls",
					"IT environment (all applications)",
					"Access security, change management, operations, development",
				],
				[
					"Application Controls",
					"Specific application/process",
					"Edit checks, validation rules, run-to-run totals, output reconciliation",
				],
				[
					"Manual Controls",
					"Human-performed procedures",
					"Supervisory review, reconciliations, physical counts",
				],
			],
		},
		{
			title: "SSARS Engagement Levels",
			headers: [
				"Engagement",
				"Assurance",
				"Report Issued",
				"Independence Required",
				"Key Requirement",
			],
			rows: [
				[
					"Preparation",
					"None",
					"No (legend on each page)",
					"No",
					"Engagement letter + no-assurance legend",
				],
				[
					"Compilation",
					"None",
					"Yes",
					"No (disclose lack)",
					"Read for obvious errors",
				],
				[
					"Review",
					"Limited",
					"Yes",
					"Yes",
					"Inquiry + analytical procedures + rep letter",
				],
			],
		},
		{
			title: "GAAS vs. GAGAS Requirements",
			headers: ["Requirement", "GAAS (AICPA)", "GAGAS (Yellow Book)"],
			rows: [
				[
					"Standard setter",
					"AICPA Auditing Standards Board",
					"U.S. Government Accountability Office (GAO)",
				],
				[
					"Independence rules",
					"AICPA Code + threats/safeguards",
					"More restrictive — prohibits certain nonaudit services permitted under AICPA",
				],
				[
					"CPE requirements",
					"Varies by state board",
					"80 hours/2 years, 24 in government topics",
				],
				[
					"Internal control report",
					"Communicate deficiencies in writing (no separate report)",
					"Separate report on internal control required",
				],
				[
					"Compliance report",
					"Consider laws/regulations (no separate report)",
					"Separate report on compliance with laws and regulations required",
				],
				[
					"Performance audits",
					"Not applicable",
					"Yes — evaluates effectiveness, economy, and efficiency",
				],
				[
					"Single Audit",
					"Not applicable",
					"Required for entities expending ≥$750,000 in federal awards",
				],
			],
		},
	],
	mnemonics: [
		{
			acronym: "CRIME",
			expansion:
				"Control environment, Risk assessment, Information & communication, Monitoring, Existing control activities",
			explanation:
				"The five components of the COSO Internal Control Framework. Remember: without CRIME prevention, controls fail.",
		},
		{
			acronym: "PERCV",
			expansion: "Presentation, Existence, Rights, Completeness, Valuation",
			explanation:
				"The five categories of financial statement assertions (balance sheet). Think: 'I PERCV the balance sheet.'",
		},
		{
			acronym: "COCOA",
			expansion:
				"Cutoff, Occurrence, Completeness, cOrrect amount (Accuracy), Account classification",
			explanation:
				"Transaction-level assertions. Think: drink COCOA while reviewing transactions.",
		},
		{
			acronym: "AEIOU",
			expansion:
				"Analytical procedures, Enquiry/inquiry, Inspection, Observation, Underlying documentation (reperformance/recalculation)",
			explanation:
				"The types of audit evidence procedures — like vowels, they are fundamental to every engagement.",
		},
		{
			acronym: "PAID TIPS",
			expansion:
				"Prior period adjustments, Accounting changes, Irregularities, Disclosure inadequacies, Theft, Illegal acts, Personnel issues, Significant unusual transactions",
			explanation:
				"Red flags that may indicate increased risk of material misstatement or fraud.",
		},
		{
			acronym: "POR",
			expansion: "Pressure, Opportunity, Rationalization",
			explanation:
				"The fraud triangle — three conditions generally present when fraud occurs. Pressure creates motive, opportunity provides access, rationalization justifies the act.",
		},
		{
			acronym: "GRACEIMM",
			expansion:
				"Governance, Risk assessment, Acceptance, Communication, Engagement performance, Information, Monitoring, Resources (reordered as GRACEIMM for memorability, but covers all 8 SQMS No. 1 components)",
			explanation:
				"The eight components of a firm's quality management system under SQMS No. 1. A firm without GRACEIMM has no quality assurance.",
		},
		{
			acronym: "ROIA",
			expansion:
				"Risk of Overreliance, Risk of Incorrect Acceptance (effectiveness risks); Risk of Underreliance, Risk of Incorrect Rejection (efficiency risks)",
			explanation:
				"The four types of sampling risk. ROIA helps remember the two dangerous effectiveness risks: overreliance on controls and incorrect acceptance of a misstated balance.",
		},
		{
			acronym: "CAM",
			expansion:
				"Communicated to audit committee, Accounts/disclosures are material, Matter involved challenging judgment",
			explanation:
				"The three criteria for Critical Audit Matters in PCAOB reports. All three must be met for a matter to be reported as a CAM.",
		},
	],
};
