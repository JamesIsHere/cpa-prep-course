-- Migration: Bloom's L1 rebalancing — AUD batch 4 (46 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 46 L2 (Application) questions to L1 (Remember/Understand) depth for AUD section
-- Affected topics: Ethics and Independence, Substantive Procedures, Professional Responsibilities

BEGIN;

-- ============================================================
-- ETHICS AND INDEPENDENCE (13 questions)
-- ============================================================

-- ID 1323: Ethics and Independence — Permitted loans from financial institution clients
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code, which type of loan from a financial institution audit client is a permitted exception to the independence rules?',
  choices = '["An automobile loan obtained under normal lending procedures", "An unsecured personal loan negotiated at a preferential rate", "A loan from a non-financial-institution audit client for any amount", "Any loan that is below a de minimis dollar threshold"]'::jsonb,
  explanation = 'Correct (A): The AICPA Code provides specific exceptions for certain loans from financial institution audit clients, including automobile loans and other secured loans obtained under normal lending procedures. These loans do not impair independence provided they are kept current and obtained under terms available to the general public. (C) is wrong because loans from non-financial-institution audit clients are generally prohibited regardless of amount. (B) is wrong because preferential rates indicate the loan was not obtained under normal lending procedures. (D) is wrong because the AICPA Code does not establish a de minimis threshold for loans.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1323;

-- ID 1324: Ethics and Independence — Immediate family direct financial interest
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code, how does a direct financial interest held by an immediate family member affect independence?',
  choices = '["It impairs independence only if the interest is material to the family member", "It impairs independence regardless of the amount or how it was acquired", "It impairs independence only if the CPA is the engagement partner", "It does not impair independence because the CPA does not personally own the interest"]'::jsonb,
  explanation = 'Correct (B): Under the AICPA Code, any direct financial interest held by an immediate family member (such as a spouse or dependent) of a covered member impairs independence regardless of materiality or how the interest was acquired. The rules do not provide a materiality exception for direct financial interests. (A) is wrong because materiality is not considered for direct financial interests. (C) is wrong because the prohibition applies to all covered members, not just the engagement partner. (D) is wrong because immediate family members are treated as extensions of the covered member for independence purposes.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1324;

-- ID 1328: Ethics and Independence — Nonattest service management responsibility requirement
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA Code, what must management do to maintain the CPA firm''s independence when the firm performs nonattest services?',
  choices = '["Pay a separate fee for each nonattest service provided", "Disclose all nonattest services in the audit report", "Designate a competent individual to oversee the services and accept responsibility for results", "Require a different office of the CPA firm to perform the nonattest services"]'::jsonb,
  explanation = 'Correct (C): For nonattest services such as bookkeeping, the AICPA Code requires that management designate an individual competent to oversee the services, make all management decisions, evaluate the adequacy of results, and accept responsibility for the results. These conditions prevent the CPA from assuming a management role. (A) is wrong because separate billing is not a required condition for independence. (B) is wrong because disclosure in the audit report is not a stated requirement. (D) is wrong because using a different office is not required by the AICPA Code.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1328;

-- ID 1330: Ethics and Independence — Fee dependence threat type
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, what type of threat is created when a CPA firm derives a significant portion of its revenue from a single audit client?',
  choices = '["Self-review threat", "Advocacy threat", "Undue influence threat", "Self-interest threat due to fee dependence"]'::jsonb,
  explanation = 'Correct (D): When a significant portion of a firm''s revenue comes from a single client, a self-interest threat exists because the firm may be reluctant to take actions that could jeopardize the relationship. The AICPA has indicated that fee dependence exceeding 15% of gross revenue warrants safeguards such as engagement quality review. (A) is wrong because self-review threat arises when a CPA evaluates its own prior work, not from fee concentration. (B) is wrong because advocacy threat arises from promoting a client''s position, not from revenue dependence. (C) is wrong because undue influence threat involves external pressure on the auditor, not internal financial incentives.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1330;

-- ID 1332: Ethics and Independence — Management participation threat definition
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA Code, what is a management participation threat?',
  choices = '["A threat that arises when a CPA performs a management function for an attest client, such as making decisions on the client''s behalf", "A threat that exists when a CPA has a financial interest in a client", "A threat that occurs when a CPA becomes personally close to client personnel through a long engagement", "A threat that arises when a CPA promotes a client''s legal position in a dispute"]'::jsonb,
  explanation = 'Correct (A): A management participation threat arises when a CPA takes on a management responsibility for an attest client, such as making business decisions, authorizing transactions, or directing employees. Unlike other threats, management participation cannot be mitigated through safeguards — the CPA must never assume a management role for an attest client. (B) is wrong because that describes a self-interest threat. (C) is wrong because that describes a familiarity threat. (D) is wrong because that describes an advocacy threat.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1332;

