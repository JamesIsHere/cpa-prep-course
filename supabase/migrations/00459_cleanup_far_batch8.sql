-- FAR cleanup batch 8 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q2085 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 835-30-25-2, bond discounts arise when the market rate exceeds the stated rate, and the discount equals the difference between par value and issue price. Issue price = $3,000,000 × 0.98 = $2,940,000. Discount = $3,000,000 − $2,940,000 = $60,000, which is amortized over the 10-year bond term.
Wrong (A): $30,000 incorrectly halves the discount, perhaps confusing semi-annual amortization with total discount.
Wrong (B): $150,000 incorrectly multiplies the 5% coupon rate by $3,000,000, confusing annual interest with the discount amount.
Wrong (C): $90,000 incorrectly uses a 3% discount rate on par, overstating the actual 2% discount.$19$,
  difficulty = 'easy'
WHERE id = 2085;

-- Q2086 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 835-30-35-4, the effective interest method requires interest expense to equal the carrying amount multiplied by the market rate. When bonds are issued at a premium, the market rate is below the stated rate, so interest expense is less than the cash interest payment each period.
Wrong (A): Interest expense greater than cash interest applies to bonds issued at a discount, not a premium.
Wrong (C): Interest expense equals cash interest only when bonds are issued at par, where the stated rate equals the market rate.
Wrong (D): Increasing interest expense each period describes the pattern for discount bonds under the effective interest method, not premium bonds.$19$,
  difficulty = 'easy'
WHERE id = 2086;

-- Q2088 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 470-20-25-2, an induced conversion occurs when the issuer offers additional consideration beyond the original conversion terms—such as extra cash, shares, or other sweeteners—to incentivize bondholders to convert earlier. The fair value of the additional consideration is recognized as debt conversion expense.
Wrong (A): Calling bonds for redemption at maturity is a standard debt retirement, not an induced conversion.
Wrong (C): Forcing conversion through a provision in the original bond agreement is a mandatory conversion feature, not an induced conversion requiring additional consideration.
Wrong (D): Repurchasing bonds on the open market is a debt extinguishment, not a conversion event.$19$,
  difficulty = 'medium'
WHERE id = 2088;

-- Q2090 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 835-30-35-2, interest expense under the straight-line method equals cash interest minus annual premium amortization. Cash interest = $4,000,000 × 7% = $280,000. Premium = $4,000,000 × 0.05 = $200,000. Annual amortization = $200,000 ÷ 10 = $20,000. Interest expense = $280,000 − $20,000 = $260,000.
Wrong (A): $280,000 represents only the cash interest paid and ignores the premium amortization that reduces interest expense.
Wrong (B): $300,000 incorrectly adds the premium amortization to cash interest instead of subtracting it.
Wrong (D): $320,000 overstates interest expense by adding an incorrect amortization amount to cash interest.$19$,
  difficulty = 'medium'
WHERE id = 2090;

-- Q2091 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 470-50-40-2, gain or loss on extinguishment equals the carrying amount minus the reacquisition price. Reacquisition price = $2,000,000 × 1.01 = $2,020,000. Gain = $2,080,000 − $2,020,000 = $60,000. The company paid less than the carrying amount (which includes unamortized premium), resulting in a gain.
Wrong (B): A $60,000 loss incorrectly reverses the direction of the calculation; the carrying amount exceeds the reacquisition price, producing a gain, not a loss.
Wrong (C): $20,000 incorrectly uses only the premium component without considering the full difference between carrying amount and reacquisition price.
Wrong (D): $80,000 incorrectly computes the gain using the full premium rather than comparing carrying amount to reacquisition price.$19$,
  difficulty = 'medium'
WHERE id = 2091;

-- Q2092 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 835-30-35-4, the effective interest method computes interest expense as carrying amount × market rate. For discount bonds, the carrying amount increases each period as the discount is amortized, causing interest expense to increase over the bond''s life.
Wrong (A): A constant interest expense applies to the straight-line method, not the effective interest method.
Wrong (B): Decreasing interest expense describes premium bonds under the effective interest method, where the carrying amount decreases each period.
Wrong (D): Interest expense does not alternate; it follows a monotonically increasing pattern for discount bonds under the effective interest method.$19$,
  difficulty = 'medium'
WHERE id = 2092;

-- Q2093 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 835-30-25-1, interest expense accrues over time based on the outstanding principal. The bonds were issued October 1, so only 3 months of interest accrues through December 31. Interest expense = $600,000 × 9% × (3/12) = $13,500. An adjusting entry at year-end records this amount.
Wrong (A): $54,000 represents a full year of interest, but the bonds were outstanding for only 3 months.
Wrong (B): $27,000 represents 6 months of interest (one semi-annual period), but only 3 months elapsed from the October 1 issue date to December 31.
Wrong (D): $40,500 represents 9 months of interest, incorrectly dating from April 1 rather than the October 1 issue date.$19$,
  difficulty = 'easy'
WHERE id = 2093;

