import type { LessonSpec } from "./types";

// Fourteenth authored spec. AICPA 2026 Blueprint FAR/III/F "Lessee accounting"
// has a single direct topic with 4 representative tasks:
//
//   R&U: Recall the appropriate accounting treatment for residual value
//        guarantees, purchase options and variable lease payments
//   R&U: Identify the criteria for classifying a lease arrangement for a
//        lessee
//   Application: Calculate the carrying amount of lease-related assets and
//                liabilities and prepare journal entries that a lessee
//                should record
//   Application: Calculate the lease costs that a lessee should recognize
//                in the income statement
//
// CRITICAL SCOPE BOUNDARY: AICPA FAR 2026 is LESSEE-only. Lessor accounting
// (sales-type, direct financing, operating-lease lessor classification) and
// sale-leaseback transactions are pushed to BAR (BAR/III — reporting
// complexity — and bar-advanced-lease-transactions is a separate Slayer
// topic). The spec holds that line: lessee accounting under ASC 842 is in
// scope; anything on the lessor side or involving a sale-leaseback is out.
//
// The lease-specific drift risks (from the rollout handoff): sale-leaseback
// complex structures and variable lease payments beyond simple CPI/index
// referencing.
//
// Additional drift surfaces: lessor classification tests, leveraged leases,
// build-to-suit construction phase guidance, sublease mechanics, lease
// modification reassessment mechanics, lease term reassessment and ROU
// remeasurement mechanics, IFRS 16 single-model approach differences, legacy
// ASC 840 contingent rent, related-party lease recognition and disclosure.