-- ID 1334: Ethics and Independence — Prohibited loans for covered members
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, which type of loan is generally prohibited for a covered member?',
  choices = '["A checking account at a bank audit client that is fully insured by the FDIC", "A loan from an audit client that is not a financial institution", "A home mortgage from a bank audit client obtained under normal lending terms", "An automobile loan from a bank audit client obtained under normal lending procedures"]'::jsonb,
  explanation = 'Correct (B): Loans from audit clients that are not financial institutions are generally prohibited because they represent direct financial interests. The AICPA Code provides specific exceptions only for certain loans from financial institution clients, such as checking accounts, home mortgages obtained under normal terms, and automobile loans. (A) is wrong because FDIC-insured checking accounts at bank audit clients are a permitted exception. (C) is wrong because home mortgages from bank clients obtained under normal terms are a permitted exception. (D) is wrong because automobile loans from bank clients obtained under normal procedures are also a permitted exception.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1334;

-- ID 1335: Ethics and Independence — Contingent fee prohibition for attest clients
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code, what is the rule regarding contingent fees for services provided to an attest client?',
  choices = '["Contingent fees are permitted for tax services but not for audit services", "Contingent fees are permitted if the fee amount is determined by a third party", "Contingent fees are prohibited for any service provided to an attest client during the engagement period", "Contingent fees are permitted as long as they are disclosed in the engagement letter"]'::jsonb,
  explanation = 'Correct (C): Under the AICPA Code, a member cannot charge a contingent fee for any service provided to an attest client during the period of the professional engagement or the period covered by the financial statements. This prohibition covers all services, including tax services, because a contingent fee creates a self-interest threat that is too significant to mitigate. (A) is wrong because the prohibition extends to all services, not just audit services. (B) is wrong because third-party fee determination does not exempt the prohibition. (D) is wrong because disclosure does not cure the prohibition on contingent fees for attest clients.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1335;

-- ID 1336: Ethics and Independence — Covered member spouse in client role
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, what is the independence effect when a covered member''s spouse holds a position that influences the client''s financial statements?',
  choices = '["Independence is not impaired because the spouse is a separate individual from the CPA", "Independence is impaired only if the spouse prepares journal entries", "Independence is not impaired as long as the covered member is not on the engagement team", "Independence is impaired because an immediate family member in a position to influence financial statements creates an unacceptable threat"]'::jsonb,
  explanation = 'Correct (D): Under the AICPA Code, when an immediate family member (such as a spouse) of a covered member holds a position where they can exert significant influence over the client''s accounting records or financial statements, independence is impaired. This applies regardless of the specific title or duties. (A) is wrong because immediate family members are treated as extensions of the covered member for independence purposes. (B) is wrong because the rule applies to any position with influence over financial statements, not only journal entry preparation. (C) is wrong because the engagement quality reviewer is also a covered member, not just engagement team members.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1336;

-- ID 1338: Ethics and Independence — Unique characteristic of management participation threat
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under the AICPA conceptual framework, what makes the management participation threat unique among all threat categories?',
  choices = '["It is both a threat category and a specifically prohibited activity that cannot be mitigated through safeguards", "It is the only threat that applies to non-attest engagements", "It is the most common threat encountered in auditing", "It can always be mitigated through engagement quality review"]'::jsonb,
  explanation = 'Correct (A): Management participation is unique because it is both a category of threat and a specifically prohibited activity. A CPA must never assume a management responsibility for an attest client, regardless of whether safeguards might be available. Other threats — self-interest, familiarity, self-review, and advocacy — can potentially be mitigated through safeguards. (B) is wrong because management participation applies specifically to attest engagements, not non-attest ones. (C) is wrong because frequency does not define its unique characteristic. (D) is wrong because management participation cannot be mitigated — it is an absolute prohibition.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1338;

-- ID 1339: Ethics and Independence — Internal audit outsourcing independence condition
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code, what is required of the client''s management when a CPA firm provides internal audit outsourcing services?',
  choices = '["The CPA firm must use different staff for internal and external audit work", "Management must accept responsibility for directing and overseeing the internal audit function", "The CPA firm must perform at least 40% of the internal audit work", "The internal audit services must be immaterial to the financial statements"]'::jsonb,
  explanation = 'Correct (B): For internal audit outsourcing, the AICPA Code requires that the client''s management accept responsibility for establishing and maintaining the internal audit function, determining scope and risk, and evaluating findings. This follows the general nonattest service requirement: management must designate a competent individual to oversee the services, make all management decisions, and accept responsibility for results. (A) is wrong because using different staff is not a stated requirement. (C) is wrong because no percentage threshold for work performed by the CPA firm is specified. (D) is wrong because materiality is not the determining condition for independence.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1339;

-- ID 1340: Ethics and Independence — Conceptual framework first step after identifying a threat
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA conceptual framework, what is the first step after a threat to independence has been identified?',
  choices = '["Immediately withdraw from the engagement", "Report the threat to the AICPA Ethics Division", "Evaluate whether safeguards can reduce the threat to an acceptable level", "Ignore the threat if it arises from a long-term client relationship"]'::jsonb,
  explanation = 'Correct (C): Under the conceptual framework approach, after identifying a threat, the CPA must evaluate its significance and determine whether safeguards can reduce it to an acceptable level. Examples of safeguards include reassigning personnel, adding supervisory review, or consulting with a third party. (A) is wrong because immediate withdrawal is premature — the threat may be mitigable. (B) is wrong because reporting to the Ethics Division is not the required first step. (D) is wrong because threats must always be evaluated regardless of the length of the client relationship.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1340;

