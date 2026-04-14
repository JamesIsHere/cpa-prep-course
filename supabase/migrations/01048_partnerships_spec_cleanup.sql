-- Spec cleanup for REG Partnerships (REG/V/D)
-- Post-audit cleanup for the 43 banned-term hits flagged by
-- audit-topic-content.ts after the reg-partnerships spec was authored.
--
-- Breakdown:
--   Rewrites: 16 — foundational partnership concepts (Sec 721 formation,
--                  basis with liabilities, Sec 731 distributions, Sec 741
--                  sale of interest) are directly in-scope per the spec.
--                  Surface drift (Section 752/751 citations, "unrealized
--                  receivable" jargon, "technical termination" phrasing,
--                  "economic risk of loss" phrase) is stripped while
--                  preserving the concept-level teaching.
--   Deletes:  27 — substantive teaching is out of scope per the spec's
--                  outOfScope list: Sec 704(b) special allocation mechanics
--                  (substantial economic effect, nonrecourse deductions,
--                  transitory allocation, QIO, retroactive allocation
--                  amendments), Sec 704(c) built-in gain mechanics (curative
--                  method, 7-year anti-abuse, ceiling rule), Sec 754/743(b)/
--                  755 election mechanics, Sec 751 hot-asset computation
--                  (ordinary income math, Sec 1245 recapture), Sec 752
--                  liability allocation mechanics (constructive liquidation,
--                  three-tier nonrecourse), Sec 736 retiring partner splits,
--                  disguised sale under Sec 707(a)(2)(B), Sec 465/469
--                  at-risk/passive mechanics, and BBA audit regime.
--
-- Net: 79 → 52 questions. The topic drops well below its ~80 generation
-- target. Significant spec-constrained regeneration is required in Stage 4
-- of the full-bank review plan — expect ~30 new questions needed to
-- restore the topic.
--
-- Related:
--   Spec: src/lib/topic-specs/reg-partnerships.ts
--   Handoff: docs/topic-specs-pilot-handoff.md (Stage 1)
--   Backlog: docs/partnerships-cleanup-backlog.md

BEGIN;

-- ============================================================
-- REWRITES
-- ============================================================

