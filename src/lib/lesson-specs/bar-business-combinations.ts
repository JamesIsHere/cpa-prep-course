import type { LessonSpec } from "./types";

// Fifteenth authored spec. AICPA 2026 Blueprint BAR/II/F "Business
// combinations" has 4 representative tasks:
//
//   R&U: Recall concepts associated with accounting for business
//        combinations (business vs. asset acquisition, contingent
//        consideration, measurement period adjustments)
//   Application: Prepare journal entries to record identifiable net assets
//                acquired resulting in goodwill or a bargain purchase gain
//   Application: Prepare journal entries for combinations that include a
//                noncontrolling interest
//   Application: Calculate the consideration transferred
//
// In scope: ASC 805 acquisition method basics — identification of the
// acquirer and acquisition date, recognition of identifiable assets and
// liabilities at fair value, goodwill computation, bargain purchase gain
// (after reassessment), NCI measurement at fair value or proportionate
// share, contingent consideration classification at concept level,
// measurement period concept, business vs. asset acquisition distinction,
// acquisition-related costs expensed as incurred.
//
// Out of scope (drift surfaces per the rollout handoff): bargain purchase
// REASSESSMENT procedures at mechanics depth, PRE-EXISTING relationships
// settled at acquisition (settlement gain/loss computation), STEP
// ACQUISITIONS beyond the basic concept (remeasurement of prior held
// equity interest to fair value, gain/loss recognition). Also out:
// VIEs / primary beneficiary analysis (belongs to Advanced Consolidations),
// reverse acquisitions, common control transactions, in-process R&D
// capitalization and subsequent accounting, share-based payment
// replacement awards, push-down accounting, deferred tax effects of
// business combinations at mechanics depth, goodwill impairment
// mechanics (separate topic).
//
// Note: Slayer has a second overlapping topic 'Stock Compensation and
// Business Combinations' which this spec does NOT cover. This spec is
// specifically for questions tagged 'Business Combinations' in isolation.