-- ID 1342: Ethics and Independence — Objectivity principle definition
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, which principle requires a CPA to maintain intellectual honesty and freedom from conflicts of interest?',
  choices = '["Due care", "Confidentiality", "Acts discreditable", "Objectivity"]'::jsonb,
  explanation = 'Correct (D): Objectivity requires a CPA to be impartial, intellectually honest, and free from conflicts of interest. It is especially important when the CPA provides multiple services to the same client, as the CPA must not allow the desire to retain the client relationship to bias professional judgments. (A) is wrong because due care relates to competence and diligence, not freedom from conflicts. (B) is wrong because confidentiality relates to protecting client information. (C) is wrong because acts discreditable is a conduct rule prohibiting behavior that harms the profession, not a principle about impartiality.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1342;

-- ID 1345: Ethics and Independence — Retired partner covered member status
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code, when is a retired partner of a CPA firm not considered a covered member?',
  choices = '["When the retired partner''s retirement benefits are fixed and not dependent on firm revenues", "When the retired partner no longer has an office at the firm", "When the retired partner has been retired for at least three years", "When the retired partner does not personally know any current engagement team members"]'::jsonb,
  explanation = 'Correct (A): Under the AICPA Code, a retired partner whose retirement benefits are fixed and not dependent on the firm''s revenues is generally not considered a covered member. Therefore, the retired partner''s financial interests in clients do not impair the firm''s independence. If retirement benefits were based on firm revenues, the partner would still be considered a covered member. (C) is wrong because the length of retirement does not determine covered member status. (B) is wrong because maintaining or not maintaining a physical office is not the relevant criterion. (D) is wrong because personal relationships with engagement team members do not determine covered member status.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1345;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (25 questions)
-- ============================================================

-- ID 323: Substantive Procedures — Direction of testing for existence
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 500, what is the direction of testing for the existence assertion?',
  choices = '["From source documents to the accounting records", "From the accounting records to supporting documents", "From the bank statement to the cash receipts journal", "From the general ledger to the trial balance"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 500, testing for existence (or occurrence) starts with the recorded amount in the accounting records and traces to supporting documentation. If an item is recorded but no supporting documentation exists, the auditor has evidence that the amount may not exist or may not have occurred. (A) is wrong because tracing from source documents to accounting records tests the completeness assertion. (C) is wrong because that describes a bank reconciliation procedure, not the direction of existence testing. (D) is wrong because comparing the ledger to the trial balance is an internal consistency check.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 323;

-- ID 324: Substantive Procedures — Dual-purpose test definition
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 330, what does a dual-purpose test simultaneously evaluate?',
  choices = '["Two different financial statement assertions", "Two different accounting periods", "Controls and substantive evidence in a single procedure", "Revenue and expenses in the same transaction cycle"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 330.A23, a dual-purpose test serves as both a test of controls and a substantive test of details in a single procedure. This approach is efficient because it addresses both control effectiveness and account balance accuracy from the same sample of transactions. (A) is wrong because testing two assertions is not what defines a dual-purpose test — the dual purpose refers to combining control and substantive testing. (B) is wrong because testing two periods describes roll-forward procedures, not dual-purpose tests. (D) is wrong because combining revenue and expense testing is not the defining characteristic of a dual-purpose test.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 324;

-- ID 1669: Substantive Procedures — First step in substantive analytical procedure
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'What is the first step when designing a substantive analytical procedure?',
  choices = '["Investigate significant differences between expected and recorded amounts", "Determine the acceptable threshold for differences", "Compare the current year balance to the prior year balance", "Develop an independent expectation of the recorded amount using reliable data"]'::jsonb,
  explanation = 'Correct (D): The first step in a substantive analytical procedure is developing an independent expectation of the recorded amount using reliable and relevant data. This expectation serves as the benchmark against which the recorded amount is compared. Without a reliable expectation, the analytical procedure cannot provide meaningful audit evidence. (A) is wrong because investigating differences comes after the comparison, not before. (B) is wrong because setting a threshold occurs after the expectation is developed. (C) is wrong because a simple prior-year comparison is not the same as developing an independent expectation.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1669;

-- ID 1674: Substantive Procedures — Auditor response to damaged or obsolete inventory
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'What should the auditor do when damaged or obsolete inventory is observed during the physical count?',
  choices = '["Note the items and evaluate whether management has properly accounted for impairment", "Ignore the items because inventory valuation is management''s responsibility alone", "Immediately write down the items in the auditor''s workpapers", "Count the damaged items but exclude them from the inventory total"]'::jsonb,
  explanation = 'Correct (A): When the auditor observes damaged or obsolete inventory during the physical count, the auditor should note the items and evaluate whether management has appropriately accounted for impairment through write-downs, lower of cost or net realizable value adjustments, or obsolescence reserves. This addresses the valuation assertion for inventory. (B) is wrong because although valuation is management''s responsibility, the auditor must evaluate its reasonableness. (C) is wrong because the auditor does not record adjustments — the auditor evaluates management''s accounting treatment. (D) is wrong because excluding items from the count without proper accounting treatment would misstate inventory.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1674;

