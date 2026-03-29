-- Fix 3 FAR questions identified during human review of fail-flagged questions
-- Q444: Wrong answer keyed (cost method described as par value method) — full rewrite
-- Q2047: $1 rounding trap distractor replaced + explanation for choice B corrected
-- Q4741: Wrong answer (counted 4 months instead of 3) — correct_index changed to B

-- Q444: Par value method treasury stock — full rewrite
UPDATE questions
SET
  stem = $STEM$Pinebrook Corp. originally issued 5,000 shares of $10 par common stock at $18 per share. It later reacquires all 5,000 shares at $22 per share using the par value method. Which entry correctly records the reacquisition?$STEM$,
  choices = '["Debit Treasury Stock $110,000","Debit Treasury Stock $50,000, debit APIC $40,000, debit Retained Earnings $20,000","Debit Treasury Stock $50,000, debit Retained Earnings $60,000","Debit Treasury Stock $90,000, debit Retained Earnings $20,000"]',
  correct_index = 1,
  explanation = $EXPL$Correct (B): Under ASC 505-30-30-7 (par value method), treasury stock is debited at par ($10 × 5,000 = $50,000). APIC is debited to reverse the original excess over par ($8 × 5,000 = $40,000). The remaining excess of reacquisition cost over original issuance price ($22 − $18 = $4 × 5,000 = $20,000) is debited to retained earnings. Total credits to Cash: $110,000.
Wrong (A): Recording treasury stock at full reacquisition cost ($22 × 5,000) describes the cost method, not the par value method.
Wrong (C): This skips the APIC reversal. The $8 original premium over par must be debited to APIC before any amount reaches retained earnings.
Wrong (D): $90,000 combines par ($50,000) and APIC ($40,000) into a single treasury stock debit, which misstates the par value method entry. Treasury stock is recorded at par only.$EXPL$
WHERE id = 444;

-- Q2047: Lease ROU asset — replace rounding trap distractor + fix explanation
UPDATE questions
SET
  choices = '["$273,255","$250,000","$223,255","$210,618"]',
  correct_index = 2,
  explanation = $EXPL$Correct (C): Under ASC 842-20-30-1, the right-of-use asset initially equals the lease liability. Since payments are at the beginning of each year (annuity due), the lease liability is $50,000 × 4.4651 = $223,255. With no prepayments, incentives, or initial direct costs, the ROU asset equals the liability at $223,255.
Wrong (A): $273,255 double-counts the first payment by adding $50,000 to the present value of $223,255. The annuity-due factor already incorporates the immediate first payment — adding it again overstates the asset.
Wrong (B): $250,000 is the total undiscounted lease payments ($50,000 × 5 years), which ignores the present value discounting required by ASC 842-20-30-1.
Wrong (D): $210,618 results from using an ordinary annuity factor (payments at end of period) rather than an annuity-due factor, failing to account for the beginning-of-period payment timing.$EXPL$
WHERE id = 2047;

-- Q4741: Property tax accrual — fix correct answer from D to B (3 months, not 4)
UPDATE questions
SET
  correct_index = 1,
  explanation = $EXPL$Correct (B): Under ASC 720-30-25, property taxes of $48,000 per year equal $4,000 per month. From January 1 through March 31, three months of expense have accrued: 3 × $4,000 = $12,000. The tax is not due until September 30, so the full $12,000 remains unpaid and is reported as accrued property tax payable.
Wrong (A): $4,000 represents only one month of accrual and understates the obligation by two months.
Wrong (C): $48,000 is the full annual assessment. Accruing the entire amount before the full year has elapsed overstates the liability at March 31.
Wrong (D): $16,000 represents four months of accrual, but only three months (January, February, March) have elapsed by March 31.$EXPL$
WHERE id = 4741;
