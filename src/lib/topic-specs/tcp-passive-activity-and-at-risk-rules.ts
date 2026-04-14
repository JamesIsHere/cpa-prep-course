import type { TopicSpec } from "./types";

// Thirteenth authored spec. AICPA 2026 Blueprint TCP/I/B "Compliance for
// passive activity and at-risk loss limitations (excluding tax credit
// implications)" is a single-topic group with 4 representative tasks, all
// Application-level:
//
//   - Calculate the at-risk loss limitation for an activity in which an
//     individual materially participates, including losses from pass-
//     through entities and real estate rental with active participation
//   - Calculate the passive activity loss limitations given a specific
//     scenario, including the netting of passive activity gains and losses
//   - Calculate utilization of suspended losses on the disposition of a
//     passive activity
//   - Review an individual's basis schedules and allocate losses between
//     at-risk suspended, PAL suspended, and allowed
//
// Important AICPA scope note: the group name explicitly EXCLUDES "tax
// credit implications" — passive activity credit limitation rules are
// out of scope.
//
// The spec stays tight around these four tasks: the two-basket loss
// limitation framework (at-risk first under Sec 465, then passive second
// under Sec 469), the key concepts needed to apply them (at-risk amount
// computation at concept level, material participation at concept level,
// rental real estate default-passive rule, the $25,000 active-participation
// special allowance, the real estate professional exception at concept
// level, disposition of an activity to release suspended losses), and the
// basic portfolio-income and working-interest carve-outs.
//
// Drift risks (from the rollout handoff): publicly traded partnership
// (PTP) separate-basket rules, retired-farmer exception, trade-or-business
// grouping elections under Reg 1.469-4, the detailed 7 material
// participation tests at mechanics depth, self-charged interest rules,
// closely-held C corporation PAL rules, personal service corporation PAL
// rules, net investment income tax (NIIT) under Sec 1411 as applied to
// passive activities, and passive activity credit limitations.

