-- Migration: Upgrade 25 moderate-scoring Risk Management and Economics questions
-- Fixes: short-stem, short-explanation, length-cuing, absolute-assurance
-- Target: all questions score 7+ after this migration

-- Q652 [score:4] short-stem(9w) + short-expl(24w) → expand both
UPDATE questions SET
  stem = 'An analyst is categorizing economic indicators to assess whether the economy is entering a downturn. Which of the following is classified as a leading economic indicator that changes before the overall economy?',
  explanation = 'Building permits are a leading indicator because construction activity reflects future economic investment and employment. They typically decline before a recession begins and rise before a recovery. In contrast, the unemployment rate and average duration of unemployment are lagging indicators that change after the economy has already shifted. The CPI is also considered a lagging indicator that reflects past price pressures rather than future economic direction.'
WHERE id = 652;

-- Q653 [score:6] short-expl(29w) → expand explanation
UPDATE questions SET
  explanation = 'A positive NPV means the project earns more than the required rate of return and creates shareholder value. Under capital budgeting theory, a firm should accept all projects with a positive NPV. In this case, the $27,448 NPV indicates the project generates $27,448 in value above the 10% cost of capital. If NPV is positive at 10%, then the internal rate of return exceeds 10%, confirming the project clears the hurdle rate.'
WHERE id = 653;

-- Q654 [score:6] short-expl(28w) → expand explanation
UPDATE questions SET
  explanation = 'Modified duration measures the percentage change in bond price for a 1% change in yield. The calculation is: Price change = -Modified duration x Change in yield = -6.0 x (-0.75%) = +4.5%. Bond prices move inversely to interest rates, so a rate decrease causes a price increase. However, duration provides only a linear approximation, and convexity adjustments may be needed for large rate changes.'
WHERE id = 654;

-- Q656 [score:4] short-stem(6w) + short-expl(28w) → expand both
UPDATE questions SET
  stem = 'A portfolio manager is explaining to a client why adding more stocks to a diversified portfolio will not eliminate all investment risk. The risk that remains after full diversification, known as systematic risk, is best described as:',
  explanation = 'Systematic (market) risk affects the entire market and includes factors such as interest rate changes, inflation, recessions, and geopolitical events. It cannot be eliminated through diversification because it impacts all securities simultaneously. Under CAPM, systematic risk is the only risk compensated with expected return because investors can diversify away unsystematic risk. Unlike firm-specific risk, which relates to individual company events, systematic risk is measured by beta and represents the unavoidable exposure to macroeconomic forces.'
WHERE id = 656;

-- Q657 [score:6] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'A company has identified five positive-NPV projects but has only enough capital to fund three of them. In this capital rationing situation, the profitability index is most useful when:'
WHERE id = 657;

-- Q658 [score:4] short-stem(11w) + short-expl(24w) → expand both
UPDATE questions SET
  stem = 'A financial analyst is reviewing macroeconomic data and observes consecutive quarters of declining GDP. During an economic contraction, which of the following conditions is most likely to occur?',
  explanation = 'An economic contraction (recession) is characterized by falling GDP, rising unemployment, decreasing consumer and business spending, and potentially declining prices. This contrasts with the expansion phase where GDP grows, unemployment falls, and consumer confidence rises. Recessions are officially determined by the NBER based on depth, diffusion, and duration of economic decline across multiple indicators, not solely two quarters of negative GDP.'
WHERE id = 658;

-- Q659 [score:6] short-expl(25w) → expand explanation
UPDATE questions SET
  explanation = 'A pay-fixed, receive-floating interest rate swap effectively converts variable-rate debt into a fixed-rate obligation, hedging against the risk of rising interest rates. The company pays a fixed rate to the swap counterparty and receives a floating rate that offsets its variable-rate debt payments. If rates rise, the company''s higher floating-rate debt payments are offset by higher floating-rate receipts from the swap. However, if rates fall, the company loses the benefit of lower rates because it is locked into the fixed payment.'
WHERE id = 659;

