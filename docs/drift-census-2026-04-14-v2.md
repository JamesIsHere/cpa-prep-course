# Drift census — unspecced topics

Generated: 2026-04-14
Spec agreement threshold: ≥2 specs must agree on a ban
Source specs: 18 registered
Universal ban set size: 48 terms

## Summary

- Unspecced (section, topic) pairs scanned: **112**
- Total unspecced questions scanned: **7151**
- Total flagged questions: **193** (2.7%)
- Topics with any drift: **36** / 112 (32.1%)

## Universal ban set (terms used for the scan)

Only terms appearing in the banned lists of at least the agreement-threshold number of specs are included. This filters out topic-specific bans (e.g., `hot assets` banned in Owner-Entity but explicitly allowed in Partnerships) that would generate false positives on a blind cross-topic sweep.

| Term | Specs agreeing | Categories |
|------|----------------|------------|
| `Section 163(j)` | 3 | code section, adjacent topic, adjacent-topic tax rules |
| `Section 1374` | 3 | code section, S corp mechanics, S corp entity-level tax |
| `built-in gains tax` | 3 | named provision, S corp mechanics, S corp entity-level tax |
| `Section 199A` | 3 | code section, QBI mechanics |
| `qualified business income` | 3 | Sec 199A, QBI mechanics |
| `Section 704(b)` | 3 | partnership mechanics, special allocation mechanics, allocation-validity mechanics |
| `substantial economic effect` | 3 | partnership mechanics, special allocation mechanics, allocation-validity mechanics |
| `Section 707(a)(2)` | 3 | partnership mechanics, disguised sale mechanics |
| `disguised sale` | 3 | partnership mechanics, disguised sale mechanics |
| `Section 751` | 3 | partnership mechanics, hot asset mechanics, sale-of-interest character |
| `qualified income offset` | 3 | partnership mechanics, special allocation mechanics, allocation-validity mechanics |
| `minimum gain chargeback` | 3 | partnership mechanics, special allocation mechanics, allocation-validity mechanics |
| `lattice model` | 2 | lattice models, valuation mechanics |
| `risk-neutral probability` | 2 | lattice models, valuation mechanics |
| `adjusted present value` | 2 | advanced valuation |
| `MM Proposition` | 2 | advanced valuation, advanced theory |
| `LBO model` | 2 | advanced valuation |
| `Section 245A` | 2 | code section, international tax |
| `Section 482` | 2 | code section, transfer pricing |
| `transfer pricing` | 2 | named concept, tax territory |
| `functional currency` | 2 | named concept, adjacent topic |
| `Altman Z-score` | 2 | credit model, credit scoring |
| `Black-Scholes` | 2 | valuation mechanics |
| `WACC` | 2 | BAR territory |
| `CAPM` | 2 | BAR territory |
| `beta coefficient` | 2 | BAR territory |
| `terminal value` | 2 | DCF mechanics |
| `Gordon growth` | 2 | DCF mechanics |
| `Section 338` | 2 | graduate M&A, tax M&A |
| `Section 704(c)` | 2 | partnership mechanics, special allocation mechanics |
| `Section 752` | 2 | partnership mechanics, liability allocation mechanics |
| `hot assets` | 2 | partnership mechanics, sale-of-interest character |
| `capital account maintenance` | 2 | special allocation mechanics, allocation-validity mechanics |
| `deficit restoration obligation` | 2 | special allocation mechanics, allocation-validity mechanics |
| `unrealized receivable` | 2 | hot asset mechanics, sale-of-interest character |
| `substantially appreciated inventory` | 2 | hot asset mechanics, sale-of-interest character |
| `constructive liquidation` | 2 | liability allocation mechanics, liability allocation depth |
| `economic risk of loss` | 2 | liability allocation mechanics, liability allocation depth |
| `Section 736` | 2 | retiring partner mechanics |
| `Section 708(b)` | 2 | technical termination, termination mechanics |
| `technical termination` | 2 | technical termination, termination mechanics |
| `Section 7704` | 2 | PTP mechanics |
| `publicly traded partnership` | 2 | PTP mechanics |
| `BBA` | 2 | BBA audit regime, audit regime |
| `tolerable misstatement` | 2 | sampling theory, materiality mechanics |
| `PPS sampling` | 2 | sampling theory |
| `attribute sampling` | 2 | sampling theory |
| `component auditor` | 2 | group audit |