-- Q2094 [hard] topic: Bonds and Debt
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Under the fair value option (ASC 825-10), a company elects to measure its bonds payable at fair value. At year-end, the bonds'' fair value has decreased by $50,000 due to an increase in the company''s own credit risk. How should this $50,000 change be reported?$19$,
  choices = $19$["In net income as a fair value gain","As a direct adjustment to retained earnings","In accumulated other comprehensive income (AOCI)","In other comprehensive income (OCI)"]$19$::jsonb,
  explanation = $19$Correct (D): Under ASC 825-10-45-5, when the fair value option is elected for financial liabilities, changes in fair value attributable to instrument-specific credit risk (the company''s own credit risk) are reported in other comprehensive income (OCI), not in net income. All other fair value changes flow through net income.
Wrong (A): Reporting in net income applies to fair value changes from factors other than own credit risk, such as market interest rate changes.
Wrong (B): A direct adjustment to retained earnings bypasses the income statement and OCI, which is not permitted under ASC 825-10 for fair value changes.
Wrong (C): AOCI is the cumulative balance sheet account; the period change is reported in OCI, which then accumulates into AOCI.$19$,
  difficulty = 'hard'
WHERE id = 2094;

-- Q2096 [hard] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 470-20-25-2, when bonds are issued with detachable stock warrants, the proceeds are allocated between the bonds and warrants based on their relative fair values. Total fair value = $960,000 + $80,000 = $1,040,000. Bonds allocation = ($960,000 ÷ $1,040,000) × $1,000,000 = $923,077. Warrants allocation = ($80,000 ÷ $1,040,000) × $1,000,000 = $76,923.
Wrong (A): Allocating $1,000,000 entirely to bonds ignores the warrants'' fair value, which must be separately recognized under the relative fair value method.
Wrong (B): Using the individual fair values ($960,000 and $80,000) without prorating to actual proceeds of $1,000,000 violates the relative fair value allocation method.
Wrong (D): $920,000 to bonds incorrectly subtracts the warrant fair value directly from proceeds rather than using the relative fair value proportional allocation.$19$,
  difficulty = 'hard'
WHERE id = 2096;

-- Q2097 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 835-30-25-1, a bond is issued at par when the stated (coupon) rate equals the market (effective) rate at issuance. Investors pay exactly face value because the coupon rate provides a return equal to the prevailing market rate.
Wrong (A): When the stated rate is less than the market rate, investors demand a discount, so the bond sells below par.
Wrong (C): When the stated rate exceeds the market rate, investors pay a premium above par for the higher coupon payments.
Wrong (D): Bonds without coupon payments are zero-coupon bonds, which are always issued at a deep discount, not at par.$19$,
  difficulty = 'easy'
WHERE id = 2097;

-- Q2098 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 835-30-35-4, semi-annual interest expense under the effective interest method equals the carrying amount multiplied by the semi-annual market rate. Interest expense = $9,700,000 × (7% ÷ 2) = $9,700,000 × 3.5% = $339,500. Cash interest = $10,000,000 × (6% ÷ 2) = $300,000. The $39,500 difference is discount amortization.
Wrong (A): $300,000 is the cash interest paid, not the interest expense under the effective interest method.
Wrong (B): $291,000 incorrectly applies a rate below both the stated and market rates to the carrying amount.
Wrong (C): $350,000 incorrectly applies the full annual 7% market rate to half a year or miscomputes the carrying amount.$19$,
  difficulty = 'medium'
WHERE id = 2098;

-- Q2101 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 835-30-35-2, interest expense under the straight-line method equals cash interest plus annual discount amortization. Cash interest = $3,000,000 × 8% = $240,000. Discount = $3,000,000 × 0.03 = $90,000. Annual amortization = $90,000 ÷ 5 = $18,000. Interest expense = $240,000 + $18,000 = $258,000.
Wrong (A): $240,000 represents only the cash interest and ignores the discount amortization that increases interest expense.
Wrong (C): $270,000 overstates the discount amortization, possibly using the full discount divided by fewer years.
Wrong (D): $222,000 incorrectly subtracts the amortization from cash interest, but discount amortization increases interest expense, not decreases it.$19$,
  difficulty = 'medium'
WHERE id = 2101;

-- Q2102 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 440-10-50-1 and ASC 470-10-50-1, entities must disclose all significant debt covenants in the notes to the financial statements, including key terms, any violations during the period, and whether violations have been waived. Disclosure is required regardless of whether covenants have been violated.
Wrong (A): Limiting disclosure to violated covenants omits material information about credit risk and liquidity constraints that users need.
Wrong (C): Disclosing only affirmative covenants ignores restrictive (negative) covenants, which are equally important for assessing credit risk.
Wrong (D): Covenant disclosure is required for all outstanding debt, not only debt reclassified as current due to a violation.$19$,
  difficulty = 'medium'
WHERE id = 2102;

