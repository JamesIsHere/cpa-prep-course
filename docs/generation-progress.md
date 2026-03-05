# Question Generation Progress

Cross-session tracker for scaling question bank to 30K (5K per section).

**Goal:** 30,000 total questions (5,000 per section × 6 sections).

**Batch size:** 30 questions per migration.

**Total new needed:** ~12,561 questions (~419 batches).

**Difficulty targets:** 30% easy / 50% medium / 20% hard.

**Note:** Baseline reset on 2026-03-05 after full dedup cleanup (migrations 00435–00440). Deleted 6,244 duplicates + 90 TODOs. Verified via `npm run sync-counts`.

## How to Resume

Each session:
1. Read this file - find the first section with status "In Progress" or "Pending"
2. Run: `./scripts/orchestrate.ps1 -Section <code> -Mode generate -Batches N`
3. The orchestrator auto-selects topics, generates scaffolds, and updates this tracker

## Section Progress

| Section | Current | Target | Remaining | Batches Needed | Status  |
|---------|---------|--------|-----------|----------------|---------|
| AUD     | 3,180   | 5,000  | 1,820     | ~61            | Pending |
| FAR     | 2,861   | 5,000  | 2,139     | ~72            | In Progress |
| REG     | 2,219   | 5,000  | 2,781     | ~93            | Pending |
| BAR     | 1,047   | 5,000  | 3,953     | ~132           | Pending |
| ISC     | 948     | 5,000  | 4,052     | ~135           | Pending |
| TCP     | 910     | 5,000  | 4,090     | ~137           | Pending |

## Topic Detail

> **WARNING:** Topic-level counts below are stale (pre-cleanup). Run `npm run sync-counts` or
> `npx tsx scripts/qa/plan-distribution.ts --section=<code>` against the live DB to get accurate
> per-topic numbers before resuming generation for any section.

### FAR

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Conceptual Framework and Standards | 20 | 110 | 90 | 3 |
| Earnings Per Share | 2142 | 2232 | 90 | 3 |
| Employee Benefit Plans | 64 | 155 | 91 | 4 |
| Financial Statements | 47 | 137 | 90 | 3 |
| Special Purpose Frameworks | 33 | 124 | 91 | 4 |
| Statement of Cash Flows | 28 | 118 | 90 | 3 |
| Bonds and Debt | 43 | 104 | 61 | 3 |
| Cash and Receivables | 34 | 95 | 61 | 3 |
| Equity | 43 | 104 | 61 | 3 |
| Fixed Assets | 42 | 103 | 61 | 3 |
| Intangible Assets | 40 | 101 | 61 | 3 |
| Inventory | 44 | 105 | 61 | 3 |
| Leases | 48 | 109 | 61 | 3 |
| Payables and Accrued Liabilities | 20 | 81 | 61 | 3 |
| Revenue Recognition | 53 | 114 | 61 | 3 |
| Accounting Changes and Error Corrections | 20 | 87 | 67 | 3 |
| Consolidations | 47 | 114 | 67 | 3 |
| Contingencies | 34 | 101 | 67 | 3 |
| Fair Value | 37 | 104 | 67 | 3 |
| Governmental Accounting Fundamentals | 20 | 87 | 67 | 3 |
| Income Taxes | 44 | 111 | 67 | 3 |
| Not-for-Profit Accounting | 41 | 108 | 67 | 3 |
| Governmental Accounting | 341 | 496 | 155 | 6 |

