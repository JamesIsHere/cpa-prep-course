-- FAR verification fixes: 3 deletes (broken math / duplicates) + 19 updates (correct_index / choice text / explanation fixes)
-- Source: full FAR correctness audit (1,000 questions verified, 28 fails, 6 reviews)

BEGIN;

-- ════════════════════════════════════════════════════════════════
-- DELETES: Questions where the correct answer is not among choices
-- or identical duplicates of another question.
-- ════════════════════════════════════════════════════════════════

DELETE FROM questions WHERE id IN (
  2187,   -- Income tax payable: sum is $2,250K not $2,300K; correct payable $472,500 not among choices
  10985,  -- Identical duplicate of Q8405 (60-day availability, same stem/choices/error)
  13565   -- Identical duplicate of Q8405 (60-day availability, same stem/choices/error)
);

-- ════════════════════════════════════════════════════════════════
-- CORRECT_INDEX + EXPLANATION FIXES
-- Questions where the correct answer IS among choices but wrong key
-- ════════════════════════════════════════════════════════════════

-- Q1115: Pension settlement — PBO settled $4M vs annuity cost $3.85M = $150K GAIN, not loss
-- Company pays $3.85M to eliminate a $4M obligation; the $150K difference is a gain.
UPDATE questions
SET correct_index = 0,
    explanation = 'Correct (A). Under ASC 715-30-35-80, a pension settlement gain or loss equals the difference between the PBO settled and the cost of settlement. PBO settled = $4,000,000. Annuity cost = $3,850,000. The company eliminates a $4,000,000 obligation for $3,850,000, yielding a $150,000 settlement gain. The plan assets ($3,700,000) determine the additional cash outlay ($3,850,000 − $3,700,000 = $150,000) but do not define the settlement gain or loss. Choice C ($150,000 loss) confuses the cash shortfall beyond plan assets with the settlement result.'
WHERE id = 1115;

-- Q1863: Current ratio after paying $40K liability — 280K/160K = 1.75, not 1.40
UPDATE questions
SET correct_index = 2,
    explanation = 'Correct (C). After payment: current assets = $320,000 − $40,000 = $280,000; current liabilities = $200,000 − $40,000 = $160,000. Current ratio = $280,000 / $160,000 = 1.75. Paying off a current liability with cash reduces both numerator and denominator by the same amount. When the initial ratio exceeds 1.0, this equal reduction increases the ratio (from 1.60 to 1.75), because removing equal amounts from an above-1.0 fraction raises the proportion.'
WHERE id = 1863;

-- Q1955: ASC 606 over-time recognition — no alternative use + right to payment = over time
UPDATE questions
SET correct_index = 2,
    explanation = 'Correct (C). Under ASC 606-10-25-27, revenue is recognized over time when the asset has no alternative use to the entity AND the entity has an enforceable right to payment for performance completed to date. Both criteria are met here: the specialized equipment has no alternative use, and the company has an enforceable right to payment. Revenue is measured using an input or output method (e.g., cost-to-cost). Choice A (cash collection) describes a cash-basis approach not permitted under ASC 606 when the performance obligation criteria are clearly met.'
WHERE id = 1955;

-- Q1974: Dollar-value LIFO — $99K/1.10 = $90K > $80K beginning, so new layer IS added
UPDATE questions
SET correct_index = 2,
    explanation = 'Correct (C). Under dollar-value LIFO, ending inventory must be deflated to base-year cost: $99,000 / 1.10 = $90,000. Since $90,000 exceeds the beginning base-year inventory of $80,000, a real increase of $10,000 (at base-year cost) occurred, creating a new LIFO layer. The new layer is then restated at current prices: $10,000 × 1.10 = $11,000. Ending LIFO inventory = $80,000 (base layer) + $11,000 (new layer) = $91,000. Choice A incorrectly attributes the entire increase to price changes, but the deflation step proves that a quantity increase occurred.'
