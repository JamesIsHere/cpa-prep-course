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
| AUD     | 1,052 | 5,000 | 120 | 3,828 | 4/146 | In Progress |
| FAR     | 855 | 5,000 | 0 | 4,145 | 0/148 | Pending |
| REG     | 847 | 5,000 | 0 | 4,153 | 0/152 | Pending |
| BAR     | 776 | 1,667 | 0 | 891 | 0/43 | Pending |
| ISC     | 747 | 1,667 | 0 | 920 | 0/40 | Pending |
| TCP     | 709 | 1,667 | 0 | 958 | 0/41 | Pending |

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
