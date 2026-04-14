-- Spec cleanup for TCP Owner-Entity Transactions (TCP/IV/C)
-- Post-audit cleanup for the 38 banned-term hits flagged by
-- audit-topic-content.ts after the owner-entity-transactions spec was authored.
--
-- Breakdown:
--   Rewrites: 10 — core content in-scope per the spec's inScope list; surface
--                  drift only (subsection citations, computation depth, or
--                  banned phrases). Rewrites preserve the concept and drop the
--                  out-of-scope references.
--   Deletes:  28 — substantive teaching is out of scope per the spec's
--                  outOfScope list: Sec 302(b) percentage/waiver mechanics,
--                  Sec 318 attribution mechanics beyond the family concept,
--                  Sec 7872 depth (AFR computation, loan category
--                  distinctions, de minimis thresholds, demand-vs-term OID),
--                  disguised sale mechanics, Sec 304 brother-sister
--                  redemptions, Davis meaningful-reduction case law, Sec 751
--                  hot asset computation, SE tax computation mechanics,
--                  dividend-treated-redemption basis transfer, and profits
--                  interest Rev Proc 93-27.
--
-- Net: 102 → 74 questions. The topic drops well below its ~80 generation
-- target and should be queued for spec-constrained regeneration in Stage 4
-- of the full-bank review plan.
--
-- Related:
--   Spec: src/lib/topic-specs/tcp-owner-entity-transactions.ts
--   Handoff: docs/topic-specs-pilot-handoff.md (Stage 1)
--   Backlog: docs/owner-entity-cleanup-backlog.md

BEGIN;

-- ============================================================
-- REWRITES
-- ============================================================

-- Q983 — Four Sec 302 safe harbor category names (concept level)
-- Keep the category-enumeration test; strip the Section 302(b) citation.
UPDATE questions
SET explanation = $EXPL$Correct (B): Under IRC Section 302, a stock redemption is treated as a sale or exchange (producing capital gain or loss) rather than a distribution if it qualifies under one of four safe harbor categories: (1) not essentially equivalent to a dividend, (2) substantially disproportionate, (3) complete termination of the shareholder's interest, or (4) partial liquidation for non-corporate shareholders. A redemption that fails all four is treated as a distribution — a dividend to the extent of the corporation's earnings and profits, then a reduction of basis, then capital gain.
Wrong (A): There is no minimum dollar threshold for redemption qualification — the tests focus on ownership changes, not payment size.
Wrong (C): The presence or absence of E&P affects the tax consequence of a failed redemption but does not govern qualification for sale/exchange treatment.
Wrong (D): The shareholder's holding period affects the character of any resulting capital gain but is not relevant to qualification for sale/exchange treatment.$EXPL$
WHERE id = 983;

-- Q4143 — Guaranteed payment = ordinary income + SE tax (concept level)
-- Strip Sec 1402(a), Sec 704(b), Sec 707(c), Sec 731 citations.
UPDATE questions
SET explanation = $EXPL$Correct (A): Under IRC Section 707(c), a guaranteed payment to a partner for services rendered is treated as ordinary income to the receiving partner and is subject to self-employment tax. Unlike a wage, no FICA withholding occurs — a partner is not an employee of the partnership for payroll tax purposes, so the partner reports the guaranteed payment as self-employment income on Schedule SE.
Wrong (B): A distributive share of partnership income is allocated based on the partnership agreement and depends on partnership results, whereas guaranteed payments are separately stated and paid without regard to partnership income.
Wrong (C): Unlike a return of capital, guaranteed payments are fully taxable as ordinary income.
Wrong (D): Guaranteed payments for services are ordinary income rather than capital gain. Capital gain treatment requires a sale or exchange of a capital asset.$EXPL$
WHERE id = 4143;

-- Q4145 — Total income with GP + distributive share (concept level)
-- Strip Sec 707(c) and Sec 704(b) citations.
UPDATE questions
SET explanation = $EXPL$Correct (C): Under IRC Section 707(c), the $50,000 guaranteed payment is deducted from partnership income before computing each partner's distributive share: $150,000 - $50,000 = $100,000 remaining. Partner C's 40% distributive share is $40,000. Total income = $50,000 guaranteed payment + $40,000 distributive share = $90,000.
Wrong (A): $50,000 counts only the guaranteed payment, whereas Partner C also receives a 40% distributive share of the remaining $100,000.
Wrong (B): $60,000 applies 40% to the original $150,000, however that calculation skips the required step of first deducting the guaranteed payment.
Wrong (D): $110,000 applies 40% to the full $150,000 ($60,000) and adds the $50,000 guaranteed payment, double-counting rather than deducting the guaranteed payment before computing the distributive share.$EXPL$
WHERE id = 4145;

