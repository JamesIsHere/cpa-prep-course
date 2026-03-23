-- FAR cleanup batch 19 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q178 [medium] topic: Governmental Accounting
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 33, paragraph 16, property tax revenue in governmental funds must be both measurable and available — collected within the period or soon enough thereafter (typically 60 days) to pay current liabilities. The general fund recognizes $11.2M collected plus $500,000 expected within 60 days = $11.7M. The $300,000 expected in March is reported as deferred inflows of resources. In the government-wide statements, GASB 34 requires full accrual, so the entire $12M levy is recognized when the enforceable legal claim arises.
Wrong (A): Both statements do not recognize $12 million because the 60-day availability criterion under modified accrual creates a real difference between fund-level and government-wide reporting.
Wrong (C): Modified accrual is not cash basis — the $500,000 collectible within 60 days qualifies as available revenue and is recognized, not deferred.
Wrong (D): GASB explicitly requires different measurement focuses at the fund level (current financial resources/modified accrual) and government-wide level (economic resources/full accrual), so the amounts differ.$EXPL$,
  difficulty = 'medium'
WHERE id = 178;

-- Q179 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 54, paragraphs 30–37, the five governmental fund types serve distinct purposes based on the nature of the restriction. Special revenue funds account for legally restricted operating revenue sources such as the road grant (GASB 54, paragraph 30). Debt service funds account for principal and interest payments on general long-term debt (GASB 54, paragraph 35). Permanent funds hold resources where only earnings, not principal, may be spent (GASB 54, paragraph 37).
Wrong (A): Fund type determination is based on the nature of the restriction or activity, not the dollar amount — larger amounts do not require separate fund reporting.
Wrong (C): Federal grants for governmental activities are reported in special revenue funds, not enterprise funds, which are proprietary funds used for business-type activities.
Wrong (D): While the general fund can report many activities, special revenue, debt service, and permanent funds exist precisely because certain restrictions require separate accountability.$EXPL$,
  difficulty = 'medium'
WHERE id = 179;

-- Q180 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 34, paragraph 80, bond proceeds for capital construction are reported as an other financing source in the capital projects fund. Under GASB 34, paragraph 112, interfund transfers are reported as other financing uses (transfer out) in the general fund and other financing sources (transfer in) in the capital projects fund. Net effect: capital projects fund balance increases by $8.5 million, and general fund balance decreases by $500,000.
Wrong (A): The capital projects fund balance increases by $8.5 million (not just $8 million), because the $500,000 transfer in is also recorded; additionally, the transfer is not a loan but a permanent transfer reducing the general fund balance.
Wrong (B): Bond proceeds for construction are recorded in the capital projects fund, not the general fund, even though general obligation debt is ultimately serviced from general revenues.
Wrong (D): Bond proceeds go to the capital projects fund for construction purposes; the debt service fund handles subsequent principal and interest payments, not the initial receipt of construction financing.$EXPL$,
  difficulty = 'medium'
WHERE id = 180;

-- Q182 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 958-605-25-5A, unconditional promises to give are recognized as revenue when made, measured at present value of expected cash flows. Pledge A''s two-year payment term creates a time restriction, classifying it as net assets with donor restrictions. Under ASC 958-605-25-11, conditional promises with a barrier (such as a matching requirement) are not recognized until the barrier is substantially met. Pledge B''s 40% progress ($400,000 of $1 million) does not constitute substantial performance.
Wrong (B): Conditional promises are recognized on an all-or-nothing basis once the barrier is substantially met, not proportionally based on progress toward the condition.
Wrong (C): Not-for-profit organizations use accrual accounting, not the cash basis — unconditional pledges are recognized when made regardless of when cash is received.
Wrong (D): A multi-year payment schedule creates a time restriction but does not preclude recognition — the pledge is recognized at present value and reported in net assets with donor restrictions.$EXPL$,
  difficulty = 'medium'
WHERE id = 182;

-- Q184 [easy] topic: Not-for-Profit Accounting
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 958-720-45-2A (as amended by ASU 2016-14), a not-for-profit entity must present expenses by both their natural classification (such as salaries, rent, and supplies) and their functional classification (such as program services, management and general, and fundraising). This can be shown on the face of the statement of activities, in a separate statement, or in the notes.
Wrong (A): Natural classification alone is insufficient because ASC 958 requires the dual presentation of both natural and functional classifications.
Wrong (C): Functional classification alone does not satisfy the requirement — natural classification must also be presented so users can understand the types of costs incurred.
Wrong (D): A single line item without the dual classification does not comply with ASU 2016-14''s requirement for transparent expense reporting.$EXPL$,
  difficulty = 'easy'
WHERE id = 184;

-- Q185 [medium] topic: Consolidations
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 810-10-45-19, consolidated net income includes 100% of the subsidiary''s results and is then attributed between controlling and noncontrolling interests. The NCI share is 20% × $500,000 = $100,000, so the controlling interest''s share is $2,200,000 − $100,000 = $2,100,000. The analyst''s error deducts the full $500,000 instead of only the $100,000 NCI portion, understating the controlling interest by $400,000.
Wrong (B): ASC 810 does not exclude 100% of subsidiary income from the controlling interest — it allocates only the NCI ownership percentage (20%) to noncontrolling interests.
Wrong (C): The NCI share is presented on the face of the consolidated income statement, not relegated to footnotes, and the allocation is a required step in preparing consolidated financials.
Wrong (D): Under ASC 810, a controlled subsidiary''s results are fully consolidated regardless of ownership percentage; less-than-wholly-owned status affects only the NCI allocation.$EXPL$,
  difficulty = 'medium'
WHERE id = 185;

-- Q186 [easy] topic: Consolidations
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 805-10-05-4, all business combinations are accounted for using the acquisition method. The acquirer recognizes identifiable assets acquired and liabilities assumed at their acquisition-date fair values, measures any noncontrolling interest, and recognizes goodwill or a gain from a bargain purchase.
Wrong (A): The pooling-of-interests method was eliminated by SFAS 141 (now codified in ASC 805) and is no longer permitted under U.S. GAAP.
Wrong (B): The equity method under ASC 323 is used for investments where the investor has significant influence (typically 20–50% ownership), not for business combinations requiring consolidation.
Wrong (C): Recording at historical book value does not comply with ASC 805, which requires fair value measurement of all identifiable assets and liabilities on the acquisition date.$EXPL$,
  difficulty = 'easy'