export const spec: LessonSpec = {
	topic: "Business Combinations",
	section: "bar",
	primaryRef: "BAR/II/F/0",
	secondaryRefs: [],

	inScope: [
		"The acquisition method under ASC 805: identify the acquirer, determine the acquisition date, recognize and measure the identifiable assets acquired and liabilities assumed at their acquisition-date fair values, recognize and measure goodwill (or a bargain purchase gain) as the residual",
		"Identification of the acquirer: generally the entity that obtains control of the acquiree; in an exchange of equity interests, factors such as relative voting rights, the composition of the combined board, and size of the entities are considered",
		"Determination of the acquisition date: the date on which the acquirer obtains control of the acquiree, typically the closing date of the transaction",
		"Recognition of identifiable assets acquired and liabilities assumed at acquisition-date fair value, including assets and liabilities that may not have been recognized in the acquiree's pre-combination financial statements (e.g., internally developed intangibles, favorable or unfavorable lease terms)",
		"Goodwill computation: Goodwill = Consideration transferred + Fair value of NCI + Fair value of acquirer's previously held equity interest − Fair value of identifiable net assets acquired; goodwill is the residual of the transaction and is not amortized (but tested for impairment)",
		"Bargain purchase gain recognition: when the FV of identifiable net assets exceeds the sum of consideration, NCI, and any prior equity interest, the acquirer first reassesses whether all identifiable assets and liabilities have been properly identified and measured; any remaining excess is recognized as a bargain purchase gain in earnings on the acquisition date",
		"Noncontrolling interest (NCI) measurement choices at acquisition date: (1) fair value method (full goodwill approach — NCI measured at fair value and goodwill includes the NCI share), or (2) proportionate share method (partial goodwill — NCI measured at its proportionate share of identifiable net assets and goodwill represents only the acquirer's share)",
		"Calculation of consideration transferred: sum of acquisition-date fair values of assets transferred (cash, other assets), liabilities incurred or assumed by the acquirer to former owners (e.g., notes payable), and equity interests issued by the acquirer; plus the fair value of any contingent consideration",
		"Contingent consideration at the concept level: measured at acquisition-date fair value; classified as a liability (and remeasured to fair value through earnings at each reporting date until settlement) or as equity (and not remeasured); classification depends on whether the obligation is settled in cash/other assets or in the acquirer's own equity shares",
		"Acquisition-related costs at the concept level: costs such as professional fees (legal, accounting, advisory), due diligence costs, and finder's fees are expensed as incurred and are NOT part of consideration transferred; the costs of issuing debt and equity are accounted for under the debt and equity standards, not under ASC 805",
		"Measurement period at the concept level: a period of up to 1 year after the acquisition date during which the acquirer may adjust provisional amounts for new information obtained about facts and circumstances that existed at the acquisition date; measurement period adjustments are recognized prospectively (not restated)",
		"Business vs. asset acquisition distinction: a business has inputs AND substantive processes applied to those inputs to create outputs; an asset acquisition lacks substantive processes and is not within ASC 805; for asset acquisitions, the purchase price is allocated to the acquired assets based on relative fair values and no goodwill is recognized",
		"The screen test under ASU 2017-01 for determining whether an acquired set constitutes a business: if substantially all of the fair value of the gross assets acquired is concentrated in a single identifiable asset or a group of similar assets, the set is NOT a business; the concept only, not the multi-step framework",
		"Intangible assets acquired in a business combination: recognized separately from goodwill when they meet the contractual-legal criterion OR the separability criterion; examples include customer lists, trademarks, patents, technology, contracts with customers, and in-process research and development at the concept level",
		"Journal entries at acquisition for straightforward scenarios: debit identifiable assets at fair value, credit identifiable liabilities at fair value, plug goodwill (or credit bargain purchase gain), credit consideration items (cash, equity, contingent consideration liability), credit NCI at its elected measurement value",
	],

	outOfScope: [
		"Step acquisition remeasurement beyond the concept: the acquirer's previously held equity interest is remeasured to fair value as of the acquisition date and any gain or loss is recognized in earnings; the deeper computational mechanics (separating the gain on the step-up from goodwill, the interaction with OCI amounts previously recognized on available-for-sale or equity-method investees) are out of scope per the rollout handoff",
		"Pre-existing relationships between acquirer and acquiree settled at acquisition — the concept that a pre-existing contractual relationship effectively settled by the combination must be separated from the business combination and recognized at settlement value in earnings, with the related gain or loss computed at the settlement date",
		"Bargain purchase REASSESSMENT procedures at mechanics depth: the detailed step-by-step reassessment of identifiable assets and liabilities, consideration transferred, and NCI measurement before recognizing any bargain purchase gain — concept-level reassessment is in scope, mechanics are not",
		"Variable interest entity (VIE) consolidation — the primary beneficiary analysis, kick-out rights, substantive participation, silo analysis; this is the Advanced Consolidations topic (BAR/II/G) in Slayer and AICPA BAR/II/G 'Consolidated financial statements'",
		"Reverse acquisition accounting: the identification of the accounting acquirer vs. legal acquirer when a private company effectively acquires a public company through a stock exchange; reverse merger/SPAC accounting",
		"Common control transactions: transfers of net assets or equity interests between entities under common control; prior-period basis of accounting, pooling-of-interests-style accounting for common control transfers, the Topic 805 scope exception",
		"In-process research and development (IPR&D) recognition at mechanics depth: the subsequent accounting for IPR&D (capitalized at acquisition, tested for impairment until the research project is completed or abandoned), amortization upon project completion",
		"Share-based payment replacement awards in business combinations: the pre-combination vs post-combination allocation of replacement award fair value, the attribution period, the recognition of acquirer's remaining liability",
		"Acquired employee compensation arrangements: treatment of retention bonuses, golden parachute payments, termination benefits, and deferred compensation in a business combination",
		"Push-down accounting: the option (or requirement) for the acquiree to 'push down' the acquirer's new basis to the acquiree's separate financial statements under ASC 805-50",
		"Deferred tax effects of a business combination at mechanics depth: the recognition of deferred taxes on the difference between book basis (acquisition-date fair value) and tax basis of acquired assets and liabilities, uncertain tax positions acquired in a combination, valuation allowance reassessment",
		"Goodwill impairment mechanics beyond the existence of testing: the qualitative (Step 0) assessment, the quantitative Step 1 test under ASU 2017-04 (single-step impairment = carrying amount minus fair value of reporting unit, limited to goodwill), assignment of goodwill to reporting units, interaction with other ASC 350 intangible impairment; this is the Intangibles and Goodwill topic",
		"Disposition of a reporting unit that includes goodwill: the allocation of goodwill to the disposed portion based on relative fair values",
		"Measurement period adjustments at mechanics depth beyond the concept: the prospective-versus-retrospective distinction, the disclosure requirements, the amount recognized in current-period earnings for the portion of the adjustment that relates to prior periods",
		"Loss of control over a subsidiary (deconsolidation) gain or loss computation — the partial or full disposition that takes the carrying amount below the consolidation threshold; this belongs to Advanced Consolidations",
		"Acquisition of additional noncontrolling interest AFTER gaining control — the equity-transaction treatment under ASC 810-10-45-23, no gain or loss recognition, adjustment to additional paid-in capital",
		"Asset acquisition goodwill prohibition mechanics — the specific rules for allocating a bargain element in an asset acquisition (reduce the carrying amount of non-current assets); concept that asset acquisitions don't produce goodwill is in scope, the reallocation mechanics are out",
		"Contingent consideration classification nuances beyond the basic liability vs. equity distinction — changes in classification upon changes in settlement terms, embedded derivatives in contingent consideration, earn-out structures",
		"Acquired contingent assets and liabilities under ASC 805-20-25-19: the recognition criteria for acquired contingencies (contractual contingencies recognized at fair value; non-contractual contingencies recognized only if more likely than not to meet the definition of an asset or liability)",
		"Indemnification assets at mechanics depth: when the seller contractually indemnifies the acquirer against specified contingencies, the indemnification asset recognition and subsequent measurement to mirror the indemnified liability",
		"Reacquired rights: the concept that when the acquirer effectively reacquires a right it had previously granted to the acquiree (e.g., a franchise right), the reacquired right is recognized as an intangible asset amortized over the remaining contractual term",
	],

	keyStandards: [
		"ASC 805 — Business Combinations",
		"ASC 805-10 — Overall (scope, definitions, business vs. asset acquisition)",
		"ASC 805-20 — Identifiable Assets and Liabilities, and Any Noncontrolling Interest",
		"ASC 805-30 — Goodwill or Gain from Bargain Purchase, Including Consideration Transferred",
		"ASC 805-40 — Reverse Acquisitions (scope boundary — out of scope)",
		"ASC 805-50 — Related Issues (including push-down accounting, out of scope)",
		"ASU 2017-01 — Clarifying the Definition of a Business (screen test)",
		"ASU 2017-04 — Simplifying the Test for Goodwill Impairment (referenced for scope boundary)",
	],

	commonMisconceptions: [
		"Computing goodwill as the excess of consideration transferred over BOOK value of net assets. Goodwill is computed using FAIR value of identifiable net assets, not book value.",
		"Treating acquisition-related costs (legal fees, due diligence, advisory fees) as part of the consideration transferred or as an addition to goodwill. These costs are expensed as incurred under ASC 805-10-25-23.",
		"Computing goodwill without including the fair value of a noncontrolling interest when the acquirer obtains less than 100% of the acquiree. NCI at acquisition is included in the goodwill computation whether the full-goodwill or partial-goodwill method is elected.",
		"Recognizing a bargain purchase gain as a deferred credit (old APB 16 approach) instead of immediately in earnings. Under ASC 805, bargain purchase gains are recognized in current-period earnings on the acquisition date, after a reassessment of identifiable assets, liabilities, and consideration.",
		"Including contingent consideration in consideration transferred at its expected maximum payout instead of its fair value at acquisition. Contingent consideration is measured at acquisition-date fair value, which reflects probability-weighted expected outcomes discounted to present value.",
		"Classifying all contingent consideration as a liability. Contingent consideration settled in the acquirer's own equity shares is classified as equity (not remeasured); contingent consideration settled in cash or other assets is classified as a liability (remeasured each period to fair value through earnings).",
		"Believing goodwill is amortized under ASC 805. Goodwill is NOT amortized; it is tested for impairment at the reporting unit level at least annually and when indicators arise.",
		"Treating a business combination involving less than 100% acquisition as an asset acquisition. The threshold for applying ASC 805 is obtaining CONTROL over a business, not 100% ownership — a 51% acquisition of a business uses ASC 805.",
		"Measuring NCI at book value or historical cost instead of at fair value (full goodwill) or proportionate share of identifiable net assets (partial goodwill). These are the only two permitted measurement bases at acquisition.",
		"Remeasuring all contingent consideration classified as equity at each reporting date. Equity-classified contingent consideration is NOT remeasured; only liability-classified contingent consideration is remeasured to fair value each period.",
		"Capitalizing debt or equity issuance costs related to funding the acquisition into goodwill. These costs are accounted for under the applicable debt/equity standards (debt issuance costs amortized using effective interest; equity issuance costs reduce additional paid-in capital).",
		"Recognizing a bargain purchase gain without first reassessing the identifiable assets and liabilities. The reassessment is required BEFORE recognizing the gain — a bargain purchase is treated as a red flag that suggests measurement errors.",
		"Including the fair value adjustment of previously held equity in goodwill for a step acquisition at the concept level. The step-up of a prior equity interest to fair value triggers a gain or loss in earnings and is INCLUDED in the total consideration for goodwill computation — the concept, not the detailed mechanics of when the gain is recognized and in what account.",
		"Treating a business vs. asset acquisition determination as a judgment call. The ASU 2017-01 screen test and substantive process requirement are technical thresholds that determine the classification, not a judgment-call assessment.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "primary beneficiary",
			pattern: "primary\\s+beneficiary",
			category: "VIE territory",
			why: "Primary beneficiary analysis is a VIE consolidation concept and belongs to the Advanced Consolidations topic (BAR/II/G), not Business Combinations.",
		},
		{
			term: "variable interest entity",
			pattern: "variable\\s+interest\\s+entit(?:y|ies)|\\bVIE\\b",
			category: "VIE territory",
			why: "VIE consolidation is Advanced Consolidations territory — out of scope for the foundational Business Combinations topic.",
		},
		{
			term: "kick-out rights",
			pattern: "kick[-\\s]out\\s+rights?",
			category: "VIE territory",
			why: "Kick-out rights in VIE analysis — Advanced Consolidations.",
		},
		{
			term: "reverse acquisition",
			pattern: "reverse\\s+acquisition|reverse\\s+merger",
			category: "advanced M&A",
			why: "Reverse acquisition accounting (private-into-public, SPAC merger mechanics) — out of scope for foundational BAR Business Combinations.",
		},
		{
			term: "common control",
			pattern: "common\\s+control\\s+(?:transaction|transfer)",
			category: "advanced M&A",
			why: "Common control transactions are an ASC 805 scope exception — their pooling-of-interests-style accounting is out of scope for foundational Business Combinations.",
		},
		{
			term: "push-down accounting",
			pattern: "push[-\\s]down\\s+accounting|pushdown\\s+accounting",
			category: "advanced M&A",
			why: "Push-down accounting under ASC 805-50 — out of scope.",
		},
		{
			term: "pre-existing relationship",
			pattern: "pre[-\\s]existing\\s+relationship|preexisting\\s+relationship",
			category: "settlement mechanics",
			why: "Pre-existing relationships settled at acquisition — priority drift surface per the rollout handoff. The mechanics of separating the settlement from the business combination and computing the settlement gain/loss are out of scope.",
		},
		{
			term: "step acquisition",
			pattern: "step\\s+acquisition|step[-\\s]up\\s+to\\s+fair\\s+value",
			category: "step acquisition mechanics",
			why: "Step acquisition remeasurement mechanics (prior equity interest stepped up to FV with gain/loss to earnings) beyond the concept — priority drift surface per the rollout handoff.",
		},
		{
			term: "IPR&D",
			pattern: "\\bIPR&D\\b|in[-\\s]process\\s+research\\s+and\\s+development\\s+(?:amortization|impairment|subsequent)",
			category: "IPR&D mechanics",
			why: "In-process research and development at mechanics depth (subsequent accounting, indefinite-lived intangible until complete, amortization upon completion) — out of scope. Bare reference to IPR&D as an example of an acquired intangible is in scope.",
		},
		{
			term: "replacement award",
			pattern: "replacement\\s+(?:share[-\\s]based\\s+)?awards?",
			category: "SBP replacement",
			why: "Share-based payment replacement awards in business combinations — pre-combination vs post-combination allocation mechanics out of scope.",
		},
		{
			term: "deconsolidation",
			pattern: "deconsolidat(?:e|ion)|loss\\s+of\\s+control\\s+over\\s+a\\s+subsidiary",
			category: "advanced consolidations",
			why: "Deconsolidation and loss-of-control accounting — Advanced Consolidations territory, not Business Combinations.",
		},
		{
			term: "reacquired right",
			pattern: "reacquired\\s+right",
			category: "advanced asset recognition",
			why: "Reacquired rights (franchise rights, trademark rights) recognized as intangible assets — advanced ASC 805 topic, out of scope.",
		},
		{
			term: "indemnification asset",
			pattern: "indemnification\\s+asset",
			category: "advanced asset recognition",
			why: "Indemnification asset mechanics under ASC 805-20-25-27 — mechanics depth, out of scope.",
		},
		{
			term: "contingent asset",
			pattern: "contingent\\s+asset\\s+(?:recognition|acquired)|acquired\\s+contingent",
			category: "advanced recognition",
			why: "Acquired contingent assets and liabilities under ASC 805-20-25-19 — the contractual vs non-contractual recognition threshold is mechanics-depth, out of scope.",
		},
		{
			term: "goodwill impairment",
			pattern: "goodwill\\s+impairment\\s+(?:test|testing|Step\\s+\\d|loss|computation|assessment)",
			category: "impairment mechanics",
			why: "Goodwill impairment mechanics (Step 0, Step 1, ASU 2017-04 simplified test) — separate Intangibles and Goodwill topic. Bare reference that goodwill is tested for impairment is in scope.",
		},
		{
			term: "reporting unit",
			pattern: "reporting\\s+unit\\s+(?:level|impairment|allocation|assignment|disposition)",
			category: "impairment mechanics",
			why: "Reporting unit concepts for goodwill impairment and goodwill allocation on disposition — impairment topic mechanics, out of scope.",
		},
		{
			term: "ASU 2017-04",
			pattern: "ASU\\s*2017[-\\s]04",
			category: "impairment mechanics",
			why: "ASU 2017-04 simplified goodwill impairment test — impairment topic.",
		},
		{
			term: "deferred tax acquisition",
			pattern: "deferred\\s+tax(?:es)?\\s+(?:on\\s+)?(?:the\\s+)?(?:acquisition|business\\s+combination)",
			category: "tax mechanics",
			why: "Deferred tax effects of a business combination at mechanics depth — out of scope.",
		},
		{
			term: "uncertain tax position acquired",
			pattern: "uncertain\\s+tax\\s+position.{0,40}(?:acquired|acquisition|combination)",
			category: "tax mechanics",
			why: "Uncertain tax positions acquired in a business combination — ASC 740 mechanics, out of scope.",
		},
		{
			term: "Section 338",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)338(?:\\s*\\(\\s*h\\s*\\)\\s*\\(\\s*10\\s*\\))?",
			category: "tax M&A",
			why: "Section 338 and 338(h)(10) deemed asset sale elections — REG C Corporations / TCP territory, not BAR accounting.",
		},
		{
			term: "functional currency",
			pattern: "functional\\s+currency",
			category: "adjacent topic",
			why: "Functional currency determination and translation — belongs to Consolidated Financial Statements / Foreign Currency topic, not Business Combinations.",
		},
	],

	notes:
		"BAR/II/F Business Combinations is a foundational ASC 805 topic with 4 representative tasks focused on the acquisition method, goodwill and bargain purchase, NCI, and consideration transferred. The spec stays tight around these application-level computations and the key concepts (business vs. asset acquisition, contingent consideration classification, measurement period, acquisition-related costs expensed). Drift surfaces per the rollout handoff are bargain purchase reassessment at depth, pre-existing relationships, and step acquisitions. Additional drift: VIE consolidation, reverse acquisitions, common control, IPR&D mechanics, push-down accounting, deferred tax effects at depth, and goodwill impairment mechanics. All addressed in outOfScope and bannedTerms.",
};
