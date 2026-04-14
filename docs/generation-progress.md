# Question Curation Plan

> Auto-synced from live DB on 2026-04-14 via `npm run sync-counts`

Per-section target: 1,500 questions. Distributed by AICPA Blueprint area weights.

**Goal:** 9,000 total questions across all sections.

**Batch size:** 30 questions per generation batch.

**To generate:** 0 new questions (~0 batches).

**To trim:** 0 questions to delete (keep best, cut weakest).

**Difficulty targets:** 30% easy / 50% medium / 20% hard.

## Workflow

For each section:
1. **Trim** — for over-target topics, score/rank existing questions and delete the weakest
2. **Generate** — for under-target topics, run orchestrator to fill the gap
3. **Review** — manual human review of the surviving question set

## Section Overview

| Section | Current | Target | To Trim | To Generate | Gen Batches | Status          |
|---------|---------|--------|---------|-------------|-------------|-----------------|
| AUD     | 1,446 | 1,500 |       0 |           0 |           0 | On Target       |
| FAR     | 1,554 | 1,500 |       0 |           0 |           0 | On Target       |
| REG     | 1,447 | 1,500 |       0 |           0 |           0 | On Target       |
| BAR     | 1,525 | 1,500 |       0 |           0 |           0 | On Target       |
| ISC     | 1,452 | 1,500 |       0 |           0 |           0 | On Target       |
| TCP     | 1,434 | 1,500 |       0 |           0 |           0 | On Target       |

## Topic Detail

### AUD

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Ethics and Independence | 38 | 38 |  |  |
| 1 | Government Auditing Standards | 34 | 38 |  |  |
| 1 | Independence | 37 | 38 |  |  |
| 1 | Nature and Scope of Engagements | 32 | 38 |  |  |
| 1 | Professional Responsibilities | 37 | 38 |  |  |
| 1 | Professional Skepticism and Judgment | 38 | 38 |  |  |
| 1 | Quality Management | 38 | 38 |  |  |
| 1 | Terms of Engagement | 38 | 38 |  |  |
| 2 | Audit Planning | 61 | 64 |  |  |
| 2 | Internal Controls | 64 | 64 |  |  |
| 2 | Materiality | 64 | 64 |  |  |
| 2 | Responding to Assessed Risks | 64 | 64 |  |  |
| 2 | Risk Assessment | 64 | 64 |  |  |
| 2 | Understanding the Entity and Environment | 64 | 64 |  |  |
| 2 | Using the Work of Others | 64 | 64 |  |  |
| 3 | Analytical Procedures | 65 | 65 |  |  |
| 3 | Audit Evidence | 64 | 65 |  |  |
| 3 | Audit Sampling | 52 | 65 |  |  |
| 3 | Misstatements and Control Deficiencies | 64 | 65 |  |  |
| 3 | Specific Areas and Transactions | 65 | 65 |  |  |
| 3 | Substantive Procedures | 58 | 65 |  |  |
| 3 | Tests of Controls | 64 | 65 |  |  |
| 3 | Written Representations | 63 | 65 |  |  |
| 4 | Attestation Engagements | 37 | 38 |  |  |
| 4 | Audit Reports | 38 | 38 |  |  |
| 4 | Modifications to the Auditor Report | 35 | 38 |  |  |
| 4 | Other Information and Supplementary Information | 36 | 38 |  |  |
| 4 | Review and Compilation | 37 | 38 |  |  |
| 4 | Review/Compilation Engagements | 31 | 38 |  |  |

### FAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Consolidations | 58 | 66 |  |  |
| 1 | Financial Reporting: For-Profit | 158 | 67 |  |  |
| 1 | Financial Statement Ratios | 90 | 66 |  |  |
| 1 | Not-for-Profit Accounting | 58 | 66 |  |  |
| 1 | Public Company Reporting | 65 | 66 |  |  |
| 1 | Special Purpose Frameworks | 79 | 66 |  |  |
| 1 | State and Local Government | 186 | 66 |  |  |
| 1 | Statement of Cash Flows | 80 | 67 |  |  |
| 2 | Cash and Cash Equivalents | 16 | 58 |  |  |
| 2 | Debt | 52 | 58 |  |  |
| 2 | Equity | 51 | 58 |  |  |
| 2 | Intangible Assets | 51 | 58 |  |  |
| 2 | Inventory | 51 | 58 |  |  |
| 2 | Investments | 59 | 58 |  |  |
| 2 | Payables and Accrued Liabilities | 50 | 58 |  |  |
| 2 | Property, Plant and Equipment | 49 | 58 |  |  |
| 2 | Trade Receivables | 36 | 58 |  |  |
| 3 | Accounting Changes and Error Corrections | 58 | 64 |  |  |
| 3 | Contingencies | 58 | 64 |  |  |
| 3 | Fair Value | 57 | 64 |  |  |
| 3 | Income Taxes | 58 | 64 |  |  |
| 3 | Leases | 52 | 64 |  |  |
| 3 | Revenue Recognition | 53 | 64 |  |  |
| 3 | Subsequent Events | 29 | 64 |  |  |

### REG

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Circular 230 | 42 | 45 |  |  |
| 1 | Federal Tax Procedures | 40 | 45 |  |  |
| 1 | Legal Duties and Responsibilities | 45 | 45 |  |  |
| 1 | Professional Ethics in Tax | 45 | 45 |  |  |
| 1 | Tax Procedures | 44 | 45 |  |  |
| 2 | Agency and Regulation | 60 | 60 |  |  |
| 2 | Business Law: Contracts | 60 | 60 |  |  |
| 2 | Business Structures | 60 | 60 |  |  |
| 2 | Debtor-Creditor Relationships | 60 | 60 |  |  |
| 2 | Government Regulation of Business | 58 | 60 |  |  |
| 3 | Like-Kind Exchanges | 48 | 50 |  |  |
| 3 | Property Transactions: Basis | 47 | 50 |  |  |
| 3 | Property Transactions: Gains/Losses | 43 | 50 |  |  |
| 4 | Alternative Minimum Tax | 65 | 68 |  |  |
| 4 | Individual Taxation: Credits | 67 | 68 |  |  |
| 4 | Individual Taxation: Credits/AMT | 66 | 68 |  |  |
| 4 | Individual Taxation: Deductions | 64 | 68 |  |  |
| 4 | Individual Taxation: Filing/Credits | 68 | 68 |  |  |
| 4 | Individual Taxation: Income | 67 | 68 |  |  |
| 5 | C Corporations | 81 | 83 |  |  |
| 5 | Estate and Gift Tax | 78 | 84 |  |  |
| 5 | Partnerships | 79 | 83 |  |  |
| 5 | S Corporations | 83 | 83 |  |  |
| 5 | Tax-Exempt Organizations | 77 | 84 |  |  |

### BAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Capital Structure and Valuation | 115 | 134 |  |  |
| 1 | Financial Statement Analysis | 187 | 134 |  |  |
| 1 | Financial Valuation Methods | 147 | 134 |  |  |
| 1 | Prospective Analysis and Forecasting | 132 | 134 |  |  |
| 1 | Risk Management and Economics | 125 | 134 |  |  |
| 2 | Advanced Consolidations | 49 | 55 |  |  |
| 2 | Advanced Lease Transactions | 54 | 55 |  |  |
| 2 | Advanced Revenue and Intangibles | 47 | 55 |  |  |
| 2 | Business Combinations | 41 | 55 |  |  |
| 2 | Derivatives and Hedging | 50 | 55 |  |  |
| 2 | Foreign Currency Transactions | 43 | 55 |  |  |
| 2 | Income Taxes Advanced | 48 | 55 |  |  |
| 2 | Intangible Assets Advanced | 50 | 55 |  |  |
| 2 | Internal-Use Software and Cloud Computing | 38 | 55 |  |  |
| 2 | Pension and Postretirement Benefits | 142 | 55 |  |  |
| 2 | Stock Compensation and Business Combinations | 52 | 55 |  |  |
| 3 | Fund-to-Government-Wide Reconciliation | 67 | 75 |  |  |
| 3 | Interfund Transactions | 67 | 75 |  |  |
| 3 | State and Local Government Reporting | 71 | 75 |  |  |

### ISC

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Change Management | 85 | 86 |  |  |
| 1 | Data Management and Lifecycle | 86 | 86 |  |  |
| 1 | ERP and Accounting Information Systems | 78 | 86 |  |  |
| 1 | IT Audit Frameworks | 85 | 86 |  |  |
| 1 | IT General Controls | 79 | 86 |  |  |
| 1 | IT Infrastructure and Architecture | 82 | 86 |  |  |
| 1 | System Availability and Change Management | 86 | 86 |  |  |
| 2 | Data Protection Technologies | 97 | 100 |  |  |
| 2 | Incident Response and Recovery | 100 | 100 |  |  |
| 2 | Privacy Requirements and Data Protection | 95 | 100 |  |  |
| 2 | Security and Control Frameworks | 95 | 99 |  |  |
| 2 | Security Controls and Monitoring | 93 | 100 |  |  |
| 2 | Threats, Attacks, and Vulnerabilities | 97 | 99 |  |  |
| 3 | SOC Engagements | 58 | 60 |  |  |
| 3 | SOC Report Content and Structure | 59 | 60 |  |  |
| 3 | SOC Reporting | 59 | 60 |  |  |
| 3 | SOC Reporting and Trust Services Criteria | 58 | 60 |  |  |
| 3 | SOC Testing Controls | 60 | 60 |  |  |

### TCP

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Individual Tax Planning: Compensation | 126 | 132 |  |  |
| 1 | Passive Activity and At-Risk Rules | 128 | 132 |  |  |
| 1 | Retirement Plans and Education Savings | 131 | 131 |  |  |
| 1 | Wealth Transfer and Gifting Strategies | 129 | 131 |  |  |
| 2 | Advanced Basis Calculations | 95 | 105 |  |  |
| 2 | Entity Formation and Liquidation | 105 | 105 |  |  |
| 2 | Entity Tax Compliance: NOLs and Consolidated Returns | 100 | 105 |  |  |
| 2 | International Tax | 105 | 105 |  |  |
| 2 | Owner-Entity Transactions | 102 | 105 |  |  |
| 3 | Capital Structure Tax Planning | 52 | 56 |  |  |
| 3 | Entity Choice and Planning | 56 | 56 |  |  |
| 3 | Multi-Jurisdictional Tax Planning | 56 | 56 |  |  |
| 3 | Trusts and Estates | 50 | 56 |  |  |
| 4 | Entity Formation and Restructuring | 67 | 75 |  |  |
| 4 | Nontaxable Dispositions | 66 | 75 |  |  |
| 4 | Related Party Transactions | 66 | 75 |  |  |

## Batch Log

| Date | Migration | Section | Topic | Count | Notes |
|------|-----------|---------|-------|-------|-------|
| 2026-03-26 | 00578_generate_far_batch100.sql | FAR | Financial Statement Ratios | 30 | Batch 100: CCC, DFL, GMROI, RONA, EV/EBITDA, diluted EPS, net debt, LBO effects, goodwill impairment, seasonal distortion |
| 2026-03-26 | 00579_generate_far_batch101.sql | FAR | Subsequent Events | 30 | Batch 101: Type I/II classification, SEC vs non-SEC evaluation dates, going concern, reissuance, debt refinancing, fraud discovery, condemnation, dual dating |
| 2026-03-26 | 00580_generate_far_batch102.sql | FAR | Investments | 30 | Batch 102: HTM/AFS/trading classification, equity method basics, ASC 321 fair value, credit loss model, intercompany profit elimination, impairment, NAV expedient, loss of influence |
| 2026-03-27 | 00581_generate_far_batch103.sql | FAR | Investments | 30 | Batch 103: HTM amortization, AFS OCI effects, debt vs equity classification, equity method differential, premium/discount accretion, AFS-to-HTM transfer, VIE consolidation, fair value option, step acquisition, dilution |
| 2026-03-27 | 00582_generate_far_batch104.sql | FAR | Financial Statement Ratios | 30 | Batch 104: TIE, cash ratio, funded debt/NWC, 5-factor DuPont tax interaction, fixed charge coverage, revenue/employee, window dressing, operating expense ratio, capitalize vs expense on TIE, OCF ratio, invested capital turnover, Beneish M-Score, EVA, debt yield, FCF yield, margin distinction, PEG ratio, LT D/E, P/CF, DOL, BEP, DTL, EV components, Tobin's Q, AR turnover, diluted EPS preferred, NOPAT margin, cash ROA, off-balance-sheet leverage, DuPont tax burden |
| 2026-03-30 | 00901_generate_tcp_batch32.sql | TCP | Retirement Plans and Education Savings | 21 | Batch 32: NUA strategy, QCD vs standard deduction, IRA deadline, DB investment risk, loan default deemed distribution, SIMPLE 2-year rollover, Coverdell K-12 breadth, 529 non-qualified penalty calc, SEP establishment deadline, SECURE 2.0 super catch-up 60-63, direct rollover withholding, inherited Roth IRA, IRA prohibited transaction, auto-enrollment, trustee transfer vs 60-day, 403(b) universal availability, QJSA default, employer match taxation timing, conversion recharacterization prohibition, excess contribution 6% accumulation, annual RMDs within 10-year rule |
| 2026-03-30 | 00899_generate_aud_batch97.sql | AUD | Responding to Assessed Risks | 22 | Batch 97: risk reassessment mid-audit, further audit procedure categories, staffing as overall response, confirmation non-responses, substantive analytical procedures, management representations, supervision as response, observation limitations, data analytics extent, judgment-based item selection, tracing direction/completeness, recalculation definition, strong controls effect on nature, disclosure assertions, stand-back requirement, subsequent events classification, modifying approach for control deviations, fair value external evidence, IT-dependent environment, engagement quality review, walkthroughs for design/implementation, external confirmation definition |
| 2026-03-30 | 00900_generate_isc_batch31.sql | ISC | Change Management | 13 | Batch 31: config baseline, back-out criteria, tiered change authority, RFC lifecycle states, SDLC maintenance phase, DR site RTO/cost tradeoff, RPO backup frequency, active-active vs active-passive, BIA purpose, patch prioritization, clustering, decision tree testing gap |
| 2026-03-30 | 00902_generate_isc_batch32.sql | ISC | SOC Report Content and Structure | 11 | Batch 32: CC4 monitoring, adverse opinion, CC1 control environment, CSOCs carve-out, Section IV reperformance, Privacy P1 notice, CC2 communication, Type I vs Type II, user auditor documentation, A1 DR testing, management description responsibility |
| 2026-03-30 | 00903_generate_aud_batch98.sql | AUD | Understanding the Entity and Environment | 15 | Batch 98: management philosophy/operating style, group audit components, significant estimates, information systems/business processes, entity life cycle, new accounting standards, fraud risk factors, economic conditions, financing activities, governance inquiries, significant unusual transactions, going concern indicators, compounding risk evaluation, organizational restructuring, business risk vs RMM |
| 2026-03-30 | 00904_generate_isc_batch33.sql | ISC | Data Management and Lifecycle | 10 | Batch 33: graph DB for fraud detection, ACID isolation dirty reads, third-party sharing agreements, column-family time-series, IRS retention periods, classification at creation, ACID durability, exception reports, SEC broker-dealer retention, data mart definition |
| 2026-03-30 | 00905_generate_aud_batch99.sql | AUD | Using the Work of Others | 15 | Batch 99: CUECs impact on control risk, SOC 1 restricted use, IA charter evaluation, SOC 3 definition, agreed-upon procedures alternative, component auditor communications, direct assistance written agreement, management assertion in SOC 1, IA lower-risk areas, group audit documentation, carve-out subservice breach, direct assistance definition, roll-forward gap procedures, working paper access restriction, IA systematic approach |
| 2026-03-30 | 00906_generate_aud_batch100.sql | AUD | Specific Areas and Transactions | 15 | Batch 100: attorney letter litigation, negative confirmations, inventory NRV, purchase cutoff, positive vs negative confirmation, management specialist evaluation, disaggregation precision, written representations estimates, PP&E additions vouching, lease ROU audit, journal entry fraud, analytical threshold investigation, substantive procedure categories, revenue side agreements, goodwill impairment |
| 2026-03-30 | 00907_generate_tcp_batch33.sql | TCP | Entity Choice and Planning | 12 | Batch 33: check-the-box per se corporation, PTET SALT cap bypass, LIFO recapture on S election, Section 199A W-2/UBIA limitation, assets-over conversion method, Section 1375 passive income penalty, family attribution rule, AAA frozen on S-to-C ordering, IRC 721 no control test, SSTB complete phase-out, single sales factor apportionment, Form 2553 election deadline |
| 2026-03-30 | 00908_generate_tcp_batch34.sql | TCP | Multi-Jurisdictional Tax Planning | 11 | Batch 34: market-based sourcing vs cost-of-performance, addback statutes, UDITPA purpose, allocation vs apportionment, bonus depreciation decoupling, Joyce vs Finnigan rule, water's-edge vs worldwide combined, VDAs, nonbusiness income allocation, state NOL limitations, static conformity |
| 2026-03-30 | 00909_generate_aud_batch101.sql | AUD | Materiality | 14 | Batch 101: accumulated misstatements approaching PM, earnings trend reversal, comparative statements materiality, aggregation risk PM%, users as a group, interim review materiality, non-dollar disclosure omission, projected misstatement vs tolerable, multiple benchmarks, engagement letter exclusion, nature of procedures, overstatement/understatement, reassessing completed work, AU-C 450 management communication |
| 2026-04-14 | 01030_generate_bar_batch32.sql | BAR | Prospective Analysis and Forecasting | 26 | Batch 32: high-low method (limitation, calculation, fixed cost), budget variance (favorable/unfavorable, offsetting, driver analysis, management by exception, volume vs price), cash budget (ending balance, collections pattern, borrowing evaluation), mixed cost definition, horizontal/vertical analysis, relevant range, correlation (positive/negative), CVP operating income, scenario vs sensitivity, CVP assumptions, CF classification, pro forma mix shift, regression Y-intercept |
| 2026-04-14 | 01034_generate_tcp_batch35.sql | TCP | International Tax | 30 | Batch 35: interest/dividend/rental/real property/personal property/services income sourcing, branch vs subsidiary deferral, CFC 10% and 50% thresholds, constructive ownership, PE (fixed place, dependent agent, preparatory/auxiliary, construction duration), 30% FDAP withholding, bilateral rate reduction, ECI vs FDAP, worldwide taxation, sourcing vs taxability distinction, anti-deferral concept, multi-income-type analysis |
| 2026-04-14 | 01035_generate_tcp_batch36.sql | TCP | International Tax | 30 | Batch 36: multi-entity CFC ownership, purchased inventory title passage sourcing, mixed-location services allocation, independent agent no PE, ECI net vs FDAP gross taxation, U.S. person definition, ECI/FDAP tax base comparison, branch losses deductible vs subsidiary losses, foreign-payer interest sourcing, preparatory/auxiliary PE exclusion, CFC vote-or-value disjunctive test, worldwide taxation for citizens abroad, real property rental situs sourcing, withholding as collection mechanism, ECI definition, CFC consequence for shareholders, 30% default rate, partnership attribution, construction PE duration, subsidiary deferral until distribution, multi-item sourcing analysis, 10% at-least threshold, withholding on payment types, worldwide taxation for corporations, withholding agent responsibility, PE prevents business profit taxation, royalty sourcing by use location, ECI filing obligation, dependent agent PE, goods payments exempt from withholding |
| 2026-04-14 | 01036_generate_reg_batch61.sql | REG | S Corporations | 20 | Batch 61: voluntary revocation consent, family aggregation, partnership ineligible shareholder, per-share/per-day allocation, 100-shareholder limit termination, ordinary business income computation, nonresident alien termination, eligible trust types, distributions vs debt basis, foreign taxes separately stated, pass-through taxation, rescission of revocation, multi-factor eligibility, unanimous election consent, guaranteed loan no debt basis, revocation effective date, AAA tax-exempt exclusion, new shareholder no consent, domestic corporation requirement |
| 2026-04-14 | 01037_generate_tcp_batch37.sql | TCP | International Tax | 28 | Batch 37: produced-and-sold inventory split sourcing, multi-income sourcing synthesis, U.S. sub dividend to foreign parent, 30% default rate, services allocation, branch vs subsidiary loss utilization, personal property sale seller's residence, withholding agent, equipment rental sourcing by use, CFC 10% threshold with no qualifying shareholders, PE temporary trade show, real property rental situs, CFC indirect ownership through foreign intermediary, source vs taxability misconception, ECI vs unrelated investment classification, FDAP-only foreign corp withholding at source, worldwide taxation persons, withholding on gross amount, interest U.S. borrower to foreign lender, subsidiary deferral concept, PE construction duration extension, CFC status consequence, stock sale gain seller's residence, depreciable property gain, no withholding on goods, foreign corp portfolio no ECI, services entirely in U.S., branch vs subsidiary legal distinction |
| 2026-04-14 | 01038_generate_reg_batch62.sql | REG | S Corporations | 10 | Batch 62: QSST eligibility, stock+debt basis loss limit (guarantee excluded), revocation within 2.5 months effective date, foreign taxes separately stated, basis ordering with nondeductible life insurance, AAA nondeductible expense decrease, AAA definition, initial purchase basis, cash contribution in basis ordering, mid-year sale gain with per-share/per-day allocation |
| 2026-04-14 | 01039_generate_tcp_batch38.sql | TCP | Entity Formation and Liquidation | 11 | Batch 38: Form 966 filing deadline, Section 331 multi-year liquidating distributions basis recovery, Section 334(a) FMV basis rule, Section 332 3-year timing requirement, Section 357(c)(3) cash-basis payables exclusion, profits interest safe harbor (Rev. Proc. 93-27), Section 336(d)(1) related-party loss disallowance, partial liquidation 5-year active business requirement, securities vs. boot (note term length), Section 362(e)(2)(C) election for net built-in loss, Section 721(b) investment company diversification |
