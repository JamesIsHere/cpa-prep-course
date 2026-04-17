import type { LessonSpec } from "./types";

// Twenty-first authored spec — fourth spec of Stage 3. Selected from
// the Stage 2 drift census v2 as the clean rightful-owner candidate at
// rank #3: 52 questions, 23 flagged by the universal ban set (44.2%),
// 13 on `tolerable misstatement` and 10 on `attribute sampling` — both
// terms that the Audit Evidence and Risk Assessment specs explicitly
// push to THIS topic ("belongs to the Audit Sampling topic"). All 23
// flags should whitelist on authoring alone.
//
// ## Anchor
//
// AICPA 2026 Blueprint places "Sampling techniques" at AUD/III/C
// (Topic 0 direct). The scaffolder mis-anchored to AUD/III/D, which is
// actually "Procedures to obtain sufficient appropriate evidence" (tests
// of details, observation/inspection, recalculation, reperformance,
// analytical procedures). Corrected to AUD/III/C.
//
// The blueprint tasks for AUD/III/C enumerate: understanding sampling
// purpose and automated-tools / ADA use for sample identification,
// identifying the population to sample, determining the appropriate
// sampling method (control, attribute, test of detail), and using
// sampling techniques to extrapolate sample characteristics to the
// population.
//
// ## Scope line
//
// This topic owns AU-C 530 (Audit Sampling) at AU-C private-company
// depth: statistical vs nonstatistical sampling, sample selection
// methods (random, systematic, haphazard, block), the four types of
// sampling risk (overreliance, underreliance, incorrect acceptance,
// incorrect rejection) and nonsampling risk, attributes sampling for
// tests of controls (expected deviation rate, tolerable rate of
// deviation, allowable risk of overreliance, sample size relationships),
// variables sampling for substantive tests (classical mean-per-unit,
// difference and ratio estimation, monetary-unit/PPS sampling with
// tainting-factor projection), stratification, and projected
// misstatement evaluation against tolerable misstatement.
//
// Not this topic: deep statistical theory (confidence interval math,
// normal distribution assumptions, standard error derivations, central
// limit theorem proofs), software-specific sampling mechanics (ACL,
// IDEA, TeamMate Analytics menu paths), memorized sample size tables,
// PCAOB sampling equivalents at depth, IFAC ISA 530 at depth, the audit
// risk model mechanics (Risk Assessment topic), audit data analytics as
// a full replacement for sampling (ADA belongs to Substantive Procedures
// / Responding to Assessed Risks or the broader evidence discussion),
// continuous auditing / full-population testing methodology, and
// workpaper-review quality management for sampling engagements.

