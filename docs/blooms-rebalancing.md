# Bloom's L3 Rebalancing Tracker

Cross-session tracker for rewriting L2 questions to L3 analytical depth.

## Section Progress

| Section | L3 Start | L3 Target | Gap    | Questions to Rewrite | Completed | Status  |
|---------|----------|-----------|--------|----------------------|-----------|---------|
| REG     | 9%       | 25%       | ~0pt   | ~60                  | 155       | Done    |
| BAR     | 16%      | 30%       | ~0pt   | ~109                 | 109       | Done    |
| FAR     | 16%      | 25%       | ~0pt   | ~85                  | 85        | Done    |
| TCP     | 15%      | 20%       | ~0pt   | ~40                  | 40        | Done    |

## Migration Log

| Date       | Migration                          | Section | Count | New L3% | Notes           |
|------------|------------------------------------|---------|-------|---------|-----------------|
| 2026-02-21 | 00095_blooms_l3_reg_batch1.sql     | REG     | 45    | 13%     | 8 topics: Basis, Income, C Corps, Partnerships, Gains/Losses, 1031, S Corps, Estate/Gift |
| 2026-02-21 | 00096_blooms_l3_reg_batch2.sql     | REG     | 50    | 18%     | 13 topics: Basis, Income, Circ 230, Filing, C Corps, Contracts, Tax-Exempt, Deductions, Credits, 1031, Legal, Ethics, Debtor-Creditor |
| 2026-02-22 | 00097_blooms_l3_reg_batch3.sql     | REG     | 60    | ~25%    | 24 topics: all REG topics covered, 3 per major topic, 2 per minor topic |
| 2026-02-22 | 00098_blooms_l3_bar_batch1.sql     | BAR     | 45    | 22%     | 7 topics: Financial Statement Analysis, State/Local Govt, Derivatives, Revenue/Intangibles, Valuation, Consolidations, Leases |
| 2026-02-22 | 00099_blooms_l3_bar_batch2.sql     | BAR     | 40    | 27%     | 6 topics: Forecasting, Capital Structure, Stock Comp/Bus Comb, Internal-Use Software, Fund-to-Govt-Wide, Pension |
| 2026-02-22 | 00100_blooms_l3_bar_batch3.sql     | BAR     | 24    | 30%     | 6 topics: Interfund, Risk Mgmt, Foreign Currency, Intangible Assets, Income Taxes, Business Combinations |
| 2026-02-21 | 00101_blooms_l3_far_batch1.sql     | FAR     | 25    | 20%     | 7 topics: Revenue Recognition, Governmental Accounting, Consolidations, Equity, Income Taxes, Fixed Assets, Leases |
| 2026-02-21 | 00102_blooms_l3_far_batch2.sql     | FAR     | 25    | 22%     | 8 topics: Inventory, Fair Value, Financial Statements, Bonds/Debt, NFP, Intangible Assets, Cash/Receivables, Employee Benefits |
| 2026-02-21 | 00103_blooms_l3_far_batch3.sql     | FAR     | 25    | 24%     | 8 topics: SPF, Cash Flows, Contingencies, EPS, Acctg Changes, Govt Fundamentals, Conceptual Framework, Payables |
| 2026-02-21 | 00104_blooms_l3_far_batch4.sql     | FAR     | 10    | 26%     | 10 topics: top-up batch covering all major FAR topics for 25%+ target |
| 2026-02-21 | 00105_blooms_l3_tcp_batch1.sql     | TCP     | 20    | 18%     | 10 topics: Entity Formation, Passive Activity, International, Wealth Transfer, Retirement, Trusts, Owner-Entity, Nontaxable, Compensation, NOLs |
| 2026-02-21 | 00106_blooms_l3_tcp_batch2.sql     | TCP     | 20    | 20%     | 8 topics: Adv Basis, Entity Choice, Capital Structure, Related Parties, Formation/Restructuring, Multi-Jurisdictional, Entity Formation, Passive Activity |

## L3 Rewrite Patterns

| L2 Pattern                    | L3 Transformation                                          |
|-------------------------------|------------------------------------------------------------|
| Calculate the gain/loss       | What is the effect on taxable income / What changes if...  |
| What is the adjusted basis    | How does the conversion/exchange affect the basis and why  |
| Determine the amount of X     | Compare X under scenario A vs B                            |
| What is the correct entry     | What is the effect of this transaction on equity/income    |
| Record the lease payment      | How does the lease classification affect the balance sheet |

## Verification Commands

```bash
npx tsx scripts/qa/pull-l2-batch.ts --section=reg   # Check L2 candidates
npm run qa -- --section=reg                           # Verify L3% improved
npm run validate-migration <file>                     # Validate migration
```
