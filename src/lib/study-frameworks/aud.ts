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
	],
};
