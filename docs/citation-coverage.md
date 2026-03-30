# Citation Coverage Tracker

Cross-session tracker for adding standard citations to question explanations.

**Goal:** Every explanation references the relevant authoritative standard (ASC, AU-C, IRC, FASB, GASB, etc.)

**Status (2026-03-30):** AUD 95%, FAR 100%, REG 96%, BAR 87%, ISC 87%, TCP 96%.

**Remaining gaps:** BAR (~200 missing), ISC (~187 missing). All other sections effectively complete.

## How to Resume

Each session:
1. Read this file — find the first section with status "In Progress" or "Pending"
2. Check the batch number in the migration log for that section
3. Run the workflow commands below with the next batch number
4. After committing, update this tracker and commit again

**Note:** The `find-missing-citations.ts` script automatically excludes questions that already have citations (regex updated 2026-02-22 to include AR-C, GAGAS, AICPA Code patterns). Pipe output to a temp file first to avoid dotenv noise: `npx tsx scripts/qa/find-missing-citations.ts --section=aud --count=50 2>/dev/null > /tmp/batch.json`

## Section Progress

| Section | Missing | Total | Coverage Start | Coverage Now | Batches Done | Batches Left | Status      |
|---------|---------|-------|----------------|--------------|--------------|--------------|-------------|
| AUD     | 489     | 1,446 | 39%            | 95%          | 14           | 0            | Complete    |
| ISC     | 677     | 1,452 | 10%            | 87%          | 14           | ~4           | Gap         |
| BAR     | 446     | 1,534 | 36%            | 87%          | 10           | ~4           | Gap         |
| REG     | 441     | 1,446 | 48%            | 96%          | 9            | 0            | Complete    |
| FAR     | 425     | 1,554 | 51%            | 100%         | 3+gen        | 0            | Complete    |
| TCP     | 292     | 1,421 | 58%            | 96%          | 6            | 0            | Complete    |

**Section order:** Worst coverage first (ISC 10% → AUD 39% → BAR 36% → REG 48% → FAR 51% → TCP 58%).

## Migration Log

