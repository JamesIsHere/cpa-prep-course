-- Migration: Stem expansion — AUD batch 1 (10 questions)
-- Date: 2026-03-29
-- Purpose: Expand 10 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Audit Evidence, Audit Planning, Audit Reports, Ethics and Independence, Internal Controls, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Tests of Controls

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 questions)
-- ============================================================

-- ID 4593: Analytical Procedures (3 words)
-- ORIGINAL STEM: Trend analysis involves:
UPDATE questions SET
  stem = $EXPL$During the audit of Lakewood Industries for the year ended December 31, 2025, the senior auditor asks an associate to perform analytical procedures on the income statement accounts. The associate selects trend analysis as one technique. Trend analysis involves:$EXPL$
WHERE id = 4593;

-- ============================================================
-- AUDIT EVIDENCE (1 questions)
-- ============================================================

-- ID 294: Audit Evidence (11 words)
-- ORIGINAL STEM: What does Benford's Law analysis evaluate in the context of auditing?
UPDATE questions SET
  stem = $EXPL$While planning the audit of Ridgemont Distributors, the engagement team decides to apply a digital analysis technique to the accounts payable population before selecting items for detailed testing. When the team uses Benford''s Law analysis, what does this technique evaluate?$EXPL$
WHERE id = 294;

-- ============================================================
-- AUDIT PLANNING (1 questions)
-- ============================================================

-- ID 1447: Audit Planning (10 words)
-- ORIGINAL STEM: Tolerable misstatement is applied at which level during audit planning?
UPDATE questions SET
  stem = $EXPL$Prescott & Associates is planning the 2025 audit of a manufacturing client. After establishing overall materiality at $250,000 for the financial statements as a whole, the engagement partner discusses how to allocate materiality to individual accounts. Tolerable misstatement is applied at which level during audit planning?$EXPL$
WHERE id = 1447;

-- ============================================================
-- AUDIT REPORTS (1 questions)
-- ============================================================

-- ID 125: Audit Reports (10 words)
-- ORIGINAL STEM: Under AU-C 705, when is a disclaimer of opinion issued?
UPDATE questions SET
  stem = $EXPL$During the audit of Clearwater Holdings, significant flooding destroyed a large portion of the client''s warehouse records and the company''s backup server was also damaged. The engagement team was unable to perform alternative procedures to verify several material account balances. Under AU-C 705, when is a disclaimer of opinion issued?$EXPL$
WHERE id = 125;

-- ============================================================
-- ETHICS AND INDEPENDENCE (1 questions)
-- ============================================================

-- ID 1332: Ethics and Independence (10 words)
-- ORIGINAL STEM: Under the AICPA Code, what is a management participation threat?
UPDATE questions SET
  stem = $EXPL$A partner at Whitfield CPA Group has been asked by an attest client to help select the new payroll system vendor and oversee its implementation. Before accepting the engagement, the quality control reviewer flags a potential independence concern. Under the AICPA Code, what is a management participation threat?$EXPL$
WHERE id = 1332;

-- ============================================================
-- INTERNAL CONTROLS (1 questions)
-- ============================================================

-- ID 1542: Internal Controls (7 words)
-- ORIGINAL STEM: Authorization controls are designed to ensure that:
UPDATE questions SET
  stem = $EXPL$Cascade Electronics has implemented a system requiring department managers to approve all purchase orders over $5,000 before they are transmitted to suppliers. The auditor identifies this as an authorization control. Authorization controls of this type are designed to ensure that:$EXPL$
WHERE id = 1542;

-- ============================================================
-- RISK ASSESSMENT (1 questions)
-- ============================================================

-- ID 1491: Risk Assessment (6 words)
-- ORIGINAL STEM: Detection risk is the risk that:
UPDATE questions SET
  stem = $EXPL$During a risk assessment discussion for the audit of Summit Retail Corp., the engagement partner reminds the team that the audit risk model has three components: inherent risk, control risk, and detection risk. Detection risk is the risk that:$EXPL$
WHERE id = 1491;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4655: Specific Areas and Transactions (7 words)
-- ORIGINAL STEM: When auditing accounting estimates, the auditor should:
UPDATE questions SET
  stem = $EXPL$Orion Manufacturing recorded a $2.8 million warranty reserve based on management''s projection of future claims. The engagement team is evaluating this estimate as part of the 2025 audit. When auditing accounting estimates such as this warranty reserve, the auditor should:$EXPL$
WHERE id = 4655;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (1 questions)
-- ============================================================

-- ID 320: Substantive Procedures (8 words)
-- ORIGINAL STEM: Which financial statement assertion does cutoff testing address?
UPDATE questions SET
  stem = $EXPL$Near the end of fieldwork for the December 31, 2025 audit of Pinnacle Logistics, the engagement team examines sales invoices and shipping documents dated within several days of year-end. Which financial statement assertion does this cutoff testing primarily address?$EXPL$
WHERE id = 320;

-- ============================================================
-- TESTS OF CONTROLS (1 questions)
-- ============================================================

-- ID 4576: Tests of Controls (6 words)
-- ORIGINAL STEM: The auditor tests controls primarily to:
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Briar Creek Financial, the engagement team plans to rely on the client''s automated three-way matching control over disbursements. Before reducing the extent of substantive testing, the team must perform tests of controls. The auditor tests controls primarily to:$EXPL$
WHERE id = 4576;

COMMIT;
