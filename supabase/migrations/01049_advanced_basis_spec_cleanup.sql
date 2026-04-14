-- Spec cleanup for TCP Advanced Basis Calculations (TCP/II/C)
-- Post-audit cleanup for the 20 banned-term hits flagged by
-- audit-topic-content.ts after the tcp-advanced-basis-calculations spec
-- was authored.
--
-- Context: this is the first spec of Stage 3 (next wave) of the full-bank
-- review plan. The Stage 2 drift census flagged this topic as the
-- highest-ROI "rightful owner" candidate — 24/95 flagged by the universal
-- ban set. Authoring the spec (which whitelists 754/743(b)/734(b), 704(c)
-- with traditional/curative/remedial/ceiling rule, bare Section 752
-- liability allocation at concept level, bare 465/469 at concept level
-- for the 4-tier loss hierarchy) converted 4 of the 24 census hits from
-- false positives into defended scope. The remaining 20 are genuine drift
-- triaged below.
--
-- Breakdown:
--   Rewrites: 10 — core teaching is in-scope (recourse liability
--                  allocation at concept level, partner basis vs capital
--                  account distinction for Sec 704(d) loss limitation,
--                  4-tier loss hierarchy walks, Sec 732(c) distributed-
--                  property basis allocation). Surface drift: "economic
--                  risk of loss" as a regulatory term of art (banned),
--                  "unrealized receivables" hot-asset jargon, and Sec
--                  704(b) cross-references in wrong-answer explanations
--                  are stripped.
--   Deletes:  10 — substantive teaching is out of scope per the spec's
--                  outOfScope list: 704(b) allocation-validity mechanics
--                  (minimum gain chargeback, DRO, nonrecourse deduction
--                  allocation, partnership minimum gain definition),
--                  Sec 736 retiring-partner payment splits, Sec 751(b)
--                  disproportionate distribution deemed exchange, Sec 751
--                  hot-asset sale-of-interest character with installment
--                  method, Sec 465(b)(6) qualified nonrecourse financing
--                  mechanics (Passive Activity territory), AAA definition
--                  (S corp distribution sourcing), family partnership
--                  Sec 704(e) + gift basis.
--
-- Net: 95 → 85 questions. The topic is under its generation target but
-- the whole TCP section is under target (1,371 / 1,500) so the regen
-- orchestrator will pick up the gap in Stage 4.
--
-- Related:
--   Spec: src/lib/topic-specs/tcp-advanced-basis-calculations.ts
--   Stage 2 census: docs/drift-census-2026-04-14.md

BEGIN;

-- ============================================================
-- REWRITES
-- ============================================================

-- Q997 — Basis vs at-risk gap for recourse/nonrecourse debt (concept)
-- Strip "qualified nonrecourse financing" parenthetical; keep the at-risk
-- versus basis gap teaching for the 4-tier loss hierarchy.
UPDATE questions
SET explanation = $EXPL$Correct (B): Under IRC Section 752, both recourse and nonrecourse liabilities increase a partner's outside basis, giving this partner $280,000 ($40,000 cash + $60,000 income + $100,000 recourse + $80,000 nonrecourse). The $200,000 loss passes the Section 704(d) basis limitation. However, the at-risk rules under IRC Section 465 generally exclude nonrecourse debt from the at-risk amount (a narrow exception exists for certain real-estate financing that is beyond the scope of this topic). The at-risk amount is $200,000 ($40,000 + $60,000 + $100,000 recourse). The loss exactly equals the at-risk amount, so the full $200,000 is deductible. This illustrates how the two limitations apply sequentially and how nonrecourse debt creates a gap between basis and at-risk amounts.
Wrong (A): Nonrecourse debt generally does not increase the at-risk amount, unlike recourse debt which does.
Wrong (C): This treats nonrecourse debt as at-risk, whereas only recourse debt counts toward the at-risk amount.
Wrong (D): Recourse debt and cumulative income also increase the at-risk amount, rather than being limited to the original cash contribution.$EXPL$
WHERE id = 997;

