# Citation Coverage Tracker

Cross-session tracker for adding standard citations to question explanations.

**Goal:** Every explanation references the relevant authoritative standard (ASC, AU-C, IRC, FASB, GASB, etc.)

**Total backlog:** 2,970 questions missing citations across 6 sections (~59% of 4,993).

**Batch size:** 50 questions per migration (matches prior rebalancing pattern).

**Estimated batches:** ~60 total (6–14 per section).

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
| AUD     | 489     | 1,055 | 39%            | 88%          | 10/13        | 3            | In Progress |
| ISC     | 677     | 749   | 10%            | 10%          | 0/14         | 14           | Pending     |
| BAR     | 496     | 780   | 36%            | 36%          | 0/10         | 10           | Pending     |
| REG     | 441     | 850   | 48%            | 48%          | 0/9          | 9            | Pending     |
| FAR     | 425     | 860   | 51%            | 51%          | 0/9          | 9            | Pending     |
| TCP     | 292     | 699   | 58%            | 58%          | 0/6          | 6            | Pending     |

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
| AUD     | 00130–00143        | 1–14        |
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