### REG

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Circular 230 | 42 | 78 | 36 | 2 |
| Federal Tax Procedures | 10 | 46 | 36 | 2 |
| Legal Duties and Responsibilities | 32 | 68 | 36 | 2 |
| Professional Ethics in Tax | 29 | 65 | 36 | 2 |
| Tax Procedures | 26 | 62 | 36 | 2 |
| Agency and Regulation | 96 | 144 | 48 | 2 |
| Business Law: Contracts | 103 | 151 | 48 | 2 |
| Business Structures | 97 | 145 | 48 | 2 |
| Debtor-Creditor Relationships | 92 | 140 | 48 | 2 |
| Government Regulation of Business | 80 | 128 | 48 | 2 |
| Like-Kind Exchanges | 34 | 74 | 40 | 2 |
| Property Transactions: Basis | 51 | 91 | 40 | 2 |
| Property Transactions: Gains/Losses | 44 | 84 | 40 | 2 |
| Alternative Minimum Tax | 138 | 192 | 54 | 2 |
| Individual Taxation: Credits | 157 | 210 | 53 | 2 |
| Individual Taxation: Credits/AMT | 83 | 137 | 54 | 2 |
| Individual Taxation: Deductions | 96 | 149 | 53 | 2 |
| Individual Taxation: Filing/Credits | 105 | 159 | 54 | 2 |
| Individual Taxation: Income | 114 | 167 | 53 | 2 |
| C Corporations | 223 | 289 | 66 | 3 |
| Estate and Gift Tax | 375 | 441 | 66 | 3 |
| Partnerships | 218 | 284 | 66 | 3 |
| S Corporations | 217 | 283 | 66 | 3 |
| Tax-Exempt Organizations | 1347 | 1413 | 66 | 3 |

### BAR

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Capital Structure and Valuation | 507 | 835 | 328 | 11 |
| Financial Statement Analysis | 173 | 501 | 328 | 11 |
| Financial Valuation Methods | 53 | 381 | 328 | 11 |
| Prospective Analysis and Forecasting | 46 | 374 | 328 | 11 |
| Risk Management and Economics | 40 | 369 | 329 | 11 |
| Advanced Consolidations | 49 | 182 | 133 | 5 |
| Advanced Lease Transactions | 39 | 172 | 133 | 5 |
| Advanced Revenue and Intangibles | 49 | 182 | 133 | 5 |
| Business Combinations | 20 | 153 | 133 | 5 |
| Derivatives and Hedging | 50 | 183 | 133 | 5 |
| Foreign Currency Transactions | 20 | 153 | 133 | 5 |
| Income Taxes Advanced | 20 | 153 | 133 | 5 |
| Intangible Assets Advanced | 20 | 153 | 133 | 5 |
| Internal-Use Software and Cloud Computing | 39 | 172 | 133 | 5 |
| Pension and Postretirement Benefits | 37 | 170 | 133 | 5 |
| Stock Compensation and Business Combinations | 52 | 185 | 133 | 5 |
| Fund-to-Government-Wide Reconciliation | 39 | 222 | 183 | 7 |
| Interfund Transactions | 38 | 221 | 183 | 7 |
| State and Local Government Reporting | 56 | 239 | 183 | 7 |

### ISC

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Change Management | 20 | 238 | 218 | 8 |
| Data Management and Lifecycle | 48 | 266 | 218 | 8 |
| ERP and Accounting Information Systems | 48 | 266 | 218 | 8 |
| IT Audit Frameworks | 38 | 256 | 218 | 8 |
| IT General Controls | 38 | 256 | 218 | 8 |
| IT Infrastructure and Architecture | 52 | 270 | 218 | 8 |
| System Availability and Change Management | 57 | 275 | 218 | 8 |
| Data Protection Technologies | 316 | 570 | 254 | 9 |
| Incident Response and Recovery | 193 | 447 | 254 | 9 |
| Privacy Requirements and Data Protection | 51 | 305 | 254 | 9 |
| Security and Control Frameworks | 52 | 307 | 255 | 9 |
| Security Controls and Monitoring | 48 | 302 | 254 | 9 |
| Threats, Attacks, and Vulnerabilities | 48 | 303 | 255 | 9 |
| SOC Engagements | 45 | 197 | 152 | 6 |
| SOC Report Content and Structure | 20 | 172 | 152 | 6 |
| SOC Reporting | 38 | 190 | 152 | 6 |
| SOC Reporting and Trust Services Criteria | 38 | 190 | 152 | 6 |
| SOC Testing Controls | 38 | 190 | 152 | 6 |