export const spec: LessonSpec = {
	topic: "Audit Sampling",
	section: "aud",
	blueprintRef: "AUD/III/C",

	inScope: [
		"The distinction between audit sampling and non-sampling audit procedures: sampling applies when the auditor examines less than 100% of a population and intends to draw a conclusion about the entire population. Procedures that do not involve sampling include inquiry, observation, analytical procedures at the substantive level, and complete examination (e.g., testing 100% of items over a threshold).",
		"Statistical vs nonstatistical sampling: statistical sampling uses probability theory for sample selection and evaluation, allowing quantification of sampling risk; nonstatistical sampling relies on professional judgment for selection and evaluation without a probability-based measurement of sampling risk. Both approaches can provide sufficient appropriate audit evidence. Neither is required by AU-C 530; the choice is a matter of professional judgment. In both cases the sample must be representative of the population.",
		"Sample selection methods: random selection (every item has a known nonzero probability of selection), systematic selection (every nth item after a random start, which can be statistical provided the population is not patterned in a way that correlates with the interval), haphazard selection (without conscious bias but not mathematically random, nonstatistical), and block selection (consecutive items, generally discouraged because a single block may not represent the population).",
		"The four types of sampling risk: for tests of controls, the risk of assessing control risk too low (overreliance — the sample suggests controls are effective when they are not, an effectiveness risk leading to an inappropriate opinion) and the risk of assessing control risk too high (underreliance — the sample suggests controls are ineffective when they work well, an efficiency risk). For substantive tests of details, the risk of incorrect acceptance (the sample suggests no material misstatement when one exists, an effectiveness risk) and the risk of incorrect rejection (the sample suggests material misstatement when there is none, an efficiency risk). Effectiveness risks — overreliance and incorrect acceptance — are the more dangerous pair because they can lead to an inappropriate opinion.",
		"Nonsampling risk: the risk of erroneous conclusions from factors unrelated to sample size — using inappropriate audit procedures, failing to recognize a misstatement in a document, or misinterpreting sample results. Nonsampling risk cannot be mathematically quantified and is reduced through proper planning, supervision, training, and quality control, not through larger samples.",
		"Attributes sampling for tests of controls: the auditor is testing a binary (yes/no) question about whether a control operated as designed. Key parameters — expected population deviation rate (based on prior experience or a preliminary sample), tolerable rate of deviation (the maximum deviation rate the auditor will accept while still relying on the control, typically 2%-7%), and allowable risk of overreliance (the risk the auditor will accept that the sample supports reliance when the true deviation rate exceeds the tolerable rate).",
		"Sample size relationships for attributes sampling: a higher expected population deviation rate increases required sample size; a lower tolerable rate of deviation increases required sample size; a lower allowable risk of overreliance increases required sample size; population size has minimal effect on sample size except for very small populations.",
		"Evaluation of attributes sampling results: compute the sample deviation rate (deviations found / sample size), and evaluate whether the results support reliance on the control. If the upper deviation rate (sample deviation rate plus an allowance for sampling risk) exceeds the tolerable rate of deviation, the auditor cannot rely on the control and must revise the planned nature, timing, and extent of further audit procedures — typically by increasing substantive testing.",
		"Variables sampling for substantive tests of details: classical variables methods — mean-per-unit estimation (total estimated value = sample mean × population size), difference estimation (average difference between audited and book values × population size, which requires that differences exist in the sample), and ratio estimation (ratio of audited to book values in the sample applied to total book value, which works well when misstatements are proportional to book value).",
		"Monetary-unit sampling (MUS), also called probability-proportional-to-size (PPS) sampling: each individual dollar is the sampling unit so larger balances have a greater probability of selection; MUS is particularly effective for detecting overstatement and does not require the auditor to estimate population standard deviation; MUS is less effective for detecting understatement because items with zero or small recorded balances have little chance of selection.",
		"Projection of MUS results using the tainting-factor approach: compute the tainting percentage for each misstatement as (book value − audit value) / book value, then multiply the tainting percentage by the sampling interval to obtain the projected misstatement for that sample item. Items selected because their recorded value exceeds the sampling interval are not projected — their actual misstatement is used.",
		"Stratification: the process of dividing a population into subpopulations (strata) sharing a common characteristic — typically dollar range — to focus attention on items of higher risk or larger amounts, reduce variability within each stratum (which generally reduces required overall sample size), and apply different sampling approaches to different strata. Common stratification patterns include 100% examination of the top stratum (large items), sampling of the middle stratum, and analytical procedures or smaller samples for small items.",
		"Evaluation of sample results against tolerable misstatement: after projecting the sample misstatement to the population, the auditor adds an allowance for sampling risk and compares the result to tolerable misstatement (performance materiality allocated to the account). If the projected misstatement plus the allowance for sampling risk is less than tolerable misstatement, the auditor accepts the population; if it meets or exceeds tolerable misstatement, the auditor concludes the population may be materially misstated and may increase the sample size, perform alternative procedures, request management investigation and correction, or consider the impact on the audit opinion.",
		"Tolerable misstatement as a sampling concept: the maximum monetary misstatement in the population that the auditor is willing to accept while still concluding the population is not materially misstated. Tolerable misstatement is allocated from performance materiality and is used to determine substantive sample size and evaluate projected results.",
		"Population definition and sampling unit identification: the auditor must define the population (the set of items from which the sample is drawn) completely and consistently with the audit objective — e.g., all sales invoices for the year when testing the occurrence of revenue — and identify the sampling unit (an invoice, a receivable balance, a dollar in MUS). Items that cannot be sampled (e.g., missing documents) are treated as deviations or misstatements depending on context.",
		"The concept that sample size, not the sampling method (statistical vs nonstatistical), is the primary driver of sampling risk. A larger sample generally reduces sampling risk regardless of method; a statistical method allows the risk to be quantified.",
	],

	outOfScope: [
		"Deep statistical theory — confidence interval derivation, standard error formulas, z-scores, t-distributions, central limit theorem, normal distribution assumptions, sampling distribution mathematics, Neyman-Pearson hypothesis testing framework, Bayesian sampling theory. AU-C private-company depth tests the concepts and relationships, not the underlying mathematics",
		"Memorized sample size tables from AU-C appendices or AICPA Audit Guide tables — the relationships among expected deviation rate, tolerable rate, risk of overreliance, and sample size are in scope; memorizing specific table values is not",
		"Software-specific sampling mechanics — ACL Analytics menu paths, IDEA (CaseWare IDEA) sampling commands, TeamMate Analytics formulas, Excel RANDBETWEEN or RAND implementation details, SAS / SPSS / R statistical package procedures. The concept of computer-assisted selection is in scope; specific software is not",
		"PCAOB audit sampling standards and their differences from AU-C 530 at depth — PCAOB AS 2315 (Audit Sampling) and related interpretive releases. PCAOB is tested only as a distinction in the AUD exam and not at depth",
		"IFAC ISA 530 (International Standard on Auditing 530) at depth — this spec covers AU-C 530 U.S. GAAS for private-company audits. IFAC convergence and differences are not the AUD exam focus",
		"Audit data analytics (ADA) as a full replacement for sampling — full-population testing using data analytics, exception identification on 100% of records, continuous auditing methodology, and advanced ADA techniques (clustering, regression-based outlier detection, process mining). The concept that ADA can identify items of interest for targeted sampling is in scope; ADA as a sampling replacement is a separate topic (Substantive Procedures / Responding to Assessed Risks)",
		"The audit risk model (AR = IR × CR × DR) mechanics and numerical computation — that belongs to the Risk Assessment topic. Sampling risk concepts reference assessed risks at the concept level but do not compute them",
		"Materiality computation mechanics — benchmark selection (5% of pre-tax income, 1% of total assets, 0.5% of revenue), performance materiality derivation from overall materiality, and allocation to accounts. The use of tolerable misstatement as a ceiling for evaluating projected sampling results is in scope; the derivation of that number from the overall materiality framework is Materiality topic territory",
		"Specific substantive procedures to address identified account-level risks — testing accounts receivable at confirmation level, inventory observation mechanics, revenue cut-off testing, lease testing, fair value audit procedures. These are Substantive Procedures or topic-specific. The use of sampling within those procedures is in scope here only as it relates to sample design and projection",
		"Classical statistical theory at mathematical depth — probability density functions, variance estimators, stratified sampling optimal allocation (Neyman allocation), finite population correction factor derivations, coefficient of variation computation",
		"Acceptance sampling from quality control engineering — Military Standard 105E, AQL (acceptable quality level) tables, OC curves. This is industrial quality control, not audit sampling",
		"Monte Carlo simulation and bootstrap resampling methods as audit evidence — these are advanced statistical techniques outside AU-C private-company audit sampling",
		"Survey sampling methods for non-audit engagements (agreed-upon procedures, market research surveys, opinion polls) — separate attestation or non-attest territory",
		"Electronic discovery and computer forensics sample selection methodology — forensic territory, not financial statement audit sampling",
		"Continuous auditing and continuous monitoring frameworks — ISACA continuous auditing methodology, real-time control monitoring architectures. Adjacent to audit sampling conceptually but a separate topic",
		"Service auditor sampling methodology for SOC engagements — that is SOC engagement execution (attestation), not financial statement audit sampling from the user auditor's perspective",
		"Group audit component-level sampling at depth — AU-C 600 group audit sampling belongs to the Using the Work of Others topic. General sampling concepts applied within a group audit are in scope at the concept level",
	],

	keyStandards: [
		"AU-C 530 — Audit Sampling",
		"AU-C 330 — Performing Audit Procedures in Response to Assessed Risks and Evaluating the Audit Evidence Obtained (sampling is one way to gather evidence on assertions)",
		"AU-C 320 — Materiality in Planning and Performing an Audit (tolerable misstatement as the ceiling against which projected results are evaluated)",
		"AU-C 500 — Audit Evidence (sufficient appropriate evidence concept that sampling serves)",
	],

	commonMisconceptions: [
		"Believing that statistical sampling is required by auditing standards or is inherently better than nonstatistical sampling. AU-C 530 permits both. Statistical sampling allows quantification of sampling risk; nonstatistical sampling does not, but both can provide sufficient appropriate evidence when properly designed.",
		"Confusing sampling risk with nonsampling risk. Sampling risk arises from examining less than 100% of the population and is reduced by larger sample sizes; nonsampling risk arises from factors such as using inappropriate procedures or misinterpreting results and is reduced by planning, supervision, and quality control, not by larger samples.",
		"Conflating the risk of overreliance with the risk of incorrect acceptance. Overreliance is a tests-of-controls concept (the sample suggests controls work when they do not); incorrect acceptance is a substantive-tests-of-details concept (the sample suggests no material misstatement when one exists). Both are effectiveness risks that threaten the opinion, but they apply to different types of testing.",
		"Believing that a larger population always requires a larger sample. For attributes sampling, population size has minimal effect on required sample size (except for very small populations) — the key drivers are the expected deviation rate, the tolerable rate of deviation, and the allowable risk of overreliance.",
		"Confusing the tolerable rate of deviation (an attributes-sampling concept for tests of controls, expressed as a percentage) with tolerable misstatement (a variables-sampling concept for substantive testing, expressed as a dollar amount). Both represent maximum acceptable error but apply to different sampling contexts.",
		"Thinking MUS (monetary-unit sampling) is equally effective for understatement and overstatement. MUS selects each dollar with equal probability, so larger recorded balances have higher selection probability — effective for detecting overstatement. Items with zero or small recorded balances have little or no chance of selection, so MUS is poorly suited for detecting understatement.",
		"Treating block selection as acceptable for statistical sampling. Block selection (consecutive items) is generally discouraged because a single block may not be representative of the full population; if used, the auditor should select multiple blocks and evaluate results with caution.",
		"Forgetting the allowance for sampling risk when evaluating results. The projected misstatement alone is not compared to tolerable misstatement — the auditor must add an allowance for sampling risk to the projected misstatement, and only if the sum is less than tolerable misstatement may the population be accepted.",
		"Thinking stratification always increases the total sample size. Stratification typically reduces overall sample size because variability within each stratum is lower than in the combined population, which reduces the sample size required to achieve the same precision.",
		"Believing that haphazard selection is the same as random selection. Haphazard selection is without conscious bias but is not mathematically random — it cannot support statistical evaluation of results even though it may produce a reasonable sample for nonstatistical purposes.",
		"Thinking the auditor's response to unacceptable sampling results is always to increase sample size. Increasing the sample is one option; others include performing alternative procedures, requesting management investigation and correction of identified misstatements, and evaluating the impact on the audit opinion.",
		"Treating every audit procedure as sampling. Inquiry, observation, and analytical procedures are not sampling; 100% examination (testing every item over a threshold) is not sampling because the auditor is not projecting to unsampled items.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Deep statistical theory ---
		{
			term: "central limit theorem",
			pattern: "central\\s+limit\\s+theorem",
			category: "deep statistics",
			why: "Central limit theorem is underlying statistical theory; AU-C 530 depth uses the concepts of sampling distributions without requiring the theorem at name level.",
		},
		{
			term: "Neyman allocation",
			pattern: "Neyman\\s+allocation",
			category: "deep statistics",
			why: "Neyman optimal allocation for stratified sampling — graduate statistics depth, out of scope.",
		},
		{
			term: "Neyman-Pearson",
			pattern: "Neyman[-\\s]Pearson",
			category: "deep statistics",
			why: "Neyman-Pearson hypothesis testing framework — statistical theory depth, out of scope.",
		},
		{
			term: "finite population correction",
			pattern: "finite\\s+population\\s+correction",
			category: "deep statistics",
			why: "Finite population correction factor — graduate statistics adjustment, out of scope at AU-C 530 depth.",
		},
		{
			term: "coefficient of variation",
			pattern: "coefficient\\s+of\\s+variation",
			category: "deep statistics",
			why: "Coefficient of variation — statistical variability measure, not AU-C 530 concept depth.",
		},
		{
			term: "z-score",
			pattern: "\\bz[-\\s]?score\\b",
			category: "deep statistics",
			why: "z-score computation — statistical mechanics, out of scope for AU-C 530 concept-level testing.",
		},
		{
			term: "standard error of the mean",
			pattern: "standard\\s+error\\s+of\\s+the\\s+mean",
			category: "deep statistics",
			why: "Standard error of the mean derivation — sampling theory math, out of scope.",
		},
		{
			term: "Bayesian sampling",
			pattern: "Bayesian\\s+sampling|Bayesian\\s+audit",
			category: "deep statistics",
			why: "Bayesian audit sampling methodology — advanced statistical approach, out of scope at AU-C 530 depth.",
		},

		// --- Software / tools ---
		{
			term: "ACL Analytics",
			pattern: "ACL\\s+Analytics|\\bACL\\s+software\\b",
			category: "software",
			why: "ACL Analytics software mechanics — specific tool, not AU-C 530 concept territory.",
		},
		{
			term: "CaseWare IDEA",
			pattern: "CaseWare\\s+IDEA|\\bIDEA\\s+software\\b",
			category: "software",
			why: "CaseWare IDEA software mechanics — specific tool, out of scope.",
		},
		{
			term: "TeamMate Analytics",
			pattern: "TeamMate\\s+Analytics",
			category: "software",
			why: "TeamMate Analytics software mechanics — specific tool, out of scope.",
		},

		// --- PCAOB sampling standards at depth ---
		{
			term: "AS 2315",
			pattern: "\\bAS\\s*2315\\b",
			category: "PCAOB depth",
			why: "PCAOB Audit Sampling standard — AUD exam tests PCAOB only as a distinction, not at depth. AU-C 530 is the scope.",
		},

		// --- IFAC / ISA (not US GAAS) ---
		{
			term: "ISA 530",
			pattern: "\\bISA\\s*530\\b",
			category: "IFAC standards",
			why: "IFAC International Standard on Auditing 530 — non-US standard. This spec covers AU-C 530 US GAAS.",
		},

		// --- Quality control sampling / industrial ---
		{
			term: "acceptance sampling",
			pattern: "acceptance\\s+sampling",
			category: "industrial QC",
			why: "Acceptance sampling from industrial quality control (MIL-STD-105, AQL) — not audit sampling.",
		},
		{
			term: "AQL",
			pattern: "\\bAQL\\b|acceptable\\s+quality\\s+level",
			category: "industrial QC",
			why: "Acceptable Quality Level from industrial quality control — not audit sampling.",
		},
		{
			term: "MIL-STD-105",
			pattern: "MIL[-\\s]STD[-\\s]?105",
			category: "industrial QC",
			why: "Military Standard 105 sampling tables — industrial QC, not audit sampling.",
		},
		{
			term: "OC curve",
			pattern: "\\bOC\\s+curve\\b|operating\\s+characteristic\\s+curve",
			category: "industrial QC",
			why: "Operating characteristic curve — industrial QC acceptance sampling visualization, out of scope.",
		},

		// --- Advanced statistical techniques ---
		{
			term: "Monte Carlo simulation",
			pattern: "Monte\\s+Carlo\\s+simulation",
			category: "advanced stats",
			why: "Monte Carlo simulation — advanced statistical technique outside AU-C 530 audit sampling.",
		},
		{
			term: "bootstrap resampling",
			pattern: "bootstrap\\s+resampling|bootstrap\\s+method",
			category: "advanced stats",
			why: "Bootstrap resampling — statistical resampling technique, out of scope for AU-C audit sampling.",
		},

		// --- Continuous auditing ---
		{
			term: "continuous auditing",
			pattern: "continuous\\s+auditing|continuous\\s+monitoring",
			category: "adjacent topic",
			why: "Continuous auditing framework — real-time monitoring methodology, separate from discrete audit sampling.",
		},
	],

	notes:
		"Audit Sampling is the designated AUD/III/C topic covering AU-C 530 at private-company audit depth: statistical vs nonstatistical sampling, selection methods, the four types of sampling risk and nonsampling risk, attributes sampling for tests of controls, variables sampling for substantive tests (classical methods and MUS/PPS with tainting-factor projection), stratification, and evaluation of projected misstatement against tolerable misstatement. The Stage 2 drift census v2 flagged 23/52 questions at 44.2% — 13 on `tolerable misstatement` and 10 on `attribute sampling` — but both terms are squarely on-topic for a sampling spec. The Audit Evidence spec and Risk Assessment spec explicitly ban these terms and push the content to 'the Audit Sampling topic' in their outOfScope commentary, so the entire flag set should whitelist on authoring alone (clean rightful-owner pattern, consistent with Foreign Currency Transactions last session). The line this spec holds: AU-C 530 concept-level depth. Out of scope: deep statistical theory (central limit theorem, Neyman-Pearson, finite population correction, standard error formulas, z-scores, Bayesian sampling), software-specific mechanics (ACL, IDEA, TeamMate Analytics), memorized sample size tables, PCAOB AS 2315 at depth, IFAC ISA 530 at depth, industrial quality control (MIL-STD-105, AQL, OC curves, acceptance sampling), advanced statistical techniques (Monte Carlo, bootstrap), continuous auditing, and audit data analytics as a sampling replacement. The scaffolder mis-anchored the stub to AUD/III/D (which is actually 'Procedures to obtain sufficient appropriate evidence' — tests of details, observation, recalculation); corrected to AUD/III/C during authoring.",
};
