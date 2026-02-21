-- Migration: Bloom's L1 rebalancing — REG batch 1 (45 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 45 L2 (Application) questions to L1 (Remember/Understand) depth for REG section
-- Affected topics: Property Transactions: Basis, Property Transactions: Gains/Losses, Partnerships, Circular 230

BEGIN;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (14 questions)
-- ============================================================

-- ID 519: Property Transactions: Basis — Section 179 active income limitation
-- correct_index = 0
UPDATE questions SET
  stem = 'What limits the Section 179 expense deduction?',
  choices = '["The deduction cannot exceed the taxpayer''s taxable income from active trades or businesses", "The deduction is limited to 50% of the cost of the asset", "The deduction may only be claimed on real property placed in service during the year", "The deduction is available only to C corporations with gross receipts under $5 million"]'::jsonb,
  explanation = 'Correct (A): Under Section 179(b)(3), the Section 179 expense deduction is limited to the taxable income derived from the active conduct of any trade or business during the tax year. Any amount disallowed under this limitation is carried forward to succeeding tax years. (B) is wrong because Section 179 allows a deduction up to the full cost of qualifying property, subject to the annual dollar cap and income limitation, not a 50% cap. (C) is wrong because Section 179 applies primarily to tangible personal property and certain qualified real property improvements, not real property generally. (D) is wrong because Section 179 is available to individuals, partnerships, and S corporations as well, not only C corporations.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 519;

-- ID 1284: Property Transactions: Basis — H.R. 1 bonus depreciation rate
-- correct_index = 1
UPDATE questions SET
  stem = 'Under H.R. 1, what is the bonus depreciation rate for qualified property?',
  choices = '["50% of the cost of the asset in the year it is placed in service", "100% of the cost of the asset in the year it is placed in service", "80% of the cost for new property and 50% for used property", "The bonus rate equals the MACRS first-year percentage multiplied by two"]'::jsonb,
  explanation = 'Correct (B): Under Section 168(k) as amended by the Tax Cuts and Jobs Act (H.R. 1), 100% bonus depreciation is allowed for qualified property acquired and placed in service after September 27, 2017, and before January 1, 2023. The provision permits a first-year deduction equal to the entire cost of the qualifying asset. (A) is wrong because the 50% rate was the pre-TCJA bonus depreciation rate. (C) is wrong because H.R. 1 allowed 100% bonus depreciation for both new and used property, a key change from prior law. (D) is wrong because bonus depreciation is a flat percentage of cost, not a multiple of the MACRS table rate.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1284;

-- ID 2532: Property Transactions: Basis — Rental property basis with closing costs
-- correct_index = 2
UPDATE questions SET
  stem = 'Which costs are included in the tax basis of a purchased rental property?',
  choices = '["Only the cash down payment made at closing", "Only the contract purchase price of the property", "The purchase price plus closing costs such as title insurance, legal fees, and recording fees", "The fair market value of the property on the date of purchase regardless of the price paid"]'::jsonb,
  explanation = 'Correct (C): Under Section 1012 and Treasury Regulation 1.1012-1, the basis of property is its cost, which includes the purchase price and all costs incident to the acquisition such as title insurance, legal fees, recording fees, and transfer taxes. These capitalized closing costs become part of the depreciable basis of the rental property. (A) is wrong because basis includes the full purchase price (including any mortgage financing), not just the down payment. (B) is wrong because closing costs paid by the buyer are added to the contract price to determine total cost basis. (D) is wrong because basis of purchased property is its cost, not its fair market value.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2532;

-- ID 2533: Property Transactions: Basis — Capital improvement basis adjustment
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 1016, how do capital improvements affect a property''s adjusted basis?',
  choices = '["Capital improvements are expensed in the year incurred and do not change the adjusted basis", "Capital improvements reduce the adjusted basis by the amount spent", "Capital improvements have no effect on basis because they are treated as maintenance", "Capital improvements increase the adjusted basis of the property"]'::jsonb,
  explanation = 'Correct (D): Under Section 1016(a)(1), the basis of property is increased by the cost of capital improvements. A capital improvement is an expenditure that adds to the value of the property, prolongs its useful life, or adapts it to a new use. These amounts are capitalized and added to the property''s adjusted basis. (A) is wrong because capital improvements are capitalized, not expensed. (B) is wrong because improvements increase rather than decrease basis. (C) is wrong because capital improvements are distinguished from repairs and maintenance, which may be currently deductible under Section 162.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2533;

-- ID 2534: Property Transactions: Basis — Accumulated depreciation effect
-- correct_index = 0
UPDATE questions SET
  stem = 'How does claiming depreciation affect the adjusted basis of a building?',
  choices = '["Depreciation deductions reduce the adjusted basis of the building", "Depreciation deductions increase the adjusted basis of the building", "Depreciation has no effect on basis until the property is sold", "Depreciation reduces basis only if the taxpayer itemizes deductions"]'::jsonb,
  explanation = 'Correct (A): Under Section 1016(a)(2), the basis of property must be decreased by the amount of depreciation allowed or allowable. Each year that depreciation is claimed (or could have been claimed), the adjusted basis of the building is reduced by that amount. This reduction continues until the property is fully depreciated or disposed of. (B) is wrong because depreciation reduces rather than increases basis. (C) is wrong because basis is adjusted each year depreciation is allowed or allowable, not deferred until sale. (D) is wrong because the depreciation adjustment applies regardless of whether the taxpayer itemizes deductions.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2534;

