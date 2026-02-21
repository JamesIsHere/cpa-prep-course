-- Migration: Upgrade 6 Employee Benefit Plans + 5 Fair Value + 5 Equity questions
-- Fixes: short-expl, short-stem, length-cuing, missing citations
-- Target: all questions score 7+ after this migration

-- === Employee Benefit Plans (6 questions) ===

-- Q1108 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'Ridgemont Manufacturing sponsors a 401(k) plan and matches 50% of employee contributions up to 4% of salary. An employee earning $100,000 contributes 6% ($6,000). The controller must calculate the employer''s matching expense for this employee. Under ASC 715, what is the employer''s expense?',
  explanation = 'Under the plan terms, the matchable amount is 4% of salary (not the full 6% contributed), which equals $4,000. The employer matches 50% of that amount: $4,000 × 50% = $2,000. The employee''s contribution above 4% ($2,000) does not receive a match. Choice A ($3,000) incorrectly applies the 50% match to the full 6% contribution. Choice D ($4,000) incorrectly treats the matchable amount as the match itself without applying the 50% rate.'
WHERE id = 1108;

-- Q1109 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'Thornfield Corp. has a defined benefit pension plan with a beginning projected benefit obligation (PBO) of $5,000,000 and a discount rate of 5%. The controller is calculating the components of net periodic pension cost for the current year. Under ASC 715, the interest cost component is:',
  explanation = 'Under ASC 715-30-35-5, interest cost represents the increase in the PBO due to the passage of time and is calculated as the beginning PBO multiplied by the discount rate: $5,000,000 × 5% = $250,000. This reflects the time value of money applied to the future benefit payments owed to employees. Choice A ($200,000) appears to use 4% instead of the stated 5%. Choice C ($500,000) incorrectly doubles the correct amount, possibly confusing the discount rate with 10%.'
WHERE id = 1109;

-- Q1110 [score:6] short-expl → expand with wrong-answer analysis
UPDATE questions SET
  explanation = 'Under ASC 715-30-35-24, the corridor is 10% of the greater of the beginning PBO ($2,500,000 → 10% = $250,000) or the beginning plan assets ($2,800,000 → 10% = $280,000). The corridor is $280,000. Cumulative unrecognized net actuarial losses of $320,000 exceed the corridor by $40,000 ($320,000 − $280,000). This excess is amortized over the average remaining service period: $40,000 ÷ 8 years = $5,000. Choice B ($32,000) incorrectly amortizes the total losses over 10 years without applying the corridor. Choice C ($40,000) uses the excess amount without dividing by the service period.'
WHERE id = 1110;

-- Q1111 [score:6] short-stem → expand with scenario + cite ASC 715
UPDATE questions SET
  stem = 'Ashford Electronics amends its defined benefit pension plan to retroactively increase the benefit formula for all employees with 10 or more years of service. The plan amendment creates $1.2 million in prior service cost. The controller must determine the initial recognition and subsequent amortization of this cost. Under ASC 715, when a defined benefit plan is amended to retroactively increase benefits, the resulting prior service cost is:',
  explanation = 'Under ASC 715-30-35-10, prior service cost from a plan amendment is initially recognized in other comprehensive income (OCI) and then amortized from accumulated OCI into pension expense over the average remaining service period of employees expected to receive benefits. Choice A is incorrect because immediate full recognition in pension expense would overstate current-period costs. Choice B is incorrect because deferring recognition until benefits are paid would understate pension cost during the amortization period.'
WHERE id = 1111;

-- Q1112 [score:6] short-stem → expand with scenario + cite ASC 715
UPDATE questions SET
  stem = 'A CPA candidate studying pension accounting asks the difference between the three measures of the pension obligation. The instructor explains that only one measure reflects the full estimated cost of future benefits, including anticipated salary increases. Under ASC 715, which measure of the pension obligation incorporates projected future salary increases?',
  explanation = 'Under ASC 715-30-20, only the projected benefit obligation (PBO) incorporates projected future salary increases when estimating the present value of future pension benefits. The accumulated benefit obligation (ABO) uses current salary levels, and the vested benefit obligation (VBO) is limited to benefits that have vested at current salary levels. Choice D is incorrect because the ABO explicitly excludes projected salary increases — that is the defining distinction between the ABO and PBO.'
WHERE id = 1112;

