# Bloom's L3 Rebalancing Tracker

Cross-session tracker for rewriting L2 questions to L3 analytical depth.

## Section Progress

| Section | L3 Start | L3 Target | Gap    | Questions to Rewrite | Completed | Status  |
|---------|----------|-----------|--------|----------------------|-----------|---------|
| REG     | 9%       | 25%       | -7pt   | ~60                  | 95        | Active  |
| BAR     | 16%      | 30%       | -14pt  | ~109                 | 0         | Pending |
| FAR     | 16%      | 25%       | -9pt   | ~77                  | 0         | Pending |
| TCP     | 15%      | 20%       | -5pt   | ~36                  | 0         | Pending |

## Migration Log

| Date       | Migration                          | Section | Count | New L3% | Notes           |
|------------|------------------------------------|---------|-------|---------|-----------------|
| 2026-02-21 | 00095_blooms_l3_reg_batch1.sql     | REG     | 45    | 13%     | 8 topics: Basis, Income, C Corps, Partnerships, Gains/Losses, 1031, S Corps, Estate/Gift |
| 2026-02-21 | 00096_blooms_l3_reg_batch2.sql     | REG     | 50    | 18%     | 13 topics: Basis, Income, Circ 230, Filing, C Corps, Contracts, Tax-Exempt, Deductions, Credits, 1031, Legal, Ethics, Debtor-Creditor |

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