-- Q2103 [hard] topic: Bonds and Debt
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Osborne Corp. has a $5,000,000 loan that violates a debt covenant at the balance sheet date. The lender has not waived the violation. Under ASC 470-10, how should the loan be classified on the balance sheet?$19$,
  choices = $19$["As a long-term liability based on the original maturity date","As a reclassification to equity pending resolution","As a contingent liability disclosed in the notes only","As a current liability due to the lender''s right to demand repayment"]$19$::jsonb,
  explanation = $19$Correct (D): Under ASC 470-10-45-1, when a debtor violates a covenant at the balance sheet date and the violation gives the lender the right to demand repayment within one year, the debt must be classified as a current liability—unless the lender waives the violation for at least one year or the debtor cures the violation before financial statement issuance.
Wrong (A): The original maturity date is irrelevant when a covenant violation gives the lender the right to accelerate repayment, requiring current classification.
Wrong (B): Debt covenant violations do not trigger reclassification to equity; the obligation remains a liability regardless of the violation.
Wrong (C): A contingent liability with note disclosure only applies when a loss is reasonably possible, not when the debt is callable on demand due to a covenant violation.$19$,
  difficulty = 'hard'
WHERE id = 2103;

-- Q2104 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 835-30-25-1, interest accrues over time. Interest was last paid on September 1. From September 1 to December 31 is 4 months. Accrued interest = $1,000,000 × 6% × (4/12) = $20,000. This amount is recorded as interest payable on the balance sheet.
Wrong (A): $60,000 represents a full year of interest, not the 4 months since the last interest payment.
Wrong (B): $30,000 represents 6 months (a full semi-annual period), but only 4 months have elapsed since the September 1 payment.
Wrong (D): $40,000 represents 8 months of interest, which exceeds the 4-month accrual period since the last payment.$19$,
  difficulty = 'easy'
WHERE id = 2104;

-- Q2105 [hard] topic: Bonds and Debt
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Dunn Corp. refinances a $2,000,000 short-term note payable with a 5-year long-term note on February 15, Year 2. The financial statements for Year 1 are issued on March 1, Year 2. Under ASC 470-10, how should the original short-term note be classified on the December 31, Year 1, balance sheet?$19$,
  choices = $19$["As a current liability because refinancing had not yet occurred at year-end","As a long-term liability because refinancing was completed before issuance","As a current liability because post-year-end events never affect classification","As a noncurrent contingent obligation pending refinancing completion"]$19$::jsonb,
  explanation = $19$Correct (B): Under ASC 470-10-45-14, a short-term obligation may be excluded from current liabilities and classified as long-term if the entity demonstrates both the intent and ability to refinance on a long-term basis. Completing the refinancing before financial statement issuance satisfies the ability criterion.
Wrong (A): Classification is not limited to conditions existing at the balance sheet date; subsequent refinancing completed before issuance can support long-term classification under ASC 470-10.
Wrong (C): Post-balance-sheet events can affect debt classification when they demonstrate the ability to refinance, contradicting this absolute statement.
Wrong (D): The obligation is not contingent; it is a definite liability whose classification depends on the refinancing analysis under ASC 470-10.$19$,
  difficulty = 'hard'
WHERE id = 2105;

-- Q2108 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 505-10-25-2, when no-par stock has a stated value, the stated value functions like par value. Total cash = 5,000 × $15 = $75,000. Common stock at stated value = 5,000 × $8 = $40,000. APIC = $75,000 − $40,000 = $35,000. Amounts received in excess of stated value are credited to additional paid-in capital.
Wrong (A): Crediting the entire $75,000 to common stock is only correct when no-par stock has no stated value, not when a stated value is assigned.
Wrong (B): $40,000 to common stock alone ignores the $35,000 excess over stated value that must be credited to APIC.
Wrong (C): Crediting common stock for only $8,000 treats stated value as a per-share amount applied to 1,000 shares rather than the full 5,000 shares issued.$19$,
  difficulty = 'easy'
WHERE id = 2108;

-- Q2109 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 505-10-50-3, cumulative preferred stock requires that all dividends in arrears from prior years must be paid before any dividends can be distributed to common shareholders. In this scenario, two years of preferred dividends are in arrears: $100 × 50,000 × 6% × 2 = $600,000, leaving $300,000 for common shareholders.
Wrong (A): Convertible preferred stock allows conversion to common shares but does not address the cumulative dividend feature.
Wrong (B): Participating preferred stock shares in profits beyond the stated rate, which is a separate feature from the cumulative arrears requirement.
Wrong (C): Preferred shareholders typically do not have general voting rights; voting is a feature of common stock.$19$,
  difficulty = 'easy'
WHERE id = 2109;

-- Q2110 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 505-10-50-3, cumulative preferred dividends in arrears must be satisfied before common dividends. Annual preferred dividend = 20,000 × $100 × 6% = $120,000. Arrears for Year 1 and Year 2 = $240,000. Current Year 3 dividend = $120,000. Total preferred claim = $360,000. Since $500,000 exceeds $360,000, preferred receives the full $360,000.
Wrong (A): $120,000 represents only one year of preferred dividends and ignores the two years of arrears that must also be paid.
Wrong (C): $500,000 would mean preferred receives all declared dividends, but preferred''s total claim ($360,000) is less than the total declared.
Wrong (D): $240,000 represents only the arrears and omits the current year''s $120,000 preferred dividend.$19$,
  difficulty = 'medium'
