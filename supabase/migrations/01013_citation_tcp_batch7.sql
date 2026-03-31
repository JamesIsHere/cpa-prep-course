-- Migration: Citation backfill — TCP batch 7 (18 questions)
-- Date: 2026-03-31
-- Purpose: Add standard citations to 18 explanations for TCP section
-- Affected topics: Entity Choice and Planning, Entity Formation and Restructuring, Individual Tax Planning: Compensation, Multi-Jurisdictional Tax Planning, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Retirement Plans and Education Savings

BEGIN;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (1 questions)
-- ============================================================

-- ID 15798: Entity Choice and Planning
UPDATE questions SET
  explanation = 'Most states have adopted a single sales factor apportionment formula, as permitted under UDITPA Section 9 and its state-level variants. This approach allocates 100% of apportionable business income based on the ratio of in-state sales to total sales, reflecting the modern trend toward destination-based taxation. While the traditional equal-weighted three-factor formula (property, payroll, and sales) was the original UDITPA standard, most states have abandoned it in favor of single sales factor because it incentivizes in-state employment and investment without increasing tax burden.'
WHERE id = 15798;

-- ============================================================
-- ENTITY FORMATION AND RESTRUCTURING (3 questions)
-- ============================================================

-- ID 4999: Entity Formation and Restructuring
UPDATE questions SET
  explanation = 'Under Treas. Reg. Sec. 1.368-1(d), the continuity of business enterprise (COBE) doctrine requires the acquiring corporation to either continue the target''s historic business or use a significant portion of the target''s historic business assets in a business. Meeting either prong satisfies the requirement for a valid Type A reorganization under IRC Sec. 368(a)(1)(A). However, COBE does not impose a specific employee retention percentage, unlike the business or asset continuity tests, because the doctrine focuses on the ongoing enterprise rather than workforce headcount.'
WHERE id = 4999;

-- ID 13584: Entity Formation and Restructuring
UPDATE questions SET
  explanation = 'The step transaction doctrine, recognized by the courts and applied by the IRS under IRC Sec. 368 reorganization analysis, treats a series of formally separate transactions as a single integrated transaction when the individual steps are interdependent. Courts apply three tests—the binding commitment test, the mutual interdependence test, and the end result test—as established in Commissioner v. Gordon (1968). While the broader substance-over-form doctrine may also apply, the step transaction doctrine is the specific judicial tool used to collapse sequential corporate reorganization steps into one taxable or tax-free event.'
WHERE id = 13584;

-- ID 13585: Entity Formation and Restructuring
UPDATE questions SET
  explanation = 'Under IRC Sec. 368(a)(2)(D), a forward triangular merger allows the target to merge into a subsidiary of the acquiring parent, with the parent issuing its own stock as consideration. The principal advantage of this structure is liability isolation—the target''s liabilities remain within the subsidiary, shielding the parent''s other assets from the target''s creditors. Although the continuity of interest requirement under Treas. Reg. Sec. 1.368-1(e) still applies, unlike a direct merger the triangular structure prevents commingling of the target''s obligations with the parent''s balance sheet.'
WHERE id = 13585;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (1 questions)
-- ============================================================

-- ID 3953: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'Under ERISA Sec. 201(2) and Sec. 301(a)(3), top-hat plans—unfunded nonqualified deferred compensation plans for a select group of management or highly compensated employees—are exempt from ERISA''s participation, vesting, funding, and fiduciary requirements. However, they remain subject to Part 1 of Title I reporting and disclosure provisions, including a one-time filing with the Department of Labor under IRC Sec. 409A coordination rules. While qualified plans must satisfy all ERISA requirements, top-hat plans are intentionally exempted to allow flexible executive compensation arrangements without the full regulatory burden.'
WHERE id = 3953;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (9 questions)
-- ============================================================

-- ID 4975: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under IRC Sec. 164(b)(6), individual taxpayers are limited to a $10,000 SALT deduction. A state PTE tax election, authorized under IRS Notice 2020-75, allows the pass-through entity to pay state income tax at the entity level, reducing the federal pass-through income reported to owners. Individual owners receive a corresponding state tax credit or income exclusion, effectively bypassing the $10,000 SALT cap at the federal level. Unlike simply claiming the SALT deduction on Schedule A, the PTE election shifts the deduction to the entity level where the IRC Sec. 164(b)(6) cap does not apply.'
WHERE id = 4975;

-- ID 4980: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Corporation N earns a job creation credit of $60,000 (12 employees x $5,000) against a $45,000 State T income tax liability. Under state tax credit rules analogous to IRC Sec. 38 federal credit limitations, a nonrefundable credit can only reduce liability to zero and cannot generate a refund. Because State T provides no carryforward provision, the excess $15,000 credit is permanently lost, leaving Corporation N''s final liability at $0. While a refundable credit under similar provisions would generate a $15,000 payment, the nonrefundable nature of this credit means the taxpayer forfeits any amount exceeding current-year liability.'
WHERE id = 4980;

-- ID 4981: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under multistate apportionment principles derived from UDITPA Section 16, a throwout rule removes nowhere sales (sales into states where the taxpayer lacks nexus) from both the numerator and denominator of the sales factor. This increases the apportionment percentage in states where the taxpayer does file, potentially raising total state tax. Unlike a throwback rule under UDITPA Section 16, which assigns nowhere sales to the state of origin and adds them to that state''s numerator, a throwout rule simply eliminates those sales from the factor calculation entirely rather than redirecting them.'
WHERE id = 4981;

