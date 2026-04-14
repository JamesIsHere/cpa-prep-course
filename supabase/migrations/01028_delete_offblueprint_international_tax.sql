-- Delete 86 off-blueprint questions + rewrite 2 mis-framed questions in
-- TCP / "International Tax".
--
-- The AICPA 2026 TCP Blueprint TCP/II/A/4 "International tax issues" specifies
-- only six representative tasks, all Remembering and Understanding / Application:
--
--   - Explain the sourcing of income for a U.S. corporation with foreign operations.
--   - Explain the sourcing of income for a foreign corporation with U.S. operations,
--     including consideration of federal tax withholding requirements.
--   - Explain the concept of a controlled foreign corporation (CFC) and the
--     impact on a U.S. corporation's taxable income.
--   - Explain the concept of permanent establishment for a corporation and the
--     activities that would create it.
--   - Explain the difference between a foreign branch and foreign subsidiary
--     with respect to federal income taxation to a U.S. corporation.
--   - Calculate U.S. and foreign source income given a specific scenario.
--
-- The TCP section introduction is explicit: "International tax issues will focus
-- on general concepts of income sourcing and allocation as opposed to specific
-- foreign laws or treaties." (2026 AICPA Blueprints PDF, page 100.)
--
-- Slayer's "International Tax" topic had 103 questions. An audit against the
-- tcp-international-tax topic spec (src/lib/topic-specs/tcp-international-tax.ts,
-- anchored to TCP/II/A/4) flagged 90 for containing out-of-scope terms, and
-- manual review resolved the 6 borderline cases. Final disposition:
--
--   DELETE (clear-flagged):                   84
--   DELETE (borderline, verified off-spec):    2  (Q14650, Q14654)
--   REWRITE (in-scope content, bad framing):   2  (Q14151, Q14646)
--   KEEP (borderline, verified in-scope):      2  (Q971, Q14145)
--   KEEP (not flagged by audit):              13
--
-- Top drift surfaces deleted (distinct questions):
--   GILTI (31), Subpart F (20), Section 250/FDII (19), Section 951A (17),
--   tested income (17), QBAI (14), Section 904 (11), Section 245A (8),
--   Foreign Personal Holding Company (7), PFIC (7), FDII (6), BEAT (4),
--   Section 59A (4), Form 5471 (4), participation exemption (5), Section 367
--   (3), transfer pricing (2), check-the-box (2), and others.
--
-- Full audit report: docs/topic-audits/international-tax-audit.md
-- Banned-terms list: docs/topic-audits/international-tax-terms.json
-- Spec: src/lib/topic-specs/tcp-international-tax.ts
--
-- After this migration, the topic drops from 103 to 17 questions. Regeneration
-- should happen through the orchestrator (commit 301dabe) so new content runs
-- under the topic-spec constraints automatically, targeting the ~103 count.
--
-- Validate-migration's Gap 2 logic will remove the deleted IDs from
-- verified-ids.json pass automatically.

BEGIN;

-- ── DELETE 86 off-blueprint questions ───────────────────────────────

-- GILTI/Subpart F/FDII/BEAT/FTC computation/transfer pricing/treaty
-- specifics/named forms/PFIC/check-the-box/Section 245A/Section 367/
-- Section 482/Section 909/Section 965/Section 7874 — all out of scope
-- per the 2026 blueprint's "general concepts of income sourcing and
-- allocation as opposed to specific foreign laws or treaties."
DELETE FROM questions WHERE id IN (
  966, 967, 968, 969, 970, 973, 974, 975, 976, 977, 978, 979,
  1303, 1304,
  4105, 4106, 4108, 4109, 4110, 4111, 4112, 4113, 4114, 4115,
  4116, 4117, 4118, 4119, 4120, 4121, 4122, 4124, 4125, 4126,
  4127, 4128, 4129, 4130, 4132, 4133, 4134, 4135, 4136, 4137,
  4138, 4139, 4140, 4141, 4142,
  14133, 14134, 14135, 14136, 14137, 14138, 14139, 14140, 14141, 14142,
  14143, 14144, 14147, 14150, 14152, 14153, 14154, 14155, 14158, 14159,
  14160, 14161, 14162,
  14639, 14640, 14641, 14644, 14645, 14647, 14648, 14649, 14650, 14651,
  14653, 14654, 14656, 14657
);

-- ── REWRITE 2 sourcing questions to strip FTC-limitation framing ────

-- Q14151: royalty sourcing under Sections 861-862. In-scope content, but
-- the stem and the last sentence of the explanation frame it "for purposes
-- of computing the foreign tax credit limitation." FTC limitation is out
-- of scope (Section 904 and basket rules). Rewrite asks the pure sourcing
-- question and drops the FTC-limitation sentence.
UPDATE questions SET
  stem = $EXPL$Redmond Software Inc., a U.S. corporation, licenses its proprietary software to customers in Country G, generating $6,000,000 in royalties. Under the income sourcing rules of Sections 861-862, how is this royalty income sourced for U.S. federal income tax purposes?$EXPL$,
  explanation = $EXPL$Correct (B): Under Section 862(a)(4), royalties for the use of intangible property outside the United States are foreign-source income. Since the software is licensed for use in Country G, the $6,000,000 in royalties is foreign-source income. Wrong (A): Income source for royalties is determined by where the intangible is used, not the residence of the licensor. Wrong (C): There is no automatic 50/50 allocation for royalties; source follows the place of use of the intangible. Wrong (D): The development location does not determine source for royalties; Section 862(a)(4) looks to the place of use or privilege.$EXPL$
WHERE id = 14151;

-- Q14646: production income sourcing under Treas. Reg. 1.863-3. In-scope
-- content, but the stem frames it "for purposes of the foreign tax credit
-- limitation." The explanation is already clean (no FTC references).
-- Rewrite just the stem.
UPDATE questions SET
  stem = $EXPL$Ashton Manufacturing, a U.S. corporation, produces goods entirely in the United States and sells them to unrelated customers in Country G. Ashton has no fixed place of business in Country G. How is Ashton's income from these sales sourced for U.S. federal income tax purposes under the production-and-sale rules?$EXPL$
WHERE id = 14646;

COMMIT;
