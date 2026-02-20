# Session Summary — cpa-prep-course

**Date:** 2026-02-20
**Phase:** 2026 AICPA Blueprint update (all 6 phases)

## Summary

Implemented the full 6-phase plan to update the CPA Prep Course from the January 2024 AICPA Blueprint to the January 2026 Blueprint. Major changes include H.R. 1 ("One Big Beautiful Bill Act") provisions (100% bonus depreciation restoration, auto loan interest deduction, tip income exclusion, TCJA individual provision extension through 2029), ASC 820 fair value scope clarifications, entity-level controls and ITGC relationship, HIPAA key terms, expanded change management (emergency changes, CMDB, metrics, data analytics), SOC 1 AT-C 320 renaming, and Section 250 GILTI deduction reduction to 37.5%. All dollar figures updated to 2026 IRS projections across lessons, study frameworks, and quiz questions. 32 new questions added, 22 existing questions updated. All 94 unit tests passing, production build clean.

## Files Changed

### Modified
- `src/lib/blueprint.ts` — source comment to 2026, 7 topic changes, question counts +32
- `src/app/page.tsx` — year references 2025 → 2026
- `src/content/aud/05-internal-controls.mdx` — entity-level controls section
- `src/content/aud/06-audit-evidence.mdx` — accounting estimates section
- `src/content/far/18-fair-value.mdx` — ASC 820 scope section
- `src/content/isc/05-system-availability.mdx` — emergency changes, CMDB, metrics, data analytics
- `src/content/isc/09-privacy.mdx` — HIPAA key terms table
- `src/content/isc/11-soc-engagements.mdx` — SOC 1 AT-C 320 renaming
- `src/content/reg/06-property-transactions-basis.mdx` — H.R. 1 100% bonus depreciation
- `src/content/reg/09-individual-taxation-income.mdx` — auto loan interest, tip income
- `src/content/tcp/04-wealth-transfer.mdx` — H.R. 1 exemption extension, 2026 figures
- `src/content/tcp/07-international-tax.mdx` — Section 250 deduction 37.5%, condensed transfer pricing
- `src/content/tcp/12-entity-choice.mdx` — H.R. 1 TCJA extension language
- `src/content/bar/05-financial-valuation.mdx` — ASC 820 vs. other frameworks section
- `src/lib/study-frameworks/tcp.ts` — ~20 dollar figures and year references to 2026
- `src/lib/study-frameworks/reg.ts` — ~15 references to 2026
- `tests/unit/blueprint.test.ts` — updated expected question totals
- `CLAUDE.md` — content summary table with new question counts
- `docs/running-log.md` — session tasks

### Created
- `supabase/migrations/00023_2026_blueprint_questions.sql` — 32 new questions
- `supabase/migrations/00024_update_2026_tax_figures.sql` — 22 question updates

### Moved
- `2026-02-20-09-21-session-cpa-prep-course.md` → `docs/sessions/2026-02/`

## Key Decisions

- Gift exclusion stays at $19,000 for 2026 (no change from 2025) — only year references updated in gift tax questions
- Lifetime exemption estimated at ~$14.50M for 2026 based on H.R. 1 extension + inflation
- Section 250 GILTI deduction drops from 50% to 37.5% for tax years beginning after 2025 per statutory schedule
- H.R. 1 bonus depreciation effective date: January 20, 2025 (retroactive)
- Roth IRA phase-out MFJ estimated at $243K-$253K for 2026; adjusted question MAGI to $245K to stay in range
- 2026 figures are IRS projections — flagged in migration comments for verification when final Rev. Proc. published

## Next Steps

- Apply migrations 00023 and 00024 to production Supabase
- Verify 2026 IRS figures when final Revenue Procedure is published (update migration if needed)
- Run e2e test suite against updated content
- Continue with marketing plan execution (Google Search Console, blog posts, organic outreach)
