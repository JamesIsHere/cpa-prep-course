-- Delete 29 off-blueprint questions from REG / "S Corporations".
--
-- The AICPA 2026 REG Blueprint REG/V/C "S corporations" specifies only
-- three topics with nine total representative tasks:
--
--   1. Eligibility and election (3 tasks, all Remembering and Understanding)
--   2. Determination of ordinary business income (loss) and separately
--      stated items (4 tasks: 2 Application + 2 Analysis; includes AAA
--      mechanics)
--   3. Basis of shareholder's interest (2 tasks, both Application: stock
--      basis from ops/contributions/distributions, and debt basis from
--      current-year repayments)
--
-- Slayer's "S Corporations" topic had drifted into the full post-grad
-- S-corp landscape: built-in gains tax mechanics (Section 1374),
-- passive investment income tax (Section 1375, "sting tax"), the
-- three-consecutive-year termination trigger under Section 1362(d)(3),
-- post-termination transition period distributions, Section 1377(a)(2)
-- closing-of-the-books elections, inadvertent termination relief under
-- Section 1362(f), QSub elections under Section 1361(b)(3), Section 444
-- fiscal-year elections, the five-year re-election bar after termination,
-- OAA mechanics, and accumulated-E&P-from-prior-C-years distribution
-- ordering. None of this is in the 2026 blueprint's nine representative
-- tasks.
--
-- A content audit against the reg-s-corporations topic spec
-- (src/lib/topic-specs/reg-s-corporations.ts, anchored to REG/V/C)
-- flagged 30 of 82 questions (36.6%). Manual review of the 6 borderline
-- cases (flagged only by soft terms) resolved 5 as deletes and 1 as a
-- keeper. Final disposition:
--
--   DELETE (clear-flagged):                  24
--   DELETE (borderline, verified off-spec):   5  (Q578, Q583, Q10779,
--                                                  Q10780, Q10871)
--   KEEP (borderline, verified in-scope):     1  (Q11140 — separately
--                                                  stated K-1 items,
--                                                  in-scope)
--   KEEP (not flagged by audit):             52
--
-- Drift pattern — two distinct clusters:
--
--   (a) Exception-tax mechanics: BIG tax (11), Sec 1374 (10), NUBIG (5),
--       excess net passive income (5), Sec 1375 (4), PTTP (2), Sec 1377
--       (2), Sec 1362(d)(3) (3), inadvertent termination mechanics (2),
--       QSub (1), Sec 444 (2), five-year re-election bar (1). These are
--       the "narrow exception webs" the pilot handoff predicted.
--
--   (b) Topic misplacement: reasonable compensation / SE tax framing (2,
--       belongs in TCP owner-entity), at-risk / PAL loss limitation
--       ordering (3, belongs in REG individual loss limitations), NIIT
--       Sec 1411 (1, belongs in REG individual). These are cross-topic
--       tagging errors rather than drift within the topic.
--
-- Full audit report: docs/topic-audits/s-corporations-audit.md
-- Banned-terms list: docs/topic-audits/s-corporations-terms.json
-- Spec:              src/lib/topic-specs/reg-s-corporations.ts
--
-- After this migration, the topic drops from 82 to 53 questions.
-- Regeneration should happen through the orchestrator (commit 301dabe)
-- so new content runs under the topic-spec constraints automatically,
-- targeting the ~100 count in the REG plan.
--
-- Validate-migration's Gap 2 logic will remove the deleted IDs from
-- verified-ids.json pass automatically.

BEGIN;

-- ── DELETE 29 off-blueprint questions ───────────────────────────────

DELETE FROM questions WHERE id IN (
  236,
  578, 579, 581, 583, 585,
  2819, 2821, 2826, 2830,
  10774, 10779, 10780, 10786, 10791, 10793,
  10860, 10864, 10865, 10866, 10871, 10876, 10878, 10879,
  10886, 10889,
  11139, 11145, 11148
);

COMMIT;