WHERE id = 1974;

-- Q2029: Assembled workforce — not separately recognizable under ASC 805, subsumed into goodwill
UPDATE questions
SET correct_index = 2,
    explanation = 'Correct (C). Under ASC 805-20-55-6, an assembled workforce does not meet the criteria for separate recognition as an intangible asset in a business combination. It is neither separable (cannot be sold, transferred, or licensed independently) nor does it arise from contractual or legal rights. Therefore, the $150,000 value is subsumed into goodwill. By contrast, customer relationships ($400,000) meet the contractual criterion, and the trade name ($250,000) meets the separability criterion, so both are recognized as separate intangible assets.'
WHERE id = 2029;

-- Q2047: ROU asset — $50,000 × 4.4651 = $223,255 exactly, no rounding needed
UPDATE questions
SET correct_index = 2,
    explanation = 'Correct (C). Under ASC 842, the right-of-use asset initially equals the lease liability. Since payments are due at the beginning of each year, this is an annuity due. ROU asset = $50,000 × 4.4651 = $223,255. The calculation is exact with no rounding required. The ROU asset may be subsequently adjusted for prepaid payments, lease incentives, or initial direct costs, but none are present here.'
WHERE id = 2047;

-- Q2081: Effective interest method — $780,000 × 8% = $62,400, not $64,000
UPDATE questions
SET correct_index = 2,
    explanation = 'Correct (C). Under the effective interest method per ASC 835-30, interest expense equals the carrying amount multiplied by the market rate at issuance: $780,000 × 8% = $62,400. Cash interest paid equals face value times stated rate: $800,000 × 7% = $56,000. The $6,400 difference ($62,400 − $56,000) is the discount amortization for the period, increasing the carrying amount to $786,400. Choice A ($64,000) incorrectly applies the market rate to face value rather than carrying amount.'
WHERE id = 2081;

-- Q2121: Par value method — Dr TS $10, Dr APIC $15, Dr RE $5; Cr Cash $30
UPDATE questions
SET correct_index = 2,
    explanation = 'Correct (C). Under the par value method, treasury stock is debited at par value ($10). The original APIC from issuance is reversed: $25 issue price − $10 par = $15, debited to APIC. The excess of reacquisition cost over original issue price is charged to retained earnings: $30 − $25 = $5, debited to RE. Cash is credited for the full $30 reacquisition cost. Choice A incorrectly debits APIC for $20 (the difference between reacquisition cost and par), conflating the par value method with the cost method treatment.'
WHERE id = 2121;

-- Q2134: Property dividend — net RE effect is −$200K (−$280K dividend + $80K revaluation gain)
UPDATE questions
SET correct_index = 0,
    explanation = 'Correct (A). A property dividend is recorded at fair value under ASC 845-10-30-1. First, the investment is revalued: Dr Investment $80,000, Cr Gain $80,000 (recognized in net income, which flows to retained earnings). Then the dividend is declared at fair value: Dr Retained Earnings $280,000, Cr Dividends Payable $280,000. The net effect on retained earnings is a $200,000 decrease (−$280,000 dividend + $80,000 gain). This equals the carrying amount of the asset distributed, confirming that the economic cost to stockholders'' equity is the book value of assets given up. Choice D ($280,000) captures only the dividend declaration entry while ignoring the gain that also affects retained earnings.'
WHERE id = 2134;

-- Q2255: Note receivable interest — $100,000 × 8% × 6/12 = $4,000
UPDATE questions
SET correct_index = 2,
    explanation = 'Correct (C). Interest = Principal × Rate × Time = $100,000 × 8% × 6/12 = $4,000. The 6-month note runs from July 1 to December 31, so the full 6 months of interest has been earned by year-end. Choice A ($8,000) incorrectly uses the full annual rate without prorating for the 6-month term.'
WHERE id = 2255;