-- Q3071 [score:5] short-stem(7w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CFO is briefing the board of directors on the types of financial risk facing the organization. Among the key risk categories, interest rate risk is the risk that:',
  choices = '["A counterparty will fail to meet its debt obligations when due","Fluctuations in market interest rates will reduce asset values or increase borrowing costs","Rising inflation will erode the real purchasing power of future cash flows","Movements in foreign exchange rates will reduce the value of international operations"]'
WHERE id = 3071;

-- Q3072 [score:5] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'Brookfield Manufacturing has $50 million in outstanding variable-rate term loans tied to SOFR. If market interest rates increase significantly over the next year, a company with this level of variable-rate debt is most exposed to:'
WHERE id = 3072;

-- Q3073 [score:5] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'An economist is analyzing which indicators signal an approaching downturn before it officially begins. During a recession, which leading economic indicator would typically decline first?',
  choices = '["Initial unemployment claims filed with state agencies","Real gross domestic product as measured by the BEA","Consumer confidence as measured by the Conference Board","Corporate income tax revenue collected by the Treasury"]'
WHERE id = 3073;

-- Q3076 [score:6] short-stem(6w) → expand stem
UPDATE questions SET
  stem = 'A CPA candidate is studying the difference between systematic and unsystematic risk in portfolio theory. According to modern portfolio theory, systematic risk can be reduced through:'
WHERE id = 3076;

-- Q3077 [score:6] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'A financial analyst is discussing inflation measures with a client who wants to understand the most commonly cited consumer inflation benchmark. The Consumer Price Index (CPI) is best described as:'
WHERE id = 3077;

-- Q3079 [score:6] short-stem(6w) → expand stem
UPDATE questions SET
  stem = 'A CPA candidate studying macroeconomics needs to identify the correct sequence of the four phases of the business cycle. The business cycle phases in order are:'
WHERE id = 3079;

-- Q3081 [score:4] short-stem(7w) + absolute-assurance → expand stem, fix distractor
UPDATE questions SET
  stem = 'The audit committee of Westfield Industries is evaluating whether to adopt a formal enterprise risk management (ERM) framework. An enterprise risk management framework provides:',
  choices = '["Elimination of all residual business risk exposures","Regulatory compliance certification for SOX requirements","An insurance policy against financial statement fraud","A structured approach to identifying, assessing, and managing risks across the organization"]',
  explanation = 'ERM provides a holistic framework for identifying, assessing, prioritizing, and managing risks across the entire organization. It integrates risk management into strategic planning and daily operations, helping management make informed decisions about risk appetite and resource allocation. While ERM improves risk awareness and response, it does not eliminate all risk or provide regulatory certification. Frameworks such as COSO ERM guide organizations in establishing governance, culture, strategy, performance metrics, and review processes.'
WHERE id = 3081;

-- Q3082 [score:6] short-stem(11w) → expand stem
UPDATE questions SET
  stem = 'An international economics exam question asks about the theory explaining long-run exchange rate movements between two countries. Purchasing power parity (PPP) theory suggests that exchange rates adjust to:'
WHERE id = 3082;

-- Q3084 [score:6] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate is comparing measures of economy-wide price changes and needs to understand the difference between the two major price indices. The GDP deflator differs from the CPI in that it:',
  choices = '["Focuses exclusively on the consumer goods basket","Is calculated and released on a monthly basis","Measures price changes across the entire economy, not just consumer goods","Tracks only import and export price movements"]'
WHERE id = 3084;

-- Q3086 [score:6] short-stem(3w) → expand stem
UPDATE questions SET
  stem = 'During the 1970s oil crisis, many economies experienced a rare combination of rising prices and economic stagnation. This phenomenon, known as stagflation, occurs when:'
WHERE id = 3086;

-- Q3087 [score:6] short-stem(10w) → expand stem
UPDATE questions SET
  stem = 'A finance professor is explaining the relationship between real interest rates, nominal interest rates, and expected inflation. The Fisher Effect states that the nominal interest rate equals:'
WHERE id = 3087;

-- Q3089 [score:6] short-stem(9w) → expand stem
UPDATE questions SET
  stem = 'An economist is reviewing post-recession data to identify which indicators are slowest to recover after an economic downturn. Which of the following is classified as a lagging economic indicator?'
WHERE id = 3089;

-- Q3091 [score:6] short-stem(4w) → expand stem
UPDATE questions SET
  stem = 'A company with $30 million in variable-rate debt wants to limit its maximum interest expense while retaining the benefit if rates decline. To achieve this, the company could use an interest rate cap, which:'
WHERE id = 3091;

-- Q3092 [score:5] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A CPA candidate studying fixed-income securities is asked about the fundamental price behavior of bonds in response to changing market yields. The relationship between interest rates and bond prices is:',
  choices = '["Direct — rates and prices move together in the same direction","Inverse — when market interest rates rise, bond prices decline","Unrelated — bond prices depend solely on the issuer creditworthiness","Variable — the direction depends on the bond''s remaining maturity"]'
WHERE id = 3092;

-- Q3093 [score:6] short-stem(2w) → expand stem
UPDATE questions SET
  stem = 'A fixed-income analyst is evaluating how sensitive a bond portfolio is to potential interest rate changes. In the context of bond analysis, duration measures:'
WHERE id = 3093;

-- Q3095 [score:6] short-stem(8w) → expand stem
UPDATE questions SET
  stem = 'A risk management committee is categorizing the types of risk facing the organization into market risk, credit risk, and operational risk. Operational risk includes all of the following EXCEPT:'
WHERE id = 3095;

-- Q3097 [score:6] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'A macroeconomics question asks about the trade-off between price stability and employment levels in an economy. The Phillips Curve illustrates the relationship between:'
WHERE id = 3097;

-- Q3099 [score:6] short-stem(8w) → expand stem
UPDATE questions SET
  stem = 'During the 2008 financial crisis, the Federal Reserve implemented unconventional monetary policy after short-term interest rates reached the zero lower bound. Quantitative easing (QE) by a central bank involves:'
WHERE id = 3099;