-- Q4181 — Recourse liability allocation to outside basis (concept)
-- Strip "economic risk of loss" banned phrase; keep the allocation concept.
UPDATE questions
SET explanation = $EXPL$Correct (B): Under IRC Section 752, a partner's share of partnership recourse liabilities is included in outside basis. For recourse liabilities, allocation is based on which partner bears the risk of repayment. In a general partnership with equal sharing, Partner C's 25% share = $600,000 x 25% = $150,000.
Wrong (A): $0 would be incorrect because partnership liabilities increase a partner's outside basis under Section 752, whereas this choice ignores the liability-share rule entirely.
Wrong (C): $300,000 is 50% of the total liabilities rather than Partner C's 25% share. Each partner's allocation is based on their proportionate share of the recourse debt.
Wrong (D): $600,000 is the total partnership liability rather than Partner C's individual share. Only the partner's proportionate share (25%) is included in that partner's outside basis.$EXPL$
WHERE id = 4181;

-- Q4206 — Nonrecourse-to-recourse conversion → liability reallocation
-- Strip "economic risk of loss" banned phrase; keep the allocation concept.
UPDATE questions
SET stem = $EXPL$Partner M has an outside basis of $120,000. The partnership converts a $60,000 nonrecourse loan (previously shared equally among 3 partners) into a recourse loan for which Partner M bears the entire risk of repayment. What is Partner M's new outside basis?$EXPL$,
    explanation = $EXPL$Correct (B): Under IRC Section 752, when a nonrecourse liability is converted to recourse, the liability must be reallocated based on which partner bears the risk of repayment. Before conversion, Partner M's share was $20,000 (one-third of $60,000 nonrecourse). After conversion with M bearing the full repayment obligation, M's share becomes $60,000, a net increase of $40,000 to outside basis.
Wrong (A): $120,000 reflects no change, however the reallocation of the full recourse liability to M increases outside basis by M's net additional share.
Wrong (C): $160,000 overstates the increase by adding the full $60,000 liability rather than the net increase of $40,000 above M's prior $20,000 share.
Wrong (D): $100,000 incorrectly reduces basis, whereas a shift to bearing more of the repayment obligation increases the partner's outside basis under Section 752(a).$EXPL$
WHERE id = 4206;

-- Q4208 — Recourse liability allocation by risk-bearing agreement
-- Strip "economic risk of loss" phrase throughout.
UPDATE questions
SET stem = $EXPL$Partner N's outside basis is $200,000. The partnership is considering taking on a $300,000 recourse loan. Partner N has a 40% interest but agrees to bear 60% of the repayment risk under the partnership agreement. What is N's basis after the loan?$EXPL$,
    explanation = $EXPL$Correct (D): Under IRC Section 752(a), a partner's share of recourse liabilities is determined by which partner bears the risk of repayment rather than by profit-sharing ratios. Partner N bears 60% of $300,000 ($180,000), increasing outside basis from $200,000 to $380,000. The risk-sharing agreement between the partners controls the allocation.
Wrong (A): $320,000 uses the 40% profit-sharing ratio ($120,000), whereas the correct allocation for recourse debt follows the 60% risk-bearing agreement ($180,000).
Wrong (B): $500,000 adds the full $300,000 liability rather than N's 60% share of $180,000.
Wrong (C): $200,000 reflects no change, however N's assumption of 60% of the repayment risk adds $180,000 to outside basis.$EXPL$
WHERE id = 4208;

-- Q12928 — Personal guarantee of partnership debt → basis increase
-- Strip "economic risk of loss" phrase throughout; keep the guarantee concept.
UPDATE questions
SET stem = $EXPL$Quinn is a 30% partner in Redwood Partners. The partnership has $500,000 of recourse liabilities. Currently, Quinn's share is $150,000 (30%). The partnership restructures so that Quinn personally guarantees an additional $200,000 of debt, increasing Quinn's share of the partnership's recourse liabilities to $350,000. Quinn's outside basis before the restructuring is $250,000. Calculate Quinn's outside basis after the liability restructuring.$EXPL$,
    explanation = $EXPL$Correct (A): Under IRC Section 752, a partner's share of partnership recourse liabilities equals the amount for which the partner bears the risk of repayment. When Quinn guarantees the additional $200,000, Quinn's share of liabilities increases by $200,000 (from $150,000 to $350,000). Under Section 752(a), this increase is treated as a deemed cash contribution, increasing outside basis from $250,000 to $450,000.
Wrong (B): Personal guarantees that create a genuine repayment obligation do affect recourse liability allocation, rather than being ignored for basis purposes.
Wrong (C): The increase is $200,000 rather than $150,000, bringing basis to $450,000.
Wrong (D): Basis is adjusted incrementally rather than being reset to the liability amount.$EXPL$
WHERE id = 12928;

