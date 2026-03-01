# Question Generation Progress

Cross-session tracker for scaling question bank from ~5K to 20K.

**Goal:** 20,000 total questions across all sections.

**Batch size:** 30 questions per migration.

**Total new needed:** 15,015 questions (~570 batches).

**Difficulty targets:** 30% easy / 50% medium / 20% hard.

## How to Resume

Each session:
1. Read this file - find the first section with status "In Progress" or "Pending"
2. Run: `./scripts/orchestrate.ps1 -Section <code> -Mode generate -Batches N`
3. The orchestrator auto-selects topics, generates scaffolds, and updates this tracker

## Section Progress

| Section | Current | Target | Generated | Remaining | Batches Done | Status |
|---------|---------|--------|-----------|-----------|--------------|--------|
| AUD     | 1,052 | 5,000 | 2,460 | 1,488 | 82/146 | In Progress |
| FAR     | 855 | 5,000 | 840 | 3,305 | 28/148 | In Progress |
| REG     | 847 | 5,000 | 930 | 3,223 | 31/152 | In Progress |
| BAR     | 776 | 1,667 | 270 | 621 | 9/43 | In Progress |
| ISC     | 747 | 1,667 | 210 | 710 | 7/40 | In Progress |
| TCP     | 709 | 1,667 | 210 | 748 | 7/41 | In Progress |

## Topic Detail

### AUD

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Ethics and Independence | 60 | 159 | 99 | 4 |
| Government Auditing Standards | 34 | 133 | 99 | 4 |
| Independence | 20 | 119 | 99 | 4 |
| Nature and Scope of Engagements | 20 | 119 | 99 | 4 |
| Professional Responsibilities | 37 | 136 | 99 | 4 |
| Professional Skepticism and Judgment | 20 | 119 | 99 | 4 |
| Quality Management | 55 | 154 | 99 | 4 |
| Terms of Engagement | 20 | 119 | 99 | 4 |
| Audit Planning | 62 | 231 | 169 | 6 |
| Internal Controls | 72 | 241 | 169 | 6 |
| Materiality | 20 | 189 | 169 | 6 |
| Responding to Assessed Risks | 20 | 189 | 169 | 6 |
| Risk Assessment | 64 | 233 | 169 | 6 |
| Understanding the Entity and Environment | 20 | 189 | 169 | 6 |
| Using the Work of Others | 20 | 189 | 169 | 6 |
| Analytical Procedures | 20 | 192 | 172 | 6 |
| Audit Evidence | 67 | 239 | 172 | 6 |
| Audit Sampling | 52 | 224 | 172 | 6 |
| Misstatements and Control Deficiencies | 20 | 193 | 173 | 6 |
| Specific Areas and Transactions | 20 | 193 | 173 | 6 |
| Substantive Procedures | 58 | 230 | 172 | 6 |
| Tests of Controls | 20 | 192 | 172 | 6 |
| Written Representations | 20 | 193 | 173 | 6 |
| Attestation Engagements | 46 | 145 | 99 | 4 |
| Audit Reports | 62 | 161 | 99 | 4 |
| Modifications to the Auditor Report | 20 | 119 | 99 | 4 |
| Other Information and Supplementary Information | 20 | 119 | 99 | 4 |
| Review and Compilation | 46 | 145 | 99 | 4 |
| Review/Compilation Engagements | 37 | 136 | 99 | 4 |

### FAR

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Conceptual Framework and Standards | 20 | 239 | 219 | 8 |
| Earnings Per Share | 22 | 242 | 220 | 8 |
| Employee Benefit Plans | 35 | 255 | 220 | 8 |
| Financial Statements | 48 | 268 | 220 | 8 |
| Special Purpose Frameworks | 34 | 254 | 220 | 8 |
| Statement of Cash Flows | 28 | 248 | 220 | 8 |
| Bonds and Debt | 44 | 191 | 147 | 5 |
| Cash and Receivables | 34 | 181 | 147 | 5 |
| Equity | 45 | 192 | 147 | 5 |
| Fixed Assets | 44 | 191 | 147 | 5 |
| Intangible Assets | 42 | 189 | 147 | 5 |
| Inventory | 45 | 192 | 147 | 5 |
| Leases | 48 | 195 | 147 | 5 |
| Payables and Accrued Liabilities | 20 | 167 | 147 | 5 |
| Revenue Recognition | 53 | 200 | 147 | 5 |
| Accounting Changes and Error Corrections | 20 | 181 | 161 | 6 |
| Consolidations | 47 | 208 | 161 | 6 |
| Contingencies | 34 | 195 | 161 | 6 |
| Fair Value | 39 | 200 | 161 | 6 |
| Governmental Accounting Fundamentals | 20 | 181 | 161 | 6 |
| Income Taxes | 46 | 207 | 161 | 6 |
| Not-for-Profit Accounting | 41 | 202 | 161 | 6 |
| Governmental Accounting | 46 | 422 | 376 | 13 |