WHERE id = 186;

-- Q188 [medium] topic: Statement of Cash Flows
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 230-10-45-28, the indirect method adjusts net income for changes in operating assets and liabilities. A decrease in accounts receivable means the company collected $45,000 more cash than it recognized in revenue, as customers paid down prior-period balances. This $45,000 is added to net income in the operating section, increasing operating cash flow.
Wrong (A): A decrease in a current operating asset represents a cash inflow that is added to net income, not subtracted — this choice reverses the direction of the adjustment.
Wrong (C): A change in accounts receivable is an operating working capital adjustment, not an investing activity — liquidating a financial asset would involve marketable securities or similar instruments.
Wrong (D): The receivables decrease is a standard cash flow reconciling item, not a qualitative trend disclosure — it reflects cash collection exceeding revenue recognition.$EXPL$,
  difficulty = 'medium'
WHERE id = 188;

-- Q189 [medium] topic: Statement of Cash Flows
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 230-10-45-28, the indirect method starts with net income, which includes the $50,000 gain. The full sale proceeds are separately reported in investing activities. Without removing the gain from operations, it would appear in both sections — once in net income within operating activities and again in the full sale proceeds within investing activities — overstating total reported cash by $50,000. Operating cash flow after proper adjustments: $500,000 + $80,000 − $30,000 − $15,000 − $50,000 = $485,000.
Wrong (A): The classification is not immaterial because distorted operating and investing subtotals impair analytical comparability and mislead users about operating performance.
Wrong (B): Equipment sale gains are investing in nature, not operating achievements — including them in operating cash flow misrepresents the company''s core operating performance.
Wrong (D): The gain must be subtracted, not added, because it is already included in net income and the full proceeds are reported in investing activities.$EXPL$,
  difficulty = 'medium'
WHERE id = 189;

-- Q190 [easy] topic: Statement of Cash Flows
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 740-10-30-5, a valuation allowance is recorded when it is more likely than not (greater than 50% probability) that some or all of the DTA will not be realized. The assessment weighs all available positive and negative evidence. Cumulative losses in recent years represent significant objective negative evidence that is difficult to overcome with projections alone (ASC 740-10-30-21 through 30-24). If a full allowance is recorded, net DTA becomes zero and tax expense increases by $2 million.
Wrong (A): Indefinite NOL carryforward life does not guarantee realization — the company must generate sufficient taxable income to utilize the loss carryforward.
Wrong (B): There is no automatic disqualification based on years of losses — the standard requires a balanced weighing of all positive and negative evidence.
Wrong (D): ASC 740 requires assessment of the valuation allowance at each reporting date, not deferral until the NOL actually expires unused.$EXPL$,
  difficulty = 'easy'
WHERE id = 190;

-- Q191 [hard] topic: Statement of Cash Flows
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 230-10-50-3 through 50-6, noncash investing and financing activities must be excluded from the body of the cash flow statement and disclosed separately in supplemental schedules or notes. The $120,000 cash paid is reported as an investing outflow, but the noncash exchange of old equipment (fair value $65,000) is disclosed supplementally. This means the investing section alone understates the total capital expenditure activity of $185,000. The $15,000 gain is subtracted from net income in the operating section under the indirect method to prevent double-counting.
Wrong (B): ASC 230 explicitly excludes noncash portions from the cash flow statement body — only the $120,000 cash component appears in investing activities, not the full $185,000.
Wrong (C): The noncash component ($65,000 of a $185,000 acquisition) is material and its supplemental disclosure is mandatory under ASC 230, not optional.
Wrong (D): Book value is not netted against cash paid — each component is reported separately, with cash flows on the statement and noncash exchanges in supplemental disclosures.$EXPL$,
  difficulty = 'hard'
WHERE id = 191;

-- Q192 [medium] topic: Contingencies
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 450-20-25-2, when a loss contingency is probable and a best estimate exists within the range, that amount is accrued. Ridgemont accrues $1.5 million (the best estimate). Under ASC 450-20-30-1, when no amount in the range is more likely than another, the minimum of the range is accrued. The peer company accrues $1.2 million because it lacks a best estimate. The $300,000 difference arises solely from whether a best estimate is identifiable.
Wrong (A): Different litigation strategies do not explain the accrual difference — both companies have the same probability range, and ASC 450 bases the accrual on the availability of a best estimate within that range.
Wrong (B): The minimum accrual is not a conservative policy choice — it is the default rule under ASC 450-20-30-1 when no single amount in the range is more likely than any other.
Wrong (C): The peer company''s accrual of the range minimum reflects the absence of a best estimate, not lower confidence in the range — the range itself is established as the probable loss.$EXPL$,
  difficulty = 'medium'
WHERE id = 192;

-- Q193 [medium] topic: Contingencies
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 450-20-50-3 through 50-5, when a loss contingency is reasonably possible (but not probable), no accrual is required. However, disclosure of the nature of the contingency and an estimate of the possible loss or range of loss must be provided in the notes to the financial statements. The $200,000–$500,000 range should be disclosed.
Wrong (A): Accrual of $200,000 would be appropriate only if the loss were probable, not merely reasonably possible — the reasonably possible threshold requires disclosure only.
Wrong (B): Accruing the midpoint has no basis under ASC 450 — even when a loss is probable and no best estimate exists, the minimum of the range (not the midpoint) is accrued.
Wrong (D): When a loss is reasonably possible, disclosure is required — omitting both disclosure and accrual would violate ASC 450-20-50.$EXPL$,
  difficulty = 'medium'
WHERE id = 193;