-- Q14494 — Basic 752(a) liability → basis increase
-- Strip "economic risk of loss" phrase from stem.
UPDATE questions
SET stem = $EXPL$Dalton is a 40% partner in Westfield LLC with an outside basis of $100,000. The partnership takes out a new $250,000 recourse loan for which all partners bear the repayment risk proportionally to their interests. Dalton's share of the new liability is $100,000. What is Dalton's outside basis after the partnership borrows the $250,000?$EXPL$,
    explanation = $EXPL$Correct (C): Under IRC Section 752(a), an increase in a partner's share of partnership liabilities is treated as a deemed contribution of money, increasing outside basis. Dalton's $100,000 share of the new liability increases outside basis from $100,000 to $200,000.
Wrong (A): This ignores the liability increase entirely, whereas Section 752(a) treats the partner's share as a deemed contribution.
Wrong (B): This adds $50,000 rather than Dalton's full $100,000 share of the recourse loan.
Wrong (D): This adds the full $250,000 loan amount rather than Dalton's proportionate share of the liability.$EXPL$
WHERE id = 14494;

-- Q12931 — 4-tier loss hierarchy walk
-- Rewrite: drop the limited-partner / qualified-nonrecourse-financing
-- framing, use a general partner with clean at-risk facts. Keep the walk
-- through basis → at-risk → passive tiers since that is the core in-scope
-- teaching of the topic.
UPDATE questions
SET stem = $EXPL$Nakamura, a single taxpayer, is a 40% general partner in a partnership operating a rental activity. Nakamura has an outside basis of $100,000, an at-risk amount of $80,000 (consisting of cash contributions and recourse debt shares), $25,000 of passive income from another partnership, and AGI of $90,000. The partnership allocates $120,000 of losses to Nakamura (treated as passive activity losses). Applying the loss limitation hierarchy, determine Nakamura's deductible loss and the amount suspended at each level.$EXPL$,
    explanation = $EXPL$Correct (D): Under the loss limitation hierarchy (IRC Sections 704(d), 465, and 469 applied in order), partnership losses must clear the basis tier, then the at-risk tier, then the passive activity tier. The hierarchy walks:
- Basis: $120,000 loss vs $100,000 outside basis → $100,000 allowed, $20,000 suspended at basis.
- At-risk: $100,000 remaining loss vs $80,000 at-risk → $80,000 allowed, $20,000 suspended at at-risk.
- Passive: $80,000 remaining loss vs $25,000 passive income from another activity → $25,000 deductible, $55,000 suspended at passive.
Total deductible: $25,000. Total suspended: $20,000 + $20,000 + $55,000 = $95,000. The sequential application of the three tiers is the key exam point.
Wrong (A): $100,000 stops at the basis tier rather than also applying the at-risk and passive activity limits.
Wrong (B): $80,000 accounts for the at-risk limit, however it fails to apply the passive activity restriction to the remaining amount.
Wrong (C): $25,000 is the correct total deductible amount, but this choice mis-summarizes the suspension distribution across the three tiers.$EXPL$
WHERE id = 12931;

-- Q14491 — Outside basis (not capital account) drives 704(d) limit
-- Strip Sec 704(b) cross-reference from wrong-answer explanation.
UPDATE questions
SET explanation = $EXPL$Correct (D): Under IRC Section 704(d), the basis limitation for partnership losses uses the partner's outside basis ($80,000), rather than the capital account balance. Since Harper's outside basis of $80,000 exceeds the $50,000 loss, the full loss passes the basis limitation. The capital account is a book concept used for economic allocations, whereas outside basis is the tax measure controlling loss deductibility.
Wrong (A): A negative capital account does not prevent loss deductions; Section 704(d) uses outside basis, which includes the partner's share of liabilities.
Wrong (B): The capital account balance is irrelevant to the Section 704(d) basis limitation test, unlike the outside basis which directly determines it.
Wrong (C): There is no netting of capital account deficit against outside basis for loss limitation purposes.$EXPL$
WHERE id = 14491;

