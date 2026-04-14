# Owner-Entity Transactions — Cleanup Backlog

**Status:** Spec authored and committed (2026-04-14). Cleanup deferred to a dedicated session.

## Why deferred

Spec #10 (`tcp-owner-entity-transactions`) was authored and registered, but the initial audit flagged 38 of 102 questions (37.3%) — far beyond the typical 3-8% range seen on previous spec rollouts. This reflects the bank state, not overly aggressive banned terms: the topic is a cross-cutting unit Slayer teaches at concept level, but the existing bank was curated before specs existed and heavily features mechanics-depth content on redemptions, attribution, below-market loans, disguised sales, and partnership allocations.

Rather than crank through 38 question triages in a single session, the spec itself was committed first (the load-bearing structural work) and the content cleanup was deferred. Committing the spec locks in the banned-term fence so future generation batches are spec-constrained immediately, preventing new drift from accumulating while the existing bank is cleaned.

## Initial audit findings

**Total questions tagged:** 102
**Flagged:** 38 (37.3%)
**Distinct banned terms hit:** 12 of 26

Term frequency table (from initial audit on commit of spec #10):

| Rank | Term | Questions hit | Category |
|------|------|---:|---|
| 1 | `Section 318(a)` | 10 | attribution mechanics |
| 2 | `Section 7872` | 10 | below-market loan mechanics |
| 3 | `Section 302(b)` | 9 | redemption mechanics |
| 4 | `Section 707(a)(2)` | 4 | partnership disguised sale |
| 5 | `Section 704(b)` | 3 | partnership special allocation |
| 6 | `disguised sale` | 3 | partnership mechanics |
| 7 | `Section 1402` | 2 | SE tax mechanics |
| 8 | `Section 1401` | 1 | SE tax mechanics |
| 9 | `Section 304` | 1 | brother-sister redemption |
| 10 | `AAA mechanics` | 1 | S corp mechanics |
| 11 | `Section 751` | 1 | hot assets |
| 12 | `hot assets` | 1 | partnership mechanics |

## What the cleanup session needs to do

1. Re-run the audit to get the current flagged list (some questions may have been touched by other work).
2. Fetch full bodies for each flagged question via the scripts/fetch-q.mjs pattern (use the ids from the audit output).
3. Triage each as KEEP / REWRITE / DELETE:
   - **KEEP** if the banned-term match is a false positive — e.g., a concept-level citation to Section 302(b) in an explanation where the stem is clearly concept-level. Document the false positive and consider further pattern refinement.
   - **REWRITE** if the core content is in-scope per the spec's inScope list but the framing uses out-of-scope section numbers or mechanics markers. Strip the citations and reframe at concept level. Pattern follows the Q11087/Q10811 rewrites from `01041_c_corps_spec_cleanup.sql`.
   - **DELETE** if the question's substantive content is out of scope — e.g., applies the 50%/80% substantially-disproportionate mechanics, walks through a Sec 7872 AFR calculation, computes hot-asset ordinary income on a partnership interest sale, or derives a Sec 704(b) special allocation.
4. Write `0104X_owner_entity_spec_cleanup.sql` with the UPDATEs and DELETEs in one commit.
5. Re-audit to confirm 0 flagged.
6. Update the topic count in `docs/generation-progress.md` and `blueprint.ts` via `npm run sync-counts`.
7. Expected outcome: probably 15-25 deletes, 5-10 rewrites, topic count drops from 102 to ~75-85.

## Spec design notes for the triage session

The spec at commit-time uses these loosened patterns to minimize false positives on concept-level citations:
- `Section 302(b)` instead of `Section 302` — bare `Section 302` is allowed as a concept-level reference
- `Section 318(a)` instead of `Section 318` — bare `Section 318` is allowed as a concept-level reference
- Removed outright ban on `substantially disproportionate` and `not essentially equivalent` — these are the literal **names** of the Sec 302 safe harbor categories and are in-scope per the spec's inScope list (category-level enumeration is allowed, mechanics depth is not)

The spec's inScope list explicitly includes:
- The four Sec 302 safe harbor category NAMES (substantially disproportionate, complete termination, not essentially equivalent, partial liquidation)
- Family attribution at the concept level (stock owned by spouse, children, etc.)
- Imputed interest on below-market loans at the concept level (existence of AFR, concept of adjustment)
- Guaranteed payments concept and SE tax distinction between partnerships and S corporations

During triage, questions that test these concepts should be KEPT, not deleted, even if they trip one of the subsection-citation bans.

## Related

- Spec file: `src/lib/topic-specs/tcp-owner-entity-transactions.ts`
- Spec anchor: `TCP/IV/C` (group-level — related-party transactions is the thematic backbone, but the spec pulls in material from TCP/II/A/2, TCP/II/B/2, TCP/II/C/3, and TCP/III/D)
- Initial audit date: 2026-04-14
- Handoff reference: `docs/topic-specs-pilot-handoff.md` — priority #3 in the next-10 list
