-- Migration 00041: Rewrite 8 critical-scoring questions (score 0-3)
-- Issues: short stems, short explanations, length-cuing, banned distractor patterns

-- Q346 — Review and Compilation (was: 8-word stem, "absolute assurance" banned distractor)
UPDATE questions
SET
  stem = 'Clearwater Accounting LLP performed a review engagement of Hensley Distributors'' 2025 financial statements under SSARS. In the accountant''s review report, what form of assurance is expressed in the conclusion paragraph?',
  choices = '["Reasonable assurance that the statements are free from material misstatement", "Limited assurance that nothing came to the accountant''s attention requiring material modification", "No assurance — the accountant disclaims any opinion on the financial statements", "Conditional assurance based on the scope of analytical procedures performed"]'::jsonb,
  correct_index = 1,
  explanation = 'Under AR-C 90, a review engagement provides limited (negative) assurance. The accountant''s conclusion states that nothing came to their attention that would cause them to believe the financial statements require material modification for conformity with the applicable framework. Choice A describes an audit opinion (reasonable/positive assurance under AU-C 700). Choice C describes a compilation, which provides no assurance. Choice D is fabricated — SSARS does not define a conditional assurance level.'
WHERE id = 346;

-- Q625 — Prospective Analysis and Forecasting (was: 10-word stem, 25-word explanation)
UPDATE questions
SET
  stem = 'Ridgeline Retail Inc. is preparing its 2026 sales forecast. The company''s historical data shows a seasonal index of 1.15 for Q4. Average quarterly sales over the past three years are $840,000. What does the seasonal index indicate, and what is the seasonally adjusted Q4 forecast?',
  choices = '["Q4 is typically 15% below average; forecast $714,000", "Q4 is typically 15% above average; forecast $966,000", "Q4 accounts for 15% of annual sales; forecast $504,000", "Q4 sales grow 15% year-over-year; forecast $966,000"]'::jsonb,
  correct_index = 1,
  explanation = 'A seasonal index of 1.15 means the quarter''s demand is typically 15% above the average quarterly level. The seasonally adjusted forecast is $840,000 x 1.15 = $966,000. Choice A reverses the direction — an index below 1.00 would indicate below-average demand. Choice C confuses the seasonal index with a percentage-of-annual-sales allocation. Choice D misinterprets the index as a year-over-year growth rate rather than a deviation from the quarterly average. To deseasonalize actual Q4 data, divide by 1.15.'
WHERE id = 625;

-- Q651 — Financial Valuation Methods (was: 7-word stem, 25-word explanation)
UPDATE questions
SET
  stem = 'Greystone Capital is valuing Meridian Biotech, a company currently growing earnings at 22% annually due to a blockbuster drug patent expiring in five years. After patent expiry, analysts expect growth to stabilize at 4%. Which valuation model is most appropriate for Meridian, and why?',
  choices = '["Constant-growth DDM, because the 4% terminal rate can be applied to current dividends immediately", "Two-stage DDM, because the initial high-growth phase will transition to a sustainable long-term rate", "Free cash flow to equity model, because the company''s growth rate exceeds the required return during the patent period", "Liquidation value model, because the patent expiry will eliminate the company''s competitive advantage"]'::jsonb,
  correct_index = 1,
  explanation = 'The two-stage dividend discount model is designed for companies experiencing an initial period of above-normal growth followed by a transition to a stable, sustainable growth rate. Meridian''s 22% growth during the patent period and 4% terminal rate fit this pattern precisely. Choice A is incorrect because the constant-growth (Gordon) model assumes a single perpetual growth rate, which would undervalue the high-growth phase. Choice C describes a valid model but does not address why it is preferred over the DDM here — the growth rate exceeding the required return would actually make a single-stage DDM mathematically undefined, not justify switching models. Choice D is inappropriate because patent expiry does not imply liquidation.'
WHERE id = 651;

-- Q699 — Advanced Consolidations / Government Reporting (was: 8-word stem, 28-word explanation, length-cuing)
UPDATE questions
SET
  stem = 'Lakeview County administers a pension trust fund with $45 million in net position held for retired county employees, and a custodial fund that collects and distributes property taxes on behalf of three local school districts. When preparing its government-wide financial statements, how should Lakeview report these fiduciary activities?',
  choices = '["Include both funds in the governmental activities column because the county is the legal administrator", "Exclude both funds from government-wide statements and report them only in separate fiduciary fund statements", "Include the pension trust in government-wide statements as a component unit but exclude the custodial fund", "Report both funds as business-type activities because they generate fee revenue for the county"]'::jsonb,
  correct_index = 1,
  explanation = 'Under GASB 34, fiduciary activities are excluded from the government-wide financial statements because the resources are held in trust or as an agent for external parties and are not available to finance the government''s own programs or services. They are reported separately in fiduciary fund financial statements, which include a statement of fiduciary net position and a statement of changes in fiduciary net position. Choice A is incorrect because legal administration does not make the resources governmental — the beneficiaries are external. Choice D is incorrect because fiduciary funds do not represent the government''s own business-type operations.'
WHERE id = 699;