-- ID 1675: Substantive Procedures — Vouching direction for occurrence assertion
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Which procedure best tests the occurrence assertion for recorded sales transactions?',
  choices = '["Tracing from shipping documents to recorded sales", "Selecting recorded sales and vouching to supporting shipping documents and customer orders", "Analyzing sales trends compared to industry benchmarks", "Selecting from shipping documents and tracing to sales invoices"]'::jsonb,
  explanation = 'Correct (B): To test the occurrence assertion (whether recorded transactions actually occurred), the auditor starts from the recorded amount and vouches backward to supporting documentation such as shipping documents and customer orders. This confirms that the recorded sales represent real transactions. (A) is wrong because tracing from shipping documents to recorded sales tests completeness, not occurrence. (C) is wrong because trend analysis is an analytical procedure, not a direct test of occurrence. (D) is wrong because starting from shipping documents and tracing forward tests completeness, not occurrence.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1675;

-- ID 1676: Substantive Procedures — Completeness assertion testing direction
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under AU-C 500, what is the correct approach for testing the completeness assertion for revenue?',
  choices = '["Select a sample of recorded revenue transactions and vouch them to supporting documents", "Confirm revenue amounts directly with customers", "Select from a source independent of the accounting records and trace forward to the revenue journal", "Recalculate the revenue amounts in the general ledger"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 500, testing completeness requires starting from a source independent of the accounting records — such as shipping documents or delivery logs — and tracing forward to the revenue journal to determine whether each valid shipment was recorded. (A) is wrong because starting from recorded transactions and vouching back tests the occurrence assertion, not completeness. (B) is wrong because confirming revenue with customers tests existence and accuracy, not whether all revenue was recorded. (D) is wrong because recalculation tests accuracy, not completeness.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1676;

-- ID 1678: Substantive Procedures — Going concern emphasis-of-matter paragraph
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 570, what is included in the audit report when substantial doubt about going concern exists but is adequately mitigated?',
  choices = '["An adverse opinion", "An unmodified opinion with no additional paragraphs", "A disclaimer of opinion due to the uncertainty", "An emphasis-of-matter paragraph describing the going concern uncertainty"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 570, even when management''s plans adequately mitigate going concern doubt, the auditor includes an emphasis-of-matter paragraph in the audit report to draw attention to the financial statement disclosures about the conditions and management''s plans. The opinion itself remains unmodified if the disclosures are adequate. (B) is wrong because an additional emphasis-of-matter paragraph is required even when the opinion is unmodified. (A) is wrong because an adverse opinion is issued for material pervasive GAAP departures, not for going concern disclosures. (C) is wrong because a disclaimer is issued for scope limitations, not for adequately disclosed going concern matters.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1678;

-- ID 1682: Substantive Procedures — Valuation assertion for accounts receivable
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Which procedure is most relevant for testing the valuation assertion for accounts receivable?',
  choices = '["Evaluating the adequacy of the allowance for doubtful accounts by analyzing aging and historical loss rates", "Inspecting the credit approval process for new customers", "Tracing sales invoices to shipping documents", "Confirming selected receivable balances with customers"]'::jsonb,
  explanation = 'Correct (A): Evaluating the allowance for doubtful accounts directly tests the valuation assertion for accounts receivable. This involves analyzing the aged receivables schedule, reviewing historical write-off patterns, considering current economic conditions, and evaluating management''s assumptions about collectibility. (D) is wrong because confirming balances tests existence and rights, not valuation. (B) is wrong because inspecting credit approval tests internal controls over authorization. (C) is wrong because tracing invoices to shipping documents tests occurrence.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1682;

-- ID 1683: Substantive Procedures — Most precise substantive analytical expectation
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Which characteristic makes a substantive analytical procedure expectation most precise and reliable?',
  choices = '["Using a simple comparison of the current year total to the prior year total", "Using disaggregated data and specific operational inputs adjusted for known changes", "Reviewing the general ledger for unusual entries", "Comparing the account balance to a broad industry benchmark"]'::jsonb,
  explanation = 'Correct (B): Developing an expectation using disaggregated data, specific operational inputs (such as headcounts and pay rates by department), and adjustments for known changes produces the most precise and reliable expectation. This approach creates a narrow threshold for investigation, making the analytical procedure more effective as substantive evidence. (A) is wrong because a simple year-over-year comparison produces a less precise expectation. (C) is wrong because reviewing entries is an inspection procedure, not an analytical procedure. (D) is wrong because industry benchmarks provide broad context but lack entity-specific precision.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1683;

-- ID 1685: Substantive Procedures — Purpose of auditor test counts during inventory observation
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What is the primary purpose of test counts during the auditor''s inventory observation?',
  choices = '["To determine the total value of inventory on hand", "To identify obsolete inventory for write-down", "To verify that the client''s count teams are following proper procedures and that the count is accurate", "To count all inventory items in the warehouse"]'::jsonb,
  explanation = 'Correct (C): Test counts serve two purposes: to evaluate whether the client''s count teams are following proper procedures and to obtain evidence about the accuracy of the count. The auditor tests from the floor to count sheets and from count sheets to the floor. (A) is wrong because test counts verify accuracy, not total valuation. (B) is wrong because identifying obsolete inventory is a separate concern from count accuracy. (D) is wrong because the auditor performs sample test counts, not a complete count of all items.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1685;