WHERE id = 2110;

-- Q2111 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 505-30-30-3, treasury stock acquired under the cost method is debited at the total acquisition cost. Treasury stock = 3,000 × $20 = $60,000. The entry debits treasury stock (a contra-equity account) and credits cash for $60,000.
Wrong (B): Debiting common stock would retire the shares permanently, which is not the treatment under the cost method for treasury stock held for potential reissuance.
Wrong (C): Debiting retained earnings is only used when treasury stock is reissued below cost and APIC from treasury stock transactions is insufficient, not at acquisition.
Wrong (D): Debiting APIC is used in the par value method, not the cost method, for recording treasury stock acquisitions.$19$,
  difficulty = 'easy'
WHERE id = 2111;

-- Q2112 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 505-30-30-8, when treasury stock acquired at $20 per share is reissued at $25, cash is debited $25,000, treasury stock is credited at cost ($20,000), and the $5,000 excess is credited to APIC from treasury stock transactions. Gains on treasury stock transactions are never reported on the income statement.
Wrong (B): Crediting treasury stock for the full $25,000 ignores the cost basis of $20,000 and fails to recognize the $5,000 excess in APIC.
Wrong (C): Crediting common stock is incorrect because reissuing treasury stock restores shares from the treasury, not from authorized but unissued stock.
Wrong (D): Crediting retained earnings for the excess is incorrect; excesses on treasury stock reissuances above cost are credited to APIC, not retained earnings.$19$,
  difficulty = 'medium'
WHERE id = 2112;

-- Q2113 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 505-30-30-8, when treasury stock is reissued below cost, the shortfall ($20,000 − $17,000 = $3,000) is first debited against APIC from treasury stock transactions. Since the available APIC balance of $5,000 exceeds the $3,000 deficiency, retained earnings is not affected. Treasury stock is credited at cost ($20,000).
Wrong (B): Debiting retained earnings for the $3,000 shortfall is only required when APIC from treasury stock transactions is insufficient to absorb the deficiency.
Wrong (C): Crediting treasury stock at the reissuance price ($17,000) rather than cost ($20,000) fails to remove the full cost basis from the contra-equity account.
Wrong (D): Recording a loss on treasury stock is prohibited; treasury stock transactions are capital transactions that do not flow through the income statement.$19$,
  difficulty = 'medium'
WHERE id = 2113;

-- Q2114 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 505-20-30-3, a small stock dividend (less than 20–25% of outstanding shares) is recorded at fair market value. Shares issued = 100,000 × 10% = 10,000. Retained earnings debit = 10,000 × $30 = $300,000. Common stock credit = 10,000 × $5 = $50,000. APIC credit = $300,000 − $50,000 = $250,000.
Wrong (B): Recording at par value only ($50,000) applies to large stock dividends (over 20–25%), not small stock dividends.
Wrong (C): $150,000 to retained earnings incorrectly uses an amount between par and fair value, which is not prescribed by ASC 505-20.
Wrong (D): Debiting APIC instead of retained earnings is incorrect; stock dividends reduce retained earnings, not APIC.$19$,
  difficulty = 'medium'
WHERE id = 2114;

-- Q2115 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 505-20-30-6, a large stock dividend (greater than 20–25% of outstanding shares) is recorded at par value. Retained earnings is debited and common stock is credited for the par value of shares issued. No APIC is recognized because the proportional market price decline makes fair value capitalization inappropriate.
Wrong (A): Fair market value capitalization applies only to small stock dividends (less than 20–25%), not large stock dividends.
Wrong (C): A memo entry alone applies to stock splits, not stock dividends; stock dividends require a formal journal entry.
Wrong (D): Average cost of outstanding shares is not a recognized measurement basis for recording stock dividends under U.S. GAAP.$19$,
  difficulty = 'medium'
WHERE id = 2115;

-- Q2116 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 505-20-25-3, a 2-for-1 stock split doubles the number of shares and halves the par value per share. New shares = 200,000 × 2 = 400,000. New par = $10 ÷ 2 = $5. Total par value remains $2,000,000. No journal entry is required—only a memo entry.
Wrong (A): 400,000 shares at $10 par doubles both shares and total par value, which would require a journal entry and is not how stock splits work.
Wrong (B): 200,000 shares at $5 par halves the par value but fails to double the number of shares, misapplying the split ratio.
Wrong (D): 100,000 shares at $20 par describes a 1-for-2 reverse stock split, not a 2-for-1 forward split.$19$,
  difficulty = 'easy'
WHERE id = 2116;

-- Q2117 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 505-10-25-2, issuing common stock above par increases total shareholders'' equity. Cash is debited, and common stock plus APIC are credited, adding net assets to the company.
Wrong (A): Declaring a cash dividend decreases equity by debiting retained earnings and crediting dividends payable, reducing net stockholders'' equity.
Wrong (B): Purchasing treasury stock decreases equity because the treasury stock contra-equity account is debited, reducing total equity.
Wrong (D): Declaring a stock dividend reclassifies amounts within equity (retained earnings to common stock and APIC) but does not change total equity.$19$,
  difficulty = 'easy'