-- Q14497 — Basic Sec 704(d) loss limitation rule
-- Strip Sec 704(b) cross-reference from wrong-answer (A).
UPDATE questions
SET explanation = $EXPL$Correct (B): Under IRC Section 704(d), a partner's distributive share of partnership losses is allowed only to the extent of the partner's adjusted basis in the partnership interest at the end of the partnership's tax year. Excess losses are suspended and carried forward indefinitely until basis is restored.
Wrong (A): The capital account is a book concept used for economic allocations, whereas the tax limitation under Section 704(d) uses outside basis rather than the capital account.
Wrong (C): Outside basis includes much more than the original cash contribution — it also reflects income allocations, liability shares, and additional contributions, unlike a static contribution measure.
Wrong (D): Outside basis includes the partner's share of all partnership liabilities (both recourse and nonrecourse) rather than just recourse liabilities.$EXPL$
WHERE id = 14497;

-- Q14512 — Sec 732(c) distributed property basis allocation hierarchy
-- The core teaching (inside-basis-then-allocate-upward-to-ordinary-first)
-- is in scope per inScope items 15-16. Strip "unrealized receivables"
-- jargon, use "zero-basis receivables" instead.
UPDATE questions
SET stem = $EXPL$When Fujita's partnership interest is fully liquidated, the partnership distributes three asset categories: zero-basis accounts receivable valued at $40,000, inventory with a $20,000 partnership basis valued at $60,000, and a capital asset with a $50,000 partnership basis valued at $150,000. Fujita's pre-distribution outside basis totals $120,000. Apply the allocation hierarchy to determine each asset's basis in Fujita's hands.$EXPL$,
    choices = $EXPL$["Receivables: $25,000; Inventory: $45,000; Capital asset: $50,000", "Receivables: $0; Inventory: $20,000; Capital asset: $100,000", "Receivables: $40,000; Inventory: $60,000; Capital asset: $20,000", "Receivables: $16,000; Inventory: $36,000; Capital asset: $68,000"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (A): Under IRC Section 732(c), basis in a liquidating distribution is first assigned equal to the partnership's inside basis in each distributed asset ($0 + $20,000 + $50,000 = $70,000). This leaves $50,000 to allocate upward (partner's $120,000 outside basis minus $70,000 already assigned). Under Section 732(c)(2)(A), the upward increase is allocated first to ordinary-income property (the receivables and inventory) based on unrealized appreciation. Both have $40,000 of appreciation, so the $50,000 is split proportionally — $25,000 each. Final: receivables $25,000, inventory $45,000 ($20,000 + $25,000), capital asset $50,000 (unchanged).
Wrong (B): This assigns the entire $50,000 increase to the capital asset, rather than applying the Section 732(c)(2)(A) priority for ordinary-income property.
Wrong (C): This uses FMV as the basis for each property, whereas Section 732(c) starts with inside basis and allocates increases on top.
Wrong (D): This allocates the $50,000 proportionally by assigned basis across all three properties, however Section 732(c)(2)(A) gives statutory priority to ordinary-income property over capital-gain property.$EXPL$
WHERE id = 14512;

-- ============================================================
-- DELETES
-- ============================================================

-- --- S corp distribution-sourcing mechanics (not basis) ---
DELETE FROM questions WHERE id = 4194;  -- AAA definition / sourcing

-- --- 704(b) allocation-validity / nonrecourse deduction mechanics ---
DELETE FROM questions WHERE id = 12913; -- Partnership minimum gain definition
DELETE FROM questions WHERE id = 12918; -- Nonrecourse deduction allocation (1.704-2(e))
DELETE FROM questions WHERE id = 12924; -- DRO + constructive risk allocation
DELETE FROM questions WHERE id = 14503; -- Minimum gain chargeback effect on basis

-- --- Passive Activity / at-risk regulatory depth ---
DELETE FROM questions WHERE id = 12917; -- Sec 465(b)(6) qualified nonrecourse financing

-- --- Retiring partner mechanics ---
DELETE FROM questions WHERE id = 14492; -- Sec 736(a) unrealized receivables + unstated goodwill

-- --- Sec 751 sale-of-interest character + distribution character ---
DELETE FROM questions WHERE id = 14496; -- Sale of interest with 751 + installment method
DELETE FROM questions WHERE id = 14500; -- 751(b) disproportionate distribution deemed exchange

-- --- Family partnership + gift basis ---
DELETE FROM questions WHERE id = 14515; -- Sec 1015 + Sec 704(e) family partnership

COMMIT;