-- ID 1688: Substantive Procedures — Significance of ratio analysis change
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'What does a significant unexpected change in a financial ratio indicate to the auditor during analytical procedures?',
  choices = '["Normal business operations with no audit significance", "That the company has improved its efficiency and no further testing is needed", "That the auditor should immediately issue a qualified opinion", "A potential misstatement that warrants further investigation"]'::jsonb,
  explanation = 'Correct (D): A significant unexpected change in a financial ratio — such as an unusual decline in the cost of goods sold to revenue ratio — could indicate a potential misstatement such as overstated revenue, understated expenses, or a genuine change in operations. The auditor should investigate the cause before drawing conclusions. (A) is wrong because significant unexpected changes always have audit significance. (B) is wrong because the auditor must investigate the cause, not assume efficiency gains. (C) is wrong because a qualified opinion requires a concluded misstatement, not merely an unexpected ratio change.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1688;

-- ID 1690: Substantive Procedures — Going concern evaluation period
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under AU-C 570, what is the going concern evaluation period?',
  choices = '["A reasonable period not to exceed one year beyond the date the financial statements are issued or available to be issued", "The next five years from the balance sheet date", "The current fiscal year only", "An indefinite future period"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 570, the auditor evaluates whether substantial doubt exists about the entity''s ability to continue as a going concern for a reasonable period of time, defined as not exceeding one year beyond the date the financial statements are issued or available to be issued. (B) is wrong because five years exceeds the one-year maximum. (C) is wrong because the evaluation extends beyond the current fiscal year. (D) is wrong because the period is specifically limited, not indefinite.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1690;

-- ID 1691: Substantive Procedures — Cutoff assertion definition
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Which assertion is affected when a transaction is recorded in the wrong accounting period?',
  choices = '["Existence", "Cutoff", "Valuation", "Classification"]'::jsonb,
  explanation = 'Correct (B): Cutoff is the assertion that transactions are recorded in the correct accounting period. When a purchase is received before year-end but recorded in the following period, it is a cutoff error resulting in understatement of both inventory and accounts payable at year-end. (A) is wrong because existence relates to whether recorded items actually exist, not their timing. (C) is wrong because valuation relates to whether amounts are recorded at appropriate values. (D) is wrong because classification relates to whether items are categorized correctly in the financial statements.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1691;

-- ID 1694: Substantive Procedures — Detecting fictitious vendors
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'Which substantive procedure is most effective for detecting fictitious vendors in an accounts payable system?',
  choices = '["Confirming accounts payable balances with all known vendors", "Reviewing the accounts payable aging schedule for large balances", "Investigating vendors with suspicious attributes and verifying the legitimacy of goods or services received", "Recalculating the total accounts payable balance"]'::jsonb,
  explanation = 'Correct (C): To detect fictitious vendors, the auditor should focus on vendor attributes suggesting they may not be real businesses — such as P.O. box-only addresses, no telephone numbers, or vendors matching employee names. Verifying legitimacy and confirming that goods or services were actually received is the most effective approach. (A) is wrong because fictitious vendors will not respond to confirmations or will provide fraudulent responses. (B) is wrong because reviewing aging identifies large balances but does not detect fake vendors. (D) is wrong because recalculation tests arithmetic accuracy, not vendor legitimacy.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1694;

-- ID 1695: Substantive Procedures — Search for unrecorded liabilities time period
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'What time period does the search for unrecorded liabilities cover?',
  choices = '["Only the last week of the fiscal year", "Only transactions before the fiscal year began", "Only transactions expected to occur in the next fiscal year", "Cash disbursements and invoices received after year-end through the completion of fieldwork"]'::jsonb,
  explanation = 'Correct (D): The search for unrecorded liabilities examines cash disbursements made after year-end, invoices received after year-end, and unmatched receiving reports to identify obligations that existed at year-end but were not recorded. This procedure tests the completeness assertion for liabilities and covers the period from year-end through the completion of fieldwork. (A) is wrong because the search focuses on the post-year-end period, not the last week of the fiscal year. (B) is wrong because transactions before the fiscal year are not the focus of this procedure. (C) is wrong because the search looks backward to identify unrecorded year-end obligations, not forward to future transactions.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1695;

-- ID 1696: Substantive Procedures — Rights and obligations assertion testing
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Which procedure best tests the rights and obligations assertion for real property?',
  choices = '["Examining title documents, property tax records, and mortgage agreements", "Physically inspecting the property", "Recalculating depreciation expense", "Reviewing the property insurance policy"]'::jsonb,
  explanation = 'Correct (A): Examining title documents (deeds), property tax records in the entity''s name, and mortgage agreements directly addresses whether the entity has legal rights to the real property and whether any obligations (liens, mortgages) exist. (B) is wrong because physical inspection addresses existence, not rights and obligations. (C) is wrong because depreciation recalculation addresses valuation, not ownership. (D) is wrong because insurance is corroborative evidence but does not directly establish legal ownership.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1696;