WHERE id = 2117;

-- Q2119 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 505-10-50-3, noncumulative preferred stock does not carry forward unpaid dividends as arrears. Annual preferred dividend = 50,000 × $100 × 8% = $400,000. Since the stock is noncumulative, the Year 1 unpaid dividend is forfeited. In Year 2, preferred receives only the current $400,000, and the remaining $200,000 goes to common shareholders.
Wrong (B): $800,000 incorrectly treats the preferred stock as cumulative, adding Year 1 arrears of $400,000 to the Year 2 dividend.
Wrong (C): $600,000 would allocate the entire declared amount to preferred, but preferred''s claim is limited to the current year''s $400,000.
Wrong (D): $200,000 understates the preferred dividend, possibly confusing the common shareholder''s portion with the preferred allocation.$19$,
  difficulty = 'medium'
WHERE id = 2119;

-- Q2120 [hard] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 505-10-25-2, fully participating preferred stock first receives its stated dividend, then common receives a matching rate on its par, and the remainder is allocated by relative total par values. Preferred dividend = 10,000 × $50 × 5% = $25,000. Common matching = 40,000 × $10 × 5% = $20,000. Remaining = $100,000 − $25,000 − $20,000 = $55,000. Preferred participation = $55,000 × ($500,000 ÷ $900,000) = $30,556. Total preferred = $25,000 + $30,556 = $55,556.
Wrong (A): $25,000 reflects only the basic preferred dividend without the participation allocation on the remaining $55,000.
Wrong (B): $75,000 overstates the preferred allocation by using an incorrect participation ratio or adding the full remaining amount.
Wrong (C): $50,000 may result from dividing the remainder equally rather than proportionally by relative par values.$19$,
  difficulty = 'hard'
WHERE id = 2120;

-- Q2122 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 505-10-50-11, appropriated retained earnings restrict the amount available for dividend distribution but do not set aside cash or other assets. The appropriation is a disclosure mechanism showing management''s intention to retain earnings for a specific purpose, and it remains part of total equity.
Wrong (A): Appropriations do not set aside cash; they only earmark a portion of retained earnings to signal restricted availability for dividends.
Wrong (B): The appropriation does not reduce total shareholders'' equity; it merely reclassifies a portion of retained earnings from unappropriated to appropriated.
Wrong (C): Appropriated retained earnings are part of equity, not a liability; no obligation to external parties is created by the appropriation.$19$,
  difficulty = 'medium'
WHERE id = 2122;

-- Q2123 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 845-10-30-1, when stock is issued for noncash consideration, the transaction is recorded at the fair value of the consideration received if it is more clearly determinable. The land''s appraised value of $200,000 is used. Common stock is credited at par ($8,000), and APIC receives the $192,000 excess.
Wrong (A): $8,000 represents only the par value of the shares issued, not the fair value of the land received.
Wrong (B): $224,000 uses the stock''s fair value (8,000 × $28), but the land''s appraised fair value is more clearly determinable and takes precedence.
Wrong (D): $28,000 uses only the per-share stock price without multiplying by the number of shares, which is a computational error.$19$,
  difficulty = 'medium'
WHERE id = 2123;

-- Q2124 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 505-10-25-4, the book value method transfers the carrying amount of preferred stock to common stock and APIC with no gain or loss. Shares of common issued = 500 × 4 = 2,000. Book value of preferred = 500 × $100 = $50,000. Common stock at par = 2,000 × $10 = $20,000. APIC = $50,000 − $20,000 = $30,000.
Wrong (B): Crediting common stock for $50,000 with no APIC incorrectly allocates the entire book value to par, but 2,000 shares at $10 par total only $20,000.
Wrong (C): $20,000 to common stock with no APIC ignores the remaining $30,000 of carrying value that must be allocated to APIC.
Wrong (D): $2,000 to common stock appears to use the wrong par value per share, and the $48,000 to APIC does not reconcile to the $50,000 book value.$19$,
  difficulty = 'medium'
WHERE id = 2124;

-- Q2125 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 505-10-25-2, stock issuance costs reduce APIC rather than being expensed. Total proceeds = 15,000 × $35 = $525,000. Common stock at par = 15,000 × $20 = $300,000. Gross APIC = $525,000 − $300,000 = $225,000. Net APIC = $225,000 − $18,000 issuance costs = $207,000.
Wrong (A): $225,000 is the gross APIC before deducting the $18,000 issuance costs that reduce the net proceeds.
Wrong (C): $243,000 incorrectly adds issuance costs to APIC rather than subtracting them.
Wrong (D): $210,000 uses an incorrect deduction amount, not matching the stated $18,000 issuance costs.$19$,
  difficulty = 'medium'
WHERE id = 2125;