-- ID 15815: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under market-based sourcing rules adopted by a growing majority of states following the MTC model based on UDITPA Section 17, service revenue is sourced to the state where the customer receives the benefit of the service, regardless of where the service provider performs the work. Because State B uses market-based sourcing and the client receives the benefit in State B, Ridgemont sources 100% of this revenue to State B for apportionment purposes. Unlike cost-of-performance sourcing under the original UDITPA Section 17 framework, which sources service receipts to the state where the greatest proportion of income-producing activity occurs, market-based sourcing focuses on the customer''s location.'
WHERE id = 15815;

-- ID 15817: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'UDITPA (Uniform Division of Income for Tax Purposes Act), adopted by most states under AICPA and state legislative guidance, provides a uniform framework for classifying income as business or nonbusiness and for apportioning business income among states using a formulary method based on property, payroll, and sales factors per UDITPA Section 9. Its primary purpose is to prevent double taxation and ensure consistent division of multistate business income. Unlike nexus standards, which are governed by constitutional due process and commerce clause analysis under South Dakota v. Wayfair, Inc. (2018), UDITPA addresses only how income is divided once taxing jurisdiction is established.'
WHERE id = 15817;

-- ID 15818: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under UDITPA Section 4 through Section 8, allocation assigns specific items of nonbusiness income—such as rents from real property, gains from fixed asset sales, or royalties—directly to a particular state, typically the situs state or commercial domicile. Apportionment, by contrast, divides business income among all states where the taxpayer has nexus using a formulary method under UDITPA Section 9. While apportionment uses factors like sales, property, and payroll to distribute income proportionally, allocation is a direct assignment of discrete income items to a single state without formula application.'
WHERE id = 15818;

-- ID 15820: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under the Finnigan rule, all sales destined for the filing state are included in the sales factor numerator regardless of whether the individual selling member has nexus there, yielding ($3M + $5M) / $40M = 20.0%. This approach, adopted by states like California under Cal. Rev. & Tax. Code Section 25135, treats the combined group as a single taxpayer for sales factor purposes. However, under the Joyce rule from Appeal of Joyce, Inc. (1966), only sales by members that individually have nexus in the state are included in the numerator, producing $3M / $40M = 7.5%—a significantly lower apportionment percentage.'
WHERE id = 15820;

-- ID 15821: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'A water''s-edge election under state combined reporting rules excludes foreign entities from the combined group, removing both their income and their apportionment factors from the calculation. As analyzed under the framework upheld in Container Corp. v. Franchise Tax Board, 463 U.S. 159 (1983), per IRC Sec. 482 transfer pricing principles, the net effect depends on the relative magnitudes of excluded income versus excluded factors. If the foreign subsidiary''s large sales denominator was diluting State N''s apportionment factor, excluding it could increase the percentage applied to a smaller income base. Unlike the assumption that water''s-edge always reduces tax, the election may increase state liability when excluded factors had been lowering the apportionment ratio.'
WHERE id = 15821;

-- ID 15822: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Voluntary disclosure agreements, often facilitated through the Multistate Tax Commission under its model VDA program, allow taxpayers to come forward before a state initiates contact regarding unfiled returns per AICPA state tax compliance guidance. In exchange for voluntary compliance, the state typically waives penalties and limits the lookback period to three or four years, reducing total exposure compared to a state-initiated audit. Unlike waiting for assessment, which exposes the taxpayer to full penalties and potentially an unlimited lookback period in some states, a VDA provides a structured resolution with significantly reduced financial consequences.'
WHERE id = 15822;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4162: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under Rev. Proc. 93-27 and Rev. Proc. 2001-43, receipt of a profits interest in exchange for services is generally not a taxable event under IRC Sec. 721, provided the interest is not disposed of within two years, is not related to a substantially certain income stream, and is not a disguised payment under IRC Sec. 707(a)(2)(A). A profits interest entitles the partner only to future appreciation and income, meaning it has no liquidation value at the grant date. Unlike a capital interest received for services, which is immediately taxable at fair market value under IRC Sec. 83(a), a profits interest avoids immediate recognition because the recipient would receive nothing if the partnership liquidated at the grant date.'
WHERE id = 4162;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (2 questions)
-- ============================================================

-- ID 6021: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = 'Under Treas. Reg. Sec. 1.469-4(e), once activities are grouped together under IRC Sec. 469, the grouping may only be changed if the original grouping was clearly inappropriate or if a material change in facts and circumstances makes the existing grouping clearly inappropriate. The regulations specifically prevent annual regrouping to manipulate passive income and loss netting across activities. Although Crawford wants to separate the businesses for tax benefit, merely wanting to offset losses from a new rental property does not constitute a material change in facts and circumstances, unlike an actual operational change such as selling one business or relocating operations.'
WHERE id = 6021;

-- ID 6047: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = 'Under Treas. Reg. Sec. 1.469-1T(e)(3)(ii)(B), an activity is not treated as a rental activity if significant personal services are provided in connection with making the property available for use, per IRC Sec. 469(j)(8). The executive suite services—reception, mail handling, IT support, and conference rooms—go well beyond merely providing property, so the activity is classified as a trade or business. While the short-term rental exception under Reg. Sec. 1.469-1T(e)(3)(ii)(A) addresses rentals with average customer use of seven days or less, the significant services exception applies here regardless of lease duration because of the substantial non-rental services provided.'
WHERE id = 6047;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (1 questions)
-- ============================================================

-- ID 15787: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under the SECURE Act, codified at IRC Sec. 401(a)(9)(H), and IRS final regulations (TD 9981), when the original IRA owner died after the required beginning date, non-eligible designated beneficiaries must take annual required minimum distributions during years 1 through 9, calculated using the beneficiary''s single life expectancy from IRS tables. The entire remaining balance must be distributed by December 31 of the 10th year following the year of death. Unlike the rule when the owner dies before the required beginning date, which allows flexible timing within the 10-year window without annual RMDs, post-RBD deaths require distributions in each of the first nine years.'
WHERE id = 15787;

COMMIT;