-- ID 1697: Substantive Procedures — Evaluating management going concern plans
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 570, how should the auditor evaluate management''s plans to mitigate going concern doubt?',
  choices = '["Accept the plans at face value if management expresses confidence", "Assess the feasibility and timing of the plans, including whether key assumptions are realistic", "Require management to complete all planned actions before issuing the audit report", "Base the assessment solely on historical financial data"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 570, the auditor must evaluate the feasibility and timing of management''s plans to mitigate going concern doubt. For a planned asset sale, this includes assessing whether a buyer exists, the stage of negotiations, the realistic sale price, expected timing, and whether proceeds would be sufficient. (A) is wrong because the auditor must independently evaluate plans, not accept them at face value. (C) is wrong because the auditor evaluates feasibility, not completion. (D) is wrong because the evaluation must consider forward-looking plans, not only historical data.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1697;

-- ID 1698: Substantive Procedures — Use of specialists for complex estimates
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under AU-C 620, when may the auditor consider engaging a specialist during the audit?',
  choices = '["When the auditor wants to reduce the total hours spent on the engagement", "When management requests that the auditor hire an outside consultant", "When the auditor needs specialized knowledge to evaluate evidence in areas such as environmental liabilities or actuarial estimates", "When the auditor wishes to exclude a complex area from the audit scope"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 620, the auditor may engage a specialist when specialized knowledge is needed to obtain sufficient appropriate evidence. Common examples include environmental contamination assessments, actuarial calculations, and complex valuation estimates. The specialist''s findings help the auditor evaluate whether recorded amounts are reasonable. (A) is wrong because reducing hours is not the purpose of engaging a specialist. (B) is wrong because management requests do not drive the auditor''s decision to use a specialist. (D) is wrong because using a specialist does not allow the auditor to exclude areas from the audit scope.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1698;

-- ID 1699: Substantive Procedures — Vouching fixed asset additions assertion
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Which assertion is primarily tested by vouching recorded fixed asset additions to invoices and receiving reports?',
  choices = '["Completeness of fixed assets", "Classification of fixed assets as current or noncurrent", "Presentation of fixed assets in the notes", "Existence and valuation of fixed asset additions"]'::jsonb,
  explanation = 'Correct (D): Vouching recorded additions to supporting documentation (invoices for cost, receiving reports for receipt, and capital authorization for approval) primarily tests existence (the asset was actually acquired) and valuation (the amount recorded agrees to the purchase price). Starting from the recorded amount and tracing backward tests occurrence and existence. (A) is wrong because completeness is tested by tracing from source documents to the records, not the reverse. (B) is wrong because classification testing evaluates account categorization, not existence. (C) is wrong because presentation testing evaluates disclosure adequacy.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1699;

-- ID 1701: Substantive Procedures — Testing existence assertion for payroll
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Which procedure best tests the existence assertion for payroll?',
  choices = '["Observing paycheck distribution or verifying direct deposit recipients against personnel records", "Recalculating gross-to-net pay for a sample of employees", "Comparing payroll tax deposits to W-2 forms", "Tracing payroll journal entries to the general ledger"]'::jsonb,
  explanation = 'Correct (A): Observing paycheck distribution or verifying direct deposit recipients against personnel records tests whether recorded employees actually exist. Ghost employees (fictitious employees created to generate fraudulent payroll payments) are a common payroll fraud scheme, and physical distribution observation or identity verification directly addresses the existence assertion. (B) is wrong because recalculating pay tests accuracy, not existence. (C) is wrong because comparing tax deposits to W-2 forms tests consistency, not employee existence. (D) is wrong because tracing journal entries tests posting accuracy, not whether employees are real.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1701;

-- ID 1702: Substantive Procedures — Auditor response to suspected intentional misstatement
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 240, what is required when the auditor suspects an intentional material misstatement?',
  choices = '["Increase the sample size and continue testing without further action", "Consider the implications for the entire audit, communicate with those charged with governance, and evaluate the effect on the financial statements", "Immediately resign from the engagement without notifying anyone", "Record the misstatement and proceed without escalation"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 240, when the auditor suspects an intentional material misstatement (fraud), the auditor must consider the implications for all aspects of the audit, re-evaluate the risk assessment, communicate the matter to those charged with governance, and determine the effect on the financial statements and audit report. (A) is wrong because the auditor cannot simply continue without escalation. (C) is wrong because immediate resignation without notification is inappropriate. (D) is wrong because suspected fraud requires escalation and communication, not mere documentation.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1702;

-- ID 1704: Substantive Procedures — Regression model as substantive analytical procedure
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'What type of audit procedure uses a statistical model to develop an independent expectation of an account balance?',
  choices = '["A test of controls", "An inquiry of management", "A substantive analytical procedure", "An inspection of tangible assets"]'::jsonb,
  explanation = 'Correct (C): Using a statistical model such as regression to develop an independent expectation of an account balance is a substantive analytical procedure. The statistical relationship between variables creates a precise expectation that the auditor compares to the recorded amount to identify potential misstatements. (A) is wrong because tests of controls evaluate the operating effectiveness of internal controls, not account balances. (B) is wrong because inquiry of management is a separate procedure that does not involve statistical modeling. (D) is wrong because inspection of tangible assets is a physical examination, not a statistical analysis.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1704;