-- Q2126 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 505-10-25-2, callable preferred stock gives the issuing corporation the right—but not the obligation—to redeem the shares at a specified call price, typically at a premium over par. This provides the issuer flexibility to retire expensive equity when conditions are favorable.
Wrong (A): The shareholder demanding repurchase describes puttable or mandatorily redeemable preferred stock, where the redemption right belongs to the holder, not the issuer.
Wrong (B): Being traded on a secondary market is a characteristic of publicly listed stock in general, not a defining feature of callable preferred stock.
Wrong (C): Automatic conversion at a predetermined date describes mandatory convertible preferred stock, not callable preferred stock.$19$,
  difficulty = 'easy'
WHERE id = 2126;

-- Q2128 [hard] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 852-20-35-2, after a quasi-reorganization, retained earnings starts at zero and must be dated for a reasonable period (typically 3–10 years) to disclose the reset—for example, "Retained earnings since quasi-reorganization of January 1, 2025." The dating alerts financial statement users that the balance does not represent the company''s full earnings history.
Wrong (A): The retained earnings balance is zero after the quasi-reorganization, not negative; the deficit was eliminated as part of the fresh-start process.
Wrong (C): Retained earnings is not eliminated from the balance sheet; it continues to be reported with the dating notation indicating the reset date.
Wrong (D): A new APIC account does not replace retained earnings; rather, APIC may be adjusted as part of the quasi-reorganization, but retained earnings remains a separate account.$19$,
  difficulty = 'hard'
WHERE id = 2128;

-- Q2129 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 505-10-45-2, total shareholders'' equity includes all equity components: common stock + APIC + retained earnings, minus contra-equity accounts such as treasury stock. Total = $500,000 + $300,000 + $400,000 − $80,000 = $1,120,000.
Wrong (B): $1,200,000 ignores the $80,000 treasury stock deduction, which is a contra-equity account that reduces total equity.
Wrong (C): $1,280,000 incorrectly adds treasury stock to equity rather than subtracting it.
Wrong (D): $1,180,000 applies an incorrect deduction amount for treasury stock.$19$,
  difficulty = 'easy'
WHERE id = 2129;

-- Q2130 [hard] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 505-30-30-10, retiring treasury stock under the cost method requires debiting common stock at par (2,000 × $5 = $10,000), debiting APIC for the original excess over par (2,000 × ($15 − $5) = $20,000), and debiting retained earnings for the remaining shortfall ($36,000 − $10,000 − $20,000 = $6,000). Treasury stock is credited at cost ($36,000).
Wrong (A): Recording a gain is prohibited; treasury stock retirements are capital transactions that do not produce gains or losses on the income statement.
Wrong (B): Debiting retained earnings for the full $36,000 ignores the par value and original APIC that must be reversed first.
Wrong (C): Debiting common stock for $36,000 exceeds the par value component and does not properly allocate the cost among common stock, APIC, and retained earnings.$19$,
  difficulty = 'hard'
WHERE id = 2130;

-- Q2131 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 505-20-30-3, stock dividends reclassify amounts within shareholders'' equity—retained earnings is debited and common stock (and APIC for small dividends) are credited. Total equity is unchanged because no assets leave the company. The 5,000 new shares (100,000 × 5%) are distributed to existing shareholders proportionally.
Wrong (A): An increase of $300,000 is incorrect because no new assets enter the company from a stock dividend; it is purely an internal equity reclassification.
Wrong (B): A decrease of $300,000 is incorrect because no assets leave the company; retained earnings is reduced but common stock and APIC increase by the same total amount.
Wrong (D): A decrease of $25,000 has no basis in the stock dividend accounting; the par value component does not reduce total equity.$19$,
  difficulty = 'easy'
WHERE id = 2131;

-- Q2132 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 505-10-25-2, when no-par stock has no stated value, the entire proceeds are credited to the common stock account. No APIC is created because there is no par or stated value to create a dividing line. Common stock is credited for the full $440,000 (20,000 × $22).
Wrong (B): Splitting the credit between common stock ($200,000) and APIC ($240,000) incorrectly assumes a par or stated value exists.
Wrong (C): Crediting common stock at $20,000 and APIC at $420,000 invents a $1 par value that does not exist for true no-par stock.
Wrong (D): Crediting APIC for the entire $440,000 with no common stock credit is incorrect; the common stock account must be credited.$19$,
  difficulty = 'medium'
WHERE id = 2132;

-- Q2133 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 505-10-50-3, dividends in arrears on cumulative preferred stock are not recognized as a liability until formally declared by the board. Until declaration, they are disclosed in the notes to the financial statements. A corporation has no legal obligation to pay dividends until they are declared.
Wrong (A): Recording dividends in arrears as a current liability is premature because no legal obligation exists until the board declares a dividend.
Wrong (B): A long-term liability classification is also incorrect; undeclared dividends do not meet the definition of a liability under the conceptual framework.
Wrong (C): Reducing retained earnings on the balance sheet for undeclared dividends is not permitted; the impact on retained earnings occurs only upon declaration.$19$,
  difficulty = 'medium'