| Date       | Migration                              | Section | Count | New Coverage% | Notes |
|------------|----------------------------------------|---------|-------|---------------|-------|
| 2026-02-22 | 00130_citation_aud_batch1.sql          | AUD     | 50    | 44%           | 26 topics covered, regex expanded to include AR-C/GAGAS/AICPA Code |
| 2026-02-22 | 00131_citation_aud_batch2.sql          | AUD     | 50    | 49%           | 27 topics covered |
| 2026-02-22 | 00132_citation_aud_batch3.sql          | AUD     | 50    | 54%           | 27 topics covered |
| 2026-02-22 | 00133_citation_aud_batch4.sql          | AUD     | 50    | 58%           | 26 topics covered |
| 2026-02-22 | 00135_citation_aud_batch5.sql          | AUD     | 50    | 63%           | 27 topics covered |
| 2026-02-22 | 00137_citation_aud_batch6.sql          | AUD     | 50    | 68%           | 26 topics covered |
| 2026-02-22 | 00138_citation_aud_batch7.sql          | AUD     | 50    | 73%           | 27 topics covered |
| 2026-02-22 | 00139_citation_aud_batch8.sql          | AUD     | 50    | 78%           | 27 topics covered |
| 2026-02-22 | 00140_citation_aud_batch9.sql          | AUD     | 55    | 83%           | 27 topics covered |
| 2026-02-22 | 00141_citation_aud_batch10.sql         | AUD     | 55    | 88%           | 27 topics covered |
| 2026-02-22 | 00142_citation_aud_batch11.sql         | AUD     | 55    | 93%           | 25 topics covered |
| 2026-02-22 | 00143_citation_aud_batch12.sql         | AUD     | 55    | 98%           | 24 topics covered |
| 2026-02-22 | 00144_citation_aud_batch13.sql         | AUD     | 1     | 98%           | Final AUD batch — Internal Controls; AUD section complete |
| 2026-02-22 | 00145_citation_aud_batch14.sql         | AUD     | 1     | 98%           | Internal Controls (ITGCs); AUD section finalized |
| 2026-02-22 | 00146_citation_isc_batch1.sql          | ISC     | 50    | 17%           | 18 topics covered (Change Mgmt, Data Mgmt, DLP, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC, Security) |
| 2026-02-22 | 00147_citation_isc_batch2.sql          | ISC     | 50    | 23%           | 16 topics covered (Change Mgmt, Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Reporting, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00148_citation_isc_batch3.sql          | ISC     | 50    | 30%           | 17 topics covered (Change Mgmt, Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00149_citation_isc_batch4.sql          | ISC     | 50    | 37%           | 16 topics covered (Change Mgmt, Data Mgmt, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00150_citation_isc_batch5.sql          | ISC     | 50    | 43%           | 17 topics covered (Change Mgmt, Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00151_citation_isc_batch6.sql          | ISC     | 50    | 50%           | 16 topics covered (Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Report Content, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00152_citation_isc_batch7.sql          | ISC     | 50    | 57%           | 17 topics covered (Change Mgmt, Data Mgmt, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Report Content, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00153_citation_isc_batch8.sql          | ISC     | 50    | 63%           | 17 topics covered (Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Report Content, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00154_citation_isc_batch9.sql          | ISC     | 50    | 70%           | 18 topics covered (Change Mgmt, Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Report Content, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00155_citation_isc_batch10.sql         | ISC     | 50    | 76%           | 18 topics covered (Change Mgmt, Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Report Content, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00156_citation_isc_batch11.sql         | ISC     | 50    | 83%           | 18 topics covered (Change Mgmt, Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Report Content, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00157_citation_isc_batch12.sql         | ISC     | 50    | 90%           | 18 topics covered (Change Mgmt, Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Report Content, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00158_citation_isc_batch13.sql         | ISC     | 50    | 96%           | 18 topics covered (Change Mgmt, Data Mgmt, Data Protection, ERP, IR, IT Audit, ITGCs, Infra, Privacy, SOC Engagements, SOC Report Content, SOC Reporting, SOC Reporting/TSC, SOC Testing, Security Controls, Security Frameworks, Sys Avail, Threats) |
| 2026-02-22 | 00159_citation_isc_batch14.sql         | ISC     | 27    | 100%          | Final ISC batch — 18 topics covered; ISC section complete |
| 2026-03-29 | 00654_citation_reg_batch1.sql          | REG     | 50    | 54%           | 22 topics covered (Agency, AMT, Contracts, Business Structures, C Corps, Circular 230, Debtor-Creditor, Fed Tax Procedures, Govt Regulation, Credits, Credits/AMT, Deductions, Filing/Credits, Income, Legal Duties, Like-Kind, Partnerships, Prof Ethics, Basis, Gains/Losses, S Corps, Tax Procedures) |
| 2026-03-29 | 00656_citation_tcp_batch1.sql          | TCP     | 50    | 65%           | 14 topics covered (Adv Basis, Capital Structure, Entity Choice, Entity Formation, NOLs/Consolidated, Compensation, International Tax, Multi-Jurisdictional, Nontaxable Dispositions, Owner-Entity, Passive/At-Risk, Retirement, Trusts/Estates, Wealth Transfer) |
| 2026-03-29 | 00655_citation_far_batch1.sql          | FAR     | 50    | 57%           | 5 topics covered (Financial Reporting: For-Profit, Financial Statement Ratios, Intangible Assets, Inventory, Special Purpose Frameworks) |
| 2026-03-29 | 00653_citation_bar_batch1.sql          | BAR     | 50    | 43%           | 17 topics covered (Adv Consolidations, Adv Lease, Adv Revenue/Intangibles, Business Combinations, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Intangibles Adv, Interfund, Internal-Use Software, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp) |
| 2026-03-29 | 00658_citation_tcp_batch2.sql          | TCP     | 50    | 72%           | 13 topics covered (Adv Basis, Capital Structure, Entity Choice, NOLs/Consolidated, Compensation, International Tax, Multi-Jurisdictional, Nontaxable Dispositions, Owner-Entity, Passive/At-Risk, Retirement, Trusts/Estates, Wealth Transfer) |
| 2026-03-29 | 00659_citation_far_batch2.sql          | FAR     | 50    | 62%           | 4 topics covered (Accounting Changes, Financial Reporting: For-Profit, Financial Statement Ratios, Special Purpose Frameworks) |
| 2026-03-29 | 00662_citation_far_batch3.sql          | FAR     | 6     | 63%           | 3 topics covered (Financial Reporting: For-Profit, Financial Statement Ratios, Special Purpose Frameworks) |
| 2026-03-29 | 00657_citation_reg_batch2.sql          | REG     | 50    | 60%           | 22 topics covered (Agency, AMT, Contracts, Business Structures, C Corps, Circular 230, Debtor-Creditor, Fed Tax Procedures, Govt Regulation, Credits, Credits/AMT, Deductions, Filing/Credits, Income, Legal Duties, Like-Kind, Partnerships, Prof Ethics, Basis, Gains/Losses, S Corps, Tax Procedures) |
| 2026-03-29 | 00661_citation_tcp_batch3.sql          | TCP     | 50    | 79%           | 16 topics covered (Adv Basis, Capital Structure, Entity Choice, Entity Formation/Liquidation, Entity Formation/Restructuring, NOLs/Consolidated, Compensation, International Tax, Multi-Jurisdictional, Nontaxable Dispositions, Owner-Entity, Passive/At-Risk, Related Party, Retirement, Trusts/Estates, Wealth Transfer) |
| 2026-03-29 | 00660_citation_bar_batch2.sql          | BAR     | 50    | 49%           | 18 topics covered (Adv Consolidations, Adv Lease, Adv Revenue/Intangibles, Business Combinations, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Income Taxes Adv, Intangibles Adv, Interfund, Internal-Use Software, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp) |
| 2026-03-29 | 00663_citation_reg_batch3.sql          | REG     | 50    | 66%           | 20 topics covered (Agency, AMT, Contracts, Business Structures, C Corps, Circular 230, Debtor-Creditor, Fed Tax Procedures, Govt Regulation, Credits, Credits/AMT, Deductions, Filing/Credits, Income, Legal Duties, Like-Kind, Prof Ethics, Basis, S Corps, Tax Procedures) |
| 2026-03-29 | 00664_citation_tcp_batch4.sql          | TCP     | 50    | 87%           | 12 topics covered (Adv Basis, Capital Structure, Entity Choice, NOLs/Consolidated, Compensation, International Tax, Nontaxable Dispositions, Owner-Entity, Passive/At-Risk, Retirement, Trusts/Estates, Wealth Transfer) |
| 2026-03-30 | 00665_citation_bar_batch3.sql          | BAR     | 50    | 55%           | 17 topics covered (Adv Consolidations, Adv Lease, Adv Revenue/Intangibles, Business Combinations, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Intangibles Adv, Interfund, Internal-Use Software, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp) |
| 2026-03-30 | 00667_citation_tcp_batch5.sql          | TCP     | 50    | 94%           | 14 topics covered (Adv Basis, Capital Structure, Entity Choice, Entity Formation/Restructuring, NOLs/Consolidated, Compensation, International Tax, Multi-Jurisdictional, Nontaxable Dispositions, Owner-Entity, Passive/At-Risk, Retirement, Trusts/Estates, Wealth Transfer) |
| 2026-03-30 | 00666_citation_reg_batch4.sql          | REG     | 50    | 72%           | 21 topics covered (Agency, AMT, Contracts, Business Structures, C Corps, Circular 230, Debtor-Creditor, Fed Tax Procedures, Govt Regulation, Credits, Credits/AMT, Deductions, Filing/Credits, Income, Legal Duties, Like-Kind, Prof Ethics, Basis, Gains/Losses, S Corps, Tax Procedures) |
| 2026-03-30 | 00668_citation_bar_batch4.sql          | BAR     | 50    | 61%           | 17 topics covered (Adv Consolidations, Adv Lease, Adv Revenue/Intangibles, Business Combinations, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Intangibles Adv, Interfund, Internal-Use Software, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp) |
| 2026-03-30 | 00669_citation_tcp_batch6.sql          | TCP     | 50    | 100%          | Final TCP batch — 12 topics covered (Adv Basis, Capital Structure, Entity Choice, NOLs/Consolidated, Compensation, International Tax, Multi-Jurisdictional, Nontaxable Dispositions, Owner-Entity, Retirement, Trusts/Estates, Wealth Transfer); TCP section complete |
| 2026-03-30 | 00670_citation_reg_batch5.sql          | REG     | 50    | 78%           | 21 topics covered (Agency, AMT, Contracts, Business Structures, C Corps, Circular 230, Debtor-Creditor, Fed Tax Procedures, Govt Regulation, Credits, Credits/AMT, Deductions, Filing/Credits, Income, Legal Duties, Like-Kind, Prof Ethics, Basis, Gains/Losses, S Corps, Tax Procedures) |
| 2026-03-30 | 00671_citation_bar_batch5.sql          | BAR     | 50    | 67%           | 17 topics covered (Adv Consolidations, Adv Lease, Adv Revenue/Intangibles, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Income Taxes Adv, Intangibles Adv, Interfund, Internal-Use Software, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp) |
| 2026-03-30 | 00672_citation_reg_batch6.sql          | REG     | 50    | 84%           | 22 topics covered (Agency, AMT, Contracts, Business Structures, C Corps, Circular 230, Debtor-Creditor, Fed Tax Procedures, Govt Regulation, Credits, Credits/AMT, Deductions, Filing/Credits, Income, Legal Duties, Like-Kind, Partnerships, Prof Ethics, Basis, Gains/Losses, S Corps, Tax Procedures) |
| 2026-03-30 | 00673_citation_bar_batch6.sql          | BAR     | 50    | 74%           | 17 topics covered (Adv Consolidations, Adv Lease, Adv Revenue/Intangibles, Business Combinations, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Intangibles Adv, Interfund, Internal-Use Software, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp) |
| 2026-03-30 | 00674_citation_reg_batch7.sql          | REG     | 50    | 90%           | 19 topics covered (Agency, Contracts, Business Structures, C Corps, Circular 230, Debtor-Creditor, Fed Tax Procedures, Govt Regulation, Credits, Credits/AMT, Deductions, Filing/Credits, Income, Legal Duties, Like-Kind, Prof Ethics, Basis, S Corps, Tax Procedures) |
| 2026-03-30 | 00676_citation_reg_batch8.sql          | REG     | 50    | 96%           | 22 topics covered (Agency, AMT, Contracts, Business Structures, C Corps, Circular 230, Debtor-Creditor, Fed Tax Procedures, Govt Regulation, Credits, Credits/AMT, Deductions, Filing/Credits, Income, Legal Duties, Like-Kind, Partnerships, Prof Ethics, Basis, Gains/Losses, S Corps, Tax Procedures) |
| 2026-03-30 | 00675_citation_bar_batch7.sql          | BAR     | 50    | 80%           | 17 topics covered (Adv Consolidations, Adv Lease, Adv Revenue/Intangibles, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Income Taxes Adv, Intangibles Adv, Interfund, Internal-Use Software, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp) |
| 2026-03-30 | 00678_citation_bar_batch8.sql          | BAR     | 50    | 86%           | 16 topics covered (Adv Consolidations, Adv Revenue/Intangibles, Business Combinations, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Intangibles Adv, Interfund, Internal-Use Software, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp) |
| 2026-03-30 | 00677_citation_reg_batch9.sql          | REG     | 36    | 100%          | Final REG batch — 19 topics covered (Agency, Contracts, Business Structures, C Corps, Circular 230, Debtor-Creditor, Fed Tax Procedures, Govt Regulation, Credits, Credits/AMT, Deductions, Filing/Credits, Income, Legal Duties, Like-Kind, Prof Ethics, Basis, S Corps, Tax Procedures); REG section complete |
| 2026-03-30 | 00679_citation_bar_batch9.sql          | BAR     | 50    | 92%           | 19 topics covered (Adv Consolidations, Adv Lease, Adv Revenue/Intangibles, Business Combinations, Capital Structure/Valuation, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Income Taxes Adv, Intangibles Adv, Interfund, Internal-Use Software, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp) |
| 2026-03-30 | 00680_citation_bar_batch10.sql         | BAR     | 50    | 98%           | Final BAR batch — 16 topics covered (Adv Consolidations, Adv Revenue/Intangibles, Capital Structure/Valuation, Derivatives/Hedging, Fin Statement Analysis, Fin Valuation, Foreign Currency, Fund Reconciliation, Income Taxes Adv, Intangibles Adv, Interfund, Pension, Prospective Analysis, Risk Mgmt/Econ, State/Local Govt, Stock Comp); BAR section complete |

## Workflow

```bash
# 1. Select candidates (adjust section and count as needed)
npx tsx scripts/qa/find-missing-citations.ts --section=aud --count=50 2>/dev/null > /tmp/batch.json

# 2. Generate migration scaffold (use file redirect to avoid dotenv noise in pipe)
npx tsx scripts/qa/generate-migration.ts --mode=citation --section=aud --batch=2 < /tmp/batch.json

# 3. Fill in TODO explanations with proper citations

# 4. Validate migration
npm run validate-migration supabase/migrations/NNNNN_citation_aud_batchN.sql

# 5. Commit migration + update this tracker
```

## Migration Naming Convention

`00130_citation_{section}_batch{N}.sql` — starting at migration 00130.

| Section | Migrations         | Batch Range |
|---------|--------------------|-------------|
| AUD     | 00130–00145        | 1–14        |
| ISC     | 00144–00157        | 1–14        |
| BAR     | 00158–00167        | 1–10        |
| REG     | 00168–00176        | 1–9         |
| FAR     | 00177–00185        | 1–9         |
| TCP     | 00186–00191        | 1–6         |

## Citation Patterns by Section

| Section | Primary Standards                                              |
|---------|----------------------------------------------------------------|
| AUD     | AU-C, SAS, PCAOB, AT-C, AR-C, SSARS, SQMS, GAGAS, AICPA Code |
| FAR     | ASC, FASB, GASB                                                |
| REG     | IRC, Sec., Section, Circular 230                               |
| BAR     | ASC, FASB, GASB                                                |
| ISC     | SOC, AICPA, SSAE, AT-C                                        |
| TCP     | IRC, Sec., Section                                             |