-- Q194 [medium] topic: Earnings Per Share
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 260-10-45-10, basic EPS equals net income minus preferred dividends divided by weighted-average common shares outstanding. The correct numerator is $3,200,000 − $400,000 = $2,800,000, producing EPS of $3.50 ($2,800,000 ÷ 800,000). The analyst''s $4.00 overstates returns available to common shareholders by $0.50 per share because the preferred dividend claim was not deducted.
Wrong (A): Preferred dividends are subtracted from the numerator, not added — adding them would further overstate income available to common shareholders.
Wrong (B): Preferred shares are not included in the denominator of basic EPS — the denominator includes only weighted-average common shares outstanding.
Wrong (D): Under ASC 260, cumulative preferred dividends are deducted from net income regardless of whether they have been declared, because cumulative dividends represent a claim that accumulates whether or not declared.$EXPL$,
  difficulty = 'medium'
WHERE id = 194;

-- Q195 [hard] topic: Earnings Per Share
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 260-10-45-22, the treasury stock method calculates incremental shares as shares from exercise minus shares that could be repurchased with the proceeds. At $40 market price: proceeds = 10,000 × $20 = $200,000; repurchased = $200,000 ÷ $40 = 5,000; incremental = 5,000. Diluted EPS = $500,000 ÷ 105,000 = $4.76. At $25 market price: repurchased = $200,000 ÷ $25 = 8,000; incremental = 2,000. Diluted EPS = $500,000 ÷ 102,000 = $4.90. The dilutive impact shrinks as the spread between market and exercise prices narrows.
Wrong (A): A lower market price reduces dilution, not increases it, because more shares can be repurchased with the same proceeds, leaving fewer net new incremental shares.
Wrong (C): Options remain dilutive whenever the market price exceeds the exercise price ($25 > $20) — there is no automatic exclusion threshold under ASC 260.
Wrong (D): Both the exercise price and the market price are essential inputs to the treasury stock method — the market price determines how many shares can be repurchased with the option proceeds.$EXPL$,
  difficulty = 'hard'
WHERE id = 195;

-- Q196 [medium] topic: Fair Value
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 820-10-35-37 through 35-54, the fair value hierarchy ranks inputs by objectivity: Level 1 uses quoted prices in active markets, Level 2 uses observable inputs other than quoted prices, and Level 3 uses unobservable inputs requiring significant management judgment. Portfolio B''s Level 3 measurement relies on unobservable assumptions (discount rates, growth projections, exit multiples) that cannot be independently corroborated, creating estimation uncertainty and susceptibility to bias absent from Portfolio A''s market-quoted Level 1 inputs.
Wrong (B): Holding period length does not determine audit risk — the fair value hierarchy level and the observability of inputs are the primary drivers of measurement uncertainty.
Wrong (C): While ASC 820 applies the same fair value definition across all hierarchy levels, the reliability and verifiability of inputs differ significantly, directly affecting audit risk.
Wrong (D): Public market prices may be more volatile day-to-day, but Level 1 measurements are objectively verifiable, making them lower audit risk than Level 3 estimates that rely on management assumptions.$EXPL$,
  difficulty = 'medium'
WHERE id = 196;

-- Q197 [hard] topic: Fair Value
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 820-10-35-10, fair value measurement of nonfinancial assets is based on the highest and best use from a market participant''s perspective, considering what is physically possible, legally permissible, and financially feasible. A market participant would value the parcel at $4.2 million based on the mixed-use commercial development potential, regardless of the entity''s current use as a parking lot.
Wrong (A): ASC 820 explicitly states that fair value is not entity-specific value-in-use — it reflects the price a market participant would pay, which incorporates the highest and best use determination.
Wrong (B): Averaging value-in-use and highest-and-best-use values has no basis under ASC 820 — the standard requires a single measurement based on the market participant perspective.
Wrong (C): While the income approach is one of three permissible valuation techniques, ASC 820 does not mandate any single approach — the selection depends on which technique best estimates exit price from a market participant''s viewpoint.$EXPL$,
  difficulty = 'hard'
WHERE id = 197;

-- Q370 [easy] topic: Financial Statements
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 105-10-05-1, the FASB Accounting Standards Codification (ASC) is the single source of authoritative U.S. GAAP for nongovernmental entities. It superseded all previously issued standards, interpretations, and technical bulletins by consolidating them into one framework.
Wrong (B): AICPA Accounting Interpretations and Implementation Guides are nonauthoritative unless their content has been incorporated into the Codification.
Wrong (C): Industry practices and textbooks are nonauthoritative sources that may be considered only when the Codification does not address a particular transaction.
Wrong (D): SEC Staff Accounting Bulletins are authoritative only for SEC registrants and sit alongside, not above, the Codification in the GAAP hierarchy.$EXPL$,
  difficulty = 'easy'
WHERE id = 370;

-- Q390 [medium] topic: Inventory
-- Issues: no_citation
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 330-10-30-12 through 30-14, the gross profit method estimates ending inventory by applying a historical gross profit percentage to net sales to compute estimated COGS, then subtracting from goods available for sale. Goods available = $450,000 + $1,800,000 = $2,250,000. Estimated COGS = $2,750,000 × (1 − 0.35) = $1,787,500. Estimated ending inventory = $2,250,000 − $1,787,500 = $462,500. The method''s reliability depends on the stability of the gross profit rate, and a shift toward lower-margin products means the historical 35% rate likely overstates the current margin.
Wrong (A): The gross profit method''s cost data is directly affected by margin changes because the gross profit rate determines the estimated COGS split from sales — product mix shifts undermine the rate assumption.
Wrong (C): Applying the 35% rate directly to net sales ($2,750,000 × 0.35 = $962,500) confuses gross profit with estimated ending inventory — the 35% represents the profit margin, not a cost ratio applied to derive inventory.
Wrong (D): Lower-margin items do not have more predictable cost structures, and the product mix shift weakens (not strengthens) the historical rate assumption.$EXPL$,
  difficulty = 'medium'
WHERE id = 390;

