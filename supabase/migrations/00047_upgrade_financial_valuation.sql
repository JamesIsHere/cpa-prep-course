-- Migration: Upgrade 23 moderate-scoring Financial Valuation Methods questions
-- Fixes: short-stem, short-explanation, length-cuing
-- Target: all questions score 7+ after this migration

-- Q640 [score:6] short-expl(27w) → expand explanation
UPDATE questions SET
  explanation = 'FCFF = EBIT(1-T) + Depreciation - CapEx - Change in NWC = $500,000(0.80) + $80,000 - $100,000 - $30,000 = $400,000 + $80,000 - $100,000 - $30,000 = $350,000. Free cash flow to the firm represents cash available to all capital providers (debt and equity) after reinvestment. Adding depreciation reverses the noncash charge, while CapEx and NWC changes reflect the actual cash reinvested in the business.'
WHERE id = 640;

-- Q641 [score:6] short-expl(16w) → expand explanation
UPDATE questions SET
  explanation = 'Under the Gordon Growth Model, D1 = $2.00 x 1.07 = $2.14. Then P0 = D1/(r - g) = $2.14/(0.12 - 0.07) = $2.14/0.05 = $42.80. The model discounts next period''s dividend by the difference between the required return and the constant growth rate. However, this model is only valid when g < r and when dividends grow at a stable rate indefinitely.'
WHERE id = 641;

-- Q642 [score:4] short-stem(3w) + short-expl(25w) → expand both
UPDATE questions SET
  stem = 'An analyst at Brookstone Capital is preparing a valuation for a potential acquisition target. To determine the total cost of acquiring the business, the analyst needs to calculate enterprise value. Enterprise value equals:',
  explanation = 'Enterprise value = Market capitalization + Total debt + Preferred stock + Minority interest - Cash and cash equivalents. It represents the total acquisition cost of the business because an acquirer must buy the equity (market cap), assume the debt, but receives the cash on hand. EV is capital-structure neutral, making it the preferred numerator for multiples like EV/EBITDA when comparing companies with different leverage.'
WHERE id = 642;

-- Q643 [score:6] short-expl(16w) → expand explanation
UPDATE questions SET
  explanation = 'Enterprise value = Market cap + Debt - Cash = $600M + $200M - $40M = $760M. Then EV/EBITDA = $760M / $100M = 7.6x. This multiple indicates investors are paying 7.6 times the company''s pre-interest, pre-tax, pre-depreciation earnings for the entire enterprise. An acquirer would compare this multiple against industry peers to assess whether the company is relatively over- or undervalued.'
WHERE id = 643;

-- Q644 [score:6] short-expl(25w) → expand explanation
UPDATE questions SET
  explanation = 'Terminal value commonly represents 60-80% of total enterprise value in a DCF analysis, though it can vary by industry and projection period. This heavy reliance makes the terminal growth rate and discount rate assumptions critically important to the overall valuation. Because small changes in these assumptions compound significantly, analysts typically perform sensitivity analysis on terminal value inputs and cross-check against exit multiple approaches.'
WHERE id = 644;

-- Q645 [score:6] short-expl(22w) → expand explanation
UPDATE questions SET
  explanation = 'EV/EBITDA is most appropriate for comparing companies with different capital structures because it uses enterprise value (which includes both debt and equity) in the numerator and EBITDA (which is before interest, taxes, depreciation, and amortization) in the denominator. This makes the multiple independent of financing decisions. In contrast, P/E, EPS, and price-to-book are equity-level metrics that are directly affected by leverage differences between companies.'
WHERE id = 645;

-- Q646 [score:6] short-stem(6w) → expand stem
UPDATE questions SET
  stem = 'A CPA candidate is applying the Gordon Growth Model (also known as the constant-growth dividend discount model) to value a mature, dividend-paying company. The Gordon Growth Model requires that:'
WHERE id = 646;

-- Q647 [score:5] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'An analyst is deciding whether to use free cash flow to the firm (FCFF) or free cash flow to equity (FCFE) for a valuation. FCFE differs from FCFF in that FCFE:'
WHERE id = 647;

-- Q648 [score:6] short-expl(23w) → expand explanation
UPDATE questions SET
  explanation = 'When a DCF model using FCFF produces an enterprise value, the analyst must convert it to equity value by subtracting net debt: Equity value = Enterprise value - Total debt - Preferred stock - Minority interest + Cash and equivalents. Then divide by diluted shares outstanding for per-share value. This step is necessary because FCFF was discounted at WACC, which reflects the cost of all capital, not just equity.'
WHERE id = 648;

-- Q649 [score:6] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'An analyst is calculating the terminal value in a DCF model for Northgate Industries and decides to use a peer-group trading multiple rather than a perpetuity growth assumption. The exit multiple method for terminal value applies a:'
WHERE id = 649;

-- Q650 [score:5] short-expl(25w) + length-cuing → expand explanation, balance choices
UPDATE questions SET
  choices = '["Price-to-earnings ratio based on projected net income","Dividend discount model using projected payout ratios","Price-to-sales or EV/Revenue based on top-line metrics","Earnings yield calculated from normalized net income"]',
  explanation = 'Price-to-earnings and dividend discount models require positive earnings or dividends, which unprofitable companies lack. For early-stage technology companies, revenue-based multiples (price-to-sales or EV/Revenue) provide a meaningful comparison because revenue exists even when the company is not yet profitable. Analysts also frequently use industry-specific metrics such as EV/monthly active users or EV/gross merchandise volume for early-stage companies.'
WHERE id = 650;

-- Q3040 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'A CPA is reviewing the fair value disclosures for a private equity investment that lacks observable market data. Under ASC 820, a Level 3 fair value measurement uses:'
WHERE id = 3040;

-- Q3042 [score:5] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A valuation analyst is selecting the most appropriate approach to value a commercial real estate holding company with $500 million in property assets and stable rental income. The asset-based valuation approach is most appropriate for:',
  choices = '["High-growth technology companies with significant intangible value","Early-stage startups with no revenue or operating history","Service companies where value derives primarily from human capital","Companies with significant tangible assets such as real estate or natural resources"]'
WHERE id = 3042;

-- Q3044 [score:4] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is comparing two acquisition targets that have different levels of debt, operate in different tax jurisdictions, and use different depreciation methods. When using valuation multiples, EV/EBITDA is often preferred over P/E for comparing companies because:',
  choices = '["It requires fewer inputs and is therefore easier to calculate","It uses net income which is a more reliable measure of profitability","It consistently produces a higher implied valuation for the target","It is unaffected by differences in capital structure, tax rates, and depreciation"]'
WHERE id = 3044;

-- Q3047 [score:6] short-stem(6w) → expand stem
UPDATE questions SET
  stem = 'A business valuation expert is preparing an appraisal report and must select one of the three recognized approaches to valuation. The income approach to valuation includes:'
WHERE id = 3047;

-- Q3048 [score:5] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'A CPA is valuing a 15% ownership stake in a closely held corporation where the majority shareholder controls all business decisions. In business valuation, a minority interest discount reflects:'
WHERE id = 3048;

-- Q3050 [score:6] short-stem(11w) → expand stem
UPDATE questions SET
  stem = 'A valuation analyst is evaluating a potential acquisition and wants to examine what acquirers have historically paid for similar companies. Precedent transaction analysis differs from comparable company analysis primarily because it:'
WHERE id = 3050;

-- Q3054 [score:6] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'A business appraiser is valuing a mature, stable manufacturing company with predictable earnings and minimal growth. Under the income approach, the capitalization of earnings method values a business as:'
WHERE id = 3054;

-- Q3056 [score:5] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is valuing shares in a privately held family business for estate tax purposes. Because the shares cannot be readily sold on a public exchange, the discount for lack of marketability (DLOM) is applied to:',
  choices = '["All publicly traded securities regardless of trading volume","Private company valuations to reflect the inability to quickly sell shares","Only real estate valuations involving commercial properties","Government bonds and other fixed-income securities"]'
WHERE id = 3056;

-- Q3062 [score:5] short-stem(8w) → expand stem
UPDATE questions SET
  stem = 'A financial analyst is valuing a diversified conglomerate that operates in three distinct industries: healthcare, technology, and consumer products. Because each division has different growth rates and risk profiles, a sum-of-the-parts (SOTP) valuation is most appropriate when:'
WHERE id = 3062;

-- Q3066 [score:5] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'An investment banker is advising a client on the premium to offer in a hostile takeover bid for a publicly traded target company. Based on historical M&A data, a control premium in an acquisition valuation typically ranges from:'
WHERE id = 3066;

-- Q3069 [score:6] short-stem(8w) → expand stem
UPDATE questions SET
  stem = 'A valuation analyst is estimating the fair value of a well-known consumer brand acquired in a business combination for purchase price allocation purposes. Under ASC 805, the relief-from-royalty method is commonly used to value:'
WHERE id = 3069;

-- Q3357 [score:5] short-stem(7w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA is valuing a noncompete agreement acquired as part of a business combination. The analyst projects cash flows under two scenarios: one assuming the agreement exists and one assuming it does not. The with-and-without method for valuing intangible assets:',
  choices = '["Compares enterprise value with and without the intangible to isolate its contribution","Values intangible assets at their estimated replacement cost","Relies exclusively on market transaction multiples for comparable intangibles","Applies only to goodwill arising from business combinations"]'
WHERE id = 3357;