-- ID 1705: Substantive Procedures — Risk of electronic confirmation responses
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'What risk does the auditor face when confirmation responses are received electronically?',
  choices = '["Electronic responses are always more reliable than paper confirmations", "Electronic responses must be rejected because they are never authentic", "The auditor should forward electronic responses to management for verification", "The response may not be authentic due to risks such as email interception or forgery"]'::jsonb,
  explanation = 'Correct (D): Electronic confirmation responses carry risks of inauthenticity, including email spoofing, interception, or alteration. The auditor should evaluate these risks and may need to take additional steps to verify the identity of the sender, such as calling the respondent directly at a known phone number or using a secure confirmation platform. (A) is wrong because electronic responses are not automatically more reliable. (B) is wrong because electronic responses are not categorically rejected but require additional evaluation. (C) is wrong because management should not verify confirmations, as this would undermine the independence of the confirmation process.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1705;

-- ID 1706: Substantive Procedures — Most effective management plan for going concern
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Which characteristic makes a management plan most effective for mitigating going concern doubt?',
  choices = '["The plan is concrete, executed, and sufficient to address the identified cash flow deficits", "The plan reduces minor discretionary expenses", "The plan is based on a verbal commitment with no written agreement", "The plan increases spending to grow future revenue"]'::jsonb,
  explanation = 'Correct (A): The most effective mitigation plans are those that are concrete, executed (signed and binding), and sufficient in amount and timing to address the entity''s identified problems. A signed credit facility or executed asset sale agreement provides the strongest evidence. (B) is wrong because minor expense reductions are unlikely to address significant going concern conditions. (C) is wrong because verbal commitments without written agreements provide weak evidence. (D) is wrong because increased spending may worsen cash flow problems rather than mitigate them.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1706;

-- ID 1707: Substantive Procedures — Attorney refusal to assess litigation outcome
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'Under AU-C 501, what is the audit implication when an attorney''s response states they cannot assess the likelihood of an unfavorable litigation outcome?',
  choices = '["The auditor should accept the response and issue an unmodified opinion", "The auditor should instruct the attorney to provide a definitive assessment", "The auditor should treat this as a potential scope limitation and evaluate whether sufficient evidence can be obtained through other procedures", "The auditor should withdraw from the engagement immediately"]'::jsonb,
  explanation = 'Correct (C): When an attorney cannot or will not evaluate the likelihood of an unfavorable outcome of a significant legal matter, the auditor faces a potential scope limitation. The auditor should consider whether sufficient evidence can be obtained through other means, such as inquiry of management, review of board minutes, or consultation with the auditor''s own legal counsel. (A) is wrong because the auditor cannot issue an unmodified opinion when evidence about a significant matter is unavailable. (B) is wrong because the auditor cannot compel the attorney to provide an assessment. (D) is wrong because immediate withdrawal is premature if alternative evidence may be available.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1707;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (8 questions)
-- ============================================================

-- ID 1351: Professional Responsibilities — Predecessor auditor communication obligation
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under professional standards, what is a predecessor auditor''s obligation when contacted by a successor auditor with client authorization?',
  choices = '["Provide complete access to all workpapers without restriction", "Respond promptly and fully to reasonable inquiries, including information about disagreements with management", "Refuse to respond because the engagement has ended", "Provide only the audit opinion and no other information"]'::jsonb,
  explanation = 'Correct (B): When the client authorizes communication, the predecessor auditor should respond promptly and fully to reasonable inquiries. This includes sharing information about management integrity, disagreements about accounting matters, fraud, and reasons for the change. However, the predecessor is not required to provide complete workpapers — only relevant information responsive to the successor''s inquiries. (A) is wrong because complete workpaper access is not required. (C) is wrong because the predecessor should respond when authorized by the client. (D) is wrong because the predecessor should share more than just the opinion.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1351;

-- ID 1352: Professional Responsibilities — CPA responsibility for discovered error in prior-year statements
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code, what is a CPA''s responsibility upon discovering a material error in previously audited financial statements after the professional relationship has ended?',
  choices = '["No responsibility because the relationship has ended", "Directly notify the SEC without contacting the client", "Notify the former client of the error and recommend appropriate corrective action", "Issue a revised audit report without contacting the client"]'::jsonb,
  explanation = 'Correct (C): Even after the professional relationship has ended, a CPA who discovers a material error in previously issued financial statements should notify the former client and recommend corrective action. If the client refuses to take appropriate steps, the CPA should evaluate whether to notify regulatory authorities or parties relying on the statements. (A) is wrong because the CPA retains responsibility for the accuracy of previously issued reports. (B) is wrong because direct SEC notification without first contacting the client is not the appropriate first step. (D) is wrong because unilateral report revision without client contact is improper.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1352;

