# Question Generation Progress

Cross-session tracker for scaling question bank from ~5K to 20K.

**Goal:** 20,000 total questions across all sections.

**Batch size:** 30 questions per migration.

**Total new needed:** 14,221 questions (~532 batches).

**Difficulty targets:** 30% easy / 50% medium / 20% hard.

## How to Resume

Each session:
1. Read this file - find the first section with status "In Progress" or "Pending"
2. Run: `./scripts/orchestrate.ps1 -Section <code> -Mode generate -Batches N`
3. The orchestrator auto-selects topics, generates scaffolds, and updates this tracker

## Section Progress

| Section | Current | Target | Generated | Remaining | Batches Done | Status |
|---------|---------|--------|-----------|-----------|--------------|--------|
| FAR     | 3,315 | 5,000 | 120 | 1,595 | 4/74 | In Progress |
| REG     | 3,809 | 5,000 | 0 | 1,191 | 0/53 | Pending |
| BAR     | 1,347 | 5,000 | 0 | 3,653 | 0/131 | Pending |
| ISC     | 1,188 | 5,000 | 0 | 3,812 | 0/140 | Pending |
| TCP     | 1,150 | 5,000 | 0 | 3,850 | 0/134 | Pending |

## Topic Detail

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