### TCP

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Individual Tax Planning: Compensation | 51 | 388 | 337 | 12 |
| Passive Activity and At-Risk Rules | 406 | 743 | 337 | 12 |
| Retirement Plans and Education Savings | 140 | 477 | 337 | 12 |
| Wealth Transfer and Gifting Strategies | 54 | 391 | 337 | 12 |
| Advanced Basis Calculations | 45 | 315 | 270 | 9 |
| Entity Formation and Liquidation | 46 | 316 | 270 | 9 |
| Entity Tax Compliance: NOLs and Consolidated Returns | 51 | 321 | 270 | 9 |
| International Tax | 54 | 324 | 270 | 9 |
| Owner-Entity Transactions | 50 | 320 | 270 | 9 |
| Capital Structure Tax Planning | 40 | 184 | 144 | 5 |
| Entity Choice and Planning | 44 | 188 | 144 | 5 |
| Multi-Jurisdictional Tax Planning | 20 | 164 | 144 | 5 |
| Trusts and Estates | 50 | 194 | 144 | 5 |
| Entity Formation and Restructuring | 20 | 212 | 192 | 7 |
| Nontaxable Dispositions | 39 | 231 | 192 | 7 |
| Related Party Transactions | 40 | 232 | 192 | 7 |

## Batch Log