-- Q4150 — Below-market shareholder loan → constructive dividend (concept)
-- Reframe at concept level: characterization instead of AFR computation. Fix
-- the broken leading-comma stem. Strip Sec 7872 citation and dollar math.
UPDATE questions
SET stem = $EXPL$A shareholder makes a $500,000 interest-free loan to their closely held C corporation. Under the related-party below-market loan rules, how is the forgone interest characterized?$EXPL$,
    choices = $EXPL$["It has no tax consequence because no actual interest changes hands", "It is treated as a constructive dividend from the corporation to the shareholder, with a deemed interest payment back to the corporation", "It is treated as additional salary paid to the shareholder", "It is treated solely as interest income to the corporation with no dividend consequence"]$EXPL$::jsonb,
    correct_index = 1,
    explanation = $EXPL$Correct (B): When an owner lends money to their entity at a rate below the applicable federal rate (AFR), the below-market loan rules treat the transaction as if interest had been paid at AFR and the difference — the forgone interest — had been transferred as a constructive dividend from the corporation to the shareholder, followed by a deemed interest payment back to the corporation. This two-step recharacterization creates dividend income to the shareholder and matching interest income to the corporation.
Wrong (A): An interest-free related-party loan is not without tax consequence. The below-market loan rules impute interest at AFR regardless of the parties' agreement to charge no interest.
Wrong (C): The recharacterization between a corporation and its shareholder produces dividend treatment, not wages, because the shareholder relationship — not an employment relationship — drives the characterization.
Wrong (D): The recharacterization has two legs: interest income to the corporation AND a constructive dividend to the shareholder. Treating only one leg ignores the dividend half of the transaction.$EXPL$
WHERE id = 4150;

-- Q4151 — Forgone interest characterization (concept level)
-- Strip Sec 7872(a) citation and dollar computation; keep the concept.
UPDATE questions
SET stem = $EXPL$Hartwell Industries, a C corporation, makes an interest-free demand loan to Davis, its sole shareholder. Under the related-party below-market loan rules, how is the forgone interest treated for tax purposes?$EXPL$,
    explanation = $EXPL$Correct (A): A below-market loan from a corporation to its shareholder is recharacterized under the related-party imputed interest rules. The forgone interest — the difference between interest at the applicable federal rate and the actual interest charged — is treated as a constructive dividend from the corporation to the shareholder, and a deemed interest payment from the shareholder back to the corporation. Both legs are recognized for tax purposes: dividend income to the shareholder and interest income to the corporation.
Wrong (B): Transfers from a corporation to its shareholder are characterized as dividends, not gifts. Gift tax rules apply to gratuitous transfers between individuals, not between a corporation and its owner.
Wrong (C): A capital contribution flows from shareholder to corporation. The below-market loan here transfers value from the corporation to the shareholder, so the direction is wrong.
Wrong (D): A below-market corporation-shareholder loan produces taxable income, not a tax-free return of capital.$EXPL$
WHERE id = 4151;

-- Q4166 — Distributive share after GP deduction (concept level)
-- Strip Sec 707(c) and Sec 704(b) citations.
UPDATE questions
SET explanation = $EXPL$Correct (D): Under IRC Section 707(c), guaranteed payments are deducted from partnership income before each partner's distributive share is computed. After deducting Partner J's $90,000 guaranteed payment, remaining income is $210,000 - $90,000 = $120,000. Partner K's one-third share is $120,000 / 3 = $40,000.
Wrong (A): $70,000 divides the full $210,000 by three, however that calculation ignores the mandatory step of reducing partnership income by the guaranteed payment before allocating distributive shares.
Wrong (B): $30,000 subtracts the guaranteed payment from each partner's share of full income, whereas the guaranteed payment is deducted at the partnership level first — not from each individual partner's share.
Wrong (C): $80,000 does not correspond to any correct calculation; after the $90,000 deduction, each equal partner receives one-third of $120,000 = $40,000 rather than $80,000.$EXPL$
WHERE id = 4166;