export const spec: LessonSpec = {
	topic: "Leases",
	section: "far",
	primaryRef: "FAR/III/F/0",
	secondaryRefs: [],

	inScope: [
		"Lessee classification under ASC 842 using the 5 criteria: (1) ownership transfers to lessee by end of term, (2) lessee has a purchase option that is reasonably certain to be exercised, (3) lease term is a major part (typically 75%+) of the remaining economic life, (4) present value of lease payments plus residual value guaranteed is substantially all (typically 90%+) of the asset's fair value, (5) asset is so specialized that only the lessee can use it without major modifications — meeting any one test triggers finance lease classification",
		"Identification of a lease at contract inception under ASC 842-10-15: a contract is (or contains) a lease if it conveys the right to control the use of an identified asset for a period of time in exchange for consideration; the two-element test of (a) identified asset (substantive substitution rights defeat the lease) and (b) right to control use (obtain substantially all economic benefits AND direct the use)",
		"Initial measurement of the right-of-use (ROU) asset for a lessee: ROU asset = lease liability + lease payments made at or before commencement + initial direct costs − lease incentives received",
		"Initial measurement of the lease liability: present value of future lease payments, discounted at the rate implicit in the lease if readily determinable, otherwise the lessee's incremental borrowing rate; private companies may elect to use a risk-free rate",
		"Lease payment components included in the liability: fixed payments, variable payments based on an index or rate measured at commencement (not future changes), residual value guarantees (the amount the lessee is probable to owe), purchase option strike when reasonably certain, termination penalty when reasonably certain",
		"Subsequent measurement of a finance lease: interest expense on the lease liability computed using the effective interest method; ROU asset amortized generally on a straight-line basis over the shorter of lease term and useful life; the income statement shows separate interest and amortization lines",
		"Subsequent measurement of an operating lease: a single lease cost is recognized on a straight-line basis over the lease term; the lease liability is reduced by the cash payment minus the periodic interest accretion; the ROU asset is reduced as the plug that keeps the single lease cost straight-line",
		"Short-term lease exception under ASC 842: leases with a term of 12 months or less and no purchase option reasonably certain of being exercised can be exempted from ROU/liability recognition; lease cost is recognized on a straight-line basis",
		"Initial direct costs at the concept level: incremental costs of obtaining the lease that would not have been incurred if the lease had not been obtained (primarily commissions); they are added to the ROU asset at commencement",
		"Lease incentives at the concept level: payments or concessions made by the lessor to (or on behalf of) the lessee reduce the ROU asset at commencement",
		"Residual value guarantees at the concept level: amounts the lessee guarantees the lessor will receive at lease end; included in lease payments to the extent the lessee is probable to owe; distinguishable from third-party residual guarantees",
		"Purchase options at the concept level: when the lessee has an option to purchase the underlying asset that is reasonably certain to be exercised, the strike price is included in lease payments and the lease is classified as finance (criterion 2)",
		"Variable lease payments at the concept level: payments that depend on an index or rate (e.g., CPI, LIBOR equivalent, prime rate) are measured at the level of the index AT COMMENCEMENT; subsequent changes in the index are recognized in the period they affect the payment (generally as variable lease expense) and do NOT cause remeasurement of the liability; payments that vary with usage or performance are not included in the liability at all",
		"Lessee presentation and disclosure at the concept level: finance lease ROU assets and liabilities shown separately from operating; total lease cost, cash flows for finance vs operating, weighted-average remaining lease term and discount rate, reconciliation of undiscounted payments to present value",
		"Journal entries for initial recognition, periodic operating lease expense, periodic finance lease amortization and interest, and final lease-term expiration at a concept-applied level",
	],

	outOfScope: [
		"Lessor accounting classification — sales-type lease, direct financing lease, operating lease classification tests from the lessor perspective; this material is NOT in FAR 2026 and belongs to BAR/III or to a separate advanced lease topic",
		"Sales-type lease lessor mechanics — selling profit or loss recognition, net investment in the lease, unearned interest income, initial direct cost treatment for the lessor",
		"Direct financing lease lessor mechanics — net investment in the lease, deferred gross profit deferral pattern, initial direct cost capitalization and amortization",
		"Operating lease lessor mechanics — rent income recognition, ROU asset remains on lessor's books as a regular asset, depreciation by lessor",
		"Sale-leaseback transactions of any complexity — the sale recognition criteria under ASC 606, failed sale-leaseback treatment as a financing, gain or loss recognition on the sale leg, sub-market leaseback treatment",
		"Leveraged lease accounting (grandfathered under ASC 842 for leases that existed before the effective date but not for new leases)",
		"Build-to-suit construction phase accounting — whether the lessee controls the asset during construction, lessee involvement tests, subsequent derecognition at construction completion",
		"Subleases — head lease and sublease classification, pass-through accounting, ROU asset derecognition for finance sublease, ROU asset continuation for operating sublease",
		"Lease modifications that are not accounted for as new separate contracts — remeasurement of the lease liability using the revised discount rate, reclassification between operating and finance, adjustment to the ROU asset to reflect the modification",
		"Lease term reassessment triggers — change in the lessee's assessment of exercising a purchase option or termination option, change in the lessor's obligations; remeasurement of the liability upon reassessment",
		"ROU asset impairment under ASC 360 as applied to lessee ROU assets — the impairment indicator framework, recoverability test using undiscounted cash flows, fair-value-based measurement of the impairment loss",
		"Variable lease payment types beyond simple index/rate (CPI) referencing — usage-based payments (mileage, occupancy-based rent), performance-based payments (sales-based rent, consumer price-based revenue sharing), contingent payments tied to events",
		"Reassessment of variable lease payments that depend on an index when the index changes — the CPA exam tests the concept that such changes do NOT trigger remeasurement of the liability; the deeper remeasurement mechanics are out",
		"Related-party leases at accounting and disclosure depth — related-party lease arrangement substance-over-form analysis, undiscounted related-party cash flow disclosures",
		"IFRS 16 Leases differences from ASC 842 — the single-model lessee approach under IFRS (all leases treated as finance-style), the IFRS low-value lease election, IFRS 16 sublease distinctions",
		"Private company practical expedients under ASC 842 at mechanics depth — the risk-free rate election, the grouping of similar leases for initial application, the hindsight practical expedient",
		"Legacy ASC 840 contingent rentals and capital lease classification tests — the pre-ASU 2016-02 framework with its four criteria and the 90%/75% bright lines as they appeared in ASC 840",
		"Transition accounting from ASC 840 to ASC 842 — the modified retrospective approach, the hindsight election, carryover of existing classifications",
		"Failed sale-leaseback accounting — when the transaction fails to qualify as a sale, the entire arrangement is accounted for as a financing with no derecognition and no gain recognition",
		"Master lease agreements and true-up mechanisms for variable components",
	],

	keyStandards: [
		"ASC 842 — Leases (the principal standard)",
		"ASC 842-10 — Overall (scope, lease definition, 5 classification criteria)",
		"ASC 842-20 — Lessee (lessee-specific recognition, measurement, presentation, disclosure)",
		"ASC 842-10-15 — Identification of a lease at inception",
		"ASC 842-20-25 — Lessee recognition criteria",
		"ASC 842-20-30 — Lessee initial measurement of ROU and liability",
		"ASC 842-20-35 — Lessee subsequent measurement",
		"ASC 842-20-45 — Lessee presentation",
		"ASC 842-20-50 — Lessee disclosure",
	],

	commonMisconceptions: [
		"Applying the old ASC 840 4-criteria capital lease test. ASC 842 uses 5 criteria and replaces 'capital lease' terminology with 'finance lease', and the right-of-use model applies to both operating and finance leases for the lessee (both are on-balance-sheet).",
		"Treating an operating lease as off-balance-sheet under ASC 842. All leases with a term longer than 12 months are on-balance-sheet for the lessee — operating leases still recognize a right-of-use asset and a lease liability.",
		"Computing lease liability using the lessee's incremental borrowing rate even when the rate implicit in the lease is readily determinable. The implicit rate is the required discount rate if determinable; only when it is not determinable does the lessee use the IBR (or risk-free rate for private companies who elect).",
		"Including variable lease payments based on usage or performance in the initial lease liability. Only fixed payments and payments based on an index or rate (at its level at commencement) are included; usage-based and performance-based payments are expensed as incurred.",
		"Remeasuring the lease liability every time the CPI or rate index changes. Under ASC 842, subsequent index changes do NOT trigger remeasurement of the liability — the variable expense is recognized in the period affected.",
		"Including a residual value guarantee in lease payments at its maximum potential amount. Only the amount the lessee is PROBABLE to owe at lease end is included in the lease liability.",
		"Including a purchase option strike price regardless of likelihood. The strike price is included in lease payments only if the lessee is REASONABLY CERTAIN to exercise the option.",
		"Recognizing lease expense on a straight-line basis for a finance lease. Finance leases recognize interest expense (declining over time due to effective interest method) and amortization expense separately; the total lease cost is front-loaded, not straight-line. Only operating leases produce a straight-line single lease cost.",
		"Failing to reduce the ROU asset for lease incentives at commencement. Lease incentives (e.g., tenant improvement allowances paid by the lessor) reduce the ROU asset from day one; they are not deferred and amortized.",
		"Believing the short-term lease exception applies to any lease with a remaining term of 12 months or less. The exception applies at lease commencement and only if the lease term (including any purchase option reasonably certain to be exercised) is 12 months or less.",
		"Classifying as finance lease based on a purchase option that may be exercised. The option must be REASONABLY CERTAIN to be exercised (a high threshold involving economic incentive and lack of practical alternatives) — not merely possible.",
		"Computing lessee interest expense on a straight-line basis for a finance lease. Interest is computed using the effective interest method on the beginning-of-period liability balance — it declines over the lease term as the liability is paid down.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "sales-type lease",
			pattern: "sales[-\\s]type\\s+lease",
			category: "lessor territory",
			why: "Sales-type lease is a LESSOR classification under ASC 842. AICPA 2026 FAR is lessee-only. Sales-type lease material belongs to BAR or the advanced lease transactions topic.",
		},
		{
			term: "direct financing lease",
			pattern: "direct\\s+financing\\s+lease",
			category: "lessor territory",
			why: "Direct financing lease is a LESSOR classification under ASC 842 — out of scope for FAR lessee topic.",
		},
		{
			term: "lessor accounting",
			pattern: "lessor\\s+(?:accounting|classification|perspective|recognition|measurement)",
			category: "lessor territory",
			why: "Lessor accounting is not in AICPA FAR 2026 scope. The FAR lease topic covers lessee accounting only.",
		},
		{
			term: "net investment in the lease",
			pattern: "net\\s+investment\\s+in\\s+(?:the\\s+)?lease",
			category: "lessor territory",
			why: "Net investment in the lease is the lessor's sales-type / direct financing lease receivable — lessor mechanics, out of scope.",
		},
		{
			term: "unearned interest income",
			pattern: "unearned\\s+interest\\s+income",
			category: "lessor territory",
			why: "Unearned interest income on a lessor's net investment — lessor mechanics, out of scope.",
		},
		{
			term: "selling profit",
			pattern: "selling\\s+profit\\s+(?:or\\s+loss\\s+)?(?:on\\s+)?(?:sales[-\\s]type\\s+)?lease",
			category: "lessor territory",
			why: "Selling profit/loss recognition on a sales-type lease — lessor mechanics, out of scope.",
		},
		{
			term: "sale-leaseback",
			pattern: "sale[-\\s]leaseback|sale[-\\s]and[-\\s]leaseback",
			category: "advanced transactions",
			why: "Sale-leaseback transactions belong to the BAR Advanced Lease Transactions topic, not FAR Leases. Drift into sale-leaseback is priority #1 for this spec per the rollout handoff.",
		},
		{
			term: "failed sale",
			pattern: "failed\\s+sale[-\\s]?(?:and[-\\s]?)?leaseback|failed\\s+sale",
			category: "advanced transactions",
			why: "Failed sale-leaseback accounting (financing treatment when the sale fails to qualify) — BAR / advanced topic, out of scope.",
		},
		{
			term: "leveraged lease",
			pattern: "leveraged\\s+lease",
			category: "legacy mechanics",
			why: "Leveraged lease accounting is grandfathered under ASC 842 but not applied to new leases — out of scope.",
		},
		{
			term: "build-to-suit",
			pattern: "build[-\\s]to[-\\s]suit|built[-\\s]to[-\\s]suit",
			category: "advanced transactions",
			why: "Build-to-suit construction phase lease guidance — advanced transaction area, out of scope.",
		},
		{
			term: "sublease",
			pattern: "sublease",
			category: "advanced transactions",
			why: "Sublease mechanics (head lease classification, sublease classification, ROU asset derecognition vs continuation) — advanced transaction area, out of scope.",
		},
		{
			term: "head lease",
			pattern: "head\\s+lease",
			category: "advanced transactions",
			why: "Head lease terminology in the context of subleases — advanced lease territory, out of scope.",
		},
		{
			term: "lease modification",
			pattern: "lease\\s+modification\\s+(?:as\\s+a\\s+)?(?:new|separate)\\s+(?:contract|lease)|remeasur(?:e|ement)\\s+(?:the\\s+)?lease\\s+(?:liability|term)",
			category: "modification mechanics",
			why: "Lease modification accounting beyond the bare concept (new-contract vs remeasurement, revised discount rate, ROU adjustment) — out of scope for foundational FAR.",
		},
		{
			term: "reassessment",
			pattern: "lease\\s+(?:term\\s+)?reassessment|reassess\\s+(?:the\\s+)?lease\\s+(?:term|liability|classification)",
			category: "modification mechanics",
			why: "Lease term reassessment triggers and remeasurement — out of scope for foundational FAR.",
		},
		{
			term: "ROU impairment",
			pattern: "(?:ROU|right[-\\s]of[-\\s]use)\\s+(?:asset\\s+)?impairment",
			category: "impairment mechanics",
			why: "Right-of-use asset impairment under ASC 360 as applied to leased assets — impairment topic, out of scope for FAR lease core.",
		},
		{
			term: "usage-based",
			pattern: "usage[-\\s]based\\s+(?:lease\\s+)?payments?|mileage[-\\s]based\\s+rent",
			category: "variable payment mechanics",
			why: "Variable lease payments based on usage or performance beyond the concept (CPI/index-based at commencement is in scope) — out of scope.",
		},
		{
			term: "IFRS 16",
			pattern: "\\bIFRS\\s*16\\b",
			category: "IFRS territory",
			why: "IFRS 16 Leases — single-model lessee approach and other IFRS-specific provisions — out of scope for FAR ASC 842.",
		},
		{
			term: "ASC 840",
			pattern: "\\bASC\\s*840\\b|Statement\\s+13\\b|SFAS\\s*13\\b",
			category: "legacy GAAP",
			why: "ASC 840 (pre-ASU 2016-02) lease framework — legacy GAAP, out of scope except at the concept of 'before ASC 842'.",
		},
		{
			term: "capital lease",
			pattern: "capital\\s+lease",
			category: "legacy terminology",
			why: "'Capital lease' is the ASC 840 terminology replaced by 'finance lease' under ASC 842. Using the old term suggests drift into legacy mechanics.",
		},
		{
			term: "bargain purchase option",
			pattern: "bargain\\s+purchase\\s+option",
			category: "legacy terminology",
			why: "'Bargain purchase option' is ASC 840 terminology. ASC 842 uses 'purchase option reasonably certain to be exercised' — different framework.",
		},
		{
			term: "leveraged lease",
			pattern: "leveraged\\s+lessor|grandfathered\\s+leveraged",
			category: "legacy mechanics",
			why: "Leveraged lease grandfather provisions — legacy, out of scope.",
		},
		{
			term: "ASU 2016-02",
			pattern: "ASU\\s*2016[-\\s]02",
			category: "transition mechanics",
			why: "ASU 2016-02 transition guidance — transition mechanics, out of scope beyond the fact that ASC 842 exists.",
		},
		{
			term: "modified retrospective",
			pattern: "modified\\s+retrospective",
			category: "transition mechanics",
			why: "Modified retrospective transition from ASC 840 to ASC 842 — transition mechanics, out of scope.",
		},
	],

	notes:
		"FAR/III/F 'Lessee accounting' is explicitly lessee-only in AICPA 2026. Lessor accounting (sales-type, direct financing, operating-lease lessor classification) and sale-leaseback transactions are pushed out of FAR and into BAR Advanced Lease Transactions or similar advanced topics. This spec holds the line by banning lessor terminology, sale-leaseback variants, leveraged leases, build-to-suit guidance, subleases, and legacy ASC 840 terminology. The in-scope content is tightly scoped: the 5 classification criteria, ROU/liability initial measurement, subsequent measurement for operating vs finance, variable payments at the CPI/index-at-commencement level, residual value guarantees and purchase options at the concept level, short-term lease exception, initial direct costs and incentives, and journal-entry-level application. The drift risks per the rollout handoff (sale-leaseback structures and variable payments beyond CPI) are the top two banned-term categories.",
};
