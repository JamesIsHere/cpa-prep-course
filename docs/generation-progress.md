# Question Curation Plan

Per-section target: 1,500 questions. Distributed by AICPA Blueprint area weights.

**Goal:** 9,000 total questions across all sections.

**Batch size:** 30 questions per generation batch.

**To generate:** 513 new questions (~50 batches).

**To trim:** 304 questions to delete (keep best, cut weakest).

**Difficulty targets:** 30% easy / 50% medium / 20% hard.

## Workflow

For each section:
1. **Trim** — for over-target topics, score/rank existing questions and delete the weakest
2. **Generate** — for under-target topics, run orchestrator to fill the gap
3. **Review** — manual human review of the surviving question set

## Section Overview

| Section | Current | Target | To Trim | To Generate | Gen Batches | Status |
|---------|---------|--------|---------|-------------|-------------|--------|
| AUD     | 1,407 | 1,500 | 0 | 93 | 11 | Pending |
| FAR     | 1,649 | 1,500 | 304 | 125 | 15 | Pending |
| REG     | 1,484 | 1,500 | 0 | 16 | 4 | Pending |
| BAR     | 1,427 | 1,500 | 0 | 73 | 12 | Pending |
| ISC     | 1,463 | 1,500 | 0 | 37 | 5 | Pending |
| TCP     | 1,451 | 1,500 | 0 | 49 | 6 | Pending |

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
| 3 | Audit Evidence | 65 | 65 |  |  |
| 3 | Audit Sampling | 52 | 65 |  | +13 |
| 3 | Misstatements and Control Deficiencies | 65 | 65 |  |  |
| 3 | Specific Areas and Transactions | 56 | 65 |  | +9 |
| 3 | Substantive Procedures | 58 | 65 |  | +7 |
| 3 | Tests of Controls | 65 | 65 |  |  |
| 3 | Written Representations | 65 | 65 |  |  |
| 4 | Attestation Engagements | 38 | 38 |  |  |
| 4 | Audit Reports | 38 | 38 |  |  |
| 4 | Modifications to the Auditor Report | 38 | 38 |  |  |
| 4 | Other Information and Supplementary Information | 38 | 38 |  |  |
| 4 | Review and Compilation | 38 | 38 |  |  |
| 4 | Review/Compilation Engagements | 37 | 38 |  | +1 |

### FAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Financial Reporting: For-Profit | 160 | 96 | -64 |  |
| 1 | Financial Statement Ratios | 60 | 96 |  | +36 |
| 1 | Public Company Reporting | 80 | 96 |  | +16 |
| 1 | Special Purpose Frameworks | 80 | 96 |  | +16 |
| 1 | Statement of Cash Flows | 80 | 96 |  | +16 |
| 2 | Cash and Cash Equivalents | 16 | 44 |  | +28 |
| 2 | Debt | 53 | 44 | -9 |  |
| 2 | Equity | 53 | 44 | -9 |  |
| 2 | Intangible Assets | 53 | 44 | -9 |  |
| 2 | Inventory | 53 | 44 | -9 |  |
| 2 | Investments | 30 | 44 |  | +14 |
| 2 | Leases | 53 | 44 | -9 |  |
| 2 | Payables and Accrued Liabilities | 50 | 44 | -6 |  |
| 2 | Property, Plant and Equipment | 53 | 44 | -9 |  |
| 2 | Revenue Recognition | 53 | 44 | -9 |  |
| 2 | Trade Receivables | 37 | 44 |  | +7 |
| 3 | Accounting Changes and Error Corrections | 58 | 52 | -6 |  |
| 3 | Consolidations | 58 | 52 | -6 |  |
| 3 | Contingencies | 58 | 52 | -6 |  |
| 3 | Fair Value | 58 | 52 | -6 |  |
| 3 | Income Taxes | 58 | 52 | -6 |  |
| 3 | Not-for-Profit Accounting | 58 | 52 | -6 |  |
| 3 | State and Local Government | 187 | 52 | -135 |  |
| 3 | Subsequent Events | 30 | 52 |  | +22 |

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
| 4 | Alternative Minimum Tax | 68 | 68 |  |  |
| 4 | Individual Taxation: Credits | 68 | 68 |  |  |
| 4 | Individual Taxation: Credits/AMT | 68 | 68 |  |  |
| 4 | Individual Taxation: Deductions | 66 | 68 |  | +2 |
| 4 | Individual Taxation: Filing/Credits | 68 | 68 |  |  |
| 4 | Individual Taxation: Income | 68 | 68 |  |  |
| 5 | C Corporations | 83 | 83 |  |  |
| 5 | Estate and Gift Tax | 84 | 84 |  |  |
| 5 | Partnerships | 83 | 83 |  |  |
| 5 | S Corporations | 83 | 83 |  |  |
| 5 | Tax-Exempt Organizations | 84 | 84 |  |  |

### BAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Capital Structure and Valuation | 134 | 134 |  |  |
| 1 | Financial Statement Analysis | 134 | 134 |  |  |
| 1 | Financial Valuation Methods | 134 | 134 |  |  |
| 1 | Prospective Analysis and Forecasting | 134 | 134 |  |  |
| 1 | Risk Management and Economics | 130 | 134 |  | +4 |
| 2 | Advanced Consolidations | 49 | 55 |  | +6 |
| 2 | Advanced Lease Transactions | 55 | 55 |  |  |
| 2 | Advanced Revenue and Intangibles | 49 | 55 |  | +6 |
| 2 | Business Combinations | 50 | 55 |  | +5 |
| 2 | Derivatives and Hedging | 50 | 55 |  | +5 |
| 2 | Foreign Currency Transactions | 50 | 55 |  | +5 |
| 2 | Income Taxes Advanced | 50 | 55 |  | +5 |
| 2 | Intangible Assets Advanced | 50 | 55 |  | +5 |
| 2 | Internal-Use Software and Cloud Computing | 39 | 55 |  | +16 |
| 2 | Pension and Postretirement Benefits | 55 | 55 |  |  |
| 2 | Stock Compensation and Business Combinations | 52 | 55 |  | +3 |
| 3 | Fund-to-Government-Wide Reconciliation | 69 | 75 |  | +6 |
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
| 2 | Privacy Requirements and Data Protection | 100 | 100 |  |  |
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
| 1 | Individual Tax Planning: Compensation | 132 | 132 |  |  |
| 1 | Passive Activity and At-Risk Rules | 132 | 132 |  |  |
| 1 | Retirement Plans and Education Savings | 116 | 131 |  | +15 |
| 1 | Wealth Transfer and Gifting Strategies | 131 | 131 |  |  |
| 2 | Advanced Basis Calculations | 105 | 105 |  |  |
| 2 | Entity Formation and Liquidation | 105 | 105 |  |  |
| 2 | Entity Tax Compliance: NOLs and Consolidated Returns | 105 | 105 |  |  |
| 2 | International Tax | 105 | 105 |  |  |
| 2 | Owner-Entity Transactions | 105 | 105 |  |  |
| 3 | Capital Structure Tax Planning | 56 | 56 |  |  |
| 3 | Entity Choice and Planning | 44 | 56 |  | +12 |
| 3 | Multi-Jurisdictional Tax Planning | 50 | 56 |  | +6 |
| 3 | Trusts and Estates | 50 | 56 |  | +6 |
| 4 | Entity Formation and Restructuring | 75 | 75 |  |  |
| 4 | Nontaxable Dispositions | 70 | 75 |  | +5 |
| 4 | Related Party Transactions | 70 | 75 |  | +5 |

## Batch Log

| Date | Migration | Section | Topic | Count | Notes |
|------|-----------|---------|-------|-------|-------|
| 2026-03-26 | 00578_generate_far_batch100.sql | FAR | Financial Statement Ratios | 30 | Batch 100: CCC, DFL, GMROI, RONA, EV/EBITDA, diluted EPS, net debt, LBO effects, goodwill impairment, seasonal distortion |
| 2026-03-26 | 00579_generate_far_batch101.sql | FAR | Subsequent Events | 30 | Batch 101: Type I/II classification, SEC vs non-SEC evaluation dates, going concern, reissuance, debt refinancing, fraud discovery, condemnation, dual dating |
| 2026-03-26 | 00580_generate_far_batch102.sql | FAR | Investments | 30 | Batch 102: HTM/AFS/trading classification, equity method basics, ASC 321 fair value, credit loss model, intercompany profit elimination, impairment, NAV expedient, loss of influence |
| 2026-03-27 | 00581_generate_far_batch103.sql | FAR | Investments | 30 | Batch 103: HTM amortization, AFS OCI effects, debt vs equity classification, equity method differential, premium/discount accretion, AFS-to-HTM transfer, VIE consolidation, fair value option, step acquisition, dilution |