-- Q391 [hard] topic: Inventory
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 330-10-30-10 (conventional retail method), the cost-to-retail ratio excludes net markdowns from the denominator. Without markdowns: ratio = $840,000 ÷ $1,260,000 = 66.7%. With markdowns: ratio = $840,000 ÷ ($1,260,000 − $60,000) = 70.0%. Ending inventory at retail = $1,200,000 − $980,000 = $220,000. At 66.7%: $146,740; at 70.0%: $154,000. The lower ratio produces a more conservative estimate approximating lower of cost or market, because markdowns signal NRV has declined below original retail.
Wrong (A): The different ratios (66.7% vs. 70.0%) produce materially different ending inventory estimates ($146,740 vs. $154,000), so the effect does not cancel out.
Wrong (C): Excluding markdowns produces a lower cost-to-retail ratio (66.7%), not a higher one — fewer dollars in the denominator would increase the ratio, but excluding markdowns keeps the larger denominator.
Wrong (D): The conventional retail method specifically excludes markdowns by design to approximate LCM — including all markdowns would produce the average cost retail method instead.$EXPL$,
  difficulty = 'hard'
WHERE id = 391;

-- Q392 [medium] topic: Inventory
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Ridgemont Chemicals entered a noncancelable purchase commitment on September 1 to buy 10,000 gallons of industrial solvent at $48 per gallon, with delivery scheduled for March. By December 31, the market price has declined to $36 per gallon. How should Ridgemont account for this commitment at December 31, and what would change if the market price had instead risen to $55 per gallon?$EXPL$,
  choices = $EXPL$["No loss is recognized because goods have not been delivered — the commitment is disclosed in notes only","A $120,000 loss and accrued liability are recognized because the decline is other-than-temporary; if the price had risen, no gain would be recorded","Both the $120,000 loss at decline and a $70,000 gain at increase are recognized symmetrically","The entire $480,000 commitment is recorded as a liability because the contract is noncancelable"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 330-10-35-17 and ASC 450, when the market price of goods under a noncancelable purchase commitment declines below the commitment price and the decline is other-than-temporary, the loss must be recognized in the period of decline. Loss = (10,000 × $48) − (10,000 × $36) = $120,000, recorded as a loss with a corresponding accrued liability. If the market price had risen to $55, the $70,000 unrealized gain would not be recognized because purchase commitments are executory contracts — GAAP does not permit gain recognition until the transaction is completed, reflecting conservatism.
Wrong (A): Noncancelable commitments with other-than-temporary market declines require accrual of the loss, not just note disclosure.
Wrong (C): GAAP does not permit symmetric gain recognition on purchase commitments — losses are accrued when probable, but gains are deferred until realized upon delivery.
Wrong (D): Only the loss portion ($120,000) is accrued, not the entire commitment amount — the full contract price is not recorded as a liability.$EXPL$,
  difficulty = 'medium'
WHERE id = 392;

-- Q409 [medium] topic: Intangible Assets
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Thornfield Pharmaceuticals'' U.S. subsidiary follows ASC 730, which requires expensing all R&D costs, while its European subsidiary follows IAS 38, which permits capitalizing development costs after feasibility criteria are met. Both subsidiaries spent $3.6 million on drug development in Year 2 after establishing technical feasibility. How does this difference affect comparability of reported assets and net income?$EXPL$,
  choices = $EXPL$["No analytical significance because both spent the same cash amount on development","The U.S. subsidiary reports lower total assets and lower Year 2 income; an analyst must normalize to a common basis for comparison","The European subsidiary is more conservative because capitalizing costs defers recognition","Both report identical results because GAAP and IFRS have converged on R&D treatment"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 730-10-25-2, all research and development costs are expensed as incurred — the U.S. subsidiary reports $3.6M in R&D expense in Year 2, reducing net income and creating no asset. Under IAS 38, paragraph 57, development costs meeting six specific criteria are capitalized and amortized. The European subsidiary capitalizes $3.6M, reporting no expense in Year 2 but amortization in future periods. This divergence affects profitability ratios, ROA, and asset turnover; analysts must normalize by choosing a common treatment.
Wrong (A): The accounting difference materially affects key ratios and reported profitability despite identical cash spending — financial statement analysis requires comparability adjustments.
Wrong (C): Expensing (U.S. GAAP) is more conservative in the current period because it reduces income immediately; capitalizing (IFRS) defers the cost to future periods through amortization.
Wrong (D): GAAP and IFRS have not converged on development cost capitalization — ASC 730 prohibits it while IAS 38 permits it under specified conditions.$EXPL$,
  difficulty = 'medium'
WHERE id = 409;

-- Q410 [medium] topic: Intangible Assets
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Cascade Software is developing a new enterprise application for external sale. Conceptual design cost $200,000, detailed design through working model completion cost $450,000, and coding and testing after the working model cost $350,000. Under ASC 985-20, how does the technological feasibility milestone affect the amounts capitalized versus expensed?$EXPL$,
  choices = $EXPL$["All $1,000,000 is expensed because software development costs are always treated as R&D","Only Phase 1 ($200,000) is expensed and Phases 2–3 ($800,000) are capitalized","The $650,000 spent before the working model is expensed and the $350,000 after feasibility is capitalized","All $1,000,000 is capitalized because the intent to sell triggers capitalization from project start"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 985-20-25-1 through 25-2, costs incurred before technological feasibility is established are expensed as R&D. Technological feasibility is established upon completion of a detailed program design or a working model. Phases 1–2 ($650,000) predate the working model and are expensed. Phase 3 ($350,000) follows feasibility and is capitalized, then amortized using the greater of straight-line or revenue-proportion method. The feasibility milestone is a management judgment call, which can reduce cross-company comparability.
Wrong (A): ASC 985-20 explicitly permits and requires capitalization of software development costs incurred after technological feasibility is established.
Wrong (B): Detailed program design costs incurred before the working model is completed are expensed, not capitalized — merely starting Phase 2 does not establish feasibility.
Wrong (D): Intent to sell does not trigger capitalization — the technological feasibility milestone, not the business purpose, determines when capitalization begins.$EXPL$,
  difficulty = 'medium'
WHERE id = 410;

-- Q411 [easy] topic: Intangible Assets
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 350-40-25-2 through 25-4, costs incurred during the application development stage are capitalized. This stage includes coding, software configuration, testing, and installation activities that occur after management commits to funding and the preliminary project stage is complete.
Wrong (A): Preliminary project stage costs (conceptual formulation, evaluating alternatives, determining technology requirements) are expensed as incurred under ASC 350-40-25-1.
Wrong (C): Post-implementation stage costs (training, maintenance, minor upgrades) are expensed as incurred because they do not add functionality to the software.
Wrong (D): Only the application development stage qualifies for capitalization — costs during the preliminary and post-implementation stages are expensed.$EXPL$,
  difficulty = 'easy'
WHERE id = 411;

-- Q415 [medium] topic: Intangible Assets
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 985-20-15-2, the standard applies to costs of software to be sold, leased, or otherwise marketed to external customers, with capitalization beginning after technological feasibility. Under ASC 350-40-15-2, the standard governs costs of software developed or obtained for internal use, with capitalization during the application development stage. The capitalization triggers differ: ASC 985-20 requires technological feasibility, while ASC 350-40 capitalizes once preliminary project activities are complete.
Wrong (A): This reverses the standards — ASC 985-20 applies to software for external sale, and ASC 350-40 applies to internal-use software.
Wrong (B): Both standards permit capitalization of development costs under their respective criteria — neither imposes a blanket prohibition.
Wrong (C): The standards apply different capitalization thresholds — ASC 985-20 uses technological feasibility while ASC 350-40 uses the application development stage, producing different timing for capitalization.$EXPL$,
  difficulty = 'medium'
WHERE id = 415;

-- Q419 [easy] topic: Leases
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 842-10-25-2, a lessor classifies a lease as operating when none of the five transfer-of-ownership criteria are met: (1) ownership transfers, (2) purchase option reasonably certain, (3) lease term is a major part of economic life, (4) present value of payments is substantially all of fair value, or (5) the asset is specialized with no alternative use to the lessor.
Wrong (B): A sales-type lease requires at least one of the five transfer criteria to be met, indicating that control of the underlying asset has effectively transferred to the lessee.
Wrong (C): A direct financing lease requires specific criteria beyond the transfer tests — the present value of payments plus any residual value guarantee must be substantially all of fair value, while a selling profit or loss is not recognized.
Wrong (D): ASC 842 eliminated leveraged lease classification for new leases entered into after the effective date; existing leveraged leases were grandfathered.$EXPL$,
  difficulty = 'easy'
WHERE id = 419;

-- Q423 [easy] topic: Leases
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 842-20-25-2, a lessee may elect, as a practical expedient, not to recognize right-of-use assets and lease liabilities for short-term leases. A short-term lease has a term of 12 months or less at commencement and does not include a purchase option the lessee is reasonably certain to exercise. Lease payments are recognized on a straight-line basis over the lease term.
Wrong (A): The short-term lease threshold is 12 months, not 24 months — leases with terms between 13 and 24 months must be recognized on the balance sheet.
Wrong (C): There is no dollar-amount threshold for the short-term lease exemption — the exemption is based solely on lease term and purchase option criteria.
Wrong (D): Related-party leases are not exempt from ASC 842 recognition requirements — they follow the same classification and measurement rules as third-party leases.$EXPL$,
  difficulty = 'easy'
WHERE id = 423;

-- Q428 [easy] topic: Bonds and Debt
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): ASU 2020-06 (codified in ASC 470-20) simplified convertible debt accounting by eliminating the cash conversion model and the beneficial conversion feature model. Under the updated guidance, most convertible debt is accounted for as a single liability measured at amortized cost, unless the fair value option is elected or a specific scope exception applies.
Wrong (A): Convertible debt remains classified as a liability under ASC 470-20, not reclassified to equity — the simplification removed the requirement to bifurcate an equity component, keeping the instrument as a single liability.
Wrong (B): Amortized cost remains the default measurement for convertible debt; fair value through earnings is available only as an election under ASC 825, not a requirement.
Wrong (D): Convertible instruments still affect EPS calculations under ASC 260 — ASU 2020-06 actually eliminated the treasury stock method for convertible instruments and requires the if-converted method.$EXPL$,
  difficulty = 'easy'
WHERE id = 428;

-- Q429 [easy] topic: Bonds and Debt
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 825-10-25-1 through 25-4, the fair value option allows an entity to irrevocably elect, at specified election dates (typically initial recognition), to measure eligible financial instruments at fair value. Changes in fair value are reported in earnings each period. The election is made on an instrument-by-instrument basis, providing flexibility without requiring uniform treatment of all instruments.
Wrong (A): The fair value option is an elective practical expedient, not a blanket requirement — entities choose which eligible instruments to measure at fair value.
Wrong (B): The option applies to a broad range of financial instruments (loans, bonds, deposits), not just derivatives — derivatives are already measured at fair value under ASC 815.
Wrong (C): Amortized cost remains available as the default measurement for debt instruments where the fair value option is not elected — the option supplements, not replaces, amortized cost accounting.$EXPL$,
  difficulty = 'easy'
WHERE id = 429;

-- Q437 [easy] topic: Equity
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 718-10-30-2, share-based compensation awards to employees are measured at fair value on the grant date. For stock options, fair value is typically estimated using an option-pricing model such as Black-Scholes or a lattice model, incorporating factors such as exercise price, expected term, volatility, risk-free rate, and expected dividends.
Wrong (A): ASC 718 replaced intrinsic value measurement with grant-date fair value — using exercise-date intrinsic value was the approach under the superseded APB 25.
Wrong (C): Par value is a nominal legal designation unrelated to compensation measurement — it does not reflect the economic value of the option award.
Wrong (D): Ongoing mark-to-market adjustments between exercise price and market price apply to liability-classified awards, not to typical equity-classified employee stock options.$EXPL$,
  difficulty = 'easy'
WHERE id = 437;

-- Q439 [easy] topic: Equity
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 718-10-25-20 through 25-21, a performance condition affects whether and when compensation cost is recognized but does not change the grant-date fair value measurement. If the performance condition is probable of being achieved, compensation cost is recognized over the requisite service period. If it later becomes improbable, previously recognized cost is reversed.
Wrong (A): Performance conditions do not change the measurement attribute — the award is still measured at grant-date fair value, not intrinsic value.
Wrong (B): Compensation expense is not eliminated entirely — rather, it is not recognized in a given period if the condition is not yet considered probable, and prior amounts are reversed if probability declines.
Wrong (D): Compensation cost is recognized ratably over the service period as the condition becomes probable, not solely on the single date the performance condition is ultimately achieved.$EXPL$,
  difficulty = 'easy'
WHERE id = 439;

-- Q440 [easy] topic: Equity
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 718-10-30-14, a market condition (such as achieving a target stock price) is incorporated into the grant-date fair value measurement using an option-pricing model. Compensation cost is then recognized over the requisite service period regardless of whether the market condition is ultimately achieved, because the probability of the market condition is already reflected in the fair value.
Wrong (A): Compensation cost is recognized even if the market condition is never met — this distinguishes market conditions from performance conditions, where recognition depends on probability of achievement.
Wrong (B): Recognition is not deferred until the stock price target is reached — the cost is recognized ratably over the service period from the grant date.
Wrong (C): Equity-classified awards with market conditions are not remeasured after the grant date — the market condition is priced into the initial fair value measurement and fixed at that point.$EXPL$,
  difficulty = 'easy'
WHERE id = 440;

-- Q441 [medium] topic: Equity
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 718-10-25-5 through 25-8, restricted stock involves the actual issuance of shares to the employee at the grant date — the employee holds shares subject to forfeiture restrictions and typically receives dividends and voting rights during the vesting period. RSUs are contractual promises to deliver shares (or cash equivalent) upon vesting — the employee does not receive actual shares until vesting conditions are satisfied. Both instruments are typically equity-classified and measured at grant-date fair value.
Wrong (A): Restricted stock is generally equity-classified, not liability-classified — liability classification applies only when the entity is obligated to settle in cash.
Wrong (C): This reverses the relationship — restricted stock holders typically have voting rights because they hold actual shares, while RSU holders do not receive shares or voting rights until vesting occurs.
Wrong (D): There are meaningful accounting and legal differences — restricted stock creates an immediate shareholder, while RSUs do not, affecting dividend treatment, voting rights, and Section 83(b) election availability.$EXPL$,
  difficulty = 'medium'
WHERE id = 441;

-- Q457 [easy] topic: Governmental Accounting
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 34, paragraphs 15–16, government-wide financial statements use the economic resources measurement focus and full accrual basis of accounting. Revenues are recognized when earned and expenses when incurred, regardless of when cash is received or paid.
Wrong (A): Modified accrual basis applies to governmental fund statements, not government-wide statements — the two reporting levels deliberately use different accounting bases.
Wrong (B): Cash basis is not used for government-wide financial reporting under GASB standards — it fails to capture noncash transactions and accrued obligations.
Wrong (C): Budgetary basis is used for budgetary comparison schedules (required supplementary information), not for the government-wide financial statements.$EXPL$,
  difficulty = 'easy'
WHERE id = 457;

-- Q458 [easy] topic: Governmental Accounting
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 68, paragraph 13, the net pension liability is defined as the total pension liability (the actuarial present value of projected benefit payments attributed to past service) minus the pension plan''s fiduciary net position (plan assets available to pay benefits). This net amount is reported on the employer''s statement of net position.
Wrong (B): The total pension liability includes obligations to all plan participants (active employees, terminated vested, and retirees), not just current retirees, and the net pension liability further subtracts plan assets.
Wrong (C): The annual required contribution is a funding concept related to cash contributions, not the net pension liability measurement, which is an accounting measure of the unfunded obligation.
Wrong (D): GASB 68 replaced the unfunded actuarial accrued liability concept with the net pension liability framework, using a different calculation methodology including a blended discount rate.$EXPL$,
  difficulty = 'easy'
WHERE id = 458;

-- Q459 [hard] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 75, paragraph 22, the total OPEB liability must be measured using the entry age normal cost method as the sole permissible actuarial cost method. This method spreads the actuarial present value of projected benefits as a level percentage of pay over each employee''s career from entry age to assumed exit age, ensuring comparability across government employers.
Wrong (B): GASB 75 does not permit a choice among actuarial cost methods — unlike older GASB standards, it prescribes a single method to ensure consistency and comparability across reporting entities.
Wrong (C): The projected unit credit method is required under FASB ASC 715 for private-sector employers, not under GASB standards — the two frameworks deliberately use different actuarial approaches for pension and OPEB obligations.
Wrong (D): The aggregate cost method is not permitted under GASB 75 — the entry age normal method is the only allowable approach for measuring the total OPEB liability.$EXPL$,
  difficulty = 'hard'
WHERE id = 459;

-- Q468 [easy] topic: Not-for-Profit Accounting
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 958-605-25-16, contributed services are recognized as revenue only when they (1) create or enhance nonfinancial assets, or (2) require specialized skills, are provided by individuals possessing those skills, and would typically need to be purchased if not donated. Examples include accounting, legal, and medical services.
Wrong (A): General volunteer time (such as ushering, event setup, or clerical help) does not meet the recognition criteria because it does not involve specialized skills or asset enhancement.
Wrong (B): The standard focuses on specialized skills, not professional licensure specifically — an unlicensed but skilled carpenter enhancing a building would qualify, while a licensed professional providing non-specialized help might not.
Wrong (D): The donor''s written statement of fair value is not the recognition criterion — the nature and type of services determine whether recognition is appropriate.$EXPL$,
  difficulty = 'easy'
WHERE id = 468;

-- Q469 [easy] topic: Not-for-Profit Accounting
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 958-205-05-6 (as amended by ASU 2016-14), not-for-profit entities classify net assets into two categories: with donor restrictions and without donor restrictions. Contributions received with donor-imposed restrictions are reported as increases in net assets with donor restrictions until the restrictions are met (by purpose or passage of time), at which point they are reclassified.
Wrong (A): Donor intent determines classification — restricted contributions cannot be reported as unrestricted revenue because the donor''s conditions must be tracked and satisfied.
Wrong (B): Restricted contributions are recognized as revenue increasing net assets with donor restrictions, not recorded as liabilities — a contribution is not a liability because there is no obligation to return the funds if the purpose is fulfilled.
Wrong (C): Restricted contributions increase the with-restrictions net asset category, not the without-restrictions category — they are reclassified only when the restriction is satisfied.$EXPL$,
  difficulty = 'easy'
WHERE id = 469;

-- Q1096 [medium] topic: Cash and Receivables
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 230-10-20, cash equivalents are short-term, highly liquid investments with an original maturity of three months or less from the entity''s purchase date. The Treasury bill (60 days original maturity), money market fund (daily liquidity), and commercial paper (45 days remaining at purchase) qualify, totaling $3.3 million. The 120-day CD is excluded because its original maturity exceeds three months.
Wrong (A): Current market liquidity is not the determining factor — ASC 230 specifically uses original maturity from the purchase date, not the ability to convert to cash quickly.
Wrong (B): Daily redemption capability is one way to qualify, but the criterion is original maturity of three months or less, not solely daily redemption — the Treasury bill and commercial paper also qualify.
Wrong (D): ASC 230 measures from the entity''s purchase date, not remaining maturity at the balance sheet date — a 120-day CD purchased on day one does not become a cash equivalent simply because fewer than 90 days remain at year-end.$EXPL$,
  difficulty = 'medium'
WHERE id = 1096;

-- Q1097 [medium] topic: Cash and Receivables
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 305-10-05-2, bank reconciliation separates items into two categories: bank-side adjustments for timing differences and bank errors, and book-side adjustments for items requiring journal entries. Bank balance: $124,500 − $18,200 (outstanding checks) + $9,800 (deposits in transit) − $5,000 (bank error) = $111,100. The NSF check ($3,400), service charges ($275), and note collection ($12,000) adjust the book balance because the company has not yet recorded these transactions.
Wrong (B): Classifying adjustments as debits or credits on the bank statement does not determine whether they are bank-side or book-side reconciling items — the determining factor is whether the company needs to record a journal entry.
Wrong (C): Materiality thresholds set by the audit committee do not determine reconciling item classification — all reconciling items are included regardless of amount.
Wrong (D): The origin of the item (external party) does not make all items bank-side adjustments — the NSF check and note collection originated externally but require entries on the company''s books.$EXPL$,
  difficulty = 'medium'
WHERE id = 1097;

-- Q1098 [easy] topic: Cash and Receivables
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Waverly Financial adopted the CECL model under ASC 326 for its $50 million commercial loan portfolio. Under the old incurred loss model, the allowance was $800,000. After adopting CECL, the day-one allowance increased to $2.1 million based on lifetime expected losses. How does CECL affect the timing of loss recognition and reported equity upon transition?$EXPL$,
  choices = $EXPL$["No effect on the allowance because no actual losses have occurred","The $1.3 million increase reduces retained earnings through a cumulative-effect adjustment at adoption","The $1.3 million increase is recognized as income statement expense in the adoption year","CECL reduces the allowance because forward-looking forecasts predict lower losses"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 326-10-65-1, the transition from the incurred loss model to CECL is recorded as a cumulative-effect adjustment to retained earnings on the adoption date. The $1.3 million increase ($2.1M − $0.8M) reduces retained earnings directly, not through the income statement. CECL recognizes lifetime expected credit losses at origination using forward-looking information, eliminating the requirement for a triggering loss event.
Wrong (A): CECL explicitly does not require a loss event — expected losses are recognized from day one based on historical data, current conditions, and reasonable forecasts.
Wrong (C): The transition adjustment goes through retained earnings as a cumulative-effect adjustment, not through the income statement — only subsequent changes in the allowance after adoption flow through earnings.
Wrong (D): CECL''s inclusion of current conditions and forward-looking forecasts typically increases allowances relative to the incurred loss model, particularly for portfolios with credit risk.$EXPL$,
  difficulty = 'easy'
WHERE id = 1098;

-- Q1100 [easy] topic: Cash and Receivables
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 326-20-30-1, the current expected credit losses (CECL) model requires the allowance for credit losses to be measured based on expected lifetime credit losses on financial assets. The estimate must incorporate historical loss experience, current conditions, and reasonable and supportable forecasts of future economic conditions.
Wrong (A): CECL replaced the incurred-loss model, which required a triggering event before recognizing losses — CECL recognizes expected losses before they are confirmed as uncollectible.
Wrong (B): CECL requires a risk-based assessment that considers the credit characteristics of each pool of assets, not a uniform flat percentage applied regardless of risk profile.
Wrong (D): CECL measures expected losses on a pool or collective basis using forward-looking information, rather than waiting for specific individual accounts to be identified as uncollectible.$EXPL$,
  difficulty = 'easy'
WHERE id = 1100;

-- Q1104 [hard] topic: Cash and Receivables
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 860-20-25-1 through 25-3, when a transfer of receivables with recourse qualifies as a sale, the transferor derecognizes the receivables and recognizes a loss equal to the factoring fee plus the fair value of the recourse obligation. Factoring fee: $250,000 × 3% = $7,500. Recourse obligation fair value: $6,000. Total loss: $7,500 + $6,000 = $13,500. The holdback of $25,000 ($250,000 × 10%) is recorded as a receivable from the factor and is not a loss component — it is returned after the receivables are collected.
Wrong (A): The $7,500 represents only the factoring fee and ignores the $6,000 fair value of the recourse obligation, which is a separate component of the loss calculation.
Wrong (C): The $32,500 incorrectly includes the holdback ($25,000) as part of the loss — the holdback is a receivable that will be returned, not a cost of the factoring arrangement.
Wrong (D): The $6,000 is only the recourse obligation component and ignores the $7,500 factoring fee — both must be included in the total loss.$EXPL$,
  difficulty = 'hard'
WHERE id = 1104;

-- Q1105 [hard] topic: Cash and Receivables
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 326-20-30-4, when using the discounted cash flow method under CECL, the allowance for credit losses equals the difference between the amortized cost basis and the present value of expected cash flows discounted at the financial asset''s effective interest rate: $1,000,000 − $940,000 = $60,000. This difference represents the expected credit losses over the remaining life of the portfolio.
Wrong (A): The full amortized cost ($1,000,000) is the gross carrying amount of the portfolio, not the allowance — the allowance represents only the expected loss portion.
Wrong (B): The present value of expected cash flows ($940,000) represents the expected recoverable amount, not the allowance — the allowance is the shortfall between amortized cost and this recoverable amount.
Wrong (D): A positive present value of expected cash flows does not eliminate the need for an allowance — the $60,000 gap between amortized cost and expected cash flows represents credit losses that must be reserved.$EXPL$,
  difficulty = 'hard'
WHERE id = 1105;

-- Q1106 [medium] topic: Employee Benefit Plans
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASU 2017-07 (codified in ASC 715-30-35-83 through 35-84), only the service cost component ($320,000) is presented in operating income alongside other employee compensation costs. The remaining non-service components — interest cost ($280,000), expected return on plan assets (−$210,000), prior service cost amortization ($35,000), and net actuarial loss amortization ($425,000) — totaling $530,000, are reported below the operating income line.
Wrong (B): ASU 2017-07 specifically bifurcates pension cost, placing only service cost in operating income — including all $850,000 would overstate operating expenses and distort margins.
Wrong (C): The expected return on plan assets does not offset service cost within operating income — it is classified as a non-service component reported below the operating line.
Wrong (D): Non-service pension components are expensed below the operating line, not capitalized as an asset — capitalizing pension cost has no basis under ASC 715.$EXPL$,
  difficulty = 'medium'
WHERE id = 1106;

-- Q1109 [easy] topic: Employee Benefit Plans
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 715-30-35-31, the projected benefit obligation (PBO) measures the actuarial present value of all benefits attributed to employee service to date, using assumptions about future salary increases, discount rates, employee turnover, and mortality rates. The PBO''s use of projected salaries distinguishes it from the accumulated benefit obligation (ABO).
Wrong (A): Benefits based on current salary levels describes the accumulated benefit obligation (ABO), not the PBO — the PBO specifically incorporates expected future salary growth.
Wrong (C): The PBO includes obligations to all plan participants (active employees, terminated vested, and retirees), not just retirees currently receiving benefits.
Wrong (D): Employer contributions relate to plan funding decisions, not the obligation measurement — the PBO is an actuarial liability calculation independent of how much the employer has contributed.$EXPL$,
  difficulty = 'easy'
WHERE id = 1109;

-- Q1110 [easy] topic: Employee Benefit Plans
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 715-30-35-24, the corridor approach requires amortization of net actuarial gains or losses only when the cumulative unrecognized amount exceeds a corridor equal to 10% of the greater of the PBO or the market-related value of plan assets. The excess beyond the corridor is amortized over the average remaining service period of active employees expected to receive benefits.
Wrong (A): The corridor approach defers recognition of actuarial gains and losses in OCI until they exceed the 10% threshold — immediate recognition in net income is an alternative method, not the corridor approach.
Wrong (B): Amounts exceeding the corridor are eventually amortized into net periodic pension cost — they do not remain permanently in accumulated other comprehensive income.
Wrong (D): The amortization period is based on the average remaining service period of active employees, not a fixed 20-year period — the service period varies by plan demographics.$EXPL$,
  difficulty = 'easy'
WHERE id = 1110;

-- Q1113 [hard] topic: Employee Benefit Plans
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 715-30-35-4, net periodic pension cost is calculated as: service cost + interest cost − expected return on plan assets + amortization of prior service cost + amortization of net actuarial loss. Calculation: $200,000 + $150,000 − $180,000 + $15,000 + $8,000 = $193,000. The expected return is subtracted because it represents anticipated plan asset earnings that offset the cost of the pension obligation.
Wrong (B): The $553,000 incorrectly adds the expected return ($180,000) instead of subtracting it — the expected return reduces net periodic pension cost, not increases it.
Wrong (C): The $170,000 appears to omit the amortization of prior service cost ($15,000) and net actuarial loss ($8,000) components, understating the total.
Wrong (D): The $373,000 likely results from an arithmetic error in combining the five components — the correct sum is $193,000.$EXPL$,
  difficulty = 'hard'
WHERE id = 1113;

-- Q1116 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under AU-C Section 800, paragraph .A2, the tax basis of accounting is one of four recognized special purpose frameworks (cash basis, tax basis, regulatory basis, and contractual basis). Using IRC rules for recognition and measurement (such as MACRS depreciation instead of GAAP straight-line) classifies statements as tax-basis financial statements. The defining factor is that income tax law, not GAAP, governs how transactions are recognized and measured.
Wrong (A): Company size does not determine which framework applies — general-purpose GAAP frameworks apply to entities of all sizes, not only public companies.
Wrong (B): GAAP permits accelerated depreciation methods (such as double-declining balance) — the issue is using IRC-mandated MACRS specifically, which is a tax-basis method not conforming to GAAP asset-life determinations.
Wrong (C): The tax basis is a distinct SPF category under AU-C 800, separate from the regulatory basis — regulatory basis refers to frameworks prescribed by government regulatory bodies other than tax authorities.$EXPL$,
  difficulty = 'medium'
WHERE id = 1116;

-- Q1118 [easy] topic: Special Purpose Frameworks
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under AU-C Section 800, paragraph .A14, financial statements prepared under a special purpose framework must use titles that distinguish them from GAAP financial statements to alert users that the statements are prepared on a different basis. For example, a tax-basis balance sheet should be titled "Statement of Assets and Liabilities — Tax Basis" rather than "Balance Sheet."
Wrong (A): Using identical GAAP titles (such as "Balance Sheet" and "Income Statement") would mislead users into believing the statements conform with GAAP when they do not.
Wrong (B): An adverse opinion is not required merely because SPF statements are used — the auditor issues an unmodified opinion if the statements are fairly presented under the applicable SPF.
Wrong (C): SPF financial statements should include informative disclosures describing the basis of accounting and significant accounting policies — omitting all notes would deprive users of essential context.$EXPL$,
  difficulty = 'easy'
WHERE id = 1118;
