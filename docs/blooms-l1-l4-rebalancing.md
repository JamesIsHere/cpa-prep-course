# Bloom's L1/L4 Rebalancing Tracker

Cross-session tracker for rewriting L2 questions to L1 (Remember/Understand) and L4 (Evaluation) depth.

## Section Progress

| Section | L1 Start | L1 Target | L2 Start | L2 Target | L4 Start | L4 Target | L2→L1 | L2→L4 | Completed | Status  |
|---------|----------|-----------|----------|-----------|----------|-----------|-------|-------|-----------|---------|
| BAR     | 12%      | 10-20%    | 58%      | 45-55%    | 1%       | 0%        | 23    | 0     | 23        | Done    |
| FAR     | 8%       | 10-20%    | 66%      | 50-60%    | 1%       | 0%        | 51    | 0     | 51        | Done    |
| TCP     | 5%       | 5-15%    | 75%      | 55-65%    | 0%       | 5-15%     | 36    | 35    | 71        | Done    |
| REG     | 9%       | 25-35%    | 65%      | 35-45%    | 1%       | 0%        | 169   | 0     | 169       | Done    |
| AUD     | 20%      | 30-40%    | 58%      | 30-40%    | 6%       | 5-15%     | 190   | 0     | 190       | Done    |
| ISC     | 17%      | 55-65%    | 68%      | 20-30%    | 4%       | 0%        | 284   | 0     | 284       | Done    |

**Totals:** 788 rewrites complete (753 L2→L1, 35 L2→L4) — ALL SECTIONS DONE

## Migration Log

| Date       | Migration                          | Section | Type  | Count | New L1% | New L2% | Notes |
|------------|------------------------------------|---------|-------|-------|---------|---------|-------|
| 2026-02-21 | 00107_blooms_l1_bar_batch1.sql     | BAR     | L2→L1 | 23    | ~15%    | ~55%    | 18 topics covered, answer dist 6/6/6/5 |
| 2026-02-21 | 00108_blooms_l1_far_batch1.sql     | FAR     | L2→L1 | 51    | ~14%    | ~60%    | 21 topics covered, answer dist 13/13/13/12 |
| 2026-02-21 | 00109_blooms_l4_tcp_batch1.sql     | TCP     | L2→L4 | 35    | —       | —       | 15 topics, evaluation/advisory stems, hard difficulty |
| 2026-02-21 | 00110_blooms_l1_tcp_batch1.sql     | TCP     | L2→L1 | 36    | ~10%    | ~65%    | 12 topics, non-overlapping with L4 batch |
| 2026-02-21 | 00111_blooms_l1_reg_batch1.sql     | REG     | L2→L1 | 45    | —       | —       | Basis, Gains/Losses, Partnerships, Circular 230 |
| 2026-02-21 | 00112_blooms_l1_reg_batch2.sql     | REG     | L2→L1 | 45    | —       | —       | C Corps, 1031, Income, Legal Duties, Circ 230 |
| 2026-02-21 | 00113_blooms_l1_reg_batch3.sql     | REG     | L2→L1 | 47    | —       | —       | Tax-Exempt, Filing, Estate/Gift, Ethics, Contracts, S Corps, Deductions |
| 2026-02-21 | 00114_blooms_l1_reg_batch4.sql     | REG     | L2→L1 | 32    | ~29%    | ~45%    | Credits, Agency, AMT, Tax Procedures, Debtor-Creditor, Business Structures |
| 2026-02-21 | 00115_blooms_l1_aud_batch1.sql     | AUD     | L2→L1 | 48    | —       | —       | Audit Reports, Ethics, Substantive Procedures, Professional Responsibilities, Audit Evidence |
| 2026-02-21 | 00116_blooms_l1_aud_batch2.sql     | AUD     | L2→L1 | 48    | —       | —       | Review/Compilation, Risk Assessment, Planning, Attestation, Tests of Controls, 13 topics |
| 2026-02-21 | 00117_blooms_l1_aud_batch3.sql     | AUD     | L2→L1 | 48    | —       | —       | Audit Reports, Ethics, Using Work of Others, Materiality, Analytical Procedures |
| 2026-02-21 | 00118_blooms_l1_aud_batch4.sql     | AUD     | L2→L1 | 46    | ~38%    | ~40%    | Substantive Procedures, Ethics, Professional Responsibilities |
| 2026-02-21 | 00119_blooms_l1_isc_batch1.sql     | ISC     | L2→L1 | 48    | —       | —       | System Availability, Security Frameworks, Security Controls, Data Management, Incident Response |
| 2026-02-21 | 00120_blooms_l1_isc_batch2.sql     | ISC     | L2→L1 | 48    | —       | —       | SOC Reporting, SOC Testing, IT Audit, ERP, Change Management, 15 topics |
| 2026-02-21 | 00121_blooms_l1_isc_batch3.sql     | ISC     | L2→L1 | 48    | —       | —       | System Availability (27), Security Frameworks (21) |
| 2026-02-21 | 00122_blooms_l1_isc_batch4.sql     | ISC     | L2→L1 | 48    | —       | —       | Security Frameworks, Security Controls, Data Management |
| 2026-02-21 | 00123_blooms_l1_isc_batch5.sql     | ISC     | L2→L1 | 48    | —       | —       | SOC Reporting, Incident Response, IT Audit, Data Management |
| 2026-02-21 | 00124_blooms_l1_isc_batch6.sql     | ISC     | L2→L1 | 44    | ~55%    | ~30%    | SOC Testing Controls, IT Audit Frameworks, ERP |

## L2→L1 Rewrite Patterns

| L2 Pattern                             | L1 Transformation                                      |
|----------------------------------------|--------------------------------------------------------|
| "[Entity] did X. Calculate the amount" | "What is the definition of X?"                         |
| "[Entity] has Y. Determine the entry"  | "Which of the following describes Y?"                  |
| "Given $X and $Y, what is the balance" | "Under [standard], what is the purpose of [concept]?"  |
| "Record the journal entry for…"        | "Which statement is true about [treatment]?"           |
| Scenario + calculation                 | "Identify which of the following is classified as X"   |

**Rules:** Remove named entities and dollar amounts. Shorten stem to 10-20 words. Keep substantive distractors. Maintain standard citations in explanations. Change difficulty to "easy". Respect 30% per-topic L1 cap.

## L2→L4 Rewrite Patterns (TCP only)

| L2 Pattern                             | L4 Transformation                                       |
|----------------------------------------|---------------------------------------------------------|
| "Calculate the deductible amount"      | "Evaluate whether Strategy A or B better achieves…"     |
| "Determine the tax consequence"        | "Recommend the most appropriate planning strategy…"     |
| "[Entity] has X. What is the treatment" | "Assess whether [approach] is advisable considering…"  |

**Rules:** Use L4 stems (Evaluate, Recommend, Assess, Should the advisor). Longer stems (30-60 words). Client-centric framing. Difficulty = "hard".

## Verification Commands

```bash
npx tsx scripts/qa/select-l2-candidates.ts --section=bar --count=23  # Select candidates
npm run validate-migration <file>                                     # Validate migration
npm run qa -- --section=bar                                           # Verify distribution
```