-- Q1113 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'Birchwood Inc. reports the following components of net periodic pension cost for 2025: service cost $200,000; interest cost $150,000; expected return on plan assets $180,000; amortization of prior service cost $15,000; amortization of net actuarial loss $8,000. Under ASC 715, what is net periodic pension cost?',
  explanation = 'Under ASC 715-30-35, net periodic pension cost (NPPC) is calculated as: service cost + interest cost − expected return on plan assets + amortization of prior service cost + amortization of net loss = $200,000 + $150,000 − $180,000 + $15,000 + $8,000 = $193,000. The expected return is subtracted because it represents the anticipated earnings that offset the pension obligation. Choice B ($553,000) incorrectly adds the expected return instead of subtracting it. Choice C ($170,000) appears to omit the amortization components.'
WHERE id = 1113;

-- === Fair Value (5 questions) ===

-- Q1152 [score:6] short-expl → expand with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'Thornfield Industries values a manufacturing facility using the cost approach under ASC 820. The replacement cost of the building is $5,000,000. The engineering firm estimates physical deterioration of $800,000 and functional obsolescence of $200,000. Under ASC 820, what is the fair value of the building?',
  explanation = 'Under ASC 820-10-35-18C, the cost approach determines fair value as the current replacement cost minus all forms of depreciation and obsolescence. Fair value = $5,000,000 − $800,000 (physical deterioration) − $200,000 (functional obsolescence) = $4,000,000. Choice A ($5,000,000) ignores all depreciation adjustments. Choice D ($4,800,000) deducts only the functional obsolescence, omitting physical deterioration.'
WHERE id = 1152;

-- Q1153 [score:6] short-stem → expand with scenario + cite ASC 825
UPDATE questions SET
  stem = 'Ridgemont Corp.''s controller is evaluating which financial instruments qualify for the fair value option under ASC 825. The controller considers applying the election to a note receivable, a corporate bond investment, an investment in a consolidated subsidiary, and a financial guarantee. Under ASC 825, which of the following financial instruments is NOT eligible for the fair value option?',
  explanation = 'Under ASC 825-10-15-5, the fair value option cannot be elected for investments in subsidiaries that are consolidated. Other exclusions include interests in consolidated variable interest entities (VIEs), pension and OPEB obligations, and financial assets or liabilities under lease accounting. Choice A is incorrect because notes receivable are eligible for the fair value option. Choice B is incorrect because corporate bonds held as investments are eligible for the fair value option.'
WHERE id = 1153;

-- Q1282 [score:6] short-stem → expand with scenario + cite ASC 820
UPDATE questions SET
  stem = 'A CPA candidate studying fair value measurement asks the instructor for the precise definition used by ASC 820. The instructor explains that fair value is specifically defined as an exit price, not an entry price. Under ASC 820, fair value is defined as:',
  explanation = 'Under ASC 820-10-20, fair value is the price that would be received to sell an asset or paid to transfer a liability in an orderly transaction between market participants at the measurement date — an exit price concept. This is distinct from an entry price (acquisition cost), replacement cost, or a specific present value calculation. Choice A is incorrect because it describes an entry price (acquisition cost), not an exit price. Choice C describes the cost approach methodology, not the definition of fair value itself.'
WHERE id = 1282;

-- Q2229 [score:6] short-stem → expand with scenario + cite ASC 820
UPDATE questions SET
  stem = 'The controller at Ashford Financial Group is preparing the fair value measurement disclosures for the 2025 annual report. She must classify each measurement as recurring or nonrecurring. Available-for-sale debt securities are measured at fair value each quarter, while goodwill is tested for impairment only when triggering events occur. Under ASC 820, which of the following fair value measurements is classified as recurring?',
  explanation = 'Under ASC 820-10-50-1, recurring fair value measurements are those required in the balance sheet at the end of each reporting period, such as available-for-sale debt securities and trading securities. Choice A is incorrect because goodwill impairment testing is a nonrecurring measurement — it occurs only when events indicate possible impairment. Choice B is also nonrecurring because long-lived asset write-downs occur only upon specific triggering events.'
WHERE id = 2229;

-- Q2237 [score:6] short-stem → expand with scenario + cite ASC 820
UPDATE questions SET
  stem = 'A CPA candidate asks the instructor what "orderly transaction" means in the context of ASC 820 fair value measurements. The instructor explains that this concept excludes forced sales, distressed liquidations, and transactions where the seller is compelled to sell immediately. Under ASC 820, an orderly transaction is one that:',
  explanation = 'Under ASC 820-10-35-3, an orderly transaction assumes the asset or liability has been exposed to the market for a period prior to the measurement date sufficient for normal marketing activities. It is not a forced liquidation or distress sale. This concept ensures fair value reflects market conditions under normal circumstances. Choice A is incorrect because there is no single-business-day requirement — orderly transactions allow adequate market exposure time. Choice B is incorrect because involving a distressed seller is specifically excluded from the definition of an orderly transaction.'
