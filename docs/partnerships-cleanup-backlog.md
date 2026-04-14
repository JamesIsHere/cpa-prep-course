# REG Partnerships — Cleanup Backlog

**Status:** Spec authored and committed (2026-04-14). Cleanup deferred to a dedicated session.

## Why deferred

Spec #12 (`reg-partnerships`) was authored and registered, but the initial audit flagged 43 of 79 questions (54.4%) — the highest drift rate seen in the rollout so far. This follows the same pattern as TCP Owner-Entity Transactions (37.3% drift): the existing bank was curated before specs existed on a topic where AICPA 2026 has a narrow REG/V/D foundational scope but Slayer teaches an integrated unit that pulls in TCP/II/C/3 advanced planning material.

Deleting 43 questions would crash the topic from 79 to 36, deep below the ~80-question floor. A dedicated cleanup session is needed to triage rewrites vs. deletes, with the understanding that significant regeneration under spec constraints will be required afterward.

Committing the spec now locks in the banned-term fence so future generation batches are spec-constrained immediately, preventing new drift from accumulating while the existing bank is cleaned. This mirrors the decision made for Owner-Entity Transactions (see `docs/owner-entity-cleanup-backlog.md`).

## Initial audit findings

**Total questions tagged:** 79
**Flagged:** 43 (54.4%)
**Distinct banned terms hit:** 27 of 32

Top drift markers:

| Rank | Term | Questions hit | Category |
|------|------|---:|---|
| 1 | `unrealized receivable` | 8 | Sec 751 hot asset mechanics |
| 2 | `Section 752` | 8 | liability allocation mechanics |
| 3 | `Section 751` | 7 | hot asset mechanics |
| 4 | `Section 704(b)` | 5 | special allocation mechanics |
| 5 | `Section 704(c)` | 5 | built-in gain allocation |
| 6 | `deficit restoration obligation` | 4 | 704(b) mechanics |
| 7 | `Section 754` | 4 | 754 election mechanics |
| 8 | `Section 743(b)` | 4 | 754 election mechanics |
| 9 | `substantial economic effect` | 3 | 704(b) mechanics |
| 10 | `substantially appreciated inventory` | 3 | 751 mechanics |

Plus 17 other banned-term hits with 1-2 questions each covering Sec 734(b), Sec 755, Sec 736, Sec 707(a)(2), Sec 708(b) technical termination, Sec 465 at-risk, Sec 469 passive activity, BBA audit regime, disguised sale, constructive liquidation, economic risk of loss, ceiling rule, curative allocation, remedial method, qualified income offset, minimum gain chargeback.

## What the cleanup session needs to do

1. Re-run the audit and fetch bodies for all flagged questions.
2. Triage each as KEEP / REWRITE / DELETE:
   - **KEEP** if the banned-term match is a false positive — e.g., a concept-level question naming hot-asset categories under Sec 751 for identification purposes (the spec's inScope allows "the EXISTENCE of the rule, not the computation").
   - **REWRITE** if the core content is in-scope but uses out-of-scope section numbers or mechanics markers. Strip the citations and reframe at the concept level.
   - **DELETE** if the question's substantive content is out of scope — e.g., applies substantial economic effect analysis, walks through a 754 election with 743(b) step-up computation, allocates recourse liabilities via constructive liquidation, or computes minimum gain chargeback.
3. Expect the split to lean heavily toward DELETE given the density of mechanics-level content.
4. Write `0104X_partnerships_spec_cleanup.sql` with the UPDATEs and DELETEs.
5. Queue the topic for spec-constrained regeneration — probably 30-50 new questions needed to restore the topic to target.

## Spec design notes

The spec anchors to REG/V/D (AICPA 2026 group for foundational Partnerships — ordinary business income, separately stated items, partner's basis). Slayer's integrated teaching unit also covers formation (TCP/II/C/3), distributions, and liquidations, which the inScope list explicitly includes at the concept level.

The biggest drift surface is Section 704(b) special allocation mechanics: substantial economic effect, capital account maintenance, DRO, QIO, minimum gain chargeback. Published CPA-prep material routinely teaches these at significant depth because they used to be REG-level content; AICPA 2026 moved them to TCP.

During triage, the spec's inScope list should be the guide:
- Section 721 nonrecognition on contribution (concept level, no control test)
- Partner's outside basis with liability allocation at concept level (recourse = risk of loss, nonrecourse = profit ratios)
- Ordinary business income vs. separately stated items distinction
- Guaranteed payments under Sec 707(c) (concept level)
- Nonliquidating/liquidating distributions with carryover basis (concept level)
- Sale of partnership interest with Sec 751 hot-asset existence (not computation)
- LLC tax classification under check-the-box rules

Questions testing these concepts should be KEPT even if they trip a section-citation ban.

## Related

- Spec file: `src/lib/topic-specs/reg-partnerships.ts`
- Spec anchor: `REG/V/D` (group-level — inScope pulls in TCP/II/C/3 material)
- Initial audit date: 2026-04-14
- Handoff reference: `docs/topic-specs-pilot-handoff.md` — priority #5 in the next-10 list
- Parallel backlog: `docs/owner-entity-cleanup-backlog.md` (same precedent)