-- ID 1354: Professional Responsibilities — Auditor obligation upon discovering illegal acts
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 250, what is the auditor''s primary obligation upon discovering a client''s illegal act that may have material financial statement effects?',
  choices = '["Immediately report the activity to the relevant government agency", "Withdraw from the engagement and refuse further service", "Inform local law enforcement of the illegal activity", "Evaluate the impact on the financial statements and communicate with management and those charged with governance"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 250, the auditor''s primary obligation is to evaluate whether the illegal act has a material effect on the financial statements and to communicate the matter to management and those charged with governance. The auditor is not required to report illegal acts to external authorities (with limited exceptions under specific statutes). Withdrawal may be considered if the client refuses to address the issue. (A) is wrong because reporting to government agencies is not the auditor''s primary obligation. (B) is wrong because withdrawal is not the first response. (C) is wrong because notifying law enforcement is not required.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1354;

-- ID 1355: Professional Responsibilities — Reporting on accounting principles for another firm''s client
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 625, what must a CPA do before providing a written opinion on accounting principles to a company audited by another firm?',
  choices = '["Consult with the existing auditor to understand the full context", "Decline because only the existing auditor can provide accounting opinions", "Provide the opinion without contacting the existing auditor due to confidentiality", "Provide the opinion only if it agrees with the existing auditor''s position"]'::jsonb,
  explanation = 'Correct (A): AU-C 625 requires that when providing a written opinion on accounting principles to a company audited by another firm, the CPA should consult with the existing auditor. This ensures the CPA has a complete understanding of the facts and circumstances. The existing auditor may have information about the entity that could affect the appropriateness of the opinion. (B) is wrong because a CPA may provide such opinions after appropriate consultation. (C) is wrong because consulting with the existing auditor is required, not prohibited by confidentiality. (D) is wrong because agreement with the existing auditor is not a prerequisite.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1355;

-- ID 1356: Professional Responsibilities — Prohibited commissions under AICPA Code
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, which type of commission is prohibited?',
  choices = '["Paying a referral fee to another CPA with disclosure", "Receiving a commission for referring a product to an attest client", "Receiving a commission for referring a product to a non-attest client with disclosure", "Paying a referral fee to a non-CPA with disclosure"]'::jsonb,
  explanation = 'Correct (B): Under the AICPA Code, commissions are prohibited for attest clients. A CPA may not receive a commission for recommending or referring any product or service to a client for whom the CPA performs attest services. (A) is wrong because referral fees between CPAs are permitted with disclosure. (C) is wrong because commissions to non-attest clients are permitted with disclosure. (D) is wrong because referral fees to non-CPAs are permitted with disclosure.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1356;

-- ID 1357: Professional Responsibilities — CPA obligation when asked to prepare misleading report
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA Code, what should a CPA do when asked to prepare a report that the CPA knows will be used to mislead a third party?',
  choices = '["Prepare the report with a disclaimer of responsibility", "Prepare the report but add qualifying language", "Refuse to prepare the report because it would violate the integrity principle", "Prepare the report because the CPA''s primary obligation is to the client"]'::jsonb,
  explanation = 'Correct (C): The AICPA Code requires CPAs to maintain integrity and not knowingly misrepresent facts. Preparing a report the CPA knows will be used to mislead a third party violates the integrity principle and could constitute aiding fraud. The CPA must refuse the engagement. (A) is wrong because a disclaimer does not eliminate the CPA''s responsibility for knowingly participating in deception. (B) is wrong because qualifying language does not cure the fundamental integrity violation. (D) is wrong because the CPA''s obligation to the public interest supersedes obligations to a client seeking to commit fraud.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1357;

-- ID 1358: Professional Responsibilities — Advertising restrictions under AICPA Code
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, what type of advertising claim is prohibited for CPA firms?',
  choices = '["Advertising the firm''s areas of specialization", "Listing professional certifications held by partners", "Stating the number of years the firm has been in practice", "Making subjective claims that cannot be objectively verified"]'::jsonb,
  explanation = 'Correct (D): While the AICPA Code permits advertising, it prohibits advertisements that are false, misleading, or deceptive. Subjective superlatives and comparative claims that cannot be objectively verified are prohibited. The CPA may advertise factual information about services, qualifications, and experience. (A) is wrong because advertising areas of specialization is permitted. (B) is wrong because listing professional certifications is factual and permitted. (C) is wrong because stating years in practice is factual and permitted.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1358;

-- ID 1359: Professional Responsibilities — Accepting engagement in unfamiliar industry
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 220, what should an auditor do when accepting an engagement in an industry where the auditor lacks specific knowledge?',
  choices = '["Accept the engagement and obtain the necessary knowledge through research, training, or use of specialists", "Accept the engagement and apply the same procedures as any other industry", "Rely solely on management representations for all industry-specific matters", "Decline the engagement because industry knowledge must always be obtained before acceptance"]'::jsonb,
  explanation = 'Correct (A): AU-C 220 requires the engagement partner to be satisfied that the team has appropriate competence and capabilities, including knowledge of relevant industries. The auditor may accept the engagement and obtain knowledge through research, continuing education, or consulting with industry specialists. However, the auditor must achieve sufficient understanding before issuing the opinion. (B) is wrong because auditing standards require industry-appropriate procedures, not a one-size-fits-all approach. (C) is wrong because reliance solely on management representations does not meet the competence requirement. (D) is wrong because the auditor can obtain industry knowledge during the engagement, not only before acceptance.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1359;

COMMIT;