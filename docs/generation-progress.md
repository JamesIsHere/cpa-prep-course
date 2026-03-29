# Question Curation Plan

> Auto-synced from live DB on 2026-03-29 via `npm run sync-counts`

Per-section target: 1,500 questions. Distributed by AICPA Blueprint area weights.

**Goal:** 9,000 total questions across all sections.

**Batch size:** 30 questions per generation batch.

**To generate:** 519 new questions (~72 batches).

**To trim:** 441 questions to delete (keep best, cut weakest).

**Difficulty targets:** 30% easy / 50% medium / 20% hard.

## Workflow

For each section:
1. **Trim** — for over-target topics, score/rank existing questions and delete the weakest
2. **Generate** — for under-target topics, run orchestrator to fill the gap
3. **Review** — manual human review of the surviving question set

## Section Overview

| Section | Current | Target | To Trim | To Generate | Gen Batches | Status          |
|---------|---------|--------|---------|-------------|-------------|-----------------|
| AUD     | 1,398 | 1,500 |       0 |         102 |          14 | Generate Needed |
| FAR     | 1,570 | 1,500 |     268 |         198 |          19 | Trim + Generate |
| REG     | 1,469 | 1,500 |       0 |          31 |          10 | Generate Needed |
| BAR     | 1,584 | 1,500 |     173 |          89 |          14 | Trim + Generate |
| ISC     | 1,462 | 1,500 |       0 |          38 |           6 | Generate Needed |
| TCP     | 1,439 | 1,500 |       0 |          61 |           9 | Generate Needed |

## Topic Detail

### AUD

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Ethics and Independence | 38 | 38 |  |  |
| 1 | Government Auditing Standards | 34 | 38 |  | +4 |
| 1 | Independence | 38 | 38 |  |  |
| 1 | Nature and Scope of Engagements | 38 | 38 |  |  |
| 1 | Professional Responsibilities | 37 | 38 |  | +1 |
| 1 | Professional Skepticism and Judgment | 38 | 38 |  |  |
| 1 | Quality Management | 38 | 38 |  |  |
| 1 | Terms of Engagement | 38 | 38 |  |  |
| 2 | Audit Planning | 62 | 64 |  | +2 |
| 2 | Internal Controls | 64 | 64 |  |  |
| 2 | Materiality | 50 | 64 |  | +14 |
| 2 | Responding to Assessed Risks | 50 | 64 |  | +14 |
| 2 | Risk Assessment | 64 | 64 |  |  |
| 2 | Understanding the Entity and Environment | 50 | 64 |  | +14 |
| 2 | Using the Work of Others | 50 | 64 |  | +14 |
| 3 | Analytical Procedures | 65 | 65 |  |  |
| 3 | Audit Evidence | 64 | 65 |  | +1 |
| 3 | Audit Sampling | 52 | 65 |  | +13 |
| 3 | Misstatements and Control Deficiencies | 64 | 65 |  | +1 |
| 3 | Specific Areas and Transactions | 50 | 65 |  | +15 |
| 3 | Substantive Procedures | 58 | 65 |  | +7 |
| 3 | Tests of Controls | 65 | 65 |  |  |
| 3 | Written Representations | 64 | 65 |  | +1 |
| 4 | Attestation Engagements | 38 | 38 |  |  |
| 4 | Audit Reports | 38 | 38 |  |  |
| 4 | Modifications to the Auditor Report | 38 | 38 |  |  |
| 4 | Other Information and Supplementary Information | 38 | 38 |  |  |
| 4 | Review and Compilation | 38 | 38 |  |  |
| 4 | Review/Compilation Engagements | 37 | 38 |  | +1 |

### FAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Consolidations | 58 | 66 |  | +8 |
| 1 | Financial Reporting: For-Profit | 159 | 67 | -92 |  |
| 1 | Financial Statement Ratios | 90 | 66 | -24 |  |
| 1 | Not-for-Profit Accounting | 58 | 66 |  | +8 |
| 1 | Public Company Reporting | 71 | 66 | -5 |  |
| 1 | Special Purpose Frameworks | 79 | 66 | -13 |  |
| 1 | State and Local Government | 186 | 66 | -120 |  |
| 1 | Statement of Cash Flows | 80 | 67 | -13 |  |
| 2 | Cash and Cash Equivalents | 16 | 58 |  | +42 |
| 2 | Debt | 52 | 58 |  | +6 |
| 2 | Equity | 52 | 58 |  | +6 |
| 2 | Intangible Assets | 51 | 58 |  | +7 |
| 2 | Inventory | 53 | 58 |  | +5 |
| 2 | Investments | 59 | 58 | -1 |  |
| 2 | Payables and Accrued Liabilities | 50 | 58 |  | +8 |
| 2 | Property, Plant and Equipment | 53 | 58 |  | +5 |
| 2 | Trade Receivables | 37 | 58 |  | +21 |
| 3 | Accounting Changes and Error Corrections | 58 | 64 |  | +6 |
| 3 | Contingencies | 58 | 64 |  | +6 |
| 3 | Fair Value | 57 | 64 |  | +7 |
| 3 | Income Taxes | 58 | 64 |  | +6 |
| 3 | Leases | 53 | 64 |  | +11 |
| 3 | Revenue Recognition | 53 | 64 |  | +11 |
| 3 | Subsequent Events | 29 | 64 |  | +35 |

### REG

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Circular 230 | 42 | 45 |  | +3 |
| 1 | Federal Tax Procedures | 40 | 45 |  | +5 |
| 1 | Legal Duties and Responsibilities | 45 | 45 |  |  |
| 1 | Professional Ethics in Tax | 45 | 45 |  |  |
| 1 | Tax Procedures | 45 | 45 |  |  |
| 2 | Agency and Regulation | 60 | 60 |  |  |
| 2 | Business Law: Contracts | 60 | 60 |  |  |
| 2 | Business Structures | 60 | 60 |  |  |
| 2 | Debtor-Creditor Relationships | 60 | 60 |  |  |
| 2 | Government Regulation of Business | 60 | 60 |  |  |
| 3 | Like-Kind Exchanges | 50 | 50 |  |  |
| 3 | Property Transactions: Basis | 50 | 50 |  |  |
| 3 | Property Transactions: Gains/Losses | 44 | 50 |  | +6 |
| 4 | Alternative Minimum Tax | 66 | 68 |  | +2 |
| 4 | Individual Taxation: Credits | 68 | 68 |  |  |
| 4 | Individual Taxation: Credits/AMT | 68 | 68 |  |  |
| 4 | Individual Taxation: Deductions | 66 | 68 |  | +2 |
| 4 | Individual Taxation: Filing/Credits | 68 | 68 |  |  |
| 4 | Individual Taxation: Income | 68 | 68 |  |  |
| 5 | C Corporations | 82 | 83 |  | +1 |
| 5 | Estate and Gift Tax | 82 | 84 |  | +2 |
| 5 | Partnerships | 81 | 83 |  | +2 |
| 5 | S Corporations | 82 | 83 |  | +1 |
| 5 | Tax-Exempt Organizations | 77 | 84 |  | +7 |

### BAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Capital Structure and Valuation | 122 | 134 |  | +12 |
| 1 | Financial Statement Analysis | 189 | 134 | -55 |  |
| 1 | Financial Valuation Methods | 163 | 134 | -29 |  |
| 1 | Prospective Analysis and Forecasting | 133 | 134 |  | +1 |
| 1 | Risk Management and Economics | 130 | 134 |  | +4 |
| 2 | Advanced Consolidations | 49 | 55 |  | +6 |
| 2 | Advanced Lease Transactions | 55 | 55 |  |  |
| 2 | Advanced Revenue and Intangibles | 47 | 55 |  | +8 |
| 2 | Business Combinations | 50 | 55 |  | +5 |
| 2 | Derivatives and Hedging | 50 | 55 |  | +5 |
| 2 | Foreign Currency Transactions | 50 | 55 |  | +5 |
| 2 | Income Taxes Advanced | 50 | 55 |  | +5 |
| 2 | Intangible Assets Advanced | 50 | 55 |  | +5 |
| 2 | Internal-Use Software and Cloud Computing | 39 | 55 |  | +16 |
| 2 | Pension and Postretirement Benefits | 144 | 55 | -89 |  |
| 2 | Stock Compensation and Business Combinations | 52 | 55 |  | +3 |
| 3 | Fund-to-Government-Wide Reconciliation | 68 | 75 |  | +7 |
| 3 | Interfund Transactions | 68 | 75 |  | +7 |
| 3 | State and Local Government Reporting | 75 | 75 |  |  |

### ISC

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Change Management | 79 | 86 |  | +7 |
| 1 | Data Management and Lifecycle | 78 | 86 |  | +8 |
| 1 | ERP and Accounting Information Systems | 78 | 86 |  | +8 |
| 1 | IT Audit Frameworks | 86 | 86 |  |  |
| 1 | IT General Controls | 86 | 86 |  |  |
| 1 | IT Infrastructure and Architecture | 82 | 86 |  | +4 |
| 1 | System Availability and Change Management | 86 | 86 |  |  |
| 2 | Data Protection Technologies | 100 | 100 |  |  |
| 2 | Incident Response and Recovery | 100 | 100 |  |  |
| 2 | Privacy Requirements and Data Protection | 99 | 100 |  | +1 |
| 2 | Security and Control Frameworks | 99 | 99 |  |  |
| 2 | Security Controls and Monitoring | 100 | 100 |  |  |
| 2 | Threats, Attacks, and Vulnerabilities | 99 | 99 |  |  |
| 3 | SOC Engagements | 60 | 60 |  |  |
| 3 | SOC Report Content and Structure | 50 | 60 |  | +10 |
| 3 | SOC Reporting | 60 | 60 |  |  |
| 3 | SOC Reporting and Trust Services Criteria | 60 | 60 |  |  |
| 3 | SOC Testing Controls | 60 | 60 |  |  |

### TCP

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Individual Tax Planning: Compensation | 130 | 132 |  | +2 |
| 1 | Passive Activity and At-Risk Rules | 131 | 132 |  | +1 |
| 1 | Retirement Plans and Education Savings | 110 | 131 |  | +21 |
| 1 | Wealth Transfer and Gifting Strategies | 131 | 131 |  |  |
| 2 | Advanced Basis Calculations | 103 | 105 |  | +2 |
| 2 | Entity Formation and Liquidation | 105 | 105 |  |  |
| 2 | Entity Tax Compliance: NOLs and Consolidated Returns | 105 | 105 |  |  |
| 2 | International Tax | 105 | 105 |  |  |
| 2 | Owner-Entity Transactions | 105 | 105 |  |  |
| 3 | Capital Structure Tax Planning | 56 | 56 |  |  |
| 3 | Entity Choice and Planning | 44 | 56 |  | +12 |
| 3 | Multi-Jurisdictional Tax Planning | 50 | 56 |  | +6 |
| 3 | Trusts and Estates | 50 | 56 |  | +6 |
| 4 | Entity Formation and Restructuring | 75 | 75 |  |  |
| 4 | Nontaxable Dispositions | 69 | 75 |  | +6 |
| 4 | Related Party Transactions | 70 | 75 |  | +5 |

## Batch Log

| Date | Migration | Section | Topic | Count | Notes |
|------|-----------|---------|-------|-------|-------|
| 2026-03-26 | 00578_generate_far_batch100.sql | FAR | Financial Statement Ratios | 30 | Batch 100: CCC, DFL, GMROI, RONA, EV/EBITDA, diluted EPS, net debt, LBO effects, goodwill impairment, seasonal distortion |
| 2026-03-26 | 00579_generate_far_batch101.sql | FAR | Subsequent Events | 30 | Batch 101: Type I/II classification, SEC vs non-SEC evaluation dates, going concern, reissuance, debt refinancing, fraud discovery, condemnation, dual dating |
| 2026-03-26 | 00580_generate_far_batch102.sql | FAR | Investments | 30 | Batch 102: HTM/AFS/trading classification, equity method basics, ASC 321 fair value, credit loss model, intercompany profit elimination, impairment, NAV expedient, loss of influence |
| 2026-03-27 | 00581_generate_far_batch103.sql | FAR | Investments | 30 | Batch 103: HTM amortization, AFS OCI effects, debt vs equity classification, equity method differential, premium/discount accretion, AFS-to-HTM transfer, VIE consolidation, fair value option, step acquisition, dilution |
| 2026-03-27 | 00582_generate_far_batch104.sql | FAR | Financial Statement Ratios | 30 | Batch 104: TIE, cash ratio, funded debt/NWC, 5-factor DuPont tax interaction, fixed charge coverage, revenue/employee, window dressing, operating expense ratio, capitalize vs expense on TIE, OCF ratio, invested capital turnover, Beneish M-Score, EVA, debt yield, FCF yield, margin distinction, PEG ratio, LT D/E, P/CF, DOL, BEP, DTL, EV components, Tobin's Q, AR turnover, diluted EPS preferred, NOPAT margin, cash ROA, off-balance-sheet leverage, DuPont tax burden |
