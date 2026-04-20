-- Fix 3 TCP questions flagged as `review` by verify-correctness.ts (2026-04-20).
-- Queue item #12. Each question had a specific correctness defect; fixing in
-- place preserves the pedagogical concept while correcting the error.
--
-- Q15956 (International Tax): stem explicitly invoked pre-TCJA §863(b) split-
--   source rules ("production-and-sale rules of IRC Sections 861-863") and
--   keyed the split-allocation answer. TCJA (2018) eliminated the split-
--   source rule; inventory produced entirely in the U.S. is now 100% U.S.-
--   source per current §863(b) and Treas. Reg. §1.863-3 (T.D. 9882). Stem
--   reframed to current law; key moved from A to B; explanation rewritten.
--
-- Q15992 (Entity Formation §351): explanation stated "notes under 5 years
--   are generally not securities" but keyed a 4-year note as a security —
--   internally contradictory. Under §354 (incorporated into §351 via §351(a)),
--   a "security" requires a term of at least 5 years (most authority requires
--   10+). Both the 4-year and 7-month notes are boot. Key moved from A to B;
--   explanation rewritten to consistently apply the 5-year threshold.
--
-- Q15993 (Entity Formation §362(e)(2)): stem asserted "the corporation's
--   basis in Asset 2 would be reduced to $150,000" (its FMV), but §362(e)(2)
--   caps AGGREGATE basis at AGGREGATE FMV and allocates the reduction to
--   loss properties. Correct calc: aggregate basis $900K, aggregate FMV
--   $750K, net built-in loss $150K — reduce Asset 2 basis by $150K (only
--   loss asset), giving $400K − $150K = $250K (not $150K). Stem figure
--   corrected; explanation expanded to show the allocation mechanic.

BEGIN;

-- ── Q15956 — rekey from A to B, reframe stem to current law ─────
UPDATE questions
SET
  stem = $STEM$Cascade Manufacturing, a U.S. corporation, produces industrial valves entirely at its Ohio factory and sells them to unrelated buyers in Country K. Title to the goods passes at the buyer's warehouse in Country K. Cascade earned $4,000,000 from these sales. Under current federal income tax sourcing rules for inventory, how is this income sourced?$STEM$,
  correct_index = 1,
  explanation = $EXPL$Correct (B): Under current §863(b) and Treas. Reg. §1.863-3 (as amended by T.D. 9882 implementing the TCJA), sourcing of income from the sale of inventory produced by the taxpayer is based solely on the PLACE OF PRODUCTION. Title-passage and sale location are irrelevant to the sourcing of produced inventory after TCJA. Cascade produces entirely in the United States, so the $4,000,000 is entirely U.S.-source income.

Wrong (A): Pre-TCJA §863(b) allocated produced-and-sold inventory income between U.S. and foreign sources using a 50/50 or IFP-based split. TCJA (effective for tax years beginning after December 31, 2017) eliminated this split-source rule; place of production controls exclusively. The split allocation is no longer current law.

Wrong (C): The title-passage rule (§861(a)(6) / §862(a)(6)) applies only to PURCHASED inventory resold without production activity. It does not govern inventory the taxpayer produced itself.

Wrong (D): The seller's residence (domestic or foreign) does not by itself determine sourcing for inventory sales; the statute uses place of production for produced inventory and place of sale for purchased inventory.$EXPL$
WHERE id = 15956;

-- ── Q15992 — rekey from A to B, rewrite explanation (both notes are boot) ─
UPDATE questions
SET
  correct_index = 1,
  explanation = $EXPL$Correct (B): Under §351(a), gain is recognized to the extent of boot received. A corporate obligation is boot unless it qualifies as a "security" within the meaning of §354(a). The primary factor is the obligation's term: most authority treats obligations of less than 5 years as non-securities (short- or mid-term notes), and obligations of 10+ years as securities. Both the 4-year note and the 7-month note fall below the 5-year threshold and are therefore boot. Hensley recognizes $80,000 gain (lesser of realized gain $310,000 or boot received $80,000) under either structure.

Wrong (A): The 4-year note does NOT qualify as a security. The general threshold for "security" status under §354 is 5+ years of maturity (most authority requires 10+ years); 4 years is below the threshold. Keying the 4-year note as a security while acknowledging in the explanation that "notes under 5 years are generally not securities" is internally inconsistent.

Wrong (C): A 7-month note is clearly not a security — a short-term promissory note is among the paradigmatic examples of boot in §351 exchanges. Written form alone does not confer security status; maturity term is what matters.

Wrong (D): §351(b) plainly treats corporate obligations received in a §351 exchange as boot UNLESS they qualify as securities. Not all corporate debt is excluded from the boot definition.$EXPL$
WHERE id = 15992;

-- ── Q15993 — stem arithmetic fix ($150K → $250K), expand explanation ────
UPDATE questions
SET
  stem = $STEM$A CPA is advising Whitaker, who plans to contribute two assets to a new corporation for 100% of its stock in a Section 351 exchange. Asset 1 has basis $500,000 and FMV $600,000 (built-in gain of $100,000). Asset 2 has basis $400,000 and FMV $150,000 (built-in loss of $250,000). The aggregate net built-in loss is $150,000. Under Section 362(e)(2), the $150,000 aggregate basis reduction is allocated to Asset 2 (the only loss property), reducing the corporation's basis in Asset 2 from $400,000 to $250,000. However, the CPA is evaluating the Section 362(e)(2)(C) election, under which Whitaker reduces her stock basis by $150,000 instead and the corporation retains full $400,000 basis in Asset 2. Which factor should drive the CPA's recommendation?$STEM$,
  explanation = $EXPL$Correct (B): Under §362(e)(2), the corporation's aggregate basis in contributed loss property is capped at aggregate FMV, and the $150,000 reduction is allocated to the loss properties (here, Asset 2 only). Without the election, Asset 2's basis is $250,000 and the corporation loses access to the remaining $150,000 of built-in loss. With the §362(e)(2)(C) election, Asset 2 keeps its $400,000 basis (preserving the full $250,000 built-in loss for the corporation), and Whitaker's stock basis is reduced by $150,000 instead. If the corporation plans to sell Asset 2 soon, the election is advantageous: the corporation recognizes $250,000 of loss on sale (versus $0 without the election, since basis would equal FMV). The cost is Whitaker's $150,000 stock-basis reduction, which increases gain on a future stock sale — but if Whitaker holds the stock long-term, that cost is deferred and the present-value benefit of the near-term corporate loss is likely positive.

Wrong (A): "Always preferable" overstates the case. The election trades an immediate corporate loss recognition against a delayed, smaller transferor gain on stock sale. Net benefit depends on timing, tax-rate differentials, and whether the corporation actually sells Asset 2.

Wrong (C): "Never advisable" is incorrect; in many scenarios the corporate tax savings from preserving Asset 2's basis exceed the transferor's incremental stock-sale gain, especially where the stock is held long-term or in a step-up-at-death scenario.

Wrong (D): §362(e)(2)(C) applies to §351 transfers with an aggregate net built-in loss regardless of the number of properties contributed. The transferor may make the election whenever §362(e)(2) would otherwise reduce the corporation's aggregate basis.$EXPL$
WHERE id = 15993;

COMMIT;