-- Q241 — Definition of hot assets (concept level)
-- Strip "unrealized receivables" jargon, Sec 751 citation, Sec 1245 recapture
-- reference. Use "accounts receivable with zero basis and appreciated
-- inventory" at concept level.
UPDATE questions
SET stem = $EXPL$Carter is selling her 25% partnership interest in Delta Services LP. The partnership holds significant accounts receivable and inventory on its balance sheet. Her CPA warns that a portion of the sale proceeds may be taxed as ordinary income under the partnership hot-asset rules. What are hot assets in a partnership?$EXPL$,
    choices = $EXPL$["Any partnership asset that has appreciated in value since the date of acquisition", "Cash and cash equivalents held by the partnership", "Accounts receivable with zero basis and appreciated inventory — items that would produce ordinary income if sold by the partnership", "Assets that have been held by the partnership for less than one year"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (C): Under IRC, the partnership hot-asset rules define the categories of assets whose inherent character produces ordinary income rather than capital gain. Hot assets include accounts receivable with zero tax basis (which represent income not yet taxed) and inventory items that have appreciated materially above basis. When a partner sells their interest, the portion of gain attributable to these categories is recharacterized as ordinary income rather than capital gain.
Wrong (A): Hot assets are defined by income character rather than mere appreciation — many appreciated capital assets remain capital in character on sale.
Wrong (B): Cash is never a hot asset because it carries no built-in gain or untaxed income component, unlike zero-basis receivables.
Wrong (D): Holding period is not the defining criterion for hot-asset classification, whereas the character test turns on whether the asset would produce ordinary income if sold directly.$EXPL$
WHERE id = 241;

-- Q588 — Sale of partnership interest character (concept level)
-- Strip Sec 751 from correct choice and "unrealized receivables" phrasing
-- from explanation. Sec 741 capital-asset treatment and the hot-asset
-- carve-out existence are in-scope.
UPDATE questions
SET choices = $EXPL$["Entirely as ordinary income because a partnership interest is not a capital asset", "As a combination of short-term and long-term gain based on when each underlying asset was acquired", "As tax-exempt income because the gain was already taxed at the partnership level", "As capital gain, except to the extent attributable to partnership hot assets (zero-basis receivables and appreciated inventory), which produce ordinary income"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (D): Under IRC Section 741, the sale of a partnership interest is treated as the sale of a capital asset, producing capital gain or loss. However, the partnership hot-asset rules carve out the portion of gain attributable to zero-basis accounts receivable and appreciated inventory, which is recharacterized as ordinary income rather than capital gain.
Wrong (A): A partnership interest is a capital asset under IRC Section 741, whereas ordinary-asset treatment would require a specific recharacterization rule that does not apply to the interest itself.
Wrong (B): The characterization is based on the entity-level hot-asset analysis at the time of sale, rather than on the holding periods of the partnership's individual underlying assets.
Wrong (C): Partnership income flows through to partners, however the sale of a partnership interest is a separate and fully taxable event — the gain is not tax-exempt simply because prior-year income was already taxed.$EXPL$
WHERE id = 588;

-- Q2836 — Initial outside basis on contribution (concept level)
-- Strip Sec 704(b) citation from wrong answer C.
UPDATE questions
SET explanation = $EXPL$Correct (A): Under IRC Section 722, a partner's initial outside basis in a partnership interest equals the amount of cash contributed plus the adjusted basis of any property contributed. This carryover basis preserves any built-in gain or loss in contributed property for future recognition, rather than stepping the basis up to fair market value.
Wrong (B): Outside basis is determined by the adjusted basis of contributed property, unlike a taxable purchase where fair market value would be the starting point.
Wrong (C): The partner's capital account may track partnership book values, whereas outside basis for tax purposes starts from the adjusted tax basis of the contributed property.
Wrong (D): While the contribution is generally nontaxable under IRC Section 721, the partner still receives a basis equal to the contributed amounts rather than zero.$EXPL$
WHERE id = 2836;

-- Q2837 — Basis with contributed liability (concept level)
-- Strip Sec 752(a)/(b) citations; preserve the deemed-distribution /
-- deemed-contribution concept.
UPDATE questions
SET explanation = $EXPL$Correct (B): Under IRC Section 722, a partner's outside basis starts with the adjusted basis of contributed property. When that property carries a liability the partnership assumes, the portion of the liability shifted to the other partners is treated as a deemed cash distribution to the contributing partner (reducing basis), while the contributing partner's remaining share of that same liability is treated as a deemed cash contribution (increasing basis). The net effect: basis reflects the contributing partner's retained share of the liability rather than the full original amount.
Wrong (A): Liabilities on contributed property directly affect basis through the deemed-contribution and deemed-distribution mechanism, unlike a pure cash contribution that moves basis one-for-one.
Wrong (C): Basis is not automatically reduced to zero when encumbered property is contributed; it is reduced only to the extent liability relief exceeds the contributing partner's original basis plus their retained liability share.
Wrong (D): Only the contributing partner's share of the liability increases basis, whereas the portion shifted to other partners produces an offsetting deemed distribution that reduces basis.$EXPL$
WHERE id = 2837;

-- Q2840 — Cash distribution in excess of outside basis (concept level)
-- Strip Sec 751 parenthetical reference. Sec 731 gain recognition is
-- in-scope; hot-asset mention in a distribution context is misplaced.
UPDATE questions
SET explanation = $EXPL$Correct (A): Under IRC Section 731(a)(1), a partner recognizes gain to the extent that a cash distribution (including deemed cash distributions from liability shifts) exceeds the partner's outside basis. The gain is treated as gain from the sale or exchange of the partnership interest, which is generally capital gain rather than ordinary income.
Wrong (B): Gain must be recognized when cash exceeds basis rather than treating the excess as a tax-free return of capital, because outside basis cannot go below zero.
Wrong (C): Outside basis cannot go below zero; the excess triggers gain recognition immediately rather than deferring the excess to a future period.
Wrong (D): The gain is generally capital in character rather than ordinary. Section 731 treats the excess as gain from the sale or exchange of the partnership interest, which produces capital gain.$EXPL$
WHERE id = 2840;

-- Q2845 — Outside basis with cash + recourse liability share (concept)
-- Strip Sec 752(a) citation; preserve the rule that liability shares
-- increase basis.
UPDATE questions
SET explanation = $EXPL$Correct (C): Under IRC Section 722 and the partnership liability-allocation rules, an increase in a partner's share of partnership liabilities is treated as a deemed cash contribution, increasing outside basis. K's basis is $100,000 cash plus $40,000 share of recourse liabilities = $140,000.
Wrong (A): $60,000 incorrectly subtracts the liability share from the cash contribution, whereas liability shares increase basis rather than reducing it.
Wrong (B): $100,000 reflects only the cash contribution and ignores the $40,000 liability share that increases basis.
Wrong (D): $180,000 adds the liability share twice or uses an inflated liability amount rather than the correct $40,000 share stated in the facts.$EXPL$
WHERE id = 2845;

-- Q2858 — Identifying hot-asset category on sale of interest (concept)
-- Strip Sec 751 citation, "unrealized receivables" jargon, and
-- "substantially appreciated inventory" phrase.
UPDATE questions
SET explanation = $EXPL$Correct (D): Under IRC, the partnership hot-asset rules classify assets whose inherent character would produce ordinary income if sold directly by the partnership. Accounts receivable with a $0 basis and $30,000 FMV qualify because they represent income not yet taxed — the ordinary character is preserved on the sale of a partnership interest. Z's share is $10,000 (1/3 of $30,000).
Wrong (A): Cash is never a hot asset because it carries no built-in gain or untaxed income component, unlike zero-basis receivables.
Wrong (B): Land is a capital asset for this partnership rather than inventory, so only the accounts receivable qualify as hot assets here.
Wrong (C): Land is not a hot asset because it is neither a zero-basis income right nor appreciated inventory — it is a capital asset whose gain remains capital in character, whereas the receivables are ordinary.$EXPL$
WHERE id = 2858;

-- Q2860 — Multi-step basis with contribution + liability (concept)
-- Strip Sec 722, 752(a)/(b) citations; preserve the basis formula walk.
UPDATE questions
SET explanation = $EXPL$Correct (C): Under IRC Section 722, a partner's initial outside basis equals the adjusted basis of contributed property — here $40,000. The partnership's assumption of the $25,000 liability is treated as a deemed cash distribution reducing basis by $25,000, while AA's 50% share of that same liability is treated as a deemed cash contribution increasing basis by $12,500. Net basis: $40,000 - $25,000 + $12,500 = $27,500.
Wrong (A): $15,000 incorrectly computes the liability adjustment — the full $25,000 relief is only partially offset by the partner's $12,500 retained share, rather than the full $25,000.
Wrong (B): $40,000 reflects only the contributed property basis without any adjustment for the liability assumed by the partnership, whereas basis must be netted against liability relief.
Wrong (D): $52,500 uses FMV rather than adjusted basis, or double-counts the liability share. FMV is irrelevant to basis calculations on a partnership contribution.$EXPL$
WHERE id = 2860;

-- Q10746 — Liability decrease exceeding basis → gain (concept level)
-- Strip Sec 752(b) citation; Sec 731 gain recognition is in-scope.
UPDATE questions
SET explanation = $EXPL$Correct (C): A decrease in a partner's share of partnership liabilities is treated as a deemed cash distribution to that partner. Wallace's $80,000 liability decrease is deemed cash distributed, which exceeds her $50,000 basis by $30,000. Under IRC Section 731(a)(1), the excess over basis triggers capital gain recognition, and her basis reduces to $0.
Wrong (A): While the basis correctly drops to $0, the $30,000 excess over basis must be recognized as gain rather than disappearing.
Wrong (B): The liability repayment reduces Wallace's share by $80,000, which must be reflected as a deemed distribution rather than leaving basis undisturbed at $50,000.
Wrong (D): Only the excess of the deemed distribution over basis ($30,000) is recognized as gain, rather than the entire $80,000 liability reduction — basis absorbs the first $50,000 of the deemed distribution.$EXPL$
WHERE id = 10746;

-- Q10830 — Sale of interest with no hot assets → all capital gain
-- Fix the broken leading-comma stem. Strip Sec 751 citation and the
-- "unrealized receivables"/"substantially appreciated inventory" jargon.
UPDATE questions
SET stem = $EXPL$Partner Caldwell sells her 25% interest in Sunridge Partners LP for $300,000. Her outside basis is $220,000. The partnership holds no hot assets. What is the character of Caldwell's $80,000 gain?$EXPL$,
    explanation = $EXPL$Correct (A): Under IRC Section 741, gain or loss from the sale of a partnership interest is treated as gain or loss from the sale of a capital asset. Because Sunridge holds no hot assets, Caldwell's entire $80,000 gain is capital gain rather than ordinary income.
Wrong (B): Ordinary income treatment would apply only to the extent the partnership held hot assets (zero-basis receivables or appreciated inventory), whereas the facts specify none.
Wrong (C): A 50/50 split between capital gain and ordinary income has no statutory basis when the partnership holds no hot assets — there is nothing to trigger the ordinary-income carve-out, rather the entire gain follows the Section 741 capital-asset rule.
Wrong (D): Gain from the sale of a partnership interest is taxable rather than tax-exempt; a capital gain is fully recognized even though it may qualify for preferential long-term rates.$EXPL$
WHERE id = 10830;

-- Q10841 — Contribution where liability relief exceeds basis → gain
-- Strip Sec 752(b) citation; Sec 731 gain recognition is in-scope.
UPDATE questions
SET explanation = $EXPL$Correct (D): When a partner contributes property subject to a liability the partnership assumes, the contributing partner's basis starts with the adjusted basis of the property. The liability shift is treated as a deemed cash distribution to the contributing partner in the amount assumed by the other partners, while the contributing partner's retained share of the same liability is treated as a deemed cash contribution. Here: $60,000 (property basis) + $75,000 (retained share of liability) - $150,000 (total liability relief) = -$15,000, which is floored at $0 with $15,000 recognized as capital gain under IRC Section 731(a).
Wrong (A): A $60,000 outside basis ignores the net liability relief of $75,000, which exceeds the property basis and triggers gain rather than leaving basis at the pre-contribution level.
Wrong (B): While the $0 basis is correct, stating no gain is recognized is wrong because the net liability relief exceeds the property basis by $15,000 — however that excess must be recognized as gain.
Wrong (C): A $135,000 basis adds the property basis and retained liability share without subtracting the full liability assumed by the partnership, whereas the correct formula nets all three components.$EXPL$
WHERE id = 10841;

-- Q11101 — Current partnership termination rule (concept level)
-- Fix the broken "1)," stem. Strip the banned "technical termination"
-- phrase from wrong-answer explanations; keep the concept-level fact of
-- the current Sec 708 cessation-of-business rule and the TCJA repeal of
-- the 50%-sale trigger.
UPDATE questions
SET stem = $EXPL$The JKL Partnership has been operating for twelve years. Recently, two of the three partners retired and the remaining partner continued the business alone. For federal tax purposes, when does a partnership terminate?$EXPL$,
    explanation = $EXPL$Correct (B): Under IRC Section 708, a partnership terminates only when no part of its business, financial operation, or venture continues to be carried on by any of its partners in a partnership. This cessation-of-business trigger is the sole termination rule in effect for tax years beginning after 2017.
Wrong (A): The TCJA of 2017 repealed the former rule that deemed a partnership terminated when 50% or more of interests were sold within a 12-month period. That rule is no longer in effect, whereas the cessation-of-business trigger remains.
Wrong (C): Admission of a new partner does not trigger termination under current law regardless of capital contribution size, rather than the former 50%-sale test that no longer applies.
Wrong (D): Failure to file Form 1065 may result in penalties, however it does not cause the partnership to terminate for federal tax purposes.$EXPL$
WHERE id = 11101;

-- Q11106 — Partner loan creates recourse liability allocated to lender
-- Strip the banned "economic risk of loss" phrase and Sec 752 citation;
-- preserve the concept that recourse liabilities are allocated to the
-- partner bearing repayment risk.
UPDATE questions
SET explanation = $EXPL$Correct (B): Under IRC's partnership liability-allocation rules, a partner's loan to the partnership creates a recourse liability that is allocated to the partner who ultimately bears the repayment risk. Because only Garrett is on the hook for repayment of the $80,000 loan, the entire liability is allocated to Garrett's basis. Hansen has no repayment obligation and receives no basis increase, whereas nonrecourse liabilities would be split between the partners by profit-sharing ratios.
Wrong (A): Splitting the liability $40,000 each based on profit-sharing ratios applies only to nonrecourse liabilities rather than recourse liabilities, where repayment-risk allocation controls.
Wrong (C): Both partners' bases increasing by $80,000 each would double-count the liability, which totals only $80,000 — unlike the correct allocation that puts the full amount with the lending partner.
Wrong (D): Partner loans create partnership liabilities that increase outside basis, even though they are not capital contributions in the equity sense, whereas a pure equity contribution would flow through the capital account differently.$EXPL$
WHERE id = 11106;

-- Q11110 — Liability decrease → deemed distribution (concept level)
-- Strip Sec 752(b) citation; preserve the deemed-distribution concept.
UPDATE questions
SET explanation = $EXPL$Correct (A): Under IRC, a decrease in a partner's share of partnership liabilities is treated as a deemed cash distribution to the partner. Jennings's share decreased from $60,000 to $20,000 — a reduction of $40,000. This deemed distribution reduces her outside basis from $120,000 to $80,000 under the partnership basis rules.
Wrong (B): $60,000 incorrectly uses the full original liability share rather than the net decrease of $40,000 ($60,000 minus $20,000).
Wrong (C): Loan repayment does affect partner basis because the decrease in a partner's share of liabilities is treated as a deemed distribution, unlike a pure balance-sheet transaction that never moves through partner bases.
Wrong (D): $100,000 applies the full loan repayment amount rather than Jennings's 40% share of the decrease, and no gain is recognized because the deemed distribution does not exceed basis.$EXPL$
WHERE id = 11110;

-- Q11114 — Loss on liquidating distribution composition rule (concept)
-- Fix the broken "2)," stem. Replace "unrealized receivables" jargon with
-- "accounts receivable" in stem, choices, and explanation.
UPDATE questions
SET stem = $EXPL$Davis, a 25% partner in Elm Street Partners, receives a liquidating distribution consisting of $30,000 cash and $10,000 in partnership accounts receivable (zero basis). Davis's outside basis before the distribution is $60,000. Under the partnership distribution rules, when can a partner recognize a loss from a partnership distribution?$EXPL$,
    choices = $EXPL$["Only in a liquidating distribution consisting solely of money, accounts receivable, and inventory", "In any distribution where the FMV of property received is less than the partner's outside basis", "In any current distribution that reduces the partner's basis to zero", "Whenever distributed property has a FMV below its inside basis"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (A): Under IRC Section 731(a)(2), a partner recognizes loss on a partnership distribution only in a liquidating distribution and only when the distribution consists solely of money, accounts receivable, and inventory with a total value less than the partner's outside basis. No loss is recognized in current (nonliquidating) distributions, rather than the general property-distribution rule.
Wrong (B): Loss recognition is not based on FMV comparisons in any distribution; Section 731(a)(2) requires liquidating treatment and a restricted asset composition rather than a simple FMV test.
Wrong (C): Current distributions never produce a recognized loss regardless of the basis reduction, whereas only liquidating distributions with the restricted asset composition can.
Wrong (D): The comparison of distributed property's FMV to its inside basis is not the test for partner loss recognition, rather the test compares the partner's outside basis to the total distribution value in a qualifying liquidation.$EXPL$
WHERE id = 11114;

-- Q11115 — Character preservation on contributed receivables (concept)
-- Replace "unrealized receivables" with "accounts receivable" in stem
-- and explanation. Sec 724(a) and Sec 721 citations are not banned.
UPDATE questions
SET stem = $EXPL$Park, a cash-method sole proprietor, contributes $75,000 in accounts receivable (zero tax basis) to Crestview Partners in exchange for a 20% interest. These receivables represent services already performed but not yet collected. What happens to the character of these receivables once they are held by the partnership?$EXPL$,
    explanation = $EXPL$Correct (A): Under IRC Section 724(a), contributed accounts receivable retain their ordinary-income character in the partnership's hands. When the partnership later collects or disposes of the receivables, the resulting income is ordinary regardless of the partnership's accounting method — preventing conversion of ordinary income into capital gain through contribution to a partnership.
Wrong (B): Conversion to capital gain property is the exact mischaracterization Section 724 was designed to prevent. The receivable does not change character upon contribution, unlike property whose character may be redetermined at the partnership level.
Wrong (C): Section 1231 treatment applies to depreciable business property held more than one year, rather than to income rights contributed under IRC Section 721.
Wrong (D): The partnership's accounting method is irrelevant to the character determination, whereas Section 724(a) mandates ordinary income treatment regardless of method.$EXPL$
WHERE id = 11115;

-- ============================================================
-- DELETES
-- ============================================================
-- Each deletion targets a question whose substantive teaching is out of
-- scope per the Partnerships spec. Grouped by drift category.

-- --- Sec 704(b) special allocation mechanics ---
DELETE FROM questions WHERE id = 586;   -- Substantial economic effect test
DELETE FROM questions WHERE id = 2842;  -- Substantial economic effect (duplicate pattern)
DELETE FROM questions WHERE id = 10831; -- Nonrecourse deduction allocation / partnership minimum gain
DELETE FROM questions WHERE id = 10833; -- Transitory allocation substantiality
DELETE FROM questions WHERE id = 10846; -- Qualified income offset mechanics
DELETE FROM questions WHERE id = 10854; -- Three-prong economic effect test
DELETE FROM questions WHERE id = 11113; -- Sec 761(c) retroactive amendment + 704(b) mechanics

-- --- Sec 704(c) built-in gain / curative / remedial / ceiling rule ---
DELETE FROM questions WHERE id = 10753; -- Sec 704(c)(1)(B) 7-year anti-abuse distribution
DELETE FROM questions WHERE id = 11117; -- Sec 704(c)(1)(B) distribution back to contributor
DELETE FROM questions WHERE id = 11121; -- 704(c) curative allocation method
DELETE FROM questions WHERE id = 11128; -- 704(c) traditional method ceiling rule

-- --- Sec 754 / 743(b) / 755 election mechanics ---
DELETE FROM questions WHERE id = 590;   -- Purpose of Sec 754 election
DELETE FROM questions WHERE id = 593;   -- Sec 743(d) mandatory built-in-loss adjustment
DELETE FROM questions WHERE id = 10762; -- Sec 754 + 743(b) transferee-specific analysis
DELETE FROM questions WHERE id = 10855; -- Mandatory 743(d) substantial built-in loss
DELETE FROM questions WHERE id = 11100; -- Sec 755 allocation of 743(b) adjustment by asset class

-- --- Sec 751 hot-asset computation beyond the concept ---
DELETE FROM questions WHERE id = 2849;  -- Hot asset ordinary income math
DELETE FROM questions WHERE id = 10764; -- Sec 1245 recapture as unrealized receivable

-- --- Sec 752 liability allocation mechanics ---
DELETE FROM questions WHERE id = 11112; -- Constructive liquidation + DRO analysis
DELETE FROM questions WHERE id = 11120; -- Three-tier nonrecourse allocation with minimum gain

-- --- Sec 736 retiring partner mechanics ---
DELETE FROM questions WHERE id = 10856; -- 736(a)/(b) split for general partnership goodwill
DELETE FROM questions WHERE id = 11118; -- 736(a)/(b) split for service partnership retirement

-- --- Sec 707(a)(2) disguised sale ---
DELETE FROM questions WHERE id = 10743; -- Disguised sale with 2-year presumption

-- --- Sec 465 / 469 at-risk and passive activity mechanics ---
DELETE FROM questions WHERE id = 10745; -- Sec 465 at-risk with qualified nonrecourse exception
DELETE FROM questions WHERE id = 10760; -- Sec 469 500-hour material participation test

-- --- BBA audit regime ---
DELETE FROM questions WHERE id = 11123; -- Imputed underpayment at highest rate

-- --- Capital account definition (too adjacent to 704(b) mechanics) ---
DELETE FROM questions WHERE id = 10832; -- Capital account as equity-tracking record

COMMIT;
