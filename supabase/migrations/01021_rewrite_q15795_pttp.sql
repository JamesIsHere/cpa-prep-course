-- Rewrite Q15795 (TCP / Entity Choice and Planning). The original stem said distributions
-- were made "in its first year as a C corporation" without clarifying whether the one-year
-- §1371(e) post-termination transition period (PTTP) was in effect. The keyed answer (D)
-- applied post-PTTP C-corporation §301 ordering but described the basis portion as coming
-- "from AAA" — which is wrong regardless of which regime applies, because post-PTTP AAA
-- has no independent tax significance, and pre-PTTP AAA comes first (not after E&P).
--
-- This rewrite specifies that distributions occur during PTTP so §1371(e)(1) governs
-- cleanly. The correct answer becomes AAA first ($250K tax-free basis reduction), then
-- current E&P ($50K dividend). Distractors hit the standard student errors: applying the
-- post-PTTP C-corp waterfall during PTTP, ignoring §1371(e) entirely, and mischaracterizing
-- the post-AAA remainder as return of basis instead of a current-E&P dividend.
--
-- Flagged 2026-04-11 Phase 2 verification (Q15795 TCP review — PTTP ambiguity).

BEGIN;

UPDATE questions SET
  stem = $EXPL$Prescott Industries terminated its S corporation election effective January 1, Year 2, having accumulated $250,000 in its Accumulated Adjustments Account (AAA). During Year 2 — all of which falls within the post-termination transition period described in IRC §1371(e) — Prescott earns $150,000 of current earnings and profits and distributes $300,000 to its sole shareholder. The shareholder's stock basis immediately before the distributions is $400,000. How should the $300,000 distribution be characterized for federal tax purposes?$EXPL$,
  choices = '["First $250,000 from AAA as a tax-free reduction of stock basis, then $50,000 from current E&P as a taxable dividend", "First $150,000 from current E&P as a taxable dividend, then $150,000 from AAA as a tax-free reduction of stock basis", "$150,000 from current E&P as a taxable dividend and $150,000 as a tax-free return of basis under §301(c)(2), because AAA has no independent significance for a C corporation", "First $250,000 from AAA as a tax-free reduction of stock basis, then $50,000 as a tax-free return of basis under §301(c)(2)"]'::jsonb,
  explanation = $EXPL$Correct (A): Under IRC §1371(e)(1), distributions made during the post-termination transition period (PTTP) — generally the one-year period beginning the day after the corporation's final day as an S corporation — are applied against and reduce the shareholder's stock basis to the extent the distribution does not exceed the AAA balance. This rule preserves the S-corporation character of previously taxed earnings for a limited window after conversion, letting shareholders recover the AAA tax-free if they act within PTTP. Computation: Prescott's $250,000 AAA is distributed first as a tax-free reduction of the sole shareholder's $400,000 stock basis, leaving a new basis of $150,000. The remaining $50,000 of the $300,000 distribution exceeds AAA and is therefore governed by §301 — it comes out of Prescott's $150,000 of current E&P and is taxed as an ordinary dividend. After the distribution the shareholder has $50,000 of dividend income, a stock basis of $150,000, Prescott's AAA is zero, and $100,000 of current E&P rolls into accumulated E&P for future distributions.
Wrong (B): This applies the post-PTTP C-corporation §301 ordering (E&P first, then basis) during the PTTP window rather than the special §1371(e) rule that puts AAA ahead of E&P. The §1371(e) ordering is the whole point of the PTTP safe harbor — without it, converted S corporations would lose their previously taxed AAA immediately.
Wrong (C): This treats Prescott as a regular C corporation and ignores §1371(e) entirely. If the distributions had been made after the PTTP window had closed, the AAA balance would no longer receive special treatment and this characterization would be close to correct — but during PTTP, §1371(e) governs and AAA must come first.
Wrong (D): This correctly identifies AAA as the first tranche but then mischaracterizes the remaining $50,000 as a tax-free return of basis rather than a current-E&P dividend. Once AAA is exhausted, the excess distribution is subject to §301 and creates an ordinary dividend to the extent of current E&P; it is not a further tax-free basis reduction.$EXPL$,
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 15795;

COMMIT;
