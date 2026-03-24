# Question Curation Plan

Per-section target: 1,500 questions. Distributed by AICPA Blueprint area weights.

**Goal:** 9,000 total questions across all sections.

**Batch size:** 30 questions per generation batch.

**To generate:** 2,430 new questions (~126 batches).

**To trim:** 5,712 questions to delete (keep best, cut weakest).

**Difficulty targets:** 30% easy / 50% medium / 20% hard.

## Workflow

For each section:
1. **Trim** — for over-target topics, score/rank existing questions and delete the weakest
2. **Generate** — for under-target topics, run orchestrator to fill the gap
3. **Review** — manual human review of the surviving question set

## Section Overview

| Section | Current | Target | To Trim | To Generate | Gen Batches | Status |
|---------|---------|--------|---------|-------------|-------------|--------|
| AUD     | 3,474 | 1,500 | 2,355 | 381 | 24 | Pending |
| FAR     | 3,511 | 1,500 | 2,022 | 11 | 2 | Pending |
| REG     | 2,375 | 1,500 | 1,010 | 105 | 10 | Pending |
| BAR     | 1,099 | 1,500 | 151 | 552 | 30 | Pending |
| ISC     | 990 | 1,500 | 78 | 588 | 28 | Pending |
| TCP     | 953 | 1,500 | 96 | 643 | 29 | Pending |

## Topic Detail

### AUD

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Ethics and Independence | 60 | 38 | -22 |  |
| 1 | Government Auditing Standards | 34 | 38 |  | +4 |
| 1 | Independence | 20 | 38 |  | +18 |
| 1 | Nature and Scope of Engagements | 20 | 38 |  | +18 |
| 1 | Professional Responsibilities | 37 | 38 |  | +1 |
| 1 | Professional Skepticism and Judgment | 20 | 38 |  | +18 |
| 1 | Quality Management | 55 | 38 | -17 |  |
| 1 | Terms of Engagement | 20 | 38 |  | +18 |
| 2 | Audit Planning | 62 | 64 |  | +2 |
| 2 | Internal Controls | 72 | 64 | -8 |  |
| 2 | Materiality | 20 | 64 |  | +44 |
| 2 | Responding to Assessed Risks | 20 | 64 |  | +44 |
| 2 | Risk Assessment | 64 | 64 |  |  |
| 2 | Understanding the Entity and Environment | 20 | 64 |  | +44 |
| 2 | Using the Work of Others | 20 | 64 |  | +44 |
| 3 | Analytical Procedures | 50 | 65 |  | +15 |
| 3 | Audit Evidence | 67 | 65 | -2 |  |
| 3 | Audit Sampling | 52 | 65 |  | +13 |
| 3 | Misstatements and Control Deficiencies | 1649 | 65 | -1584 |  |
| 3 | Specific Areas and Transactions | 56 | 65 |  | +9 |
| 3 | Substantive Procedures | 58 | 65 |  | +7 |
| 3 | Tests of Controls | 20 | 65 |  | +45 |
| 3 | Written Representations | 747 | 65 | -682 |  |
| 4 | Attestation Engagements | 46 | 38 | -8 |  |
| 4 | Audit Reports | 62 | 38 | -24 |  |
| 4 | Modifications to the Auditor Report | 20 | 38 |  | +18 |
| 4 | Other Information and Supplementary Information | 20 | 38 |  | +18 |
| 4 | Review and Compilation | 46 | 38 | -8 |  |
| 4 | Review/Compilation Engagements | 37 | 38 |  | +1 |

### FAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Conceptual Framework and Standards | 80 | 80 |  |  |
| 1 | Earnings Per Share | 1541 | 80 | -1461 |  |
| 1 | Employee Benefit Plans | 125 | 80 | -45 |  |
| 1 | Financial Statements | 108 | 80 | -28 |  |
| 1 | Special Purpose Frameworks | 94 | 80 | -14 |  |
| 1 | Statement of Cash Flows | 88 | 80 | -8 |  |
| 2 | Bonds and Debt | 74 | 53 | -21 |  |
| 2 | Cash and Receivables | 64 | 53 | -11 |  |
| 2 | Equity | 75 | 53 | -22 |  |
| 2 | Fixed Assets | 74 | 53 | -21 |  |
| 2 | Intangible Assets | 72 | 53 | -19 |  |
| 2 | Inventory | 75 | 53 | -22 |  |
| 2 | Leases | 78 | 53 | -25 |  |
| 2 | Payables and Accrued Liabilities | 50 | 53 |  | +3 |
| 2 | Revenue Recognition | 83 | 53 | -30 |  |
| 3 | Accounting Changes and Error Corrections | 80 | 58 | -22 |  |
| 3 | Consolidations | 107 | 58 | -49 |  |
| 3 | Contingencies | 64 | 58 | -6 |  |
| 3 | Fair Value | 69 | 58 | -11 |  |
| 3 | Governmental Accounting Fundamentals | 50 | 58 |  | +8 |
| 3 | Income Taxes | 75 | 58 | -17 |  |
| 3 | Not-for-Profit Accounting | 71 | 58 | -13 |  |
| 4 | Governmental Accounting | 314 | 137 | -177 |  |

### REG

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Circular 230 | 42 | 45 |  | +3 |
| 1 | Federal Tax Procedures | 40 | 45 |  | +5 |
| 1 | Legal Duties and Responsibilities | 32 | 45 |  | +13 |
| 1 | Professional Ethics in Tax | 29 | 45 |  | +16 |
| 1 | Tax Procedures | 26 | 45 |  | +19 |
| 2 | Agency and Regulation | 66 | 60 | -6 |  |
| 2 | Business Law: Contracts | 73 | 60 | -13 |  |
| 2 | Business Structures | 68 | 60 | -8 |  |
| 2 | Debtor-Creditor Relationships | 62 | 60 | -2 |  |
| 2 | Government Regulation of Business | 50 | 60 |  | +10 |
| 3 | Like-Kind Exchanges | 34 | 50 |  | +16 |
| 3 | Property Transactions: Basis | 52 | 50 | -2 |  |
| 3 | Property Transactions: Gains/Losses | 44 | 50 |  | +6 |
| 4 | Alternative Minimum Tax | 80 | 68 | -12 |  |
| 4 | Individual Taxation: Credits | 98 | 68 | -30 |  |
| 4 | Individual Taxation: Credits/AMT | 53 | 68 |  | +15 |
| 4 | Individual Taxation: Deductions | 66 | 68 |  | +2 |
| 4 | Individual Taxation: Filing/Credits | 75 | 68 | -7 |  |
| 4 | Individual Taxation: Income | 85 | 68 | -17 |  |
| 5 | C Corporations | 136 | 83 | -53 |  |
| 5 | Estate and Gift Tax | 205 | 84 | -121 |  |
| 5 | Partnerships | 131 | 83 | -48 |  |
| 5 | S Corporations | 129 | 83 | -46 |  |
| 5 | Tax-Exempt Organizations | 729 | 84 | -645 |  |

### BAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Capital Structure and Valuation | 285 | 134 | -151 |  |
| 1 | Financial Statement Analysis | 116 | 134 |  | +18 |
| 1 | Financial Valuation Methods | 53 | 134 |  | +81 |
| 1 | Prospective Analysis and Forecasting | 46 | 134 |  | +88 |
| 1 | Risk Management and Economics | 70 | 134 |  | +64 |
| 2 | Advanced Consolidations | 49 | 55 |  | +6 |
| 2 | Advanced Lease Transactions | 39 | 55 |  | +16 |
| 2 | Advanced Revenue and Intangibles | 49 | 55 |  | +6 |
| 2 | Business Combinations | 20 | 55 |  | +35 |
| 2 | Derivatives and Hedging | 50 | 55 |  | +5 |
| 2 | Foreign Currency Transactions | 20 | 55 |  | +35 |
| 2 | Income Taxes Advanced | 20 | 55 |  | +35 |
| 2 | Intangible Assets Advanced | 20 | 55 |  | +35 |
| 2 | Internal-Use Software and Cloud Computing | 39 | 55 |  | +16 |
| 2 | Pension and Postretirement Benefits | 38 | 55 |  | +17 |
| 2 | Stock Compensation and Business Combinations | 52 | 55 |  | +3 |
| 3 | Fund-to-Government-Wide Reconciliation | 39 | 75 |  | +36 |
| 3 | Interfund Transactions | 38 | 75 |  | +37 |
| 3 | State and Local Government Reporting | 56 | 75 |  | +19 |

