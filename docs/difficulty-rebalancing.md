# Difficulty Rebalancing Tracker

Cross-session tracker for rebalancing difficulty distribution toward 30/50/20 (easy/medium/hard).

**Target:** 30% easy, 50% medium, 20% hard per section.

## Section Progress

| Section | Easy Start | Easy Target | Gap    | Questions to Rewrite | Completed | Status  |
|---------|------------|-------------|--------|----------------------|-----------|---------|
| ISC     | 57%        | 30%         | +27pt  | ~202                 | 50        | In Progress |
| REG     | 43%        | 30%         | +13pt  | ~110                 | 0         | Pending |
| AUD     | 42%        | 30%         | +12pt  | ~126                 | 0         | Pending |
| BAR     | 36%        | 30%         | +6pt   | ~47                  | 0         | Pending |
| FAR     | 34%        | 30%         | +4pt   | ~34                  | 0         | Pending |
| TCP     | 32%        | 30%         | +2pt   | ~14                  | 0         | Pending |

**Totals:** 50/~533 rewrites complete

## Migration Log

| Date       | Migration                              | Section | Count | New Easy% | Notes |
|------------|----------------------------------------|---------|-------|-----------|-------|
| 2026-02-22 | 00128_difficulty_isc_batch1.sql         | ISC     | 50    | ~50%      | First batch, 18 topics covered |

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
