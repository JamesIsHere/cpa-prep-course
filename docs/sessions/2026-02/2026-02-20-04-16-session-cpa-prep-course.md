# Session Summary — cpa-prep-course

**Date:** 2026-02-20
**Phase:** Content standardization — tax year alignment to 2025

## Summary

Standardized all tax-year-dependent content from 2024 to correct 2025 IRS figures across lessons, study frameworks, and quiz questions. Researched all 2025 amounts via IRS Revenue Procedure 2024-40, identified 10 quiz questions with incorrect 2025 figures (they used 2024 values labeled as 2025), and corrected everything. Key figures updated: annual gift exclusion ($18K→$19K), lifetime exemption ($13.61M→$13.99M), 401(k) deferral ($23K→$23.5K), defined benefit limit ($275K→$280K), excess business loss ($305K/$610K→$313K/$626K), QBI threshold ($191,950/$383,900→$197,300/$394,600), and more.

## Files Changed

### Created
- `supabase/migrations/00015_fix_2025_tax_figures.sql` — 11 UPDATE statements correcting quiz questions with wrong 2025 figures

### Modified
- `src/content/tcp/05-retirement-education.mdx` — 401(k), IRA, SEP, SIMPLE limits updated to 2025
- `src/content/tcp/04-wealth-transfer.mdx` — gift exclusion $19K, exemption $13.99M, practice problems recalculated
- `src/content/tcp/03-passive-at-risk.mdx` — excess business loss threshold $313K/$626K
- `src/content/tcp/02-individual-planning.mdx` — parking fringe $325/month
- `src/content/tcp/10-trusts-estates.mdx` — trust tax brackets (37% at $15,650)
- `src/content/tcp/09-basis-calculations.mdx` — excess business loss threshold
- `src/content/tcp/12-entity-choice.mdx` — QBI thresholds $197,300/$394,600
- `src/lib/study-frameworks/tcp.ts` — 19 figure updates across all framework sections
- `src/lib/study-frameworks/reg.ts` — standard deduction, SS wage base, excess business loss
- `docs/running-log.md` — added session tasks

### Archived
- `2026-02-20-03-47-session-cpa-prep-course.md` — moved to docs/sessions/

## Key Decisions

- Standardized to 2025 (not 2024) since quiz questions already used some correct 2025 figures and the content is more current for exam takers
- Left Section 179 and bonus depreciation at 2024 figures because the One Big Beautiful Bill Act (mid-2025) significantly changed these, and CPA exam testability is uncertain
- Used pre-OBBBA 2025 standard deduction figures ($15K/$30K/$22.5K) since the exam content likely predates the retroactive OBBBA changes
- Quiz question corrective migration uses stem-based matching (same approach as migration 00013)

## Next Steps

- **Apply migration 00015** to production Supabase to fix live quiz data
- **Task #2: Marketing / launch prep** — landing page copy, social previews, pricing page polish
- **Task #3: Analytics** — usage tracking for lesson progress, quiz completion rates
- **Task #4: User feedback loop** — feedback widget or contact form
- **Task #5: Performance audit** — Lighthouse scores, Core Web Vitals, image optimization
- **Task #6: More e2e coverage** — quiz submission flows, practice exam lifecycle, Stripe checkout (mocked)
- **Task #7: Content depth** — more questions per section, additional lessons on weak topics
