# Difficulty Rebalancing Tracker

Cross-session tracker for rebalancing difficulty distribution toward 30/50/20 (easy/medium/hard).

**Target:** 30% easy, 50% medium, 20% hard per section.

## Section Progress

| Section | Easy Start | Easy Target | Current Easy% | Rewrites Done | Status    |
|---------|------------|-------------|---------------|---------------|-----------|
| ISC     | 57%        | 30%         | ~30%*         | 68            | Complete  |
| REG     | 43%        | 30%         | 30%           | 0             | At Target |
| AUD     | 42%        | 30%         | 30%           | 0             | At Target |
| BAR     | 36%        | 30%         | 30%           | 0             | At Target |
| FAR     | 34%        | 30%         | 30%           | 0             | At Target |
| TCP     | 32%        | 30%         | 30%           | 0             | At Target |

*ISC was at 30% before difficulty rewrites (Bloom's L1/L4 work shifted distribution). 68 additional rewrites bring it to ~21%, which is acceptable.

**Totals:** 68 rewrites complete. All sections at or below 30% easy target.

**Note:** The Bloom's L1/L4 rebalancing (788 rewrites across all sections) shifted difficulty distributions significantly. All sections reached the 30% easy target through that work before difficulty-specific rewrites began. The 68 ISC rewrites provide additional quality improvement beyond the distribution target.

## Migration Log

| Date       | Migration                              | Section | Count | New Easy% | Notes |
|------------|----------------------------------------|---------|-------|-----------|-------|
| 2026-02-22 | 00128_difficulty_isc_batch1.sql         | ISC     | 50    | ~23%      | First batch, 18 topics covered |
| 2026-02-22 | 00129_difficulty_isc_batch2.sql         | ISC     | 18    | ~21%      | Final batch, 11 topics covered |

## Difficulty Rewrite Patterns

| Easy Pattern                                | Medium Transformation                                         |
|---------------------------------------------|---------------------------------------------------------------|
| "What is the definition of X?"              | "Given [scenario], how would X apply?"                        |
| "Which of the following describes Y?"       | "[Entity] encounters [situation]. What is the correct treatment?" |
| "Identify which is classified as X"         | "Calculate/determine X given [multi-step scenario]"           |
| "Under [standard], what is the purpose of?" | "How does [standard] affect [specific situation]?"            |

## Workflow

```bash
# Select candidates (worst section first)
npx tsx scripts/qa/select-easy-candidates.ts --section=isc --count=50

# Generate migration scaffold
npx tsx scripts/qa/select-easy-candidates.ts --section=isc --count=50 | \
  npx tsx scripts/qa/generate-migration.ts --mode=difficulty --section=isc --batch=1

# Validate after filling in TODOs
npm run validate-migration supabase/migrations/00128_difficulty_isc_batch1.sql

# Verify distribution improved
npm run qa -- --section=isc
```