export const spec: TopicSpec = {
	topic: "Passive Activity and At-Risk Rules",
	section: "tcp",
	blueprintRef: "TCP/I/B/0",

	inScope: [
		"The two-basket loss limitation framework: a loss from a business activity is subjected to the at-risk limitation under Sec 465 first, and any loss that survives at-risk is then subjected to the passive activity loss (PAL) limitation under Sec 469; losses disallowed at either level are suspended and carried forward",
		"At-risk amount computation at the concept level: the taxpayer's cash contributed plus adjusted basis of property contributed, plus borrowed amounts for which the taxpayer is personally liable (recourse financing), less withdrawals, less previously deducted at-risk losses; the at-risk amount limits the deductible loss for the year",
		"Recourse vs. nonrecourse debt in the at-risk context: recourse financing generally increases the at-risk amount (the taxpayer bears the economic risk of loss); nonrecourse financing generally does NOT, except for qualified nonrecourse financing secured by real property (which is counted as at-risk at the concept level)",
		"Sec 465 loss carryforward: a loss disallowed under the at-risk rules is suspended and carried forward indefinitely; it becomes deductible when the taxpayer's at-risk amount increases in a subsequent year (by additional contributions, additional recourse borrowings, or income that increases the at-risk amount)",
		"Passive activity loss (PAL) limitation under Sec 469: passive losses and credits can only offset passive income and passive tax; excess passive losses are suspended and carried forward to future years",
		"Definition of passive activity at the concept level: (1) any trade or business in which the taxpayer does not materially participate, and (2) any rental activity regardless of the taxpayer's level of participation (with narrow exceptions)",
		"Material participation at the concept level: the taxpayer must be involved in the operations of the activity on a regular, continuous, and substantial basis; the 500-hour test is the most commonly applied material participation standard; the existence of additional tests under the regulations at the concept level only",
		"The distinction between 'active participation' (a lower threshold for the rental real estate $25,000 allowance) and 'material participation' (the higher standard for avoiding passive classification generally)",
		"Rental real estate default-passive rule: rental activities are passive by default, even if the taxpayer materially participates in the rental operations; material participation alone does not convert rental to nonpassive",
		"The $25,000 special allowance under Sec 469(i) for rental real estate with active participation: middle-income taxpayers who actively participate (make management decisions — approving tenants, approving repairs, setting terms — which is a LOWER bar than material participation) may deduct up to $25,000 of rental real estate losses against nonpassive income; the allowance is phased out between $100,000 and $150,000 of modified AGI (2:1 phaseout)",
		"Real estate professional exception at the concept level under Sec 469(c)(7): a taxpayer who spends more than 750 hours in real property trades or businesses AND more than 50% of their personal services in real property trades or businesses may treat their rental real estate as NONpassive (freeing it from the default rental classification); the concept, not the multi-property-election mechanics",
		"Portfolio income classification: interest, dividends, capital gains, royalties (not from a trade or business) are NOT passive income — they are portfolio income and cannot be offset by passive losses; this is the key rule that prevents using passive losses against investment income",
		"Working interest in oil and gas exception: an unrestricted working interest in oil or gas property held directly or through an entity that does not limit the taxpayer's liability is NOT a passive activity regardless of participation (the taxpayer bears the economic risk)",
		"Suspended passive loss utilization: passive losses suspended in one year are carried forward to future years and can be deducted against future passive income from the same or any other passive activity; there is no time limit on the carryforward",
		"Disposition of a passive activity: upon a complete disposition of the taxpayer's entire interest in a passive activity to an unrelated third party in a fully taxable transaction, all accumulated suspended losses from that activity are freed and become deductible against any type of income (active, portfolio, or passive); the gain or loss on the disposition itself is generally treated according to its character",
		"Interaction between the at-risk and PAL limits on allocation: when a loss is partially suspended at both levels, the at-risk limitation is applied first (you cannot have a passive-suspended loss larger than the at-risk-allowed loss); the allocation of a loss between at-risk-suspended, PAL-suspended, and currently-deductible is the core computational task for this topic",
		"Passive activity gross income and deductions: the passive activity loss equals the aggregate passive deductions minus the aggregate passive income; the taxpayer computes this at the individual level across all passive activities combined (not separately for each activity, except for PTPs)",
	],

	outOfScope: [
		"The seven material participation tests at mechanics depth — the 100-hour significant participation test, the 100-hour test when no one participates more, the 500-hour-in-aggregate significant-participation-activities test, the facts-and-circumstances test, the 5-of-10-year test for prior years, and the personal service activity 3-year test; only the 500-hour concept is in scope",
		"Grouping of activities under Treas. Reg. 1.469-4 — the five-factor test (similarities, common control, common ownership, geographical location, interdependencies), the appropriate economic unit standard, the rental-with-business grouping rules",
		"Regrouping elections and the annual regrouping rules under Rev Proc 2010-13 and Rev Proc 2011-34",
		"Self-charged interest rules under Sec 469 and Reg 1.469-7 — the pass-through-entity interest-income recharacterization that matches self-charged interest against the deduction",
		"Passive activity credit limitation rules (explicitly excluded by AICPA: the TCP/I/B group name says 'excluding tax credit implications') — the equivalent-deduction-amount computation for credits, the credit-specific carryforward rules",
		"Closely held C corporation passive loss rules under Sec 469(a)(2)(B) and (e)(2) — the ability of a closely held C corp to offset passive losses against active (but not portfolio) income",
		"Personal service corporation passive loss rules under Sec 469(a)(2)(C) — the more restrictive application of PAL to PSCs",
		"Publicly traded partnership (PTP) separate-basket rules under Sec 469(k) — losses from a PTP can only offset income from the SAME PTP, not from other PTPs or other passive activities; the Form 8582-PTP reporting",
		"Retired farmer exception and the material-participation-in-farming-for-5-of-the-last-8-years rule — edge case, out of scope",
		"Real estate professional multi-property election under Reg 1.469-9(g) to treat all interests in rental real estate as a single activity",
		"Passive income recharacterization rules under Reg 1.469-2 — income from property rented to one's own trade or business recharacterized as nonpassive, income from investment-type passive activities recharacterized as portfolio, royalties from depletable intangible property",
		"Former passive activities rules under Sec 469(f) — when an activity transitions from passive to nonpassive, former-passive-activity treatment of the prior suspended losses",
		"Farming syndicate rules and the farming-specific at-risk rules under Sec 465(d)",
		"At-risk recapture rules under Sec 465(e) — when the at-risk amount goes below zero",
		"Sec 469(j) special rules for rental real estate of estates and trusts",
		"Net investment income tax (NIIT) under Sec 1411 as applied to passive activity income and losses — the 3.8% surtax on net investment income, the MAGI thresholds, the allocation rules for passive activity income; NIIT belongs to Individual Taxation",
		"Like-kind exchange interactions with suspended passive losses under Sec 1031 — whether a Sec 1031 exchange of a passive activity constitutes a disposition that triggers suspended loss deduction",
		"Installment sale of a passive activity under Sec 453 — allocation of suspended losses across installment periods",
		"Gift of a passive activity — the treatment of suspended losses on a gratuitous transfer to a donee (added to donee's basis, not currently deductible)",
		"Death of the taxpayer and suspended passive losses — the Sec 469(g)(2) rule that allows suspended losses to be deducted on the final return but limits the deduction to the amount by which the loss exceeds the stepped-up basis adjustment",
		"Trade or business vs. investment activity distinction under Sec 162 / Sec 212 at depth as applied to passive classification",
		"Alternative minimum tax (AMT) adjustments for passive activity losses under Sec 58",
	],

	keyStandards: [
		"IRC §465 — At-risk limitations",
		"IRC §469 — Passive activity losses and credits limited",
		"IRC §469(c)(7) — Real estate professional exception",
		"IRC §469(i) — $25,000 active-participation rental real estate allowance",
		"IRC §469(g) — Disposition of a passive activity releasing suspended losses",
		"Form 8582 — Passive Activity Loss Limitations",
		"Form 6198 — At-Risk Limitations",
		"Treas. Reg. 1.469-5T(a) — Material participation tests (existence, not mechanics)",
	],

	commonMisconceptions: [
		"Believing the at-risk limitation and the passive activity limitation are interchangeable. They are two separate limitations applied in sequence: at-risk first under Sec 465, then PAL under Sec 469 on whatever survives at-risk.",
		"Believing material participation in a rental activity automatically makes the rental nonpassive. Rental activities are passive BY DEFAULT regardless of the taxpayer's participation level, except for the real estate professional exception and the working-interest-in-oil-and-gas exception.",
		"Confusing 'material participation' with 'active participation' for the $25,000 rental real estate allowance. Active participation is a LOWER bar (just making management decisions like approving tenants and repairs). Material participation is the higher standard for avoiding passive classification generally.",
		"Believing passive losses can offset portfolio income (interest, dividends, capital gains). Portfolio income is separate from passive income — passive losses cannot be deducted against it.",
		"Believing the $25,000 rental real estate allowance applies regardless of income. The allowance is phased out between $100,000 and $150,000 of modified AGI (2:1 phaseout — $1 of allowance is lost for every $2 of AGI above $100,000) and fully eliminated at $150,000.",
		"Believing suspended losses are lost upon disposition. Upon a complete disposition of the entire interest to an unrelated party in a fully taxable transaction, ALL accumulated suspended losses become deductible, including against active and portfolio income.",
		"Computing the at-risk amount by including nonrecourse debt. Nonrecourse debt is generally NOT included in the at-risk amount because the taxpayer does not bear economic risk — the main exception is qualified nonrecourse financing secured by real property.",
		"Believing that material participation converts rental real estate to nonpassive. The only way to convert rental real estate to nonpassive is to meet the real estate professional exception (750+ hours AND more than 50% of personal services in real property trades or businesses).",
		"Believing passive activity losses carry forward for only a limited number of years. There is no time limit on the passive loss carryforward — losses are suspended indefinitely until offset by passive income or released by disposition.",
		"Treating a loss from a limited partnership interest as deductible at the investment level. A limited partner's loss is subject to BOTH the at-risk limitation (the limited partner's contribution and recourse financing, which is typically none for a limited partner) and the passive activity limitation (a limited partner generally does not materially participate).",
		"Believing portfolio income generated by a passive activity becomes passive. Portfolio-type income (interest, dividends) earned by a passive activity is separately stated and retains its portfolio character at the partner or shareholder level.",
		"Confusing passive INCOME with passive ACTIVITY income. Passive INCOME (for ordinary meaning) might include interest and dividends. Passive ACTIVITY INCOME under Sec 469 is specifically income from a trade-or-business or rental activity in which the taxpayer does not materially participate — the two meanings are different.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "seven material participation tests",
			pattern: "seven\\s+(?:material\\s+)?(?:participation\\s+)?tests|all\\s+seven\\s+tests",
			category: "material participation mechanics",
			why: "The seven material participation tests from Treas. Reg. 1.469-5T(a) at mechanics depth are out of scope. Only the 500-hour test concept and the existence of additional tests are in scope.",
		},
		{
			term: "significant participation activity",
			pattern: "significant\\s+participation\\s+activit(?:y|ies)|\\bSPA\\s+test",
			category: "material participation mechanics",
			why: "Significant participation activity (SPA) is one of the seven material participation tests — mechanics depth out of scope.",
		},
		{
			term: "100-hour test",
			pattern: "100[-\\s]hour\\s+test",
			category: "material participation mechanics",
			why: "The 100-hour significant-participation test is one of the seven material participation tests — out of scope. Only the 500-hour test is in scope.",
		},
		{
			term: "5 of 10 year test",
			pattern: "5\\s+of\\s+10\\s+year|five\\s+of\\s+(?:the\\s+)?(?:last\\s+)?ten\\s+year",
			category: "material participation mechanics",
			why: "The 5-of-10-year material participation test — mechanics, out of scope.",
		},
		{
			term: "facts and circumstances test",
			pattern: "facts\\s+and\\s+circumstances\\s+test",
			category: "material participation mechanics",
			why: "Facts-and-circumstances material participation test — one of the seven tests, out of scope.",
		},
		{
			term: "Reg 1.469-4",
			pattern: "(?:Treas\\.?\\s*Reg\\.?\\s*|Regulation\\s*|Reg\\.?\\s*)1\\.469[-–]4",
			category: "grouping mechanics",
			why: "Treas. Reg. 1.469-4 grouping of activities mechanics — out of scope.",
		},
		{
			term: "grouping election",
			pattern: "grouping\\s+election|group(?:ing)?\\s+of\\s+activities",
			category: "grouping mechanics",
			why: "Activity grouping elections under the 469 regulations — mechanics depth out of scope.",
		},
		{
			term: "appropriate economic unit",
			pattern: "appropriate\\s+economic\\s+unit",
			category: "grouping mechanics",
			why: "The appropriate-economic-unit standard from Reg 1.469-4(c) — grouping mechanics out of scope.",
		},
		{
			term: "self-charged interest",
			pattern: "self[-\\s]charged\\s+interest",
			category: "self-charged rules",
			why: "Self-charged interest rules under Reg 1.469-7 — mechanics out of scope.",
		},
		{
			term: "Section 469(a)(2)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)469\\s*\\(\\s*a\\s*\\)\\s*\\(\\s*2\\s*\\)",
			category: "closely held C corp rules",
			why: "Sec 469(a)(2) closely held C corporation and personal service corporation passive loss rules — out of scope.",
		},
		{
			term: "personal service corporation PAL",
			pattern: "personal\\s+service\\s+corporation.{0,40}passive",
			category: "closely held C corp rules",
			why: "PSC-specific PAL rules under Sec 469(a)(2)(C) — out of scope.",
		},
		{
			term: "Section 469(k)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)469\\s*\\(\\s*k\\s*\\)",
			category: "PTP rules",
			why: "Sec 469(k) publicly traded partnership separate-basket rules — out of scope.",
		},
		{
			term: "PTP separate basket",
			pattern: "(?:PTP|publicly\\s+traded\\s+partnership).{0,40}(?:separate\\s+basket|loss\\s+limitation|loss\\s+basket)",
			category: "PTP rules",
			why: "PTP-specific PAL separate-basket rules — out of scope per the rollout handoff priority.",
		},
		{
			term: "Form 8582-PTP",
			pattern: "Form\\s*8582[-\\s]?PTP",
			category: "PTP rules",
			why: "Form 8582-PTP reporting — PTP separate-basket mechanics, out of scope.",
		},
		{
			term: "retired farmer",
			pattern: "retired\\s+farmer",
			category: "farming edge cases",
			why: "Retired farmer exception to material participation — out of scope per the rollout handoff priority.",
		},
		{
			term: "farming syndicate",
			pattern: "farming\\s+syndicate",
			category: "farming edge cases",
			why: "Farming syndicate rules under Sec 465(d) — out of scope.",
		},
		{
			term: "passive activity credit",
			pattern: "passive\\s+activity\\s+credit",
			category: "credit limitation",
			why: "Passive activity credit limitation — explicitly excluded by AICPA ('excluding tax credit implications' in the group name).",
		},
		{
			term: "equivalent deduction amount",
			pattern: "equivalent\\s+deduction\\s+(?:amount|formula)",
			category: "credit limitation",
			why: "The equivalent-deduction-amount computation for passive activity credits — credit limitation mechanics, out of scope.",
		},
		{
			term: "NIIT",
			pattern: "\\bNIIT\\b|net\\s+investment\\s+income\\s+tax",
			category: "adjacent topic",
			why: "Net Investment Income Tax under Sec 1411 as applied to passive activities — belongs to Individual Taxation, not the PAL topic.",
		},
		{
			term: "Section 1411",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1411\\b",
			category: "adjacent topic",
			why: "Sec 1411 NIIT — Individual Taxation topic.",
		},
		{
			term: "Section 469(f)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)469\\s*\\(\\s*f\\s*\\)",
			category: "former PA rules",
			why: "Sec 469(f) former passive activities rules — out of scope.",
		},
		{
			term: "passive income recharacterization",
			pattern: "passive\\s+(?:income\\s+)?recharacterization|recharacterized\\s+passive",
			category: "recharacterization mechanics",
			why: "Passive income recharacterization rules under Reg 1.469-2 (self-rental recharacterization, etc.) — out of scope.",
		},
		{
			term: "self-rental rule",
			pattern: "self[-\\s]rental\\s+rule",
			category: "recharacterization mechanics",
			why: "Self-rental recharacterization under Reg 1.469-2(f)(6) — out of scope.",
		},
		{
			term: "Section 469(g)(2)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)469\\s*\\(\\s*g\\s*\\)\\s*\\(\\s*2\\s*\\)",
			category: "death of taxpayer",
			why: "Sec 469(g)(2) treatment of suspended losses on death of taxpayer with stepped-up basis — out of scope.",
		},
		{
			term: "Section 58",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)58\\b",
			category: "AMT interaction",
			why: "Sec 58 AMT adjustments for passive activity losses — out of scope.",
		},
	],

	notes:
		"AICPA 2026 TCP/I/B 'Compliance for passive activity and at-risk loss limitations (excluding tax credit implications)' is one of the most tightly scoped topics in TCP. The group name explicitly excludes tax credit implications, and the four representative tasks are all Application-level computational: at-risk limitation computation, passive loss limitation computation, disposition release of suspended losses, and allocation of a loss between at-risk-suspended, PAL-suspended, and currently-deductible. The spec stays tight around these computational tasks and the key concepts needed to apply them. Drift surfaces per the handoff: PTP separate-basket rules, retired-farmer exception, grouping elections, and the detailed 7 material participation tests — all addressed in outOfScope and bannedTerms.",
};