## Ranked drift — primary sort by flagged %

Topics at the top are the highest-priority candidates for the next wave of spec authoring. Topics with 0 flagged are structurally clean against the universal ban set — they may still have topic-specific drift that this census cannot detect, but they are not candidates for reactive spec work.

| Rank | Section | Topic | Qs | Flagged | % | Top terms hit |
|------|---------|-------|----|---------|---|---------------|
| 1 | BAR | Foreign Currency Transactions | 43 | 25 | 58.1% | `functional currency` (25) |
| 2 | TCP | Capital Structure Tax Planning | 52 | 26 | 50.0% | `Section 163(j)` (26); `Section 199A` (2); `qualified business income` (2) |
| 3 | AUD | Audit Sampling | 52 | 23 | 44.2% | `tolerable misstatement` (13); `attribute sampling` (10) |
| 4 | AUD | Using the Work of Others | 64 | 18 | 28.1% | `component auditor` (18) |
| 5 | TCP | Entity Choice and Planning | 56 | 15 | 26.8% | `Section 199A` (6); `qualified business income` (6); `Section 704(b)` (4) |
| 6 | AUD | Audit Planning | 61 | 9 | 14.8% | `component auditor` (8); `tolerable misstatement` (1) |
| 7 | TCP | Entity Formation and Liquidation | 105 | 14 | 13.3% | `unrealized receivable` (5); `Section 752` (4); `Section 736` (3) |
| 8 | REG | Individual Taxation: Deductions | 64 | 8 | 12.5% | `qualified business income` (8); `Section 199A` (7) |
| 9 | TCP | Multi-Jurisdictional Tax Planning | 56 | 7 | 12.5% | `Section 482` (7); `transfer pricing` (6) |
| 10 | AUD | Materiality | 64 | 5 | 7.8% | `tolerable misstatement` (3); `component auditor` (2) |
| 11 | TCP | Entity Formation and Restructuring | 67 | 5 | 7.5% | `Section 338` (4); `Section 707(a)(2)` (1); `disguised sale` (1) |
| 12 | BAR | Stock Compensation and Business Combinations | 52 | 3 | 5.8% | `Black-Scholes` (3) |
| 13 | AUD | Understanding the Entity and Environment | 64 | 3 | 4.7% | `transfer pricing` (2); `component auditor` (1) |
| 14 | AUD | Misstatements and Control Deficiencies | 64 | 3 | 4.7% | `tolerable misstatement` (3) |
| 15 | FAR | Financial Statement Ratios | 90 | 3 | 3.3% | `Altman Z-score` (2); `WACC` (1) |
| 16 | REG | Business Structures | 60 | 2 | 3.3% | `Section 752` (2); `economic risk of loss` (1) |
| 17 | AUD | Written Representations | 63 | 2 | 3.2% | `component auditor` (2) |
| 18 | AUD | Analytical Procedures | 65 | 2 | 3.1% | `tolerable misstatement` (1); `component auditor` (1) |
| 19 | AUD | Modifications to the Auditor Report | 35 | 1 | 2.9% | `component auditor` (1) |
| 20 | AUD | Independence | 37 | 1 | 2.7% | `transfer pricing` (1) |
| 21 | AUD | Audit Reports | 38 | 1 | 2.6% | `component auditor` (1) |
| 22 | AUD | Terms of Engagement | 38 | 1 | 2.6% | `component auditor` (1) |
| 23 | FAR | Statement of Cash Flows | 80 | 2 | 2.5% | `functional currency` (2) |
| 24 | REG | Professional Ethics in Tax | 45 | 1 | 2.2% | `Section 704(b)` (1); `substantial economic effect` (1) |
| 25 | BAR | Income Taxes Advanced | 48 | 1 | 2.1% | `functional currency` (1) |
| 26 | BAR | Advanced Consolidations | 49 | 1 | 2.0% | `functional currency` (1) |
| 27 | BAR | Intangible Assets Advanced | 50 | 1 | 2.0% | `functional currency` (1) |
| 28 | FAR | Equity | 51 | 1 | 2.0% | `Black-Scholes` (1) |
| 29 | BAR | Advanced Lease Transactions | 54 | 1 | 1.9% | `WACC` (1) |
| 30 | FAR | Not-for-Profit Accounting | 58 | 1 | 1.7% | `WACC` (1) |
| 31 | FAR | Consolidations | 58 | 1 | 1.7% | `functional currency` (1) |
| 32 | ISC | SOC Testing Controls | 60 | 1 | 1.7% | `attribute sampling` (1) |
| 33 | REG | Alternative Minimum Tax | 65 | 1 | 1.5% | `Section 199A` (1); `qualified business income` (1) |
| 34 | FAR | Financial Reporting: For-Profit | 158 | 2 | 1.3% | `functional currency` (2) |
| 35 | TCP | Individual Tax Planning: Compensation | 126 | 1 | 0.8% | `Section 199A` (1); `qualified business income` (1) |
| 36 | BAR | Pension and Postretirement Benefits | 142 | 1 | 0.7% | `WACC` (1) |
| 37 | AUD | Ethics and Independence | 38 | 0 | 0.0% | — |
| 38 | AUD | Internal Controls | 64 | 0 | 0.0% | — |
| 39 | AUD | Substantive Procedures | 58 | 0 | 0.0% | — |
| 40 | AUD | Review/Compilation Engagements | 31 | 0 | 0.0% | — |
| 41 | AUD | Attestation Engagements | 37 | 0 | 0.0% | — |
| 42 | AUD | Quality Management | 38 | 0 | 0.0% | — |
| 43 | AUD | Professional Responsibilities | 37 | 0 | 0.0% | — |
| 44 | AUD | Review and Compilation | 37 | 0 | 0.0% | — |
| 45 | AUD | Government Auditing Standards | 34 | 0 | 0.0% | — |
| 46 | AUD | Nature and Scope of Engagements | 32 | 0 | 0.0% | — |
| 47 | AUD | Professional Skepticism and Judgment | 38 | 0 | 0.0% | — |
| 48 | AUD | Responding to Assessed Risks | 64 | 0 | 0.0% | — |
| 49 | AUD | Tests of Controls | 64 | 0 | 0.0% | — |
| 50 | AUD | Specific Areas and Transactions | 65 | 0 | 0.0% | — |
| 51 | AUD | Other Information and Supplementary Information | 36 | 0 | 0.0% | — |
| 52 | BAR | Advanced Revenue and Intangibles | 47 | 0 | 0.0% | — |
| 53 | BAR | State and Local Government Reporting | 71 | 0 | 0.0% | — |
| 54 | BAR | Internal-Use Software and Cloud Computing | 38 | 0 | 0.0% | — |
| 55 | BAR | Fund-to-Government-Wide Reconciliation | 67 | 0 | 0.0% | — |
| 56 | BAR | Interfund Transactions | 67 | 0 | 0.0% | — |
| 57 | FAR | Revenue Recognition | 53 | 0 | 0.0% | — |
| 58 | FAR | Inventory | 51 | 0 | 0.0% | — |
| 59 | FAR | Property, Plant and Equipment | 49 | 0 | 0.0% | — |
| 60 | FAR | Intangible Assets | 51 | 0 | 0.0% | — |
| 61 | FAR | Debt | 52 | 0 | 0.0% | — |
| 62 | FAR | Income Taxes | 58 | 0 | 0.0% | — |
| 63 | FAR | State and Local Government | 186 | 0 | 0.0% | — |
| 64 | FAR | Contingencies | 58 | 0 | 0.0% | — |
| 65 | FAR | Public Company Reporting | 65 | 0 | 0.0% | — |
| 66 | FAR | Trade Receivables | 36 | 0 | 0.0% | — |
| 67 | FAR | Cash and Cash Equivalents | 16 | 0 | 0.0% | — |
| 68 | FAR | Special Purpose Frameworks | 79 | 0 | 0.0% | — |
| 69 | FAR | Payables and Accrued Liabilities | 50 | 0 | 0.0% | — |
| 70 | FAR | Accounting Changes and Error Corrections | 58 | 0 | 0.0% | — |
| 71 | FAR | Subsequent Events | 29 | 0 | 0.0% | — |
| 72 | FAR | Investments | 59 | 0 | 0.0% | — |
| 73 | ISC | IT Infrastructure and Architecture | 82 | 0 | 0.0% | — |
| 74 | ISC | ERP and Accounting Information Systems | 78 | 0 | 0.0% | — |
| 75 | ISC | Data Management and Lifecycle | 86 | 0 | 0.0% | — |
| 76 | ISC | System Availability and Change Management | 86 | 0 | 0.0% | — |
| 77 | ISC | Security and Control Frameworks | 95 | 0 | 0.0% | — |
| 78 | ISC | Threats, Attacks, and Vulnerabilities | 97 | 0 | 0.0% | — |
| 79 | ISC | Security Controls and Monitoring | 93 | 0 | 0.0% | — |
| 80 | ISC | Privacy Requirements and Data Protection | 95 | 0 | 0.0% | — |
| 81 | ISC | Incident Response and Recovery | 100 | 0 | 0.0% | — |
| 82 | ISC | SOC Engagements | 58 | 0 | 0.0% | — |
| 83 | ISC | SOC Reporting and Trust Services Criteria | 58 | 0 | 0.0% | — |
| 84 | ISC | IT General Controls | 79 | 0 | 0.0% | — |
| 85 | ISC | IT Audit Frameworks | 85 | 0 | 0.0% | — |
| 86 | ISC | SOC Reporting | 59 | 0 | 0.0% | — |
| 87 | ISC | Change Management | 85 | 0 | 0.0% | — |
| 88 | ISC | Data Protection Technologies | 97 | 0 | 0.0% | — |
| 89 | ISC | SOC Report Content and Structure | 59 | 0 | 0.0% | — |
| 90 | REG | Circular 230 | 42 | 0 | 0.0% | — |
| 91 | REG | Business Law: Contracts | 60 | 0 | 0.0% | — |
| 92 | REG | Agency and Regulation | 60 | 0 | 0.0% | — |
| 93 | REG | Property Transactions: Basis | 47 | 0 | 0.0% | — |
| 94 | REG | Property Transactions: Gains/Losses | 43 | 0 | 0.0% | — |
| 95 | REG | Like-Kind Exchanges | 48 | 0 | 0.0% | — |
| 96 | REG | Individual Taxation: Income | 67 | 0 | 0.0% | — |
| 97 | REG | Individual Taxation: Credits/AMT | 66 | 0 | 0.0% | — |
| 98 | REG | Individual Taxation: Filing/Credits | 68 | 0 | 0.0% | — |
| 99 | REG | Tax Procedures | 44 | 0 | 0.0% | — |
| 100 | REG | Individual Taxation: Credits | 67 | 0 | 0.0% | — |
| 101 | REG | Estate and Gift Tax | 78 | 0 | 0.0% | — |
| 102 | REG | Federal Tax Procedures | 40 | 0 | 0.0% | — |
| 103 | REG | Legal Duties and Responsibilities | 45 | 0 | 0.0% | — |
| 104 | REG | Debtor-Creditor Relationships | 60 | 0 | 0.0% | — |
| 105 | REG | Tax-Exempt Organizations | 77 | 0 | 0.0% | — |
| 106 | REG | Government Regulation of Business | 58 | 0 | 0.0% | — |
| 107 | TCP | Wealth Transfer and Gifting Strategies | 129 | 0 | 0.0% | — |
| 108 | TCP | Retirement Plans and Education Savings | 131 | 0 | 0.0% | — |
| 109 | TCP | Entity Tax Compliance: NOLs and Consolidated Returns | 100 | 0 | 0.0% | — |
| 110 | TCP | Trusts and Estates | 50 | 0 | 0.0% | — |
| 111 | TCP | Nontaxable Dispositions | 66 | 0 | 0.0% | — |
| 112 | TCP | Related Party Transactions | 66 | 0 | 0.0% | — |

## Interpretation notes

- **False negatives are the dominant failure mode of this census.** The universal ban set is derived from the 17 authored specs and cannot catch drift in topic areas those specs do not cover. A topic with 0 flagged here may still have substantial drift in, for example, sampling theory (ISC/AUD), case-law depth (AUD), or lease mechanics (FAR) if no existing spec bans those patterns.
- **False positives are reduced but not eliminated by the agreement filter.** A term banned in ≥2 specs is likely a genuine drift marker across contexts, but edge cases may remain (e.g., a term banned in C Corporations and S Corporations that is legitimately on-topic for a yet-to-be-specced corporate topic).
- **Use the % column for triage priority, the absolute count for effort budgeting.** A small topic at 40% drift (16/40) is a faster cleanup than a large topic at 15% drift (30/200), but the large topic produces more total improved bank quality.