-- Q13513 — Family attribution list (concept level)
-- Strip Sec 318(a)(1) citation.
UPDATE questions
SET explanation = $EXPL$Correct (A): Under IRC Section 318 family attribution, stock owned by the taxpayer's spouse, children, grandchildren, and parents is treated as owned by the taxpayer for constructive ownership purposes. A common exam distinction: siblings are NOT included in family attribution, even though they are 'family' in everyday usage.
Wrong (B): In-laws and siblings are not included in the family attribution rules, unlike spouses and lineal descendants.
Wrong (C): The attribution is limited to specific enumerated relationships rather than a general degree-of-kinship test.
Wrong (D): Adult children, grandchildren, and parents are also included, however the list is not restricted to spouse and minor children.$EXPL$
WHERE id = 13513;

-- Q13515 — Sec 267 loss disallowance via family attribution (concept level)
-- Simplify from trust-beneficiary + family attribution to family only. The
-- in-scope teaching is Sec 267 loss disallowance at >50% direct+constructive
-- ownership; the trust attribution layer was the drift.
UPDATE questions
SET stem = $EXPL$Harold owns 35% of Vanguard Corp directly, and his daughter owns 20% of Vanguard. Harold plans to sell rental property (basis $250,000, fair market value $180,000) to Vanguard Corp for $180,000. A CPA must determine whether the $70,000 loss is disallowed under the related-party loss rules. What is Harold's ownership for related-party purposes, and is the loss disallowed?$EXPL$,
    choices = $EXPL$["Harold owns 35% directly and 55% constructively; the loss is disallowed because he exceeds the 50% threshold", "Harold owns 35% directly; the loss is allowed because he does not exceed 50%", "Harold owns 20% constructively; the loss is allowed because related-party rules apply only to direct ownership", "The loss is always allowed when a sale is at fair market value"]$EXPL$::jsonb,
    correct_index = 0,
    explanation = $EXPL$Correct (A): The related-party loss disallowance rule applies to sales or exchanges between an individual and a corporation when the individual owns — directly or indirectly — more than 50% of the corporation's stock. Family attribution treats stock owned by the taxpayer's spouse, children, grandchildren, or parents as owned by the taxpayer. Harold directly owns 35% and is attributed his daughter's 20%, for 55% constructive ownership. Because 55% exceeds the 50% threshold, Harold's $70,000 loss on the sale to Vanguard is disallowed.
Wrong (B): Constructive ownership through family attribution must be added to direct ownership in applying the related-party rules. Harold's 35% direct ownership alone is not the full picture.
Wrong (C): The related-party rules explicitly incorporate constructive ownership — direct ownership alone is not the measure.
Wrong (D): Sales at fair market value are not immune from the related-party loss rules. The rules disallow the loss regardless of whether the sale price reflects fair market value, to prevent related parties from generating artificial tax losses.$EXPL$
WHERE id = 13515;

-- Q14544 — S corp distribution waterfall (concept level)
-- Strip the banned "accumulated adjustments account" phrase (use AAA acronym
-- only) and Sec 1368(c) citation. The AAA / accumulated E&P / basis / gain
-- waterfall is explicitly in-scope per the spec's inScope list.
UPDATE questions
SET stem = $EXPL$Brennan is the sole shareholder of Vega Corp, an S corporation that was previously a C corporation. At year-end, Vega has an AAA balance of $40,000, accumulated earnings and profits of $70,000 from its C corp years, and makes a $90,000 cash distribution to Brennan. Brennan's stock basis is $120,000. How is the distribution taxed?$EXPL$,
    explanation = $EXPL$Correct (B): For an S corporation with accumulated E&P carried over from C-corporation years, distributions follow a mandatory ordering: first against AAA (tax-free to the shareholder, reducing stock basis), then against accumulated E&P (taxed as a dividend), then against remaining stock basis (return of capital), and finally any excess is capital gain. Here the $90,000 distribution is applied as $40,000 from AAA (tax-free, basis drops from $120,000 to $80,000) and then $50,000 from accumulated E&P (dividend).
Wrong (A): This ignores the accumulated E&P layer. When accumulated E&P is present, distributions cannot bypass the dividend layer entirely.
Wrong (C): This treats the full distribution as coming from accumulated E&P, ignoring the mandatory AAA-first ordering.
Wrong (D): This reverses the ordering by applying accumulated E&P before AAA, which contradicts the S corporation distribution framework for corporations with C-corp-era E&P.$EXPL$
WHERE id = 14544;

