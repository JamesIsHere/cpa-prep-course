# Citation Coverage Tracker

Cross-session tracker for adding standard citations to question explanations.

**Goal:** Every explanation references the relevant authoritative standard (ASC, AU-C, IRC, FASB, GASB, etc.)

## Section Progress

| Section | Missing Citations | Total Questions | Coverage Start | Coverage Target | Completed | Status  |
|---------|-------------------|-----------------|----------------|-----------------|-----------|---------|
| AUD     | TBD               | ~1,055          | ~35%           | 90%+            | 0         | Pending |
| FAR     | TBD               | ~860            | ~35%           | 90%+            | 0         | Pending |
| REG     | TBD               | ~850            | ~35%           | 90%+            | 0         | Pending |
| BAR     | TBD               | ~780            | ~35%           | 90%+            | 0         | Pending |
| ISC     | TBD               | ~749            | ~35%           | 90%+            | 0         | Pending |
| TCP     | TBD               | ~699            | ~35%           | 90%+            | 0         | Pending |

**Note:** Difficulty rewrites (Phase 2) include citations in their new explanations, reducing the citation-only backlog. Run `find-missing-citations.ts` after difficulty rebalancing completes for accurate counts.

## Migration Log

| Date       | Migration                             | Section | Count | New Coverage% | Notes |
|------------|---------------------------------------|---------|-------|---------------|-------|
| —          | —                                     | —       | —     | —             | —     |

## Workflow

```bash
# Find questions missing citations (exclude IDs already rewritten)
npx tsx scripts/qa/find-missing-citations.ts --section=aud --count=100

# Generate explanation-only migration
npx tsx scripts/qa/find-missing-citations.ts --section=aud --count=100 | \
  npx tsx scripts/qa/generate-migration.ts --mode=citation --section=aud --batch=1

# Validate (citation check is an error in citation mode)
npm run validate-migration supabase/migrations/NNNNN_citation_aud_batch1.sql

# Verify coverage improved
npm run qa -- --section=aud
```

## Citation Patterns by Section

| Section | Primary Standards                                    |
|---------|------------------------------------------------------|
| AUD     | AU-C, SAS, PCAOB, AT-C, SSARS, SQMS                 |
| FAR     | ASC, FASB, GASB                                      |
| REG     | IRC, Sec., Section, Circular 230                     |
| BAR     | ASC, FASB, GASB                                      |
| ISC     | SOC, AICPA, SSAE, AT-C                               |
| TCP     | IRC, Sec., Section                                   |
