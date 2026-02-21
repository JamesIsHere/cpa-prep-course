-- Migration: Upgrade 9 moderate-scoring Estate and Gift Tax questions
-- Fixes: short-stem, length-cuing
-- Target: all questions score 7+ after this migration

-- Q248 [score:4] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is preparing the estate tax return (Form 706) for a decedent who owned real estate, life insurance policies, a jointly held brokerage account, and assets in a revocable trust. The CPA must determine which assets are included in the gross estate. A decedent''s gross estate includes which of the following?',
  choices = '["Only assets held solely in the decedent''s name at the time of death","Only assets that pass through the probate process under the decedent''s will","All assets in which the decedent had an interest at death, including life insurance, jointly held property, and certain transfers","Only assets specifically identified and listed in the decedent''s last will and testament"]'
WHERE id = 248;

-- Q565 [score:6] short-stem(11w) → expand stem with scenario
UPDATE questions SET
  stem = 'A wealthy grandparent transfers $2 million directly to a grandchild, bypassing the grandparent''s children entirely. The CPA advises that this transfer may trigger an additional transfer tax beyond the gift tax. The generation-skipping transfer tax (GSTT) is designed to prevent taxpayers from:'
WHERE id = 565;

-- Q2760 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'During 2026, Patterson makes gifts of $25,000 to each of three nieces and a $10,000 gift to a friend. Patterson''s CPA advises that a gift tax return is required. A gift tax return (Form 709) must be filed when:'
WHERE id = 2760;

-- Q2761 [score:6] short-stem(11w) → expand stem with scenario
UPDATE questions SET
  stem = 'A grandmother wants to help pay for her grandchild''s surgery, which costs $50,000. The grandmother''s CPA advises her on the most tax-efficient way to make the payment. Which of the following transfers is NOT subject to gift tax?'
WHERE id = 2761;

-- Q2763 [score:6] short-stem(9w) → expand stem with scenario
UPDATE questions SET
  stem = 'A CPA is calculating the federal estate tax liability for a client''s estate valued at $18 million. The CPA needs to apply the correct maximum marginal tax rate to the taxable estate amount above the exemption. What is the maximum estate tax rate for 2026?'
WHERE id = 2763;

-- Q2765 [score:6] short-stem(9w) → expand stem with scenario
UPDATE questions SET
  stem = 'The executor of the Thornton estate is considering whether to elect an alternate valuation date because the estate''s assets have declined in value since the decedent''s death. The alternate valuation date for estate tax purposes is:'
WHERE id = 2765;

-- Q2768 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'A CPA is advising a client who made a $5 million direct transfer to a grandchild that exceeds the client''s remaining GST exemption. The CPA needs to determine the tax rate that will apply to the taxable portion. What is the generation-skipping transfer tax (GSTT) rate for 2026?'
WHERE id = 2768;

-- Q2776 [score:6] short-stem(8w) → expand stem with scenario
UPDATE questions SET
  stem = 'Harmon establishes an irrevocable trust for the benefit of his three children, contributing $57,000 in 2026. The trust includes a provision allowing each beneficiary to withdraw their share of contributions for 45 days after each gift. A Crummey power in an irrevocable trust allows:'
WHERE id = 2776;

-- Q2779 [score:6] short-stem(8w) → expand stem with scenario
UPDATE questions SET
  stem = 'A CPA is preparing the estate tax return for a decedent who left $8 million to a surviving spouse who is a U.S. citizen. The CPA advises the executor that the marital deduction will eliminate tax on this transfer. The marital deduction for estate tax purposes is:'
WHERE id = 2779;