### ISC

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Change Management | 49 | 86 |  | +37 |
| 1 | Data Management and Lifecycle | 48 | 86 |  | +38 |
| 1 | ERP and Accounting Information Systems | 48 | 86 |  | +38 |
| 1 | IT Audit Frameworks | 38 | 86 |  | +48 |
| 1 | IT General Controls | 38 | 86 |  | +48 |
| 1 | IT Infrastructure and Architecture | 52 | 86 |  | +34 |
| 1 | System Availability and Change Management | 57 | 86 |  | +29 |
| 2 | Data Protection Technologies | 169 | 100 | -69 |  |
| 2 | Incident Response and Recovery | 109 | 100 | -9 |  |
| 2 | Privacy Requirements and Data Protection | 52 | 100 |  | +48 |
| 2 | Security and Control Frameworks | 52 | 99 |  | +47 |
| 2 | Security Controls and Monitoring | 48 | 100 |  | +52 |
| 2 | Threats, Attacks, and Vulnerabilities | 48 | 99 |  | +51 |
| 3 | SOC Engagements | 45 | 60 |  | +15 |
| 3 | SOC Report Content and Structure | 20 | 60 |  | +40 |
| 3 | SOC Reporting | 38 | 60 |  | +22 |
| 3 | SOC Reporting and Trust Services Criteria | 41 | 60 |  | +19 |
| 3 | SOC Testing Controls | 38 | 60 |  | +22 |

### TCP

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Individual Tax Planning: Compensation | 81 | 132 |  | +51 |
| 1 | Passive Activity and At-Risk Rules | 228 | 132 | -96 |  |
| 1 | Retirement Plans and Education Savings | 86 | 131 |  | +45 |
| 1 | Wealth Transfer and Gifting Strategies | 54 | 131 |  | +77 |
| 2 | Advanced Basis Calculations | 47 | 105 |  | +58 |
| 2 | Entity Formation and Liquidation | 48 | 105 |  | +57 |
| 2 | Entity Tax Compliance: NOLs and Consolidated Returns | 51 | 105 |  | +54 |
| 2 | International Tax | 54 | 105 |  | +51 |
| 2 | Owner-Entity Transactions | 50 | 105 |  | +55 |
| 3 | Capital Structure Tax Planning | 40 | 56 |  | +16 |
| 3 | Entity Choice and Planning | 44 | 56 |  | +12 |
| 3 | Multi-Jurisdictional Tax Planning | 20 | 56 |  | +36 |
| 3 | Trusts and Estates | 50 | 56 |  | +6 |
| 4 | Entity Formation and Restructuring | 20 | 75 |  | +55 |
| 4 | Nontaxable Dispositions | 40 | 75 |  | +35 |
| 4 | Related Party Transactions | 40 | 75 |  | +35 |

## Batch Log

| Date | Migration | Section | Topic | Count | Notes |
|------|-----------|---------|-------|-------|-------|
| 2026-03-24 | 00481_generate_isc_batch9.sql | ISC | Change Management | 30 | Rollback plans, CAB composition, CMDB, patch mgmt, RICE framework, change categorization, environment separation |
| 2026-03-24 | 00482_generate_tcp_batch9.sql | TCP | Individual Tax Planning: Compensation | 30 | SE tax, 83(b) forfeiture, golden parachute 280G, constructive receipt, SARs, phantom stock, QBI 199A, Section 119/129 |
| 2026-03-24 | 00478_generate_aud_batch84.sql | AUD | Analytical Procedures | 30 | Scanning, related-party detection, accounting policy changes, conflicting evidence, disaggregation, review engagement analytics, common-size analysis, seasonality, proof-in-total, cross-sectional analysis |
| 2026-03-24 | 00479_generate_reg_batch54.sql | REG | Federal Tax Procedures | 30 | Correspondence audit, lien vs levy, 30-day letter, Appeals hazards, FTF/FTP interaction, refund lookback, valuation misstatement, interest netting, estimated tax safe harbor |
| 2026-03-24 | 00480_generate_bar_batch11.sql | BAR | Risk Management and Economics | 30 | WACC calc, tax shield, trough phase, translation exposure, DOL/DFL/DTL, M&M Props I&II, pecking order, two-stage DDM, PI capital rationing, natural hedging, CAPM blending |