### REG

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Circular 230 | 42 | 167 | 125 | 5 |
| Federal Tax Procedures | 10 | 135 | 125 | 5 |
| Legal Duties and Responsibilities | 32 | 157 | 125 | 5 |
| Professional Ethics in Tax | 29 | 154 | 125 | 5 |
| Tax Procedures | 26 | 151 | 125 | 5 |
| Agency and Regulation | 36 | 202 | 166 | 6 |
| Business Law: Contracts | 43 | 209 | 166 | 6 |
| Business Structures | 38 | 204 | 166 | 6 |
| Debtor-Creditor Relationships | 32 | 198 | 166 | 6 |
| Government Regulation of Business | 20 | 186 | 166 | 6 |
| Like-Kind Exchanges | 34 | 172 | 138 | 5 |
| Property Transactions: Basis | 52 | 190 | 138 | 5 |
| Property Transactions: Gains/Losses | 44 | 182 | 138 | 5 |
| Alternative Minimum Tax | 20 | 207 | 187 | 7 |
| Individual Taxation: Credits | 38 | 225 | 187 | 7 |
| Individual Taxation: Credits/AMT | 23 | 210 | 187 | 7 |
| Individual Taxation: Deductions | 36 | 223 | 187 | 7 |
| Individual Taxation: Filing/Credits | 45 | 232 | 187 | 7 |
| Individual Taxation: Income | 55 | 242 | 187 | 7 |
| C Corporations | 46 | 278 | 232 | 8 |
| Estate and Gift Tax | 34 | 267 | 233 | 8 |
| Partnerships | 41 | 273 | 232 | 8 |
| S Corporations | 39 | 271 | 232 | 8 |
| Tax-Exempt Organizations | 32 | 265 | 233 | 8 |

### BAR

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Capital Structure and Valuation | 48 | 129 | 81 | 3 |
| Financial Statement Analysis | 58 | 139 | 81 | 3 |
| Financial Valuation Methods | 53 | 134 | 81 | 3 |
| Prospective Analysis and Forecasting | 46 | 127 | 81 | 3 |
| Risk Management and Economics | 40 | 120 | 80 | 3 |
| Advanced Consolidations | 50 | 82 | 32 | 2 |
| Advanced Lease Transactions | 39 | 71 | 32 | 2 |
| Advanced Revenue and Intangibles | 50 | 82 | 32 | 2 |
| Business Combinations | 20 | 52 | 32 | 2 |
| Derivatives and Hedging | 50 | 82 | 32 | 2 |
| Foreign Currency Transactions | 20 | 52 | 32 | 2 |
| Income Taxes Advanced | 20 | 52 | 32 | 2 |
| Intangible Assets Advanced | 20 | 52 | 32 | 2 |
| Internal-Use Software and Cloud Computing | 39 | 71 | 32 | 2 |
| Pension and Postretirement Benefits | 38 | 70 | 32 | 2 |
| Stock Compensation and Business Combinations | 52 | 84 | 32 | 2 |
| Fund-to-Government-Wide Reconciliation | 39 | 84 | 45 | 2 |
| Interfund Transactions | 38 | 83 | 45 | 2 |
| State and Local Government Reporting | 56 | 101 | 45 | 2 |