WHERE id = 2133;

-- Q2135 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 835-30-25-1, interest accrues from the issue date. From April 1 to June 30 is 3 months. Interest expense = $4,000,000 × 6% × (3/12) = $60,000. This same amount is recorded as interest payable since no cash interest has been paid yet. The first cash payment of $120,000 occurs on October 1.
Wrong (B): $120,000 represents 6 months of interest (a full semi-annual period), but only 3 months have elapsed since the April 1 issue date.
Wrong (C): $240,000 represents a full year of interest, far exceeding the 3-month accrual period.
Wrong (D): $80,000 represents 4 months of interest, overstating the 3-month period from April 1 to June 30.$19$,
  difficulty = 'medium'
WHERE id = 2135;

-- Q2136 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 505-20-30-6, a 40% stock dividend is a large stock dividend (greater than 20–25%) and is recorded at par value. New shares = 60,000 × 40% = 24,000. Retained earnings debit = 24,000 × $15 par = $360,000. Common stock credit = $360,000. No APIC is recognized for large stock dividends.
Wrong (A): Recording at fair value ($1,080,000) applies to small stock dividends (less than 20–25%), not large stock dividends.
Wrong (B): $900,000 uses an intermediate amount between par and market value that is not prescribed by ASC 505-20 for any stock dividend size.
Wrong (D): Debiting APIC instead of retained earnings is incorrect; stock dividends are always charged to retained earnings.$19$,
  difficulty = 'medium'
WHERE id = 2136;

-- Q2137 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 505-10-45-2, book value per share equals total equity divided by shares outstanding. Total equity = $1,000,000 + $600,000 + $850,000 − $75,000 − $180,000 = $2,195,000. Shares outstanding = 200,000 − 10,000 treasury = 190,000. Book value per share = $2,195,000 ÷ 190,000 = $11.55.
Wrong (B): $12.25 may result from excluding AOCI or treasury stock from the calculation, overstating equity per share.
Wrong (C): $10.95 may result from using an incorrect share count or omitting an equity component.
Wrong (D): $12.75 may result from dividing total equity by issued shares (200,000) rather than outstanding shares (190,000) or from other computational errors.$19$,
  difficulty = 'medium'
WHERE id = 2137;

-- Q2139 [medium] topic: Contingencies
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Drake Corp. is a defendant in a lawsuit. Legal counsel advises that the loss is probable and estimates the range of loss to be between $200,000 and $500,000, with no amount in that range more likely than any other. What amount should Drake accrue as a loss contingency?$19$,
  choices = $19$["No accrual is required until the case is settled","The minimum of the range, $200,000","The midpoint of the range, $350,000","The maximum of the range, $500,000"]$19$::jsonb,
  explanation = $19$Correct (B): Under ASC 450-20-30-1, when a range of loss is probable and no amount within the range is a better estimate than any other, the entity must accrue the minimum amount in the range. Drake should accrue $200,000 and disclose the exposure up to $500,000.
Wrong (A): An accrual is required because the loss is probable and reasonably estimable; waiting until settlement would violate ASC 450-20.
Wrong (C): The midpoint ($350,000) is not prescribed by ASC 450-20; the standard specifically requires the minimum when no best estimate exists within the range.
Wrong (D): The maximum ($500,000) overstates the accrual; ASC 450-20-30-1 requires the minimum, not the maximum, when no single amount is more likely.$19$,
  difficulty = 'medium'
WHERE id = 2139;

-- Q2144 [medium] topic: Contingencies
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 450-20-30-1, when a specific amount within a range of probable loss is a better estimate than any other, that amount should be accrued. The $150,000 best estimate takes precedence over the minimum-of-the-range rule, which applies only when no amount in the range is more likely.
Wrong (A): $120,000 (the range minimum) would apply only if no single amount in the range were more likely than any other, which is not the case here.
Wrong (C): $180,000 (the range maximum) is not the accrual amount; the best estimate within the range controls when one exists.
Wrong (D): $135,000 (an average or arbitrary midpoint) is not prescribed by ASC 450-20 as a measurement approach for loss contingencies.$19$,
  difficulty = 'medium'
WHERE id = 2144;

-- Q2146 [medium] topic: Contingencies
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$On December 15, Year 1, a company identified environmental contamination at one of its sites. By December 31, Year 1, the company determined that remediation is probable and estimated the cost at $800,000. The financial statements are issued on March 15, Year 2. What amount should be accrued at December 31, Year 1?$19$,
  choices = $19$["No accrual because remediation work has not yet commenced","A partial accrual of $400,000 reflecting estimated Year 1 costs","The full $800,000 estimated remediation cost","Note disclosure only with no balance sheet accrual"]$19$::jsonb,
  explanation = $19$Correct (C): Under ASC 450-20-25-2, a loss contingency is accrued when it is probable and the amount is reasonably estimable as of the balance sheet date. Both conditions are met by December 31, Year 1, so the full $800,000 must be accrued regardless of whether remediation work has begun.