-- Q14547 — Definition of forgone interest (concept level)
-- Strip Sec 7872(e)(2) citation; keep the AFR-vs-actual concept.
UPDATE questions
SET explanation = $EXPL$Correct (A): Under IRC's below-market loan rules, 'forgone interest' is the excess of the interest that would have been payable at the applicable federal rate (AFR) over the actual interest charged on the loan. This difference is the amount imputed to the parties and drives the income and deduction consequences of a below-market related-party loan.
Wrong (B): The prime rate is a commercial benchmark, whereas the AFR — published monthly by the IRS — is the statutory rate required for imputed interest under the below-market loan rules.
Wrong (C): Uncollected interest after a loan matures is a collection issue rather than the statutory definition of forgone interest.
Wrong (D): Penalty interest on delinquent tax payments is an unrelated provision, however the below-market loan rules target imputed interest on below-AFR related-party loans — not tax-collection penalties.$EXPL$
WHERE id = 14547;

-- ============================================================
-- DELETES
-- ============================================================
-- Each deletion targets a question whose substantive teaching is out of
-- scope per the Owner-Entity Transactions spec. Grouped by drift category.

-- --- Sec 302(b) percentage / waiver / partial liquidation mechanics ---
DELETE FROM questions WHERE id = 984;   -- 50%/80% substantially disproportionate computation
DELETE FROM questions WHERE id = 985;   -- Sec 302(c)(2) family attribution waiver mechanics
DELETE FROM questions WHERE id = 13494; -- Sec 302(c)(2) waiver filing requirements
DELETE FROM questions WHERE id = 13506; -- Sec 302(b)(2) percentage test with option attribution
DELETE FROM questions WHERE id = 13512; -- Sec 302(b)(4) partial liquidation 5-year trade test
DELETE FROM questions WHERE id = 14561; -- Numerical requirements of substantially disproportionate test

-- --- Sec 318 attribution mechanics beyond the family concept ---
DELETE FROM questions WHERE id = 13499; -- Sec 318(a)(2)(C) corporate entity attribution
DELETE FROM questions WHERE id = 13521; -- Sec 318(a)(3) owner-to-entity attribution direction
DELETE FROM questions WHERE id = 13522; -- Sec 318(a)(4) option attribution
DELETE FROM questions WHERE id = 14556; -- Sec 318(a)(5)(B) double-family attribution prohibition
DELETE FROM questions WHERE id = 14558; -- Trust beneficiary proportional actuarial attribution
DELETE FROM questions WHERE id = 14564; -- Sec 318(a)(5)(C) entity-owner-entity chain attribution

-- --- Sec 7872 below-market loan mechanics beyond the concept ---
DELETE FROM questions WHERE id = 4164;  -- Forgone interest AFR computation
DELETE FROM questions WHERE id = 4165;  -- $10,000 de minimis threshold
DELETE FROM questions WHERE id = 13496; -- Sec 7872(d)(1) gift loan NII limitation
DELETE FROM questions WHERE id = 13505; -- Sec 7872(c)(1)(B) compensation-related loan category
DELETE FROM questions WHERE id = 13517; -- Demand vs term loan computation methods
DELETE FROM questions WHERE id = 14554; -- Demand vs term loan OID rate lock
DELETE FROM questions WHERE id = 14567; -- $10,000 de minimis for family loan

-- --- Partnership mechanics belonging to Partnerships topic ---
DELETE FROM questions WHERE id = 4148;  -- Disguised sale rules under Sec 707(a)(2)(B)
DELETE FROM questions WHERE id = 4149;  -- Disguised sale gain computation
DELETE FROM questions WHERE id = 4168;  -- Proportional disguised sale computation
DELETE FROM questions WHERE id = 4162;  -- Profits interest Rev Proc 93-27 specialized rules
DELETE FROM questions WHERE id = 14546; -- Sec 751 hot asset ordinary income on liquidation

-- --- Sec 304 brother-sister redemption ---
DELETE FROM questions WHERE id = 14543; -- Sec 304(a)(1) combined E&P computation

-- --- Davis meaningful-reduction case law ---
DELETE FROM questions WHERE id = 13519; -- Sec 302(b)(1) meaningful reduction test

-- --- SE tax computation mechanics ---
DELETE FROM questions WHERE id = 4171;  -- 15.3% / wage base / Medicare rate structure

-- --- Redemption basis-transfer mechanics beyond sale-vs-dividend concept ---
DELETE FROM questions WHERE id = 13502; -- Basis of redeemed shares transfers to remaining shares

COMMIT;