WHERE id = 2237;

-- === Equity (5 questions) ===

-- Q2109 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'Kensington Retail Corp. has two classes of stock outstanding: 50,000 shares of 6% cumulative preferred stock ($100 par) and 500,000 shares of common stock. The board of directors did not declare dividends in 2024 or 2025. In 2026, the board declares a total dividend of $900,000. The controller must determine how to allocate the dividend between the two classes. Cumulative preferred stock is characterized by the requirement that:',
  explanation = 'Cumulative preferred stock requires that all dividends in arrears (unpaid dividends from prior years) must be paid before any dividends can be distributed to common shareholders. In this scenario, two years of preferred dividends are in arrears: $100 × 50,000 × 6% × 2 = $600,000. The remaining $300,000 goes to common shareholders. Choice A describes convertible preferred stock, not cumulative. Choice C is incorrect because preferred shareholders typically do not have general voting rights.'
WHERE id = 2109;

-- Q2117 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'Thornfield Industries issues 10,000 shares of $5 par common stock at $42 per share, receiving $420,000 in cash. The controller records the transaction by debiting cash and crediting common stock and additional paid-in capital. A staff accountant asks which types of equity transactions increase versus decrease total shareholders'' equity. Which of the following transactions increases total shareholders'' equity?',
  explanation = 'Issuing common stock above par increases total equity: cash is debited, and common stock plus additional paid-in capital (APIC) are credited, adding net assets to the company. Choice A is incorrect because declaring a cash dividend decreases equity (debit retained earnings, credit dividends payable). Choice B is incorrect because purchasing treasury stock decreases equity (debit contra-equity account). Choice D is incorrect because stock dividends reclassify within equity (retained earnings to common stock/APIC) but do not change the total.'
WHERE id = 2117;

-- Q2126 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'Ashford Corp. issues 100,000 shares of $25 par callable preferred stock at $28 per share. The stock is callable at $30 per share after five years at the issuer''s option. The controller explains the call feature to the board. Which of the following describes callable preferred stock?',
  explanation = 'Callable preferred stock gives the issuing corporation the right (but not the obligation) to redeem (repurchase) the preferred shares at a specified call price, typically at a premium over par. This gives the issuer flexibility to retire expensive equity when interest rates decline or when market conditions are favorable. Choice A incorrectly describes puttable or redeemable preferred stock, where the shareholder can demand repurchase. Choice C describes mandatory convertible preferred stock, not callable preferred.'
WHERE id = 2126;

-- Q2127 [score:6] short-stem + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'Ridgemont Corp. has accumulated a retained earnings deficit of $8 million over several unprofitable years. The board proposes a quasi-reorganization to eliminate the deficit and give the company a fresh start without going through formal legal reorganization or bankruptcy. Under GAAP, a quasi-reorganization is used to:',
  choices = '["Restructure debt obligations with creditors through a negotiated workout agreement outside bankruptcy","Liquidate the corporation and distribute remaining assets to shareholders on a pro-rata basis","Convert preferred stock to common stock to simplify the capital structure and reduce dividend obligations","Eliminate a retained earnings deficit by restating assets to fair value and offsetting the deficit against paid-in capital"]',
  explanation = 'A quasi-reorganization allows a company with a retained earnings deficit to get a "fresh start" without formal legal reorganization. Assets are restated to fair value (which may create additional losses), and the accumulated deficit is eliminated against APIC or other paid-in capital. Retained earnings starts at zero and must be dated for a reasonable period. Choice A is incorrect because debt restructuring is a separate process under ASC 470 or ASC 852. Choice B is incorrect because quasi-reorganization continues the entity — it does not liquidate it.'
WHERE id = 2127;

-- Q2128 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'After completing a quasi-reorganization on January 1, 2025, Ridgemont Corp.''s retained earnings balance is reset to zero. The controller asks the engagement partner how the retained earnings should be presented in subsequent financial statements. Under GAAP, after a quasi-reorganization, how is the retained earnings balance reported?',
  explanation = 'After a quasi-reorganization, retained earnings starts at zero and must be dated for a reasonable period (typically 3-10 years) to disclose that the account was reset — for example, "Retained earnings since quasi-reorganization of January 1, 2025." The dating alerts financial statement users that the balance does not represent the company''s full earnings history. Choice A is incorrect because the balance is zero, not negative — the deficit was eliminated. Choice C is incorrect because retained earnings is not eliminated from the balance sheet; it continues to be reported with the dating notation.'
WHERE id = 2128;
