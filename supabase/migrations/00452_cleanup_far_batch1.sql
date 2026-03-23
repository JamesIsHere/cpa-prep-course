-- FAR cleanup batch 1 (5 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q4706 [easy] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = 'According to the FASB Conceptual Framework, what is the primary objective of general-purpose financial reporting?',
  choices = '["To provide information useful for resource allocation decisions by investors and creditors","To determine the taxable income of a reporting entity","To provide information exclusively for internal management decisions","To calculate the liquidation value of a reporting entity"]'::jsonb,
  explanation = 'Correct (A): SFAC No. 8, Chapter 1, OB2 establishes that the primary objective of general-purpose financial reporting is to provide financial information about the reporting entity that is useful to existing and potential investors, lenders, and other creditors in making decisions about providing resources to the entity. This objective guides all other aspects of the Conceptual Framework.
Wrong (B): Determining taxable income is the objective of tax accounting under the Internal Revenue Code, not the FASB Conceptual Framework.
Wrong (C): General-purpose financial reports are directed at external users, not exclusively at management; management has access to internal reporting systems.
Wrong (D): Liquidation value is a measurement attribute used in specific circumstances, not the primary objective of financial reporting.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4706;

-- Q4728 [easy] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = 'A company has a $100,000 note payable due on March 1 of the following year. How should this note be classified on the December 31 balance sheet?',
  choices = '["As a noncurrent liability based on its original term","As a contingent liability requiring disclosure only","As a current liability due within twelve months","As a contra asset offsetting the related receivable"]'::jsonb,
  explanation = 'Correct (C): ASC 210-10-45-6 requires that obligations whose liquidation is reasonably expected within twelve months after the balance sheet date be classified as current liabilities. Because the note is due March 1, which falls within twelve months of December 31, it is classified as current regardless of its original term.
Wrong (A): The original term of the obligation is irrelevant to current classification; what matters is whether settlement is expected within the next twelve months.
Wrong (B): A contingent liability depends on the outcome of an uncertain future event; this note payable is a definite obligation with a fixed due date.
Wrong (D): A contra asset reduces a related asset account; a note payable is a liability and is never presented as a contra asset.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 2
WHERE id = 4728;

-- Q4734 [easy] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = 'A company issues a $500,000 note payable on October 1, Year 1, with 6% annual interest payable semiannually on April 1 and October 1. What amount of accrued interest payable should be reported on the December 31, Year 1 balance sheet?',
  choices = '["$30,000 representing twelve months of interest","$15,000 representing six months of interest","$7,500 representing three months of interest","$0 because no payment date has been reached"]'::jsonb,
  explanation = 'Correct (C): ASC 835-30-45-3 requires interest to be accrued over the period the obligation is outstanding. Interest accrues from October 1 to December 31, which is three months. The calculation is $500,000 x 6% x 3/12 = $7,500. This amount is reported as accrued interest payable at year-end.
Wrong (A): $30,000 represents a full year of interest ($500,000 x 6%), but the note was only outstanding for three months during Year 1.
Wrong (B): $15,000 represents six months of interest, which would apply at the first semiannual payment date of April 1, not at December 31.
Wrong (D): Interest accrues with the passage of time under the matching principle; the absence of a payment date does not eliminate the obligation to accrue.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 3
WHERE id = 4734;

-- Q4736 [medium] topic: Payables and Accrued Liabilities
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = 'A company has a $200,000 line of credit, of which $120,000 has been drawn down. The drawn balance is due on demand. How should the $120,000 be classified on the balance sheet?',
  choices = '["As a current liability because it is callable on demand","As a noncurrent liability based on expected repayment timing","As an equity instrument representing contributed capital","As an unrecognized commitment disclosed in the notes only"]'::jsonb,
  explanation = 'Correct (A): ASC 470-10-45-2 requires that obligations callable by the creditor at any time be classified as current liabilities. A demand obligation must be classified as current regardless of the entity''s expectation about whether the creditor will actually demand payment.
Wrong (B): The entity''s expectation about repayment timing is irrelevant for demand obligations; the creditor''s right to demand payment at any time dictates current classification.
Wrong (C): A line of credit draw-down creates a liability, not an equity instrument; equity represents ownership interests, not borrowing arrangements.
Wrong (D): The drawn portion of a line of credit is a recognized liability on the balance sheet; only the undrawn commitment may be disclosed rather than recognized.',
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 4736;

-- Q4763 [hard] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_citation, no_contrast, no_blooms, choice_cuing
UPDATE questions SET
  stem = 'A counterbalancing error, such as an understatement of ending inventory in Year 1, is discovered after Year 2 financial statements have been issued. If Year 1 financial statements are presented comparatively, what corrective action is required?',
  choices = '["No correction is needed because the error reverses automatically","Restatement of each affected period presented in comparative statements","Disclosure of the error in the notes without restatement of prior periods","Restatement of all financial statements from the entity''s inception"]'::jsonb,
  explanation = 'Correct (B): ASC 250-10-45-23 requires that when prior-period financial statements are restated, the entity must correct each affected period presented. Even though a counterbalancing error self-corrects over two periods, each individual period''s financial statements are misstated and must be restated when presented comparatively.
Wrong (A): Self-correction does not eliminate the requirement to restate; ASC 250-10-45-23 mandates restatement of each misstated period presented, regardless of whether the error eventually offsets.
Wrong (C): Disclosure alone is insufficient for material errors; ASC 250 requires retrospective restatement of prior-period financial statements, not merely note disclosure.
Wrong (D): Restatement from inception applies only to certain changes in accounting principle; error correction requires restating only the specific affected periods, not all periods from inception.',
  correct_index = 1,
  difficulty = 'hard',
  cognitive_level = 4
WHERE id = 4763;