| Date | Migration | Section | Topic | Count | Notes |
|------|-----------|---------|-------|-------|-------|
| 2026-03-03 | 00400_generate_far_batch52.sql | FAR | Governmental Accounting | 30 | GASB 42 impairment, GASB 87 lessor, GASB 51 intangibles, GASB 91 conduit w/commitment, fund accounting mechanics |
| 2026-03-03 | 00401_generate_far_batch53.sql | FAR | Governmental Accounting | 30 | Direct method cash flows, indirect expense allocation, reimbursement vs transfer, blended discount rate, ISF reclassification, GASB 65 issuance costs, GASB 63 net position, joint venture equity method |
| 2026-03-03 | 00402_generate_far_batch54.sql | FAR | Governmental Accounting | 30 | GASB 18 landfill, GASB 83 ARO, GASB 40 deposit/investment risk, GASB 88 direct borrowings, GASB 10 risk pools, GASB 46 enabling legislation, GASB 86 defeasance, GASB 74 OPEB plan, demand bonds, BANs/RANs, on-behalf payments, advance/current refunding |
| 2026-03-03 | 00403_generate_far_batch55.sql | FAR | Employee Benefit Plans | 30 | Projected unit credit method, first-year plan expense, business combination pension, alternative amortization, unfunded OPEB cost, measurement date, withdrawal liability, contribution vs expense, MRV expected return, salary progression, cliff vesting, smoothing purpose, OPEB life insurance scope, current/noncurrent classification, discount rate criteria, negative PSC offset, service cost PV, contributions ≠ expense, OPEB eligibility attribution, settlement proportionate AOCI, asset loss deferral, tax effects OCI, actuarial gain/loss causes, new hires service cost, mortality assumption, DC advantage, plan termination total loss, reclassification net effect, OPEB sensitivity interaction, funded status vs AOCI |
| 2026-03-03 | 00404_generate_far_batch56.sql | FAR | Special Purpose Frameworks | 30 | OCBOA terminology, tax bad debts IRC 166, general-use vs special-use regulatory, constructive receipt, UNICAP 263A, no deferred tax on tax basis, SSARS compilation SPF report, S corp flow-through, FFIEC regulatory basis, related party SPF disclosures, contractual special-use, cash basis manipulation, modified cash capitalization rationale, going concern/subsequent events for SPF |
| 2026-03-03 | 00405_generate_far_batch57.sql | FAR | Conceptual Framework and Standards | 30 | Monetary unit, periodicity, economic entity, accrual vs cash, confirmatory value, timeliness vs verifiability, asset/liability/equity/expense definitions, IFRS revaluation vs GAAP cost, TIPARA dev costs, neutrality vs prudence, component depreciation, materiality entity-specific, NRV vs fair value, inventory write-down reversal, impairment reversal, restructuring liability, ASU role, conservatism exclusion |
| 2026-03-03 | 00406_generate_far_batch58.sql | FAR | Earnings Per Share | 30 | Preferred redemption premium, DRIP shares, anti-dilution sequencing failure, actual conversion if-converted assumption, dual-class EPS, counterparty-controlled settlement, EPS-based contingent trigger circularity, loss allocation asymmetry, interest add-back effective rate, share lending exclusion, reverse acquisition EPS restatement, nonforfeitable dividend participating security |
| 2026-03-03 | 00407_generate_far_batch59.sql | FAR | Financial Statements | 30 | Noncash supplemental schedule, cash equivalents maturity, dividends paid/received CF class, working capital, indirect method computation, treasury stock contra equity, discontinued ops presentation, direct method, investing/financing activity classification, AOCI location, income statement ordering, IFRS vs GAAP CF flexibility, notes integral part, SPF basis note, AFS reclassification, PUFER credit risk, extraordinary items eliminated, restricted cash ASU 2016-18, deferred tax noncurrent ASU 2015-17, operating cycle, supplemental disclosures |
| 2026-03-03 | 00408_generate_far_batch60.sql | FAR | Statement of Cash Flows | 30 | Factoring w/recourse secured borrowing, cash equivalents definition, finance lease split, early extinguishment gain reclassification, cash paid for interest/taxes calc, bank overdrafts, impairment add-back, credit loss provision, insurance proceeds investing, stock dividends excluded, treasury stock financing, bond premium proceeds, gross vs net reporting, IAS 7 flexibility, CFS per share prohibited, principal vs interest split, dividends paid from RE roll-forward, sale-leaseback, acquisition net of cash, capitalized software, debt issuance costs, discontinued ops by category, FX translation rates, direct method reconciliation, DTL decrease direction, stock issuance financing, customer deposits operating, default operating category, preferred dividends received |
| 2026-03-03 | 00409_generate_far_batch61.sql | FAR | Accounting Changes and Error Corrections | 30 | Useful life revision, cumulative effect placement, non-counterbalancing errors, impracticable definition, tax effect on restated NI, bad debt estimation change, prior period adjustment term, LIFO-to-FIFO retrospective, ASU adoption classification, interim period changes, EPS restatement, salvage value revision, indirect effects profit-sharing, comparative RE adjustment, percentage-of-completion estimate, multiple simultaneous errors, revenue error correction entry, modified retrospective transition, estimate disclosures, SAB 99/108 materiality, reporting entity presentation, equity method cessation, ASC 250 scope, counterbalancing entry before closing, LIFO reserve DTL, restatement labeling |
| 2026-03-03 | 00410_generate_far_batch62.sql | FAR | Consolidations | 30 | Equity method OCI share, intercompany asset depreciation catch-up, push-down accounting, measurement period adjustments, equity losses exceeding balance, NCI fair value amortization, deconsolidation gain, ownership change equity transaction, constructive bond retirement, consolidated RE, VIE split power/economics, noncash consideration, subsidiary preferred NCI, downstream equity method profit, foreign subsidiary CTA, intercompany land no depreciation, cross-subsidiary elimination, management fee elimination, stock issuance costs APIC, NCI loss absorption |
| 2026-03-03 | 00411_generate_far_batch63.sql | FAR | Contingencies | 30 | Product recall gross reporting, service-type vs assurance warranty, coupon liability, ASC 740-10 vs ASC 450, contingent consideration remeasurement, guarantee subsequent measurement, probable-not-estimable disclosure, multiple contingency evaluation, reclassification reversal, take-or-pay loss, interim estimate change, standby LOC, legal defense costs, ARO vs contingency, stand-ready obligation, restructuring benefits, settlement offer effect, component cost method, warranty roll-forward, indemnification guarantee, Type II subsequent event, business combination contingency |
| 2026-03-03 | 00412_generate_far_batch64.sql | FAR | Fair Value | 30 | Inactive market reclassification, matrix pricing, FVO irrevocability, market-corroborated inputs, FVO upfront costs, MPEEM classification, market participant characteristics, goodwill impairment nonrecurring, yield curves Level 2, Level 3 roll-forward, Monte Carlo income approach, measurement date, L1-L2 transfer disclosure, defensive use patent, cost approach obsolescence, VIE exclusion, derivatives scope, AFS recurring, instrument-by-instrument, business combination nonrecurring, deposit liabilities exclusion, sensitivity analysis, comparable company multiples, market participant discount rate, valuation process disclosure, measurement alternative observable price, FVO eligibility evaluation, FVO changes in NI, held-for-sale nonrecurring, ASC 820 role |
| 2026-03-03 | 00413_generate_far_batch65.sql | FAR | Governmental Accounting Fundamentals | 30 | Govt-wide activity categories, encumbrance timing, derived tax revenue, compensated absences, GASB 68 experience loss, modified approach infrastructure, capital outlay fund vs govt-wide, GASB 75 unfunded OPEB, MD&A as RSI, debt service expenditure maturity, net investment calculation, GASB 63 deferred outflows/inflows, pension discount blending, dual-perspective accountability, ISF consolidation, GASB 68 post-measurement contributions, program vs general revenues, budgetary comparison columns, OPEB discount rate |
| 2026-03-03 | 00414_generate_far_batch66.sql | FAR | Income Taxes | 30 | Goodwill tax amort DTL, VA sourcing NOL vs OCI, multi-jurisdiction combined rate, stock comp DTA timing, CECL allowance DTA, UTP interest/penalties policy, accrued vacation DTA, Section 174 R&D DTA, prepaid insurance DTL, no discounting rule, installment sale DTL, deferred tax benefit definition, OCI tax allocation, VA change effect on expense, impairment DTA, WUCC/DR DIGS mnemonics, subsequent UTP recognition, scheduled reversals multi-rate, excess tax benefit ASU 2016-09, interim AETR method, restructuring DTA, operating lease DTA/DTL offset, NOL carryforward 80% rule, ARO deferred tax, tax credit carryforward face value, DTA vs receivable, POC vs completed-contract DTL, GAAP enacted vs IFRS substantively enacted |
| 2026-03-03 | 00415_generate_far_batch67.sql | FAR | Not-for-Profit Accounting | 30 | Board-designated net assets, variance power intermediary, joint costs allocation criteria, NFP mergers carryover method, investment return net presentation, intention vs promise, refundable advance reversal, milestone grants, membership dues bifurcation, contributed facilities, GIK exit price, donee vs agent, pledge allowance, NFP terminology, dual restriction release, quasi-endowment reversibility, special events reporting, NFP consolidation, endowment income stipulation, pledge discount rate, UPMIFA appropriation, contributed services dual entry, liquidity disclosures, fund accounting vs GAAP, functional expenses matrix, audience criterion, agency pass-through, NFP cash flows, measure of operations, conditional contribution definition |
| 2026-03-03 | 00416_generate_far_batch68.sql | FAR | Governmental Accounting | 30 | Budgetary entry surplus, derived tax availability, purchases vs consumption method, GASB 65 issuance costs expense, encumbrance lapsing, expenditure vs expense, notes as integral part, proprietary fund statements, budgetary closing entries, ISF elimination surplus, capital threshold per-unit, ISF reclassification evaluation, program revenue identification, compensated absences modified accrual, GASB 54 assigned authority, GASB 77 revenue reduction, GASB 84 custodial fund, special-purpose single-activity, GASB 46 enabling legislation, exchange vs nonexchange, GASB 68 post-measurement deferred outflow, infrastructure definition, modified approach condition deterioration, reconciliation prepaids/inventory, permanent fund principal/earnings, GASB 10 premium reasonableness, govt-wide activity categories, fines as imposed nonexchange, GASB 54 stabilization committed |
| 2026-03-03 | 00417_generate_far_batch69.sql | FAR | Employee Benefit Plans | 30 | Flat-benefit PBO=ABO, unfunded DB no expected return, frozen plan zero service cost, OPEB implicit rate subsidy, compensated absences ASC 710, multiple vs multiemployer plan, postemployment benefits ASC 712, retiree-only amortization life expectancy, trend rate grading, multiemployer zone status, rabbi trust not plan assets, plan asset FV hierarchy, OPEB curtailment PSC acceleration, OPEB typically unfunded, PSC initial OCI recognition, trend rate OPEB-specific, curtailment definition, pension/OPEB netting prohibited, asset allocation expected return, graded vesting, negative NPPC, PBO reconciliation disclosure, pension noncash CF adjustment, OPEB negative PSC amendment, MRV smoothing, curtailment-then-settlement ordering, current vs noncurrent classification, SFAS 158 funded status, discount rate competing effects, turnover assumption PBO |
| 2026-03-03 | 00418_generate_far_batch70.sql | FAR | Special Purpose Frameworks | 30 | IRC 453 installment sales, cash-basis payroll timing, warranty obligations, charitable contribution limits, cash-basis prepaid expenses, like-kind exchange carryover basis, inventory modification unacceptable, C corp current tax only, Section 174 R&D capitalization, multi-framework expense comparison, management SPF selection, SPF qualified opinion, stock compensation timing, barter transactions, SAP non-admitted assets, framework change evaluation, contractual basis completeness, SPF disclosure sufficiency, MCB depreciation method flexibility, MCB deferred tax modification, pension obligation modification |
| 2026-03-03 | 00419_generate_far_batch71.sql | FAR | Bonds and Debt | 30 | Between-date issuance accrued interest, TDR modification gain/no-gain thresholds, 10% debt mod test (ASC 470-50), issuance cost amortization, debenture/serial/callable/secured definitions, TDR asset transfer two-component gain, refunding with call premium, premium amortization computation, induced conversion expense, variable-rate bond behavior, legal defeasance (ASC 405-20), partial extinguishment proportionate allocation, if-converted diluted EPS |
| 2026-03-03 | 00421_generate_far_batch73.sql | FAR | Cash and Receivables | 30 | Trade/cash discounts, gross/net method, petty cash, postdated checks, overdrafts, dishonored notes, CECL pooling, zero allowance, ASC 860 sale conditions, proof of cash, stale checks, credit card receivables, holdback settlement, assignment remittance |
| 2026-03-03 | 00422_generate_far_batch74.sql | FAR | Equity | 30 | Basic EPS formula, OCI vs AOCI, mandatorily redeemable preferred (ASC 480), RE analysis with multiple events, cash-settled SARs, liquidating dividends, legal capital dividend test, option exercise APIC reclassification, expired options no reversal, constructive retirement method, liability vs equity classification, graded vesting accelerated method, RE restriction disclosure, comprehensive income computation, ASC 718 modification, OCI item identification, contingently issuable shares, par value definition, CI reclassification adjustment, treasury stock dividends, subscription receivable, declaration date liability, statement of equity purpose, book value per share, ASU 2016-09 forfeitures, RE deficit, detachable warrants allocation, AFS reclassification net zero, equity method investee OCI, multiple equity transactions |
| 2026-03-03 | 00423_generate_far_batch75.sql | FAR | Fixed Assets | 30 | Land cost w/demolition+salvage, idle asset depreciation, DDB-to-SL switch, land improvements, composite depreciation, donated assets, involuntary conversion, leasehold improvements, sale-leaseback ASC 842, fully depreciated asset, WAAE calculation, environmental remediation vs ARO, R&D equipment alt use, impairment group allocation, accelerated method ratio effects, component replacement, independently usable parts interest cap, exchange w/o substance boot received, partial-year DDB, held-for-sale recovery, exchange w/substance loss+boot, interest income offset prohibition, depreciation commencement, ARO legal trigger, pre-service testing, component vs single-unit, reversal prohibition comparison, PP&E definition, basket purchase 3 assets, derecognition criteria |
| 2026-03-04 | 00424_generate_far_batch76.sql | FAR | Intangible Assets | 30 | ASU 2018-15 cloud hosting, private entity goodwill amortization, identifiability criteria, IPR&D completion/abandonment, residual value, IFRS revaluation model, intangible definition, indefinite→finite reclassification, bargain purchase gain, NRV write-down ASC 985-20, triggering events interim testing, partial disposal goodwill allocation, franchise renewal indefinite-life, defensive asset recognition, goodwill multi-unit allocation, contract-based example, post-implementation costs, indefinite vs infinite, default amortization method, data conversion capitalization, IPR&D impairment testing, hosting prepaid classification, internally generated brands, goodwill recognition source, noncompete classification, impairment hierarchy, broadcast license renewal, asset acquisition cost basis, economic benefit amortization pattern, substantial renewal cost |
| 2026-03-04 | 00425_generate_far_batch77.sql | FAR | Inventory | 30 | FOB destination, freight-in inventoriable, specific identification, inventory error effects, self-correcting errors, abnormal spoilage, moving average perpetual, inventory classifications, standard cost method, COGM calculation, shrinkage recognition, bill-and-hold, sale-on-approval, purchase returns COGS, LIFO-to-FIFO change, DV LIFO deflation, retail FIFO variant, net markups definition, interest capitalization, interim gross profit, LCM floor, basket purchase, consignment accounting, perpetual vs periodic LIFO, purchases account, interim LIFO liquidation, absorption vs variable costing, pledged inventory, DV LIFO multiple pools, write-down journal entry |
| 2026-03-04 | 00426_generate_far_batch78.sql | FAR | Leases | 30 | Renewal options, variable usage payments, embedded leases, lease incentive effect, commencement vs inception, Year 2 interest, non-lease components, ROU balancing figure, failed sale-leaseback (finance), initial direct costs, current/noncurrent presentation, net investment components, practical expedient combine, reassessment triggers, gain allocation, CF classification, ROU impairment, operating CF, selling loss direct financing, modification remeasurement, specialized asset, discount rate hierarchy, CPI remeasurement, annuity due vs ordinary, classification change on modification, sublease ROU term, lessor selling profit disqualifier, multi-element separation, termination penalty, related party leases |
| 2026-03-04 | 00427_generate_far_batch79.sql | FAR | Payables and Accrued Liabilities | 30 | Dividends payable declaration, refund liability ASC 606, sales tax payable, contingent consideration remeasurement, current maturities, bonus accrual, assurance vs service warranty, exit/disposal scope ASC 420, payroll tax employer, utilities cutoff, customer deposits, loyalty points material right, royalty payable, income tax payable, retention/retainage, lease liability classification, IBNR self-insurance, commissions payable, vendor rebates, deferred compensation estimate change, coupons outstanding, settlement installments, related party payable, container deposits, escheat, ARO accretion, AP dispute, in-substance defeasance, withholding liabilities, reasonably possible disclosure |
| 2026-03-04 | 00428_generate_far_batch80.sql | FAR | Revenue Recognition | 30 | Noncash consideration, series guidance, contract existence criteria, consideration payable to customer, bill-and-hold, material right coupon, assurance vs service warranty, contract asset vs receivable, repurchase call option, contract combination + modification, nonrefundable upfront fees, output vs input method, penalty constraint, residual approach SSP, expected value calculation, significant integration service, control transfer indicators, functional vs symbolic IP, discount allocation to specific POs, consignment, refund liability + return asset, contract combination criteria, stand-ready obligation, customer acceptance, nonmonetary exchange exclusion, contract cost practical expedient, adjusted market assessment, expected cost plus margin, partial termination modification, collectibility criterion |
| 2026-03-04 | 00429_generate_far_batch81.sql | FAR | Conceptual Framework and Standards | 30 | Comprehensive income, systematic allocation, principles-based vs rules-based, exit price ASC 820, fair value hierarchy L1/L2/L3, articulation, derecognition ASC 860, financial capital maintenance, losses vs expenses, distributions to owners, investments by owners, recognition vs disclosure ASC 450, reporting entity, notes purpose, measurement uncertainty, EITF role, PCC alternatives, FASB due process, income approach, interim reporting ASC 270, ASC structure, framework vs specific ASC, tax basis SPF, full disclosure, XBRL, general vs special purpose, consistency, stewardship |
| 2026-03-04 | 00430_generate_far_batch82.sql | FAR | Earnings Per Share | 30 | Redemption premium, DRIP shares weighting, anti-dilution sequencing failure, induced conversion expense, pre-conversion if-converted, ESOP committed-to-be-released, counterparty settlement election, liquidation preference ≠ deduction, EPS-trigger circularity, loss allocation asymmetry, effective vs coupon interest, share lending exclusion, written call options TSM, participation ceiling, investee dilution in parent, ASR initial delivery, penny warrants, reverse acquisition shares, antidilutive disclosure, net share settlement, interim control number, market-price contingent shares, forfeitable dividends ≠ participating, assumed proceeds include comp cost, warrant premium proceeds, retroactive restatement, treasury stock exclusion, annual vs quarterly avg, noncumulative declared only, CoCo bonds if-converted |
| 2026-03-04 | 00431_generate_far_batch83.sql | FAR | Financial Statements | 30 | Interim LIFO liquidation, intraperiod tax allocation, stock dividends equity effect, NCI presentation, revenue disaggregation, balance sheet offsetting, liquidation basis ASC 205-30, SFAC 6 elements, accumulated deficit, related party ASC 850, segment 10% thresholds, cash flow per share prohibition, accounting policies ASC 235, insurance recovery netting, condensed interim FS, subsequent events date ASC 855, principal vs agent, interim AETR, materiality SAB 99 |
| 2026-03-04 | 00432_generate_far_batch84.sql | FAR | Statement of Cash Flows | 30 | Equity method income excess, operating vs finance lease ROU, goodwill impairment add-back, contingent consideration bifurcation, interest received classification, hedging derivative CF class, pension expense vs contribution, COLI death benefit proceeds, intangible amortization, inventory increase effect, stock option exercise proceeds, factoring sale vs borrowing, lawsuit settlement operating, warranty accrual vs payment, prepaid increase effect, AFS sale proceeds investing, tax refund classification, depreciation in direct method, deferred revenue decrease, debt issuance costs gross/net, foreign subsidiary translation, debt repayment financing, sale-leaseback proceeds, stock-based comp add-back, escrow deposit investing, supplemental disclosures indirect, capitalized interest all-operating, COLI CSV increase, money market cash equivalents, preferred stock redemption |
| 2026-03-04 | 00433_generate_far_batch85.sql | FAR | Accounting Changes and Error Corrections | 30 | Hybrid estimate-effected-by-principle, preferability letter, Big R vs little r revision, SAB 108 dual approach, interim error restatement, principle change DTL effects, prospective definition, two-year inventory error chain, reporting entity retrospective, estimate change catch-up depreciation, ASC 250 scope exclusions, non-counterbalancing patent error, cost-to-equity method retroactive, indirect effects definition, indirect effects disclosure, intangible amortization method change, error correction no comparatives, preferability reverting methods, warranty estimate prospective, interim catch-up Q2 adoption, error correction opening RE, restatement definition, initial adoption exclusion, retrospective inventory adjustment, mandatory vs voluntary transition, liquidating dividend reclassification, reporting entity consolidation, disclosure requirements, cumulative effect definition, error vs estimate distinction |
| 2026-03-04 | 00434_generate_far_batch86.sql | FAR | Consolidations | 30 | Indirect ownership %, control definition, DTA on intercompany profit, NCI purchase equity transaction, preacquisition dividends, NCI share of OCI, subsidiary dilutive securities in EPS, intercompany lease elimination, mutual holdings treasury stock, investee share issuance dilution gain, protective vs substantive rights, constructive bond gain amortization, mandatorily redeemable NCI liability, multi-level indirect NCI, purpose of consolidated FS, loss of significant influence transition, equity method investee preferred stock, partial-year elimination, acquisition date definition, line-by-line combination, Step 0 qualitative goodwill test, equity method inventory basis difference, investment company scope exception, contingent consideration liability classification, depreciable asset gain reversal Year 3, NCI income statement presentation, push-down accounting election, subsidiary equity elimination, equity method vs consolidation, NCI dividends as financing activity |
| 2026-03-05 | 00443_generate_far_batch86.sql | FAR | Earnings Per Share | 30 | Accretion of preferred discount, starting diluted numerator, preferred redeemed below carrying, noncumulative declared-only, EPS periods presented, PIK preferred dividends, issuance costs deemed dividend, BCF deemed dividend, anti-dilution ratchet conversion ratio, reissued treasury shares timing, subsequent issuance not retroactive, escrowed earnout shares, dual-nature participating+convertible, conversion inducement premium, cash dividends no share change, interim quarter loss antidilutive, exercised options split treatment, mid-year option grant weighting, two classes separate EPS, private entity voluntary EPS, large stock dividend retroactive, YTD cumulative EPS, post-BS stock split retroactive, convertible bond effective interest, ASR initial delivery weighting, forward purchase contract exclusion, negative EPS despite profit, mid-year tax rate change, discontinued ops per-share location, written puts out-of-money exclusion |
| 2026-03-05 | 00444_generate_far_batch87.sql | FAR | Earnings Per Share | 30 | Down-round warrants ASU 2017-11, graded vesting separate tranches, preferred discount accretion, escrow shares contingently returnable, basic EPS definition, par value irrelevance, treasury reissuance weighting, inducement conversion numerator charge, subsidiary dilutive securities consolidated EPS, ASU 2020-06 if-converted only, market condition options inclusion, OCI no EPS required, claw-back shares exclusion, net-share-settled warrants, if-converted preferred no tax adjustment, split-proportional option dilution, dilution sequence halt rule, annual average market price, face-of-IS line items, DRIP shares issuance date, dividends-exceed-income loss allocation, complex structure equal EPS dual presentation, nonforfeitable dividends two-class method, contractual loss-sharing preferred, antidilutive preferred exclusion, diluted≤basic rule, non-employee warrants TSM, outstanding-only denominator, zero-exercise RSU assumed proceeds, stock vs cash dividend retroactivity |