-- Q2336: Pension settlement loss = annuity cost − PBO settled = $3.2M − $3.0M = $200K loss
UPDATE questions
SET correct_index = 0,
    explanation = 'Correct (A). Under ASC 715-30-35-80, the settlement gain or loss measures the difference between the obligation eliminated and the cost to settle it. The company purchases annuities for $3,200,000 to settle $3,000,000 of PBO, resulting in a $200,000 settlement loss — the insurer charges a $200,000 premium above the actuarial obligation. The plan assets of $2,800,000 determine the cash flow (the company contributes $400,000 beyond plan assets to fund the purchase) but do not define the settlement gain or loss. Choice D ($400,000) incorrectly uses the cash outlay ($3,200,000 − $2,800,000) rather than the economic loss on the obligation settled.'
WHERE id = 2336;

-- Q5245: Property tax accrual — Jan through Mar = 3 months × $4,000 = $12,000
UPDATE questions
SET correct_index = 1,
    explanation = 'Correct (B). Property taxes of $48,000 per year = $4,000 per month. Under monthly accrual from the January 1 assessment date, three months have elapsed by March 31 (January, February, March): 3 × $4,000 = $12,000. The tax is not yet due (payment date is September 30), so the full $12,000 is an accrued liability. Choice D ($16,000) incorrectly counts four months instead of three.'
WHERE id = 5245;

-- Q8405: 60-day availability — Feb 1 is day 32 after Dec 31, within 60-day window; revenue = $4M
UPDATE questions
SET correct_index = 2,
    explanation = 'Correct (C). Under GASB Statement No. 33, government-mandated nonexchange transactions are recognized when eligibility requirements are met and, for governmental funds under modified accrual, when resources are available. The program begins September 1, meeting eligibility for the full $4 million. The $2.5 million received August 15 is clearly available. The $1.5 million received February 1, 2027, falls on day 32 after the December 31 fiscal year-end — well within the county''s 60-day availability period (which extends to approximately March 1). Therefore, the full $4 million qualifies as revenue in fiscal year 2026. Choice D incorrectly claims the February 1 receipt falls outside the 60-day window.'
WHERE id = 8405;

-- ════════════════════════════════════════════════════════════════
-- CHOICE TEXT + EXPLANATION FIXES
-- Questions where the concept is right but text has errors
-- ════════════════════════════════════════════════════════════════

-- Q168: Premium bond stem shows increasing EI (discount pattern) — swap Year 1/Year 10
UPDATE questions
SET stem = 'Waverly Corp. issues $2,000,000 of 10-year bonds at 106. Its CFO considers using the straight-line method for premium amortization because it is simpler. The company''s auditor notes that ASC 835-30 prefers the effective interest method. Under straight-line, annual premium amortization is $12,000 and interest expense is constant at $108,000 per year (assuming 6% stated rate). Under the effective interest method, Year 1 interest expense would be $113,200 and Year 10 expense would be $103,600. What is the analytical effect of choosing straight-line over effective interest, and when is the straight-line method acceptable?',
    explanation = 'Correct (B). Total interest expense is identical under both methods over 10 years, but the timing differs. Straight-line records $108,000 each year. The effective interest method starts at $113,200 (Year 1, when the carrying amount is highest at $2,120,000) and decreases to $103,600 (Year 10, as the carrying amount declines toward $2,000,000 face value through premium amortization). Because the straight-line method records a constant $108,000, it understates interest expense in the early years (when EI is $113,200) and overstates it in the later years (when EI is $103,600). This distortion flattens the expense curve and misrepresents the declining effective cost of borrowing. ASC 835-30-35-4 permits the straight-line method only when results are not materially different from the effective interest method.'
WHERE id = 168;