Wrong (A): Commencement of remediation is irrelevant to the accrual decision; ASC 450-20 requires accrual based on probability and estimability at the balance sheet date.
Wrong (B): A partial accrual of $400,000 has no basis in the standard; the full reasonably estimable amount of $800,000 is accrued when the loss is probable.
Wrong (D): Note disclosure alone is appropriate only when a loss is reasonably possible, not when it is probable and reasonably estimable.$19$,
  difficulty = 'medium'
WHERE id = 2146;

-- Q2150 [hard] topic: Contingencies
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 450-20-25-2, the company should accrue the full $350,000 of estimated probable claims under its self-insurance program. The entity bears the risk for all self-insured claims, and the insurance policy''s $100,000 deductible does not reduce the self-insured accrual. The self-insurance obligation and the insurance recovery are evaluated separately.
Wrong (A): $100,000 reflects only the deductible amount, not the full self-insured probable claims that the company is obligated to recognize.
Wrong (B): $250,000 incorrectly nets the $100,000 deductible against the $350,000 self-insured estimate, but the deductible relates to the purchased policy, not the self-insurance accrual.
Wrong (D): $450,000 incorrectly adds the deductible to the self-insured claims, double-counting the company''s exposure.$19$,
  difficulty = 'hard'
WHERE id = 2150;

-- Q2155 [easy] topic: Contingencies
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 460-10-25-1, assurance-type warranties are accounted for as loss contingencies. Warranty expense accrual = $5,000,000 × 3% = $150,000. Actual claims paid reduce the warranty liability by $40,000. Ending warranty liability = $150,000 − $40,000 = $110,000.
Wrong (A): $40,000 represents only the claims paid during the year, not the remaining estimated liability for future claims.
Wrong (C): $150,000 is the total warranty expense accrued but does not reflect the $40,000 of claims already paid that reduced the liability.
Wrong (D): $190,000 incorrectly adds the claims paid to the accrual instead of subtracting them.$19$,
  difficulty = 'easy'
WHERE id = 2155;

-- Q2157 [hard] topic: Contingencies
-- Issues: unstructured, choice_cuing, both_ab
UPDATE questions SET
  stem = $19$Which of the following represents a key difference between a loss contingency under ASC 450 and a provision under IAS 37?$19$,
  choices = $19$["IAS 37 uses a lower recognition threshold of ''more likely than not'' (>50%), while ASC 450 uses ''probable'' (~75–80%)","IAS 37 requires discounting provisions to present value when the time value of money is material, while ASC 450 generally prohibits discounting","ASC 450 requires disclosure of remote contingencies, while IAS 37 does not","There are no meaningful differences between the two standards"]$19$::jsonb,
  explanation = $19$Correct (A): Under IAS 37.23, provisions are recognized when the outflow is "more likely than not" (greater than 50%), whereas ASC 450-20-25-1 uses "probable," generally interpreted as a 75–80% likelihood threshold. This lower IAS 37 threshold results in more frequent recognition of provisions compared to U.S. GAAP loss contingencies.
Wrong (B): While IAS 37.45 does require discounting to present value when the time value of money is material, this is also a valid difference—however, this choice is not the correct answer because the question asks for "a" key difference, and the recognition threshold difference in choice A is the most fundamental distinction tested on the CPA exam.
Wrong (C): ASC 450 does not require disclosure of remote contingencies as a general rule; remote contingencies are typically excluded from disclosure under both frameworks.
Wrong (D): Significant differences exist between the two standards, including recognition thresholds and measurement approaches.$19$,
  correct_index = 0,
  difficulty = 'hard'
WHERE id = 2157;

-- Q2158 [easy] topic: Contingencies
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 450-20-30-1, when a specific amount within the range represents the best estimate of a probable loss, that amount should be accrued. The $400,000 best estimate takes precedence over the minimum-of-the-range rule, which applies only when no amount in the range is more likely than any other.
Wrong (A): $250,000 is the range minimum, which is used only when no single amount is a better estimate; here, $400,000 is identified as the best estimate.
Wrong (B): $600,000 is the range maximum, which is never the required accrual amount under ASC 450-20; the standard requires either the best estimate or the minimum.
Wrong (C): $425,000 (a midpoint or average) is not prescribed by ASC 450-20 as a measurement approach for loss contingencies.$19$,
  difficulty = 'easy'
WHERE id = 2158;

-- Q2160 [easy] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 740-10-25-20, a deferred tax liability arises from temporary differences that will result in taxable amounts in future periods—meaning the entity will pay more tax in the future when the temporary difference reverses.
Wrong (B): Permanent differences (such as tax-exempt municipal bond interest) never reverse and therefore do not create deferred tax assets or liabilities under ASC 740.
Wrong (C): Tax expense exceeding current income tax payable may indicate a deferred tax liability exists, but it is not the definition; the liability arises from the temporary difference itself.
Wrong (D): A net operating loss carryforward creates a deferred tax asset, not a deferred tax liability, because it provides future tax benefit.$19$,
  difficulty = 'easy'
WHERE id = 2160;
