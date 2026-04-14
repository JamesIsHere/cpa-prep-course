import type { TopicSpec } from "./types";

// Twenty-fifth authored spec — eighth spec of Stage 3. Selected from
// census v2 as rank #10: 64 questions, 5 flagged (8%) on
// `tolerable misstatement` (3) and `component auditor` (2). Clean
// rightful-owner: the Risk Assessment spec explicitly pushes
// tolerable misstatement to "the Materiality topic and Audit Sampling
// topic" in its outOfScope rationale. Audit Sampling owns tolerable
// misstatement as a sampling evaluation variable; this spec owns
// tolerable misstatement as a materiality allocation concept (the
// account-level subset of performance materiality). The component
// auditor hits are expected cleanup tail — group-audit concepts that
// Using the Work of Others now owns.
//
// ## Anchor
//
// AICPA AUD/II/D "Materiality" has two sub-topics:
//   1. For the financial statements as a whole
//   2. Tolerable misstatement and performance materiality
//
// This topic owns both sub-topics at group level (AUD/II/D). The
// scaffolder anchored correctly for once.
//
// ## Scope line
//
// This topic owns AU-C 320 materiality concepts: setting overall
// (financial statement level) materiality during planning via
// appropriate benchmark selection (net income before taxes for
// profit-oriented stable entities; revenue or total assets for
// volatile or emerging entities; total expenses or revenue for
// not-for-profits); performance materiality as a lower amount set to
// reduce the probability that aggregate uncorrected and undetected
// misstatements exceed overall materiality; tolerable misstatement
// as the allocation of performance materiality to specific accounts
// or classes of transactions; specific materiality (lower
// materiality levels for particular account balances, transaction
// classes, or disclosures when misstatements of lesser amounts could
// reasonably influence users' economic decisions); qualitative
// factors that may cause a quantitatively immaterial misstatement to
// be material (debt covenant violations, bonus thresholds,
// regulatory triggers, turning a loss into income or vice versa,
// affecting compliance, segment reporting effects, management
// fraud); the obligation to revise materiality if new information
// during the audit suggests a different amount should have been
// used; and the interaction between materiality, audit risk, and the
// nature/timing/extent of further audit procedures.
//
// Not this topic: sample size formulas and sampling risk
// computations (Audit Sampling owns AU-C 530); risk assessment
// procedures and risk-of-material-misstatement determination at
// depth (Risk Assessment owns AU-C 315); detailed further audit
// procedures (Substantive Procedures / Responding to Assessed
// Risks); communicating uncorrected misstatements in management
// representation letters at reporting depth (Audit Reports / Written
// Representations); PCAOB integrated-audit materiality at depth;
// component-level materiality in group audits (Using the Work of
// Others owns AU-C 600 group audit concepts); fraud procedures at
// investigation depth.