-- Q171: Choice B text says "$22,000 shortfall" but deficit is $20,000 and fully absorbed by $42K APIC
UPDATE questions
SET choices = '["Total equity increases by $272,000 — both reissuances are credited to APIC because corporations cannot recognize gains or losses on their own stock","Total equity increases by $272,000 ($192,000 + $80,000) — the above-cost reissuance creates $42,000 in APIC from treasury stock, while the below-cost reissuance draws $20,000 from that APIC balance (4,000 shares × $5 deficit), leaving $22,000 remaining in APIC from treasury stock; had the deficit exceeded the APIC balance, the excess would be charged to retained earnings","Total equity increases by $272,000 with a $42,000 gain on the first reissuance and a $20,000 loss on the second reissuance, both reported on the income statement as other income","Total equity increases by $192,000 because the below-cost reissuance of 4,000 shares at $20 generates no equity increase — the $20,000 deficit is offset against the $80,000 cash received"]'::jsonb,
    explanation = 'Correct (B). Under the cost method, treasury stock is carried at acquisition cost ($25/share). Reissuance at $32: Dr Cash $192,000, Cr Treasury Stock $150,000 (6,000 × $25), Cr APIC-Treasury Stock $42,000 (6,000 × $7 excess). Reissuance at $20: Dr Cash $80,000, Dr APIC-Treasury Stock $20,000 (4,000 × $5 deficit), Cr Treasury Stock $100,000 (4,000 × $25). The $20,000 deficit is fully absorbed by the $42,000 APIC-TS balance, leaving $22,000 remaining. No retained earnings charge is needed because the APIC balance exceeds the deficit. Total equity increase: $192,000 + $80,000 = $272,000. Corporations cannot recognize gains or losses on transactions in their own stock (ASC 505-30-25-2).'
WHERE id = 171;

-- Q394: Choice C text says $497,000 but correct calc = $503,000; also $99K/25% → $105K/~26%
UPDATE questions
SET choices = '["The choice of rate is irrelevant because the gross profit method uses cost data only and the margin rate does not affect the calculation","Using the 38% historical rate produces an estimated inventory of $398,000, while the 43% current rate produces $397,000 — the difference is immaterial and either rate is equally reliable","Using the 38% historical rate produces an estimated ending inventory of $398,000, while the 43% current rate produces $503,000 — the $105,000 difference (approximately 26%) demonstrates that the gross profit method is highly sensitive to the margin assumption, which is why this method is permitted only for interim estimates and insurance claims, not for annual GAAP reporting — the product mix shift makes the historical rate unreliable for the current period","Both rates produce the same result because the gross profit method automatically adjusts for product mix changes through the cost-of-goods-available calculation"]'::jsonb,
    explanation = 'Correct (C). At 38% gross profit: COGS = $2,100,000 × (1 − 0.38) = $1,302,000. Ending inventory = ($280,000 + $1,420,000) − $1,302,000 = $398,000. At 43% gross profit: COGS = $2,100,000 × (1 − 0.43) = $1,197,000. Ending inventory = $1,700,000 − $1,197,000 = $503,000. The $105,000 difference (approximately 26% of the lower estimate) illustrates the method''s core vulnerability: the estimate is only as reliable as the margin assumption. The product mix shift toward luxury goods invalidates the historical 38% rate, yet both rates produce arithmetically valid results with no internal check. This sensitivity is why the gross profit method is permitted only for interim reporting (ASC 270-10-45-5) and insurance claims, not for annual GAAP inventory valuation.'
WHERE id = 394;

-- Q1107: Choice D — assets understated by $1.2M (not $1.5M); netting shows $300K asset vs $1.5M/$1.2M
UPDATE questions
SET choices = '["No effect because both approaches produce the same total stockholders'' equity","The netting approach is required under ASC 715 to simplify balance sheet presentation","The netting approach understates total liabilities but has no effect on pension expense","Total assets would be understated by $1.2 million and total liabilities by $1.2 million because ASC 715 prohibits offsetting separately funded plans, requiring Plan A as a $1.5 million asset and Plan B as a $1.2 million liability"]'::jsonb,
    explanation = 'Correct (D). Under ASC 715-30-25-1, the funded status of each defined benefit plan must be recognized separately on the balance sheet. Correct presentation: Plan A as a $1.5 million noncurrent asset, Plan B as a $1.2 million noncurrent liability. Netting to a $300,000 asset understates total assets by $1.2 million ($1.5M correct − $0.3M reported) and understates total liabilities by $1.2 million ($1.2M correct − $0 reported). While total equity is identical either way ($1.5M − $1.2M = $0.3M), the netting distorts leverage ratios and violates the separate-plan presentation requirement. Choice A correctly notes equity is unchanged but ignores the balance sheet composition error.'
WHERE id = 1107;

-- Q1912: Diluted EPS = $309,000 / 60,000 = $5.15 exactly — fix choice A from $5.16 to $5.15
UPDATE questions
SET choices = '["$5.15","$6.00","$4.85","$5.00"]'::jsonb,
    explanation = 'Correct (A). If-converted method: add back after-tax interest savings on convertible bonds = $200,000 × 6% × (1 − 0.25) = $9,000. Adjusted income = $300,000 + $9,000 = $309,000. Adjusted shares = 50,000 + 10,000 = 60,000. Diluted EPS = $309,000 / 60,000 = $5.15. The convertible bonds are dilutive because if-converted EPS ($5.15) is less than basic EPS ($300,000 / 50,000 = $6.00), so they are included in the diluted calculation under ASC 260-10-45-40.'
WHERE id = 1912;

-- Q2152: Stem says "eight" solvent PRPs but 12−3=9; choice B has wrong math ($416,667→$500,000)
UPDATE questions
SET stem = 'Redstone Inc. is notified by the EPA that it is one of twelve potentially responsible parties (PRPs) at a contaminated Superfund site. Total remediation costs are estimated at $10,000,000. The EPA allocates Redstone a 15% share based on waste volume contributed. However, three of the twelve PRPs are defunct companies with no assets, representing a combined 25% allocation. The remaining nine solvent PRPs are negotiating cost-sharing. Analyze how the defunct PRPs'' insolvency affects Redstone''s accrual and what factors Redstone should consider when estimating its probable loss.',
    choices = '["Redstone should accrue only its 15% allocated share ($1,500,000) because the EPA allocation is final and binding regardless of co-PRP solvency","Redstone should accrue its 15% share plus a proportionate share of the orphan allocation — the defunct PRPs'' combined 25% ($2,500,000) will be redistributed among the nine solvent PRPs, increasing Redstone''s probable exposure beyond the initial 15% allocation to approximately $2,000,000, calculated as $1,500,000 base share plus $500,000 orphan share ($2,500,000 × 15%/75% solvent allocation)","Redstone should accrue the full $10,000,000 because CERCLA joint-and-several liability makes each PRP responsible for all remediation costs","Redstone should accrue zero because the presence of twelve PRPs means the individual share is too uncertain to estimate"]'::jsonb,
    explanation = 'Correct (B). Under CERCLA and ASC 410-30 (environmental remediation liabilities), Redstone must estimate its share of remediation costs considering all available information, including co-PRP solvency. The initial 15% EPA allocation ($1,500,000) is a starting point, but the three defunct PRPs create "orphan shares" totaling 25% ($2,500,000) that must be absorbed by solvent parties. Redstone''s proportionate share of the orphan allocation = $2,500,000 × (15% / 75%) = $500,000. Total probable exposure = $1,500,000 + $500,000 = $2,000,000. While CERCLA imposes joint-and-several liability (choice C), the full $10,000,000 accrual is not appropriate when the entity can reasonably estimate its probable share based on allocation percentages and co-PRP solvency analysis. Choice A ignores the orphan share reality, and choice D ignores that sufficient information exists for a reasonable estimate.'
WHERE id = 2152;

COMMIT;