-- ID 2535: Property Transactions: Basis — Allowed vs allowable depreciation
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 1016, what is the allowed or allowable depreciation rule?',
  choices = '["Basis is reduced only by the depreciation actually claimed on filed tax returns", "Basis is reduced by the greater of the depreciation actually claimed or the depreciation that should have been claimed", "Basis is reduced only if the IRS audits the taxpayer and determines depreciation was understated", "Basis is reduced by the lesser of actual depreciation claimed or straight-line depreciation"]'::jsonb,
  explanation = 'Correct (B): Under Section 1016(a)(2), the adjustment to basis for depreciation is the amount allowed (actually deducted) or allowable (the amount that should have been deducted under the proper method), whichever is greater. This prevents taxpayers from inflating basis by failing to claim depreciation to which they were entitled. (A) is wrong because basis is reduced even if the taxpayer failed to claim the depreciation. (C) is wrong because the allowed-or-allowable rule applies automatically, not only upon audit. (D) is wrong because the rule uses the greater of the two amounts, not the lesser.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2535;

-- ID 2536: Property Transactions: Basis — Gift basis with appreciation
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 1015, what is the donor''s basis rule for gifted property?',
  choices = '["The donee''s basis is always the fair market value on the date of the gift", "The donee''s basis is zero because no consideration was paid for the gift", "The donee''s basis is the same as the donor''s adjusted basis at the time of the gift", "The donee''s basis is the donor''s original cost regardless of any adjustments"]'::jsonb,
  explanation = 'Correct (C): Under Section 1015(a), when property is acquired by gift, the donee''s basis is the same as the donor''s adjusted basis (often called a carryover or transferred basis). If the donor paid gift tax, a portion of the gift tax may be added to the donee''s basis. (A) is wrong because fair market value basis applies to inherited property under Section 1014, not gifts. (B) is wrong because the donee receives the donor''s carryover basis, not zero. (D) is wrong because the basis carries over as adjusted, reflecting improvements and depreciation, not the original unadjusted cost.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2536;

-- ID 2539: Property Transactions: Basis — Inherited property basis
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 1014, what basis does inherited property receive?',
  choices = '["The decedent''s original cost basis carries over to the heir", "The heir receives a basis equal to the amount of estate tax paid on the property", "The heir''s basis is the lesser of the decedent''s basis or fair market value at death", "The heir receives a basis equal to the fair market value of the property on the date of the decedent''s death"]'::jsonb,
  explanation = 'Correct (D): Under Section 1014(a), the basis of property acquired from a decedent is the fair market value at the date of the decedent''s death (or the alternate valuation date if elected). This is commonly called a stepped-up (or stepped-down) basis. (A) is wrong because inherited property receives a fair market value basis, not a carryover basis. (B) is wrong because the heir''s basis equals fair market value at death, not the estate tax attributable to the property. (C) is wrong because the lower-of rule does not apply to inherited property; Section 1014 provides a full fair market value basis.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2539;

-- ID 2540: Property Transactions: Basis — Alternate valuation date
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 2032, when can an estate elect the alternate valuation date?',
  choices = '["When the election would decrease both the gross estate value and the estate tax liability", "When the estate includes real property located in more than one state", "When the decedent''s will specifically authorizes the executor to use an alternate date", "When the estate''s total assets exceed the unified credit exemption amount"]'::jsonb,
  explanation = 'Correct (A): Under Section 2032(c), the alternate valuation date election is available only if it results in a decrease in both the value of the gross estate and the amount of estate tax imposed. The alternate date values property six months after the decedent''s death (or the date of disposition if earlier). (B) is wrong because the location of real property has no bearing on the alternate valuation election. (C) is wrong because the election is made by the executor on the estate tax return, not authorized by the decedent''s will. (D) is wrong because the threshold for the election is the decrease-in-value requirement, not the size of the estate.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2540;

-- ID 2541: Property Transactions: Basis — Effect of alternate valuation election
-- correct_index = 1
UPDATE questions SET
  stem = 'What is the effect of electing the alternate valuation date under Section 2032?',
  choices = '["The heir receives the decedent''s carryover basis instead of a stepped-up basis", "Estate assets are valued six months after the decedent''s death instead of on the date of death", "The estate tax filing deadline is extended by six months automatically", "All estate assets are frozen at their date-of-death values regardless of later changes"]'::jsonb,
  explanation = 'Correct (B): Under Section 2032(a), if the alternate valuation date is elected, estate property is valued six months after the decedent''s death. Property sold, distributed, or otherwise disposed of within the six-month period is valued as of the date of disposition. The heir''s basis under Section 1014 is the alternate valuation date value. (A) is wrong because the heir still receives a stepped-up (or stepped-down) basis, adjusted to the alternate date value. (C) is wrong because the election does not affect the estate tax filing deadline. (D) is wrong because the alternate valuation date specifically changes values from the date-of-death amount.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2541;

-- ID 2542: Property Transactions: Basis — Gift basis dual basis rule
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 1015, what is the dual basis rule for gifts of depreciated property?',
  choices = '["The donee always takes the fair market value as basis for both gain and loss purposes", "The donee takes the donor''s basis for both gain and loss, reduced by any gift tax paid", "For gain the donee uses the donor''s basis; for loss the donee uses the fair market value at the date of the gift", "The donee chooses whichever basis — donor''s cost or fair market value — produces the smaller tax liability"]'::jsonb,
  explanation = 'Correct (C): Under Section 1015(a), when the fair market value of gifted property on the date of the gift is less than the donor''s adjusted basis, a dual basis rule applies. For purposes of determining gain, the donee uses the donor''s adjusted basis. For purposes of determining loss, the donee uses the fair market value at the date of the gift. If the selling price falls between these two amounts, no gain or loss is recognized. (A) is wrong because the donee uses the donor''s basis for gain purposes, not fair market value. (B) is wrong because the loss basis is the lower fair market value, not the donor''s basis. (D) is wrong because the taxpayer does not choose; the Code prescribes which basis applies based on whether a gain or loss would result.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2542;

-- ID 2543: Property Transactions: Basis — Lump-sum purchase allocation
-- correct_index = 3
UPDATE questions SET
  stem = 'How is the cost allocated when multiple assets are purchased in a single transaction?',
  choices = '["The entire cost is assigned to the asset with the longest useful life", "The cost is divided equally among all assets acquired", "Each asset is assigned its historical book value from the seller''s records", "The total cost is allocated among the assets based on their relative fair market values"]'::jsonb,
  explanation = 'Correct (D): Under Treasury Regulation 1.1012-1(a) and general tax principles, when multiple assets are acquired in a lump-sum (basket) purchase, the total cost is allocated among the individual assets in proportion to their relative fair market values at the date of acquisition. This ensures each asset receives an appropriate depreciable or amortizable basis. (A) is wrong because the entire cost is not assigned to a single asset. (B) is wrong because equal allocation ignores differences in asset values. (C) is wrong because the allocation is based on fair market values at acquisition, not the seller''s book values.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2543;

-- ID 2544: Property Transactions: Basis — Converted property basis
-- correct_index = 0
UPDATE questions SET
  stem = 'What is the depreciable basis of property converted from personal to rental use?',
  choices = '["The lesser of the taxpayer''s adjusted basis or the fair market value on the date of conversion", "The original purchase price of the property", "The fair market value on the date of conversion regardless of the taxpayer''s cost", "The taxpayer''s adjusted basis plus any repairs made before the conversion date"]'::jsonb,
  explanation = 'Correct (A): Under Treasury Regulation 1.168(i)-4(b) and Section 167, when property is converted from personal use to rental or business use, the depreciable basis is the lesser of the taxpayer''s adjusted basis in the property or the fair market value at the time of conversion. This prevents a taxpayer from depreciating a personal-use decline in value. (B) is wrong because the original purchase price does not account for any decline in fair market value. (C) is wrong because if the adjusted basis is lower than fair market value, the adjusted basis is used. (D) is wrong because personal-use repairs are not added to basis, and the lower-of test still applies.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2544;

-- ID 2545: Property Transactions: Basis — Gift basis FMV between cost and basis
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 1015, what basis does the donee take when the FMV is between the donor''s cost and the donor''s adjusted basis?',
  choices = '["The donee takes the fair market value at the date of the gift as basis for all purposes", "If the gift property has a fair market value below the donor''s basis, the donee uses the donor''s basis for gain and the FMV for loss", "The donee takes the average of the donor''s basis and the fair market value at the gift date", "The donee takes the donor''s original cost basis without any adjustments"]'::jsonb,
  explanation = 'Correct (B): Under Section 1015(a), when property is gifted and the FMV at the date of gift is less than the donor''s adjusted basis, the dual basis rule applies. The donee uses the donor''s adjusted basis for determining gain and the FMV at the date of gift for determining loss. If the amount realized on a subsequent sale falls between these two figures, no gain or loss is recognized. (A) is wrong because the donee does not use FMV for gain purposes. (C) is wrong because no averaging method exists under Section 1015. (D) is wrong because the donor''s basis is the adjusted basis (reflecting depreciation, improvements, etc.), not original unadjusted cost.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2545;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (12 questions)
-- ============================================================

-- ID 216: Property Transactions: Gains/Losses — Capital loss limitation
-- correct_index = 2
UPDATE questions SET
  stem = 'What is the maximum capital loss deduction against ordinary income for individuals?',
  choices = '["There is no limit on capital loss deductions for individual taxpayers", "Capital losses may offset ordinary income up to $1,500 per year", "Capital losses may offset ordinary income up to $3,000 per year", "Capital losses are only deductible against capital gains and never against ordinary income"]'::jsonb,
  explanation = 'Correct (C): Under Section 1211(b), individual taxpayers may deduct net capital losses against ordinary income up to $3,000 per year ($1,500 for married filing separately). Any excess capital loss is carried forward indefinitely to future tax years under Section 1212(b). (A) is wrong because the $3,000 annual cap limits the offset against ordinary income. (B) is wrong because $1,500 is the limit for married filing separately, not the general individual limit. (D) is wrong because up to $3,000 of net capital losses may offset ordinary income annually.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 216;

-- ID 522: Property Transactions: Gains/Losses — Net investment income tax rate and threshold
-- correct_index = 3
UPDATE questions SET
  stem = 'What is the net investment income tax (NIIT) rate and threshold?',
  choices = '["1.5% on investment income exceeding $100,000", "2.9% on all investment income regardless of filing status", "5% on investment income for taxpayers with AGI over $500,000", "3.8% on the lesser of net investment income or MAGI exceeding $200,000 (single) or $250,000 (MFJ)"]'::jsonb,
  explanation = 'Correct (D): Under Section 1411, the net investment income tax imposes a 3.8% surtax on the lesser of net investment income or the excess of modified adjusted gross income (MAGI) over the threshold amount — $200,000 for single filers and $250,000 for married filing jointly. (A) is wrong because the rate is 3.8%, not 1.5%, and the threshold is $200,000/$250,000, not $100,000. (B) is wrong because the NIIT is 3.8%, not 2.9%, and applies only above the threshold. (C) is wrong because the rate is 3.8% and the thresholds are $200,000/$250,000, not 5% and $500,000.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 522;

-- ID 524: Property Transactions: Gains/Losses — NIIT income types
-- correct_index = 0
UPDATE questions SET
  stem = 'Which types of income are subject to the 3.8% net investment income tax?',
  choices = '["Interest, dividends, capital gains, rental income, and passive activity income", "Only long-term capital gains and qualified dividends", "Wages, salaries, and self-employment income above the threshold", "Distributions from tax-deferred retirement accounts such as traditional IRAs"]'::jsonb,
  explanation = 'Correct (A): Under Section 1411(c), net investment income includes interest, dividends, annuities, royalties, rents, capital gains, and income from passive activities and from trading in financial instruments or commodities. (B) is wrong because the NIIT applies to all investment income types listed in Section 1411(c), not only long-term capital gains and qualified dividends. (C) is wrong because wages, salaries, and self-employment income are excluded from the NIIT. (D) is wrong because distributions from qualified retirement plans and IRAs are generally excluded from net investment income under Section 1411(c)(5).',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 524;

-- ID 526: Property Transactions: Gains/Losses — Capital gain netting order
-- correct_index = 1
UPDATE questions SET
  stem = 'What is the order for netting capital gains and losses?',
  choices = '["All gains and losses are combined into a single net figure regardless of holding period", "Short-term gains and losses are netted first, then long-term gains and losses are netted, and the net results are combined", "Long-term gains are offset first, followed by short-term gains, with losses applied last", "Gains are reported in the year realized and losses are carried back two years before being carried forward"]'::jsonb,
  explanation = 'Correct (B): Under Section 1222, capital gains and losses are first separated into short-term (held one year or less) and long-term (held more than one year) categories. Within each category, gains and losses are netted. Then the net short-term and net long-term results are combined to produce the overall net capital gain or loss. (A) is wrong because the netting process requires separate treatment of short-term and long-term before combining. (C) is wrong because the netting is done within holding-period categories simultaneously, not sequentially by gains then losses. (D) is wrong because capital losses for individuals are carried forward, not carried back.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 526;

-- ID 528: Property Transactions: Gains/Losses — Section 1231 lookback rule
-- correct_index = 2
UPDATE questions SET
  stem = 'What is the Section 1231 five-year lookback rule?',
  choices = '["Any Section 1231 gain is automatically treated as a long-term capital gain without recapture", "Section 1231 losses from the current year must be spread evenly over the prior five years", "Net Section 1231 gains are recharacterized as ordinary income to the extent of unrecaptured Section 1231 losses from the prior five years", "The lookback rule allows taxpayers to amend returns for the prior five years to reclassify ordinary losses as capital losses"]'::jsonb,
  explanation = 'Correct (C): Under Section 1231(c), if a taxpayer has a net Section 1231 gain in the current year, the gain is treated as ordinary income to the extent of any non-recaptured net Section 1231 losses from the five preceding tax years. This prevents taxpayers from taking ordinary loss treatment in loss years and capital gain treatment in gain years without recapture. (A) is wrong because the lookback rule may recharacterize gains as ordinary income. (B) is wrong because the rule recaptures prior losses against current gains, not the reverse. (D) is wrong because the lookback rule applies automatically to current gains, not by amending prior returns.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 528;

-- ID 529: Property Transactions: Gains/Losses — NIIT calculation
-- correct_index = 3
UPDATE questions SET
  stem = 'How is the net investment income tax calculated?',
  choices = '["3.8% multiplied by total adjusted gross income", "3.8% multiplied by total net investment income without regard to AGI", "3.8% multiplied by the excess of net investment income over the statutory threshold", "3.8% multiplied by the lesser of net investment income or the excess of MAGI over the statutory threshold"]'::jsonb,
  explanation = 'Correct (D): Under Section 1411(a)(1), the net investment income tax is 3.8% of the lesser of (1) net investment income or (2) the excess of modified adjusted gross income over the applicable threshold ($200,000 single, $250,000 MFJ). This two-prong test ensures the tax applies only to the portion of investment income attributable to income above the threshold. (A) is wrong because the tax base is not total AGI. (B) is wrong because the MAGI threshold comparison is required. (C) is wrong because the tax is on the lesser of two amounts, not on the excess of NII over the threshold.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 529;

-- ID 2565: Property Transactions: Gains/Losses — Section 1245 recapture purpose
-- correct_index = 0
UPDATE questions SET
  stem = 'What is the purpose of Section 1245 depreciation recapture?',
  choices = '["To require gain on the sale of depreciable personal property to be recognized as ordinary income to the extent of prior depreciation deductions", "To allow taxpayers to defer gain on the sale of personal property by reinvesting in similar property", "To convert capital gains on personal property sales into tax-exempt income", "To limit the total depreciation that may be claimed on personal property over its useful life"]'::jsonb,
  explanation = 'Correct (A): Section 1245 requires that gain on the disposition of depreciable personal property (such as machinery and equipment) be recognized as ordinary income to the extent of depreciation previously allowed or allowable. This recapture prevents taxpayers from claiming ordinary depreciation deductions and then recognizing the gain as favorably taxed capital gain. (B) is wrong because Section 1245 does not provide deferral; that concept applies to Section 1031 like-kind exchanges. (C) is wrong because Section 1245 converts what would be capital gain back into ordinary income, not tax-exempt income. (D) is wrong because Section 1245 addresses the character of gain on sale, not the amount of depreciation allowed during the holding period.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2565;

-- ID 2568: Property Transactions: Gains/Losses — Equipment sale Section 1245 treatment
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 1245, how is gain on the sale of depreciable personal property treated?',
  choices = '["All gain is treated as long-term capital gain regardless of the depreciation claimed", "Gain is treated as ordinary income to the extent of depreciation previously allowed or allowable", "Gain is split equally between ordinary income and capital gain", "Gain is tax-free if the property was held for more than five years"]'::jsonb,
  explanation = 'Correct (B): Under Section 1245(a)(1), gain recognized on the disposition of Section 1245 property is treated as ordinary income to the extent of the lesser of the gain realized or the total depreciation (or amortization) allowed or allowable. Any gain in excess of the recapture amount is treated as Section 1231 gain. (A) is wrong because Section 1245 specifically overrides capital gain treatment to the extent of prior depreciation. (C) is wrong because the recapture is based on actual depreciation claimed, not an equal split. (D) is wrong because the holding period does not exempt the gain from recapture.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2568;

-- ID 2569: Property Transactions: Gains/Losses — Section 1250 recapture rate
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 1250, what is the recapture rate for unrecaptured Section 1250 gain?',
  choices = '["Unrecaptured Section 1250 gain is taxed at the ordinary income rates up to 37%", "Unrecaptured Section 1250 gain is taxed at 20%, the same as other long-term capital gains", "Unrecaptured Section 1250 gain is taxed at a maximum rate of 25%", "Unrecaptured Section 1250 gain is exempt from tax if the property was held more than ten years"]'::jsonb,
  explanation = 'Correct (C): Under Section 1(h)(1)(E), unrecaptured Section 1250 gain — the portion of gain attributable to depreciation on real property — is taxed at a maximum rate of 25%. This rate applies to straight-line depreciation taken on Section 1250 property (real property). Any additional depreciation in excess of straight-line would be recaptured as ordinary income under Section 1250(a). (A) is wrong because unrecaptured Section 1250 gain has a preferential 25% cap, not the full ordinary rate. (B) is wrong because the 20% rate applies to other long-term capital gains, not unrecaptured Section 1250 gain. (D) is wrong because no holding-period exemption exists for this gain.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2569;

-- ID 2570: Property Transactions: Gains/Losses — Nonresidential real property sale
-- correct_index = 3
UPDATE questions SET
  stem = 'How is gain on the sale of nonresidential real property taxed?',
  choices = '["Entirely as ordinary income at the taxpayer''s marginal rate", "Entirely as long-term capital gain at the 20% maximum rate", "As a short-term capital gain if the property was held less than five years", "Depreciation is recaptured at a maximum 25% rate and any remaining gain is taxed as Section 1231 long-term capital gain"]'::jsonb,
  explanation = 'Correct (D): Gain on the sale of nonresidential real property held more than one year is subject to two layers of taxation. First, under Section 1(h)(1)(E), straight-line depreciation is recaptured as unrecaptured Section 1250 gain taxed at a maximum 25% rate. Second, any gain in excess of the depreciation recapture is treated as Section 1231 gain and taxed at the applicable long-term capital gain rate (0%, 15%, or 20%). (A) is wrong because real property gains are not entirely ordinary. (B) is wrong because the depreciation portion is taxed at 25%, not 20%. (C) is wrong because the short-term/long-term distinction is based on one year, not five years.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2570;

-- ID 2571: Property Transactions: Gains/Losses — Section 1245 property types
-- correct_index = 0
UPDATE questions SET
  stem = 'Which types of property are subject to Section 1245 recapture?',
  choices = '["Depreciable personal property such as machinery, equipment, vehicles, and furniture", "Residential rental buildings and their structural components", "Unimproved land held for investment purposes", "Intangible assets that are not subject to amortization"]'::jsonb,
  explanation = 'Correct (A): Section 1245 property includes depreciable personal property (tangible and intangible) such as machinery, equipment, vehicles, furniture, and certain other property described in Section 1245(a)(3). It also includes amortizable Section 197 intangibles and certain real property used as an integral part of manufacturing or production. (B) is wrong because residential rental buildings are Section 1250 property, not Section 1245 property. (C) is wrong because unimproved land is not depreciable and therefore is not subject to recapture. (D) is wrong because intangible assets subject to amortization under Section 197 are actually Section 1245 property.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2571;

-- ID 2572: Property Transactions: Gains/Losses — Capital gain netting steps
-- correct_index = 1
UPDATE questions SET
  stem = 'In the capital gains netting process, how are short-term and long-term gains combined?',
  choices = '["Short-term gains are always taxed first and any remaining loss offsets long-term gains", "After netting within each category, the net short-term result and net long-term result are combined to determine the overall capital gain or loss", "Long-term gains are offset only against long-term losses and may never be combined with short-term results", "All capital gains and losses are pooled into a single category and taxed at one blended rate"]'::jsonb,
  explanation = 'Correct (B): Under Section 1222, the netting process first determines net short-term capital gain or loss (short-term gains minus short-term losses) and net long-term capital gain or loss (long-term gains minus long-term losses). The two net amounts are then combined. A net short-term loss offsets net long-term gain, and vice versa. (A) is wrong because there is no rule requiring short-term gains to be taxed first. (C) is wrong because net short-term and net long-term results are combined in the final step. (D) is wrong because the holding period distinction is maintained for rate purposes — long-term gains receive preferential rates.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2572;

-- ============================================================
-- PARTNERSHIPS (12 questions)
-- ============================================================

-- ID 241: Partnerships — Hot assets definition
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 751, what are hot assets in a partnership?',
  choices = '["Any partnership asset that has appreciated in value since the date of acquisition", "Cash and cash equivalents held by the partnership", "Unrealized receivables and inventory items that would produce ordinary income if sold", "Assets that have been held by the partnership for less than one year"]'::jsonb,
  explanation = 'Correct (C): Under Section 751(a) and (b), hot assets include unrealized receivables (including Section 1245 and 1250 recapture) and inventory items (including items that would not be capital assets or Section 1231 property if sold by the partnership). These items generate ordinary income rather than capital gain. (A) is wrong because hot assets are defined by income character, not by appreciation. (B) is wrong because cash is not a hot asset. (D) is wrong because the holding period of the asset is not the defining criterion for hot asset classification.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 241;

-- ID 588: Partnerships — Partnership interest sale characterization
-- correct_index = 3
UPDATE questions SET
  stem = 'How is gain on the sale of a partnership interest generally characterized?',
  choices = '["Entirely as ordinary income because a partnership interest is not a capital asset", "As a combination of short-term and long-term gain based on when each underlying asset was acquired", "As tax-exempt income because the gain was already taxed at the partnership level", "As capital gain, except to the extent attributable to Section 751 hot assets which produce ordinary income"]'::jsonb,
  explanation = 'Correct (D): Under Section 741, the sale of a partnership interest is generally treated as the sale of a capital asset, producing capital gain or loss. However, under Section 751(a), the portion of gain attributable to unrealized receivables and inventory items (hot assets) is treated as ordinary income. (A) is wrong because a partnership interest is a capital asset under Section 741, not an ordinary asset. (B) is wrong because the characterization is based on the entity-level hot asset analysis, not the holding period of individual assets. (C) is wrong because partnership income is not double-taxed, but the sale of the interest is still a taxable event.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 588;

-- ID 590: Partnerships — Section 754 election purpose
-- correct_index = 0
UPDATE questions SET
  stem = 'What is the purpose of a Section 754 election?',
  choices = '["To allow the partnership to adjust the basis of its assets when a partnership interest is transferred or a distribution is made", "To permit a partner to convert ordinary income allocations into capital gain", "To exempt the partnership from filing an annual information return", "To allow the partnership to elect out of Subchapter K and be taxed as a corporation"]'::jsonb,
  explanation = 'Correct (A): A Section 754 election allows the partnership to adjust the inside basis of its assets under Section 743(b) (upon a transfer of a partnership interest) or Section 734(b) (upon a distribution to a partner). This aligns the purchasing partner''s share of inside basis with the outside basis paid for the interest. (B) is wrong because the Section 754 election relates to basis adjustments, not income character conversion. (C) is wrong because all partnerships must file Form 1065 regardless of a Section 754 election. (D) is wrong because electing out of Subchapter K is governed by Section 761(a), not Section 754.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 590;

-- ID 591: Partnerships — Section 743(b) adjustment
-- correct_index = 1
UPDATE questions SET
  stem = 'What adjustment does Section 743(b) provide after a partnership interest purchase?',
  choices = '["An adjustment to the selling partner''s capital account to reflect the sale price", "An adjustment to the basis of partnership assets with respect to the transferee partner only", "An adjustment that increases the partnership''s overall taxable income for the year of the transfer", "An adjustment that resets the holding period of all partnership assets to the date of the transfer"]'::jsonb,
  explanation = 'Correct (B): Under Section 743(b), when a Section 754 election is in effect and a partnership interest is transferred by sale or exchange (or upon death), the partnership adjusts the basis of its assets with respect to the transferee partner. This adjustment equals the difference between the transferee''s outside basis and the transferee''s share of the partnership''s inside basis. (A) is wrong because the adjustment affects the partnership''s asset basis, not the seller''s capital account. (C) is wrong because the 743(b) adjustment is a basis adjustment, not an income adjustment. (D) is wrong because the adjustment affects basis amounts, not holding periods.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 591;

-- ID 592: Partnerships — Section 751(b) distribution effect
-- correct_index = 2
UPDATE questions SET
  stem = 'What is the effect of Section 751(b) on distributions of hot assets?',
  choices = '["Hot asset distributions are always tax-free to the receiving partner", "Section 751(b) applies only to liquidating distributions, not current distributions", "A distribution that changes a partner''s share of hot assets is treated as a taxable exchange to the extent of the shift", "Section 751(b) defers all gain until the partner disposes of the distributed property"]'::jsonb,
  explanation = 'Correct (C): Under Section 751(b), if a distribution to a partner changes that partner''s proportionate share of Section 751 property (unrealized receivables and inventory), the distribution is treated as a taxable exchange to the extent of the disproportionate shift. The partner recognizes ordinary income on the deemed exchange of hot assets. (A) is wrong because Section 751(b) specifically overrides the general nonrecognition rule for distributions when hot assets are involved. (B) is wrong because Section 751(b) applies to both current and liquidating distributions. (D) is wrong because the gain from the disproportionate distribution is recognized currently, not deferred.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 592;

-- ID 593: Partnerships — Mandatory Section 754 election
-- correct_index = 3
UPDATE questions SET
  stem = 'In what circumstances is a Section 754 election mandatory?',
  choices = '["Whenever a new partner is admitted to an existing partnership", "Whenever the partnership distributes property with a fair market value exceeding $1 million", "Whenever any partner''s outside basis exceeds the partner''s share of inside basis by more than 10%", "When there is a substantial built-in loss exceeding $250,000 on a transfer of a partnership interest"]'::jsonb,
  explanation = 'Correct (D): Under Section 743(d), a downward basis adjustment is mandatory (without requiring a Section 754 election) when a partnership has a substantial built-in loss immediately after a transfer of a partnership interest. A substantial built-in loss exists when the partnership''s adjusted basis in its assets exceeds the fair market value of those assets by more than $250,000. (A) is wrong because the admission of a new partner alone does not trigger a mandatory election. (B) is wrong because there is no $1 million distribution threshold for mandatory elections. (C) is wrong because the 10% disparity test is not the statutory trigger.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 593;

-- ID 2836: Partnerships — Partner contribution basis
-- correct_index = 0
UPDATE questions SET
  stem = 'What is a partner''s outside basis after contributing cash and property to a partnership?',
  choices = '["The sum of the cash contributed plus the adjusted basis of the property contributed", "The fair market value of the cash and property contributed", "The amount stated in the partnership agreement as the partner''s capital account", "Zero, because partnership contributions are treated as nontaxable exchanges"]'::jsonb,
  explanation = 'Correct (A): Under Section 722, a partner''s initial outside basis in a partnership interest equals the amount of cash contributed plus the adjusted basis of any property contributed. This carryover basis preserves the built-in gain or loss in contributed property for future recognition. (B) is wrong because outside basis is determined by adjusted basis of contributed property, not fair market value. (C) is wrong because the capital account may reflect fair market value (under Section 704(b) book accounting), which differs from tax basis. (D) is wrong because while the contribution is generally nontaxable under Section 721, the partner still receives a basis equal to the contributed amounts.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2836;

-- ID 2837: Partnerships — Contributed property with liability
-- correct_index = 1
UPDATE questions SET
  stem = 'How does contributing property with a liability affect a partner''s outside basis?',
  choices = '["The liability has no effect on the contributing partner''s outside basis", "The contributing partner''s basis is increased by the adjusted basis of the property and decreased by the share of the liability assumed by other partners", "The contributing partner''s basis is reduced to zero whenever encumbered property is contributed", "The liability is added to the contributing partner''s basis as though additional cash were contributed"]'::jsonb,
  explanation = 'Correct (B): Under Sections 722 and 752, when a partner contributes property subject to a liability, the partner''s outside basis starts with the adjusted basis of the contributed property. Under Section 752(b), the portion of the liability assumed by the other partners is treated as a deemed distribution of cash to the contributing partner, reducing outside basis. Under Section 752(a), the contributing partner''s share of the liability is treated as a deemed contribution, increasing basis. (A) is wrong because liabilities directly affect basis calculations. (C) is wrong because basis is not automatically reduced to zero. (D) is wrong because only the contributing partner''s share of the liability increases basis; the portion shifted to other partners decreases it.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2837;

-- ID 2838: Partnerships — Partnership income allocation
-- correct_index = 2
UPDATE questions SET
  stem = 'How is partnership income allocated among partners?',
  choices = '["Equally among all partners regardless of their ownership percentages", "Based on each partner''s capital account balance at the beginning of the year", "According to the partnership agreement, provided the allocations have substantial economic effect under Section 704(b)", "Proportionally to each partner''s outside basis in the partnership"]'::jsonb,
  explanation = 'Correct (C): Under Section 704(a), a partner''s distributive share of income, gain, loss, deduction, or credit is determined by the partnership agreement. Under Section 704(b), allocations must have substantial economic effect; otherwise, allocations are made according to the partners'' interests in the partnership. (A) is wrong because partners may agree to unequal allocations if they meet the substantial economic effect test. (B) is wrong because the allocation is governed by the partnership agreement and Section 704(b), not beginning capital account balances. (D) is wrong because outside basis limits the deductibility of losses under Section 704(d) but does not determine income allocations.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2838;

-- ID 2839: Partnerships — Guaranteed payments
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 707(c), what are guaranteed payments in a partnership?',
  choices = '["Distributions of partnership profits made at the end of each quarter", "Payments made to a partner for the use of capital that are contingent on partnership income", "Advances on a partner''s distributive share that are repaid from year-end allocations", "Payments to a partner for services or use of capital that are determined without regard to partnership income"]'::jsonb,
  explanation = 'Correct (D): Under Section 707(c), guaranteed payments are payments made to a partner for services rendered or for the use of capital, to the extent they are determined without regard to the income of the partnership. They are treated as ordinary income to the recipient partner and are deductible by the partnership. (A) is wrong because guaranteed payments are not contingent profit distributions. (B) is wrong because guaranteed payments are determined without regard to partnership income, not contingent on it. (C) is wrong because guaranteed payments are fixed amounts for services or capital use, not advances on distributive shares.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2839;

-- ID 2840: Partnerships — Distribution exceeding basis
-- correct_index = 0
UPDATE questions SET
  stem = 'What happens when a partnership cash distribution exceeds a partner''s outside basis?',
  choices = '["The excess is recognized as capital gain by the partner", "The excess is treated as a tax-free return of capital with no gain recognized", "The partner''s outside basis becomes negative and the excess is deferred", "The excess is treated as ordinary income to the partner"]'::jsonb,
  explanation = 'Correct (A): Under Section 731(a)(1), a partner recognizes gain to the extent that a cash distribution (including deemed cash distributions from liability shifts) exceeds the partner''s outside basis. The gain is treated as gain from the sale or exchange of the partnership interest, which is generally capital gain (subject to Section 751 hot asset rules). (B) is wrong because gain must be recognized when cash exceeds basis. (C) is wrong because outside basis cannot go below zero; the excess triggers gain recognition. (D) is wrong because the gain is generally capital in character, not ordinary (unless hot assets are involved).',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2840;

-- ID 2841: Partnerships — Partnership inside basis
-- correct_index = 1
UPDATE questions SET
  stem = 'What is the partnership''s inside basis in contributed property?',
  choices = '["The fair market value of the property at the time of contribution", "The contributing partner''s adjusted basis in the property at the time of contribution", "The amount the partnership paid the contributing partner for the property", "The appraised value agreed upon by all partners in the partnership agreement"]'::jsonb,
  explanation = 'Correct (B): Under Section 723, the partnership''s basis in contributed property (inside basis) is the same as the contributing partner''s adjusted basis at the time of contribution. This carryover basis ensures that built-in gain or loss is preserved and allocated to the contributing partner under Section 704(c). (A) is wrong because the partnership takes the contributor''s adjusted basis, not fair market value. (C) is wrong because a Section 721 contribution is not a sale, so there is no purchase price. (D) is wrong because the partnership''s tax basis is determined by statute, not by appraisal or agreement.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2841;

-- ============================================================
-- CIRCULAR 230 (7 questions)
-- ============================================================

-- ID 487: Circular 230 — Willful understatement sanction
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Circular 230, what is the sanction for willfully understating a client''s tax liability?',
  choices = '["A written warning placed in the practitioner''s file with the IRS", "A mandatory continuing education requirement of 40 additional hours", "Disbarment or suspension from practice before the IRS", "A monetary fine of $1,000 per understated return"]'::jsonb,
  explanation = 'Correct (C): Under 31 CFR Section 10.50 and 10.52, a practitioner who willfully understates a client''s tax liability or assists in such understatement is subject to disciplinary action, which may include censure, suspension, or disbarment from practice before the IRS. Willful understatement is one of the most serious violations under Circular 230. (A) is wrong because willful misconduct warrants more than a written warning. (B) is wrong because mandatory continuing education is not a prescribed sanction for willful understatement. (D) is wrong because the sanctions under Circular 230 are professional disciplinary actions (censure, suspension, disbarment), not monetary fines.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 487;

-- ID 490: Circular 230 — Section 6694(a) penalty
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 6694(a), what is the penalty for an unreasonable position on a tax return?',
  choices = '["$500 per return regardless of the size of the understatement", "10% of the total tax liability shown on the return", "Criminal prosecution and up to one year of imprisonment", "The greater of $1,000 or 50% of the income derived by the preparer from the return"]'::jsonb,
  explanation = 'Correct (D): Under Section 6694(a), a tax return preparer who takes an unreasonable position (one without substantial authority, or not adequately disclosed with a reasonable basis) is subject to a penalty equal to the greater of $1,000 or 50% of the income derived (or to be derived) by the preparer with respect to the return. (A) is wrong because the penalty is the greater of $1,000 or 50% of income derived, not a flat $500. (B) is wrong because the penalty is based on preparer income, not the taxpayer''s total tax liability. (C) is wrong because Section 6694(a) imposes a civil penalty, not criminal prosecution.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 490;

-- ID 492: Circular 230 — 30-day letter
-- correct_index = 0
UPDATE questions SET
  stem = 'What is a 30-day letter from the IRS?',
  choices = '["A letter proposing adjustments to a taxpayer''s return and offering the right to appeal within 30 days", "A final notice of deficiency that must be paid within 30 days to avoid penalties", "A letter confirming that a taxpayer''s return has been accepted as filed after a 30-day review", "A notice that the taxpayer has 30 days to file an amended return before criminal referral"]'::jsonb,
  explanation = 'Correct (A): A 30-day letter (also called a preliminary notice) is issued by the IRS at the conclusion of an examination. It proposes adjustments to the taxpayer''s return and informs the taxpayer of the right to request a conference with the IRS Appeals Office within 30 days. If the taxpayer does not respond, the IRS issues a statutory notice of deficiency (90-day letter). (B) is wrong because the 30-day letter is not a final deficiency notice; it is a preliminary proposal. (C) is wrong because the 30-day letter proposes changes, not acceptance. (D) is wrong because the 30-day letter relates to civil examination disputes, not criminal referrals.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 492;

-- ID 494: Circular 230 — Burden of proof shift
-- correct_index = 1
UPDATE questions SET
  stem = 'Under what circumstances does the burden of proof shift to the IRS?',
  choices = '["Whenever the taxpayer files a timely return and pays all tax due", "When the taxpayer introduces credible evidence, maintains adequate records, and cooperates with the IRS under Section 7491", "When the taxpayer hires a CPA or attorney to represent them before the IRS", "When the disputed amount exceeds $100,000 in any single tax year"]'::jsonb,
  explanation = 'Correct (B): Under Section 7491(a), the burden of proof shifts from the taxpayer to the IRS in court proceedings if the taxpayer introduces credible evidence on a factual issue, maintains adequate records, and cooperates with reasonable IRS requests. The taxpayer must also comply with substantiation requirements. (A) is wrong because timely filing alone does not shift the burden. (C) is wrong because hiring a representative does not automatically shift the burden of proof. (D) is wrong because there is no dollar threshold that triggers the burden shift.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 494;

-- ID 594: Circular 230 — Substantial omission statute of limitations
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 6501(e), what triggers the six-year statute of limitations?',
  choices = '["Filing a return more than 60 days after the due date without an extension", "Claiming a refund that exceeds the total tax paid for the year", "Omitting from gross income an amount exceeding 25% of the gross income reported on the return", "Failing to attach all required schedules to the tax return"]'::jsonb,
  explanation = 'Correct (C): Under Section 6501(e)(1)(A), if a taxpayer omits from gross income an amount that exceeds 25% of the gross income stated on the return, the statute of limitations for assessment is extended from three years to six years. This substantial omission provision gives the IRS additional time to discover and assess unreported income. (A) is wrong because late filing does not trigger the six-year period. (B) is wrong because refund claims do not extend the assessment period. (D) is wrong because missing schedules may cause processing delays but do not automatically trigger the six-year statute.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 594;

-- ID 2375: Circular 230 — Authorized practitioners
-- correct_index = 3
UPDATE questions SET
  stem = 'Who is authorized to practice before the IRS under Circular 230?',
  choices = '["Only licensed certified public accountants in good standing", "Any individual who has filed a tax return in the prior three years", "Only tax return preparers who hold a preparer tax identification number", "Attorneys, CPAs, enrolled agents, and other persons specifically authorized by the IRS"]'::jsonb,
  explanation = 'Correct (D): Under 31 CFR Section 10.3, individuals authorized to practice before the IRS include attorneys, certified public accountants, enrolled agents, enrolled actuaries, enrolled retirement plan agents, and registered tax return preparers (within their limited scope). The Office of Professional Responsibility oversees practitioner conduct. (A) is wrong because attorneys and enrolled agents are also authorized, not just CPAs. (B) is wrong because filing a return does not confer practice rights. (C) is wrong because holding a PTIN is required for paid preparers but does not by itself grant full practice rights before the IRS.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2375;

-- ID 2376: Circular 230 — Enrolled agent authority
-- correct_index = 0
UPDATE questions SET
  stem = 'What authority does an enrolled agent have under Circular 230?',
  choices = '["Unlimited rights to represent taxpayers before all administrative levels of the IRS", "Authority to represent taxpayers only in audits but not in appeals or collections", "Authority to prepare tax returns but not to represent taxpayers before the IRS", "Authority limited to taxpayers in the state where the enrolled agent is licensed"]'::jsonb,
  explanation = 'Correct (A): Under 31 CFR Section 10.3(b), enrolled agents have unlimited practice rights before the IRS, meaning they may represent any taxpayer regarding any tax matter before all administrative levels of the IRS, including examinations, appeals, and collections. This is the same scope of authority granted to attorneys and CPAs. (B) is wrong because enrolled agents may represent taxpayers at all administrative levels, including appeals and collections. (C) is wrong because enrolled agents have full representation rights, not just preparation authority. (D) is wrong because enrolled agent authorization is a federal designation with no state-by-state limitation.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2376;

COMMIT;