### ISC

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Change Management | 20 | 73 | 53 | 2 |
| Data Management and Lifecycle | 48 | 101 | 53 | 2 |
| ERP and Accounting Information Systems | 48 | 101 | 53 | 2 |
| IT Audit Frameworks | 38 | 91 | 53 | 2 |
| IT General Controls | 38 | 91 | 53 | 2 |
| IT Infrastructure and Architecture | 52 | 105 | 53 | 2 |
| System Availability and Change Management | 57 | 110 | 53 | 2 |
| Data Protection Technologies | 20 | 81 | 61 | 3 |
| Incident Response and Recovery | 44 | 105 | 61 | 3 |
| Privacy Requirements and Data Protection | 52 | 113 | 61 | 3 |
| Security and Control Frameworks | 52 | 112 | 60 | 2 |
| Security Controls and Monitoring | 48 | 109 | 61 | 3 |
| Threats, Attacks, and Vulnerabilities | 48 | 108 | 60 | 2 |
| SOC Engagements | 45 | 82 | 37 | 2 |
| SOC Report Content and Structure | 20 | 57 | 37 | 2 |
| SOC Reporting | 38 | 75 | 37 | 2 |
| SOC Reporting and Trust Services Criteria | 41 | 78 | 37 | 2 |
| SOC Testing Controls | 38 | 75 | 37 | 2 |

### TCP

| Topic | Current | Target | New | Batches |
|-------|---------|--------|-----|---------|
| Individual Tax Planning: Compensation | 51 | 134 | 83 | 3 |
| Passive Activity and At-Risk Rules | 50 | 134 | 84 | 3 |
| Retirement Plans and Education Savings | 50 | 134 | 84 | 3 |
| Wealth Transfer and Gifting Strategies | 54 | 138 | 84 | 3 |
| Advanced Basis Calculations | 47 | 114 | 67 | 3 |
| Entity Formation and Liquidation | 48 | 115 | 67 | 3 |
| Entity Tax Compliance: NOLs and Consolidated Returns | 51 | 118 | 67 | 3 |
| International Tax | 54 | 121 | 67 | 3 |
| Owner-Entity Transactions | 50 | 117 | 67 | 3 |
| Capital Structure Tax Planning | 40 | 76 | 36 | 2 |
| Entity Choice and Planning | 44 | 80 | 36 | 2 |
| Multi-Jurisdictional Tax Planning | 20 | 56 | 36 | 2 |
| Trusts and Estates | 50 | 86 | 36 | 2 |
| Entity Formation and Restructuring | 20 | 68 | 48 | 2 |
| Nontaxable Dispositions | 40 | 88 | 48 | 2 |
| Related Party Transactions | 40 | 88 | 48 | 2 |

## Batch Log

| Date | Migration | Section | Topic | Count | Notes |
|------|-----------|---------|-------|-------|-------|
| 2026-02-22 | 00160_generate_aud_batch1.sql | AUD | Misstatements and Control Deficiencies | 30 | First generation batch; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5 |
| 2026-02-22 | 00161_generate_aud_batch2.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 2; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00162_generate_aud_batch3.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 3; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00163_generate_aud_batch4.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 4; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00164_generate_reg_batch1.sql | REG | Estate and Gift Tax | 30 | Batch 1; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00165_generate_reg_batch2.sql | REG | Estate and Gift Tax | 30 | Batch 2; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00166_generate_bar_batch1.sql | BAR | Capital Structure and Valuation | 30 | Batch 1; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00167_generate_bar_batch2.sql | BAR | Capital Structure and Valuation | 30 | Batch 2; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-22 | 00168_generate_far_batch1.sql | FAR | Governmental Accounting | 30 | Batch 1; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; recovered after crash, 0 errors, 0 duplicates |
| 2026-02-22 | 00169_generate_aud_batch5.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 5; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00170_generate_aud_batch6.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 6; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00171_generate_far_batch2.sql | FAR | Governmental Accounting | 30 | Batch 2; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00172_generate_far_batch3.sql | FAR | Governmental Accounting | 30 | Batch 3; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00173_generate_far_batch4.sql | FAR | Governmental Accounting | 30 | Batch 4; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00174_generate_far_batch5.sql | FAR | Governmental Accounting | 30 | Batch 5; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00175_generate_reg_batch3.sql | REG | Estate and Gift Tax | 30 | Batch 3; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00176_generate_reg_batch4.sql | REG | Estate and Gift Tax | 30 | Batch 4; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00177_generate_reg_batch5.sql | REG | Estate and Gift Tax | 30 | Batch 5; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00178_generate_reg_batch6.sql | REG | Estate and Gift Tax | 30 | Batch 6; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00179_generate_bar_batch3.sql | BAR | Capital Structure and Valuation | 30 | Batch 3; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00180_generate_bar_batch4.sql | BAR | Capital Structure and Valuation | 30 | Batch 4; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-22 | 00181_generate_bar_batch5.sql | BAR | Capital Structure and Valuation | 30 | Batch 5; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-22 | 00182_generate_bar_batch6.sql | BAR | Capital Structure and Valuation | 30 | Batch 6; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00183_generate_bar_batch7.sql | BAR | Capital Structure and Valuation | 30 | Batch 7; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 2 near-dup warnings |
| 2026-02-23 | 00184_generate_bar_batch8.sql | BAR | Capital Structure and Valuation | 30 | Batch 8; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00185_generate_isc_batch1.sql | ISC | Data Protection Technologies | 30 | Batch 1; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00186_generate_isc_batch2.sql | ISC | Data Protection Technologies | 30 | Batch 2; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00187_generate_isc_batch3.sql | ISC | Data Protection Technologies | 30 | Batch 3; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00188_generate_isc_batch4.sql | ISC | Data Protection Technologies | 30 | Batch 4; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00189_generate_isc_batch5.sql | ISC | Data Protection Technologies | 30 | Batch 5; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00190_generate_tcp_batch1.sql | TCP | Passive Activity and At-Risk Rules | 30 | Batch 1; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00191_generate_tcp_batch2.sql | TCP | Passive Activity and At-Risk Rules | 30 | Batch 2; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00192_generate_tcp_batch3.sql | TCP | Passive Activity and At-Risk Rules | 30 | Batch 3; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00193_generate_tcp_batch4.sql | TCP | Passive Activity and At-Risk Rules | 30 | Batch 4; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00194_generate_tcp_batch5.sql | TCP | Passive Activity and At-Risk Rules | 30 | Batch 5; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00195_generate_tcp_batch6.sql | TCP | Passive Activity and At-Risk Rules | 30 | Batch 6; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00196_generate_aud_batch7.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 7; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00197_generate_aud_batch8.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 8; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00198_generate_aud_batch9.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 9; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00199_generate_aud_batch10.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 10; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00200_generate_aud_batch11.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 11; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00201_generate_aud_batch12.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 12; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00202_generate_aud_batch13.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 13; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00203_generate_aud_batch14.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 14; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00204_generate_aud_batch15.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 15; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00205_generate_aud_batch16.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 16; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00206_generate_aud_batch17.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 17; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00207_generate_aud_batch18.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 18; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00208_generate_aud_batch19.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 19; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00209_generate_aud_batch20.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 20; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00210_generate_aud_batch21.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 21; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00211_generate_aud_batch22.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 22; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00212_generate_aud_batch23.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 23; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00213_generate_aud_batch24.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 24; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00214_generate_aud_batch25.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 25; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00215_generate_aud_batch26.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 26; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00216_generate_aud_batch27.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 27; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00217_generate_aud_batch28.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 28; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 2 near-dup warnings |
| 2026-02-23 | 00218_generate_aud_batch29.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 29; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00219_generate_aud_batch30.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 30; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00220_generate_aud_batch31.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 31; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00221_generate_aud_batch32.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 32; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00222_generate_aud_batch33.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 33; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00223_generate_aud_batch34.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 34; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00224_generate_aud_batch35.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 35; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 3 near-dup warnings |
| 2026-02-23 | 00225_generate_aud_batch36.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 36; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00226_generate_aud_batch37.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 37; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00227_generate_aud_batch38.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 38; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00228_generate_aud_batch39.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 39; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00229_generate_aud_batch40.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 40; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00230_generate_aud_batch41.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 41; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00231_generate_aud_batch42.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 42; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00232_generate_aud_batch43.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 43; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00233_generate_aud_batch44.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 44; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00234_generate_aud_batch45.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 45; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00235_generate_aud_batch46.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 46; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00236_generate_aud_batch47.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 47; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00237_generate_aud_batch48.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 48; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00238_generate_aud_batch49.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 49; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00239_generate_aud_batch50.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 50; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00240_generate_aud_batch51.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 51; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00241_generate_aud_batch52.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 52; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00242_generate_aud_batch53.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 53; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00243_generate_aud_batch54.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 54; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-02-23 | 00244_generate_aud_batch55.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 55; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-23 | 00245_generate_aud_batch56.sql | AUD | Misstatements and Control Deficiencies | 30 | Batch 56; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-26 | 00251_generate_aud_batch57.sql | AUD | Specific Areas and Transactions | 30 | Batch 57; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00267_generate_far_batch6.sql | FAR | Earnings Per Share | 30 | Batch 6; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00268_generate_far_batch7.sql | FAR | Earnings Per Share | 30 | Batch 7; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00270_generate_reg_batch7.sql | REG | Tax-Exempt Organizations | 30 | Batch 7; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00273_generate_isc_batch6.sql | ISC | Incident Response and Recovery | 30 | Batch 6; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00271_generate_aud_batch59.sql | AUD | Written Representations | 30 | Batch 59; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00272_generate_tcp_batch7.sql | TCP | Retirement Plans and Education Savings | 30 | Batch 7; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00274_generate_bar_batch9.sql | BAR | Financial Statement Analysis | 30 | Batch 9; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00275_generate_reg_batch8.sql | REG | Tax-Exempt Organizations | 30 | Batch 8; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00276_generate_isc_batch7.sql | ISC | Incident Response and Recovery | 30 | Batch 7; 9E/15M/6H, L1:6/L2:10/L3:9/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00277_generate_aud_batch60.sql | AUD | Written Representations | 30 | Batch 60; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00280_generate_reg_batch9.sql | REG | Tax-Exempt Organizations | 30 | Batch 9; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00282_generate_aud_batch61.sql | AUD | Written Representations | 30 | Batch 61; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00283_generate_reg_batch10.sql | REG | Tax-Exempt Organizations | 30 | Batch 10; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00285_generate_far_batch9.sql | FAR | Earnings Per Share | 30 | Batch 9; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00284_generate_aud_batch62.sql | AUD | Written Representations | 30 | Batch 62; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00286_generate_reg_batch11.sql | REG | Tax-Exempt Organizations | 30 | Batch 11; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00288_generate_aud_batch63.sql | AUD | Written Representations | 30 | Batch 63; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00289_generate_reg_batch12.sql | REG | Tax-Exempt Organizations | 30 | Batch 12; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00287_generate_far_batch10.sql | FAR | Earnings Per Share | 30 | Batch 10; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00290_generate_aud_batch64.sql | AUD | Written Representations | 30 | Batch 64; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00291_generate_far_batch11.sql | FAR | Earnings Per Share | 30 | Batch 11; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00292_generate_reg_batch13.sql | REG | Tax-Exempt Organizations | 30 | Batch 13; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00293_generate_aud_batch65.sql | AUD | Written Representations | 30 | Batch 65; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00295_generate_reg_batch14.sql | REG | Tax-Exempt Organizations | 30 | Batch 14; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00296_generate_aud_batch66.sql | AUD | Written Representations | 30 | Batch 66; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00297_generate_reg_batch15.sql | REG | Tax-Exempt Organizations | 30 | Batch 15; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00294_generate_far_batch12.sql | FAR | Earnings Per Share | 30 | Batch 12; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00298_generate_aud_batch67.sql | AUD | Written Representations | 30 | Batch 67; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00300_generate_far_batch13.sql | FAR | Earnings Per Share | 30 | Batch 13; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00299_generate_reg_batch16.sql | REG | Tax-Exempt Organizations | 30 | Batch 16; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00301_generate_aud_batch68.sql | AUD | Written Representations | 30 | Batch 68; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00302_generate_reg_batch17.sql | REG | Tax-Exempt Organizations | 30 | Batch 17; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00303_generate_aud_batch69.sql | AUD | Written Representations | 30 | Batch 69; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00306_generate_aud_batch70.sql | AUD | Written Representations | 30 | Batch 70; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00304_generate_reg_batch18.sql | REG | Tax-Exempt Organizations | 30 | Batch 18; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00305_generate_far_batch14.sql | FAR | Earnings Per Share | 30 | Batch 14; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00308_generate_reg_batch19.sql | REG | Tax-Exempt Organizations | 30 | Batch 19; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00307_generate_aud_batch71.sql | AUD | Written Representations | 30 | Batch 71; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00311_generate_aud_batch72.sql | AUD | Written Representations | 30 | Batch 72; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00310_generate_reg_batch20.sql | REG | Tax-Exempt Organizations | 30 | Batch 20; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00309_generate_far_batch15.sql | FAR | Earnings Per Share | 30 | Batch 15; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 2 near-dup warnings |
| 2026-02-28 | 00312_generate_aud_batch73.sql | AUD | Written Representations | 30 | Batch 73; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 7 near-dup warnings |
| 2026-02-28 | 00313_generate_reg_batch21.sql | REG | Tax-Exempt Organizations | 30 | Batch 21; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00315_generate_aud_batch74.sql | AUD | Written Representations | 30 | Batch 74; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 10 near-dup warnings |
| 2026-02-28 | 00316_generate_reg_batch22.sql | REG | Tax-Exempt Organizations | 30 | Batch 22; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00317_generate_aud_batch75.sql | AUD | Written Representations | 30 | Batch 75; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00318_generate_reg_batch23.sql | REG | Tax-Exempt Organizations | 30 | Batch 23; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00314_generate_far_batch16.sql | FAR | Earnings Per Share | 30 | Batch 16; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00319_generate_aud_batch76.sql | AUD | Written Representations | 30 | Batch 76; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00320_generate_reg_batch24.sql | REG | Tax-Exempt Organizations | 30 | Batch 24; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00321_generate_far_batch17.sql | FAR | Earnings Per Share | 30 | Batch 17; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00322_generate_aud_batch77.sql | AUD | Written Representations | 30 | Batch 77; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00323_generate_reg_batch25.sql | REG | Tax-Exempt Organizations | 30 | Batch 25; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00324_generate_aud_batch78.sql | AUD | Written Representations | 30 | Batch 78; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00325_generate_reg_batch26.sql | REG | Tax-Exempt Organizations | 30 | Batch 26; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00326_generate_far_batch18.sql | FAR | Earnings Per Share | 30 | Batch 18; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00328_generate_reg_batch27.sql | REG | Tax-Exempt Organizations | 30 | Batch 27; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00329_generate_aud_batch79.sql | AUD | Written Representations | 30 | Batch 79; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00330_generate_aud_batch80.sql | AUD | Written Representations | 30 | Batch 80; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00331_generate_reg_batch28.sql | REG | Tax-Exempt Organizations | 30 | Batch 28; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00333_generate_reg_batch29.sql | REG | Tax-Exempt Organizations | 30 | Batch 29; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00332_generate_aud_batch81.sql | AUD | Written Representations | 30 | Batch 81; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00334_generate_reg_batch30.sql | REG | Tax-Exempt Organizations | 30 | Batch 30; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00335_generate_aud_batch82.sql | AUD | Written Representations | 30 | Batch 82; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00336_generate_reg_batch31.sql | REG | Tax-Exempt Organizations | 30 | Batch 31; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-02-28 | 00337_generate_aud_batch83.sql | AUD | Written Representations | 30 | Batch 83; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-03-01 | 00338_generate_far_batch20.sql | FAR | Earnings Per Share | 30 | Batch 20; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-03-01 | 00339_generate_far_batch21.sql | FAR | Earnings Per Share | 30 | Batch 21; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-03-01 | 00340_generate_far_batch22.sql | FAR | Earnings Per Share | 30 | Batch 22; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-03-01 | 00341_generate_far_batch23.sql | FAR | Earnings Per Share | 30 | Batch 23; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-03-01 | 00342_generate_far_batch24.sql | FAR | Earnings Per Share | 30 | Batch 24; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-03-01 | 00343_generate_far_batch25.sql | FAR | Earnings Per Share | 30 | Batch 25; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-03-01 | 00344_generate_far_batch26.sql | FAR | Earnings Per Share | 30 | Batch 26; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-03-01 | 00345_generate_far_batch27.sql | FAR | Earnings Per Share | 30 | Batch 27; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-03-01 | 00346_generate_far_batch28.sql | FAR | Earnings Per Share | 30 | Batch 28; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
| 2026-03-01 | 00347_generate_far_batch29.sql | FAR | Earnings Per Share | 30 | Batch 29; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 1 near-dup warning |
| 2026-03-01 | 00348_generate_far_batch30.sql | FAR | Earnings Per Share | 30 | Batch 30; 9E/15M/6H, L1:8/L2:9/L3:8/L4:5; 0 errors, 0 duplicates |