-- Q716 — Derivatives and Hedging (was: 6-word stem, 26-word explanation)
UPDATE questions
SET
  stem = 'Crestline Manufacturing purchases a call option on 10,000 bushels of wheat with a strike price of $5.50 per bushel, paying a premium of $3,200. At expiration, the market price is $6.10 per bushel. What is Crestline''s right under the option, and what is the net gain or loss?',
  choices = '["Right to sell at $5.50; net loss of $3,200 because the market price exceeds the strike price", "Obligation to buy at $5.50; net gain of $6,000 with no premium offset", "Right to buy at $5.50; net gain of $2,800 after deducting the $3,200 premium from the $6,000 gross payoff", "Right to buy at $6.10; net gain of $3,200 equal to the premium recovered"]'::jsonb,
  correct_index = 2,
  explanation = 'Under ASC 815, a call option grants the holder the right — but not the obligation — to purchase the underlying asset at the strike price. Crestline exercises the option because the market price ($6.10) exceeds the strike ($5.50), yielding a gross payoff of ($6.10 - $5.50) x 10,000 = $6,000. After subtracting the $3,200 premium paid, the net gain is $2,800. Choice A confuses a call (right to buy) with a put (right to sell). Choice B incorrectly characterizes options as obligations — that describes a forward or futures contract. Choice D uses the market price as the exercise price, which misunderstands strike price mechanics.',
  difficulty = 'medium'
WHERE id = 716;

-- Q725 — State and Local Government Reporting (was: 10-word stem, 25-word explanation, length-cuing)
UPDATE questions
SET
  stem = 'Cedar Falls Township issues $8 million in general obligation bonds to finance construction of a new fire station. In the capital projects fund financial statements, how should Cedar Falls classify the $8 million bond proceeds received?',
  choices = '["Revenue, because the cash inflow increases the fund''s financial resources", "An other financing source, reported separately from revenues in the operating statement", "A long-term liability in the capital projects fund''s balance sheet", "A deferred inflow of resources, recognized as revenue over the construction period"]'::jsonb,
  correct_index = 1,
  explanation = 'Under GASB 34, bond proceeds received by governmental funds are classified as other financing sources — not revenue — because they create obligations rather than earning resources through operations. They appear in the statement of revenues, expenditures, and changes in fund balance below the expenditure line. Choice A is incorrect because GASB distinguishes between revenues (earned or imposed nonexchange transactions) and financing sources (borrowings, transfers). Choice C reflects the government-wide treatment where the bond is a long-term liability, but governmental funds use the current financial resources measurement focus and do not report long-term debt. Choice D misapplies the deferred inflow concept, which applies to resources received before the period to which they relate.'
WHERE id = 725;

-- Q735 — State and Local Government Reporting (was: 8-word stem, 25-word explanation, weak distractors)
UPDATE questions
SET
  stem = 'Briarwood County collects property taxes on behalf of three independent school districts and remits the amounts quarterly. Under GASB 84, which fund type should Briarwood use to account for these tax collections, and why?',
  choices = '["Special revenue fund, because the tax collections are restricted for a specific purpose", "Agency component of the general fund, because the collections pass through the county''s main operating account", "Custodial fund, because the county holds the resources temporarily for other governments and has no administrative involvement in spending decisions", "Private-purpose trust fund, because the resources benefit parties outside the county government"]'::jsonb,
  correct_index = 2,
  explanation = 'Under GASB 84, custodial funds (which replaced agency funds) are used when a government holds resources for other organizations, other governments, or individuals and the activity does not meet the criteria for a trust arrangement. Briarwood collects and remits the taxes but exercises no administrative discretion over how the school districts spend the money. Choice A is incorrect because special revenue funds account for the government''s own resources that are restricted or committed to a specific purpose — these taxes belong to the school districts, not Briarwood. Choice D is incorrect because a private-purpose trust requires a formal trust agreement with the government acting as trustee; a pass-through tax collection does not meet that threshold. Choice B is incorrect because GASB 84 eliminated the practice of reporting agency-type activities within other funds.'
WHERE id = 735;

-- Q1057 — IT Audit Frameworks (was: 6-word stem, 29-word explanation)
UPDATE questions
SET
  stem = 'During a SOC 2 engagement at Pinnacle Data Services, the auditor notes that the company''s IT department uses a framework organized around a service value chain with guiding principles, governance, and continual improvement practices. Which IT framework is Pinnacle most likely using?',
  choices = '["COBIT 2019, which structures IT governance around five domains including EDM and APO", "NIST Risk Management Framework, which follows a seven-step process from categorization through monitoring", "ITIL 4, which centers on the service value system for delivering and improving IT services", "ISO 27001, which specifies requirements for establishing an information security management system"]'::jsonb,
  correct_index = 2,
  explanation = 'ITIL 4 is an IT service management framework built around the Service Value System (SVS), which includes the service value chain, guiding principles, governance, practices, and continual improvement. The stem''s description of these components maps directly to ITIL 4. Choice A is incorrect because COBIT 2019, issued by ISACA, focuses on IT governance and management objectives across five domains (EDM, APO, BAI, DSS, MEA) rather than a service value chain. Choice B is incorrect because the NIST RMF is a cybersecurity risk framework with a structured seven-step lifecycle, not a service management model. Choice D is incorrect because ISO 27001 is an information security standard focused on ISMS controls, not IT service delivery.'
WHERE id = 1057;