export const spec: TopicSpec = {
	topic: "Materiality",
	section: "aud",
	blueprintRef: "AUD/II/D",

	inScope: [
		"The AU-C 320 concept of materiality: information is material if omitting, misstating, or obscuring it could reasonably be expected to influence the economic decisions of users taken on the basis of the financial statements. Materiality involves both quantitative and qualitative considerations and is determined by the auditor as a matter of professional judgment.",
		"Setting overall (financial statement level) materiality during planning: the auditor selects a benchmark appropriate to the entity and its users, applies a percentage to the benchmark to compute a starting point, and adjusts for qualitative factors and the entity's specific circumstances. Typical benchmarks include net income before taxes (5% or 10%), total revenue (0.5% to 1%), total assets (0.5% to 1%), total equity, and total expenses (for not-for-profits or government entities).",
		"Benchmark selection guidance: for stable profit-oriented entities with consistent earnings, net income before taxes is often appropriate; for entities with volatile earnings (intermittent losses or swings), revenue or total assets may provide a more stable benchmark than net income; for not-for-profit organizations, total expenses or total revenue is generally preferred over net assets; for investment funds, net assets may be appropriate; for privately held entities focused on growth, revenue may better reflect the basis for users' economic decisions than current-year earnings.",
		"Computing overall materiality as a percentage of the benchmark: for a stable entity with pre-tax income of $4.2 million, 5% produces $210,000; for a revenue-based benchmark on $100 million revenue, 0.5% produces $500,000. The specific percentages are judgmental ranges (5%-10% of pre-tax income, 0.5%-1% of revenue or total assets) rather than fixed rules.",
		"Performance materiality: an amount set by the auditor at less than overall materiality to reduce to an appropriately low level the probability that the aggregate of uncorrected and undetected misstatements exceeds overall materiality. Performance materiality is typically set at 50%-75% of overall materiality and provides a buffer against undetected misstatements in the remaining unaudited portion of the population.",
		"Tolerable misstatement: the application of performance materiality to a particular sampling procedure, representing the maximum monetary error in a particular account balance or class of transactions that the auditor is willing to accept. Tolerable misstatement is derived from performance materiality and is typically set at or below performance materiality for a specific account. The conceptual link is performance-materiality → tolerable-misstatement-by-account → sample design and evaluation.",
		"Specific materiality for particular account balances, transaction classes, or disclosures: when misstatements of lesser amounts than overall materiality could reasonably be expected to influence users' decisions, the auditor sets a lower materiality level for those specific items. Examples include sensitive disclosures (related-party transactions, management compensation), amounts subject to contractual thresholds (debt covenants, bonus formulas), regulatory minimums (reserve requirements), and transactions affecting key performance indicators in the industry.",
		"Qualitative factors that may render a quantitatively immaterial misstatement material: a misstatement that causes a debt covenant violation, triggers a bonus payout, converts a reported loss into income (or vice versa), affects management compensation, involves fraud or illegal acts, changes a trend in earnings, affects segment disclosures for segment users, changes a ratio that users focus on, involves related-party amounts, or reclassifies an item from one line to another in a way users would consider important. A $15,000 misstatement well below a $400,000 overall materiality may still be material on qualitative grounds if it involves executive compensation or fraud.",
		"The materiality-risk relationship: materiality and audit risk have an inverse relationship. Lower materiality means the auditor must obtain more evidence (more extensive procedures, more effective procedures, or procedures closer to year-end) to achieve the same acceptable level of audit risk, whereas higher materiality allows less extensive procedures. The auditor's selection of materiality directly affects the nature, timing, and extent of further audit procedures.",
		"Revising materiality during the audit: if the auditor becomes aware during the audit that the initial materiality determination should be different — for example, because the entity's actual financial results differ significantly from the estimates used in planning (actual revenue is $7 million rather than the planned $10 million), or because changes in circumstances (a new significant transaction, a change in accounting policy, an unexpected event) warrant revision — the auditor revises materiality and considers the implications for the nature, timing, and extent of further audit procedures and for any work already performed.",
		"Reporting-level materiality application: in evaluating uncorrected misstatements at the conclusion of the audit, the auditor considers whether the aggregate of uncorrected misstatements — both individually and in the aggregate — exceeds materiality. If yes, the auditor discusses with management and those charged with governance; if uncorrected, the auditor determines whether this affects the audit opinion. The initial overall materiality, revised if appropriate, becomes the threshold for evaluating the sufficiency of the audit.",
		"The entity-type effect on benchmark selection: a for-profit stable entity typically uses net income before taxes; a rapidly growing technology startup with minimal or negative earnings uses revenue; a financial institution may use total assets or net interest income; a not-for-profit uses total expenses or total revenue (not net assets because net assets are not an income-measure proxy); a governmental entity may use total revenue or expenditures.",
		"The relationship among overall, performance, and tolerable amounts: overall materiality is the upper bound used to evaluate the financial statements taken as a whole; performance materiality is a lower buffer used to plan procedures; tolerable misstatement is the account-level application of performance materiality used for designing substantive sampling. These three are hierarchically linked: overall > performance > tolerable.",
		"The effect of first-year vs recurring audits: first-year audits may warrant a lower initial materiality because the auditor has less knowledge of the entity and higher uncertainty. Recurring audits may use prior-year amounts as a starting point but must confirm that the amounts are still appropriate for the current year's circumstances.",
		"Documentation requirements for materiality judgments: AU-C 320 requires the auditor to document the amounts for overall materiality, performance materiality, and any specific materiality (with the rationale for the benchmark and percentages); any revisions made during the audit and the reason; and the resulting effect on the nature, timing, and extent of further audit procedures.",
	],

	outOfScope: [
		"AU-C 530 audit sampling mechanics at depth — sample size formulas, sampling risk (overreliance, underreliance, incorrect acceptance, incorrect rejection), attributes sampling for tests of controls, variables sampling for substantive tests, monetary unit sampling (MUS / PPS), tainting factor projection, stratification computation, classical variables estimation. This belongs to the Audit Sampling topic. Tolerable misstatement as a materiality allocation concept is in scope here; tolerable misstatement as a sample evaluation variable is in scope for Audit Sampling",
		"AU-C 315 risk assessment procedures at depth — the risk of material misstatement determination, inherent risk vs control risk assessment, identifying significant risks, analytical procedures at the planning level as risk assessment, the audit risk model (AR = IR × CR × DR) mechanics. Risk Assessment topic territory. Materiality influences the procedures performed in response to assessed risks but does not itself encompass the risk assessment process",
		"AU-C 330 further audit procedures — the specific response to assessed risks, tests of controls vs substantive procedures selection, timing of procedures (interim vs year-end), evaluation of whether sufficient appropriate evidence has been obtained. Substantive Procedures / Responding to Assessed Risks territory",
		"AU-C 600 group audit component-level materiality — component materiality, component performance materiality, the group engagement team's determination of component-level amounts based on the component's relative significance to the group financial statements. Using the Work of Others topic owns group audit concepts. Single-entity materiality at the engagement level is in scope",
		"PCAOB AS 2105 (Consideration of Materiality in Planning and Performing an Audit) at depth — the AUD exam tests PCAOB only as a distinction, not at depth. AU-C 320 is the scope",
		"PCAOB AS 2110 (Identifying and Assessing Risks of Material Misstatement) and AS 2301 (The Auditor's Responses to the Risks of Material Misstatement) at depth — PCAOB tests as distinction only",
		"PCAOB integrated audit materiality — separate materiality concepts for the integrated audit of internal control over financial reporting under AS 2201. Integrated audit territory if specced",
		"Fraud response procedures at investigation depth — AU-C 240 detailed fraud detection procedures, forensic investigation techniques, fraud-specific confirmation procedures, brainstorming documentation. Risk Assessment / fraud territory. Materiality's consideration of fraud as a qualitative factor (a misstatement caused by fraud may be material regardless of quantitative amount) is in scope; detailed fraud procedures are not",
		"Communication of uncorrected and corrected misstatements at reporting depth — AU-C 450 Evaluation of Misstatements Identified During the Audit at reporting depth, the specific contents of the schedule of uncorrected misstatements, the governance communication at audit completion. Audit Reports / Communications territory. The conceptual link from materiality to the aggregate uncorrected misstatement threshold is in scope",
		"Going concern materiality considerations at depth — when going concern doubt itself is material, the AU-C 570 substantial doubt framework, the management vs auditor assessment, specific disclosures required. Going Concern territory",
		"Internal control over financial reporting materiality — materiality for auditing ICFR separately from the financial statement audit under AS 2201. ICFR / integrated audit territory",
		"Industry-specific materiality guidelines (SEC Staff Accounting Bulletin 99 / 108 at regulator depth, FASB Concepts Statement 8 materiality framework at standard-setter depth, iXBRL tagging materiality at reporting depth). General materiality concepts drawn from SAB 99 (the qualitative factors list) are in scope; regulator-specific depth is not",
		"Audit evidence reliability and relevance at AU-C 500 depth — the characteristics of sufficient appropriate evidence, the hierarchy of evidence reliability. Audit Evidence topic",
		"Related party transactions procedures at depth — AU-C 550 specific procedures for identifying related parties and related-party transactions. Audit Evidence / Risk Assessment territory. The materiality consideration that related-party transactions may warrant specific materiality is in scope",
	],

	keyStandards: [
		"AU-C 320 — Materiality in Planning and Performing an Audit",
		"AU-C 450 — Evaluation of Misstatements Identified During the Audit (referenced for the reporting-level aggregation)",
		"AU-C 200 — Overall Objectives of the Independent Auditor (referenced for the materiality-risk inverse relationship)",
		"AU-C 315 — Understanding the Entity and Its Environment (referenced for how materiality influences risk assessment procedures)",
		"AU-C 330 — Performing Audit Procedures in Response to Assessed Risks (referenced for how materiality drives nature/timing/extent)",
		"AU-C 540 — Auditing Accounting Estimates (referenced for specific materiality on estimates)",
	],

	commonMisconceptions: [
		"Believing materiality is a bright-line number. Materiality is a matter of professional judgment informed by quantitative benchmarks and percentages, not a fixed rule. The 5% of pre-tax income and 0.5%-1% of revenue or total assets guidelines are starting points that the auditor adjusts for qualitative factors, entity-specific circumstances, and user expectations.",
		"Thinking overall materiality and performance materiality are the same. Overall materiality is the threshold used for evaluating the financial statements taken as a whole. Performance materiality is a lower amount (typically 50%-75% of overall) used to plan and perform procedures, providing a buffer against aggregation risk. Tolerable misstatement is yet a different application — performance materiality allocated to a specific account for sampling purposes.",
		"Believing that a misstatement below quantitative materiality is never material. Qualitative factors can render a quantitatively small misstatement material: covenant violations, bonus triggers, converting a loss to income, affecting regulatory compliance, involving fraud, or changing a trend important to users. A $15,000 executive travel misstatement below a $400,000 materiality may still be material if it involves fraud or misappropriation.",
		"Thinking the same benchmark should be used for all entities. Benchmark selection depends on the entity's nature, users, and circumstances. A stable profit-oriented entity uses net income before taxes; a volatile or loss-incurring entity uses revenue or assets; a not-for-profit uses total expenses or revenue; an investment fund uses net assets.",
		"Confusing the materiality-risk relationship. Lower materiality requires MORE audit work (more evidence, more procedures) because the auditor must detect smaller misstatements. Higher materiality allows less extensive procedures because larger misstatements are acceptable. The relationship is inverse.",
		"Believing materiality is set once at planning and never revised. If during the audit the auditor becomes aware that the initial materiality should be different (because of changed circumstances, actual results differing from estimates used in planning, or new information), materiality must be revised and the auditor must consider the implications for procedures already performed and those remaining.",
		"Conflating tolerable misstatement with tolerable rate of deviation. Tolerable misstatement is a dollar amount used for substantive testing of account balances — derived from performance materiality. Tolerable rate of deviation is a percentage used for attributes sampling of control tests — derived from the auditor's willingness to rely on a control. Both represent maximum acceptable error, but they apply to different testing contexts and are expressed in different units.",
		"Believing the engagement partner does not need to document materiality judgments. AU-C 320 requires documentation of overall materiality, performance materiality, any specific materiality for particular items, any revisions during the audit, and the basis for each amount.",
		"Thinking specific materiality means reducing overall materiality for all items. Specific materiality is a LOWER threshold for SPECIFIC items (particular balances, transactions, or disclosures) where misstatements below the overall amount could still influence users. Other items continue to be evaluated at the overall materiality level.",
		"Treating a net-of-tax misstatement evaluation as the rule. Materiality is typically computed on pre-tax income but applied to misstatements before considering tax effects, unless the effect of income tax is itself the misstatement under evaluation. The evaluation should consider both the gross misstatement and any tax effect.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Audit Sampling mechanics (separate topic) ---
		{
			term: "attribute sampling",
			pattern: "attribute\\s+sampling|attribute[-\\s]based\\s+sample",
			category: "sampling mechanics",
			why: "Attribute sampling — Audit Sampling topic territory. Materiality is the allocation concept; sample design using that allocation is Audit Sampling.",
		},
		{
			term: "variables sampling",
			pattern: "variables\\s+sampling",
			category: "sampling mechanics",
			why: "Variables sampling (classical, MUS, PPS) — Audit Sampling topic.",
		},
		{
			term: "monetary unit sampling",
			pattern: "monetary[-\\s]unit\\s+sampling|\\bMUS\\b|\\bPPS\\s+sampling|probability[-\\s]proportional[-\\s]to[-\\s]size",
			category: "sampling mechanics",
			why: "Monetary unit / PPS sampling mechanics — Audit Sampling topic.",
		},
		{
			term: "tolerable rate of deviation",
			pattern: "tolerable\\s+rate\\s+of\\s+deviation",
			category: "sampling mechanics",
			why: "Tolerable rate of deviation — attribute sampling concept for tests of controls, Audit Sampling territory. Tolerable misstatement (dollar amount for substantive testing, derived from performance materiality) is in scope here.",
		},
		{
			term: "sampling risk",
			pattern: "sampling\\s+risk|risk\\s+of\\s+overreliance|risk\\s+of\\s+incorrect\\s+acceptance|risk\\s+of\\s+incorrect\\s+rejection",
			category: "sampling mechanics",
			why: "Sampling risk concepts — Audit Sampling topic.",
		},
		{
			term: "haphazard selection",
			pattern: "haphazard\\s+selection",
			category: "sampling mechanics",
			why: "Haphazard sampling selection method — Audit Sampling topic.",
		},

		// --- Group audit / component auditor (Using the Work of Others) ---
		{
			term: "component auditor",
			pattern: "component\\s+auditor",
			category: "group audit",
			why: "Component auditor and group audit concepts — Using the Work of Others topic (AU-C 600).",
		},
		{
			term: "component materiality",
			pattern: "component\\s+materiality|component\\s+performance\\s+materiality",
			category: "group audit",
			why: "Component-level materiality in a group audit — AU-C 600 Using the Work of Others territory.",
		},
		{
			term: "referred-to auditor",
			pattern: "referred[-\\s]to\\s+auditor",
			category: "group audit",
			why: "Referred-to auditor (divided-responsibility group audit option) — Using the Work of Others topic.",
		},

		// --- PCAOB depth ---
		{
			term: "AS 2105",
			pattern: "\\bAS\\s*2105\\b",
			category: "PCAOB depth",
			why: "PCAOB materiality standard — AUD exam tests PCAOB only as a distinction, not at depth. AU-C 320 is the scope.",
		},
		{
			term: "AS 2201",
			pattern: "\\bAS\\s*2201\\b",
			category: "PCAOB depth",
			why: "PCAOB integrated audit of ICFR — separate integrated audit topic, not single-engagement materiality.",
		},
		{
			term: "AS 2110",
			pattern: "\\bAS\\s*2110\\b",
			category: "PCAOB depth",
			why: "PCAOB risk assessment standard — Risk Assessment territory, not materiality.",
		},
		{
			term: "AS 2301",
			pattern: "\\bAS\\s*2301\\b",
			category: "PCAOB depth",
			why: "PCAOB auditor's responses to risks standard — Substantive Procedures territory.",
		},

		// --- IFAC / ISA (not US GAAS) ---
		{
			term: "ISA 320",
			pattern: "\\bISA\\s*320\\b",
			category: "IFAC standards",
			why: "IFAC International Standard on Auditing 320 — non-US standard. This spec covers AU-C 320 US GAAS.",
		},
		{
			term: "ISA 450",
			pattern: "\\bISA\\s*450\\b",
			category: "IFAC standards",
			why: "IFAC ISA 450 — non-US standard.",
		},

		// --- SEC regulator depth ---
		{
			term: "SAB 99",
			pattern: "SAB\\s*99|Staff\\s+Accounting\\s+Bulletin\\s+99",
			category: "SEC regulator depth",
			why: "SEC Staff Accounting Bulletin 99 at regulator citation depth. The qualitative factors drawn from SAB 99 are in scope at concept level.",
		},
		{
			term: "SAB 108",
			pattern: "SAB\\s*108|Staff\\s+Accounting\\s+Bulletin\\s+108",
			category: "SEC regulator depth",
			why: "SEC Staff Accounting Bulletin 108 (iron curtain vs rollover method) — regulator depth, out of scope at concept level.",
		},
	],

	notes:
		"Materiality is the AUD/II/D topic covering AU-C 320 concepts for setting overall (financial statement level) materiality, performance materiality, tolerable misstatement (as allocated from performance materiality), specific materiality for particular items, qualitative factors, the materiality-risk inverse relationship, and revising materiality during the audit. Census v2 flagged 5/64 questions at 8% — 3 on `tolerable misstatement` and 2 on `component auditor`. Clean rightful-owner pattern: the Risk Assessment spec explicitly pushes `tolerable misstatement` to 'the Materiality topic and Audit Sampling topic' in its outOfScope rationale, and tolerable misstatement as an allocation concept (account-level application of performance materiality) is exactly this topic's territory. Audit Sampling owns tolerable misstatement as a sample-evaluation variable; this spec owns it as a materiality-allocation concept. The `component auditor` hits are expected cleanup tail — group-audit concepts that Using the Work of Others now owns. Line this spec holds: AU-C 320 single-engagement materiality at concept and practical-application depth. Out of scope: AU-C 530 sampling mechanics (attribute sampling, variables sampling, MUS/PPS, tolerable rate of deviation, sampling risk, selection methods), AU-C 315 risk assessment at depth, AU-C 330 further audit procedures, AU-C 600 group audit component-level materiality, PCAOB AS 2105/2110/2201/2301 at depth, IFAC ISA 320/450, SEC SAB 99/108 at regulator depth, fraud investigation depth, going concern materiality depth, ICFR materiality, and industry-specific regulator guidelines.",
};
