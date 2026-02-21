-- =============================================================================
-- Migration: Expand AUD Question Bank
-- Section: AUD — Auditing and Attestation (section_id = 1)
-- New questions: ~540
-- Difficulty: 30% easy, 50% medium, 20% hard
-- =============================================================================
-- AUD Chunk 1: Ethics, Professional Responsibilities, Quality Management, Government Auditing

-- =============================================================================
-- Topic 1: Ethics and Independence (38 questions)
-- Difficulty: 11 easy, 19 medium, 8 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA''s spouse inherits 200 shares of stock in an audit client. The stock is immaterial to both the CPA''s net worth and to the client''s outstanding shares. Under the AICPA Code of Professional Conduct, what effect does this have on the CPA''s independence?',
 '["Independence is impaired because any direct financial interest impairs independence regardless of materiality", "Independence is not impaired because the interest is immaterial", "Independence is impaired only if the CPA is on the engagement team", "Independence is not impaired because the interest was inherited, not purchased"]'::jsonb,
 0,
 'Under the AICPA Code, any direct financial interest in an attest client by a covered member or their immediate family impairs independence regardless of materiality. The fact that the interest was inherited rather than purchased, or that it is immaterial, does not change this result. The CPA must dispose of the interest before the audit report is issued.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'During the audit of Greenfield Corp., the engagement partner learns that a staff auditor on the engagement has a savings account at the client bank containing $45,000. Which threat to independence does this most directly represent?',
 '["Self-interest threat", "Advocacy threat", "Familiarity threat", "Undue influence threat"]'::jsonb,
 0,
 'A financial interest in the audit client creates a self-interest threat because the auditor could be influenced to protect their own financial position. Normal depository accounts at a bank audit client may be permitted if they are fully insured, but the situation still represents a self-interest threat that must be evaluated under the conceptual framework.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'An audit firm is considering whether to accept a new engagement. The prospective client''s CEO is the sister of the firm''s managing partner. Under the AICPA conceptual framework, which category of threat does this relationship represent?',
 '["Self-review threat", "Advocacy threat", "Management participation threat", "Familiarity threat"]'::jsonb,
 3,
 'A close family relationship between a covered member and client management creates a familiarity threat. The concern is that the auditor may become too sympathetic to the client''s interests due to the personal relationship and may be less willing to challenge management assertions. The firm must evaluate whether safeguards can reduce this threat to an acceptable level.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA firm prepared the financial statements for a non-issuer audit client and is now engaged to audit those same financial statements. Under the AICPA Code, what type of threat does this create?',
 '["Self-review threat", "Undue influence threat", "Familiarity threat", "Advocacy threat"]'::jsonb,
 0,
 'When a CPA firm audits financial statements that it also prepared, a self-review threat exists because the auditor may not objectively evaluate their own work product. Under the AICPA Code, this service is permitted for non-issuers provided that the client''s management takes responsibility for the financial statements and the firm applies appropriate safeguards.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'An audit client''s CFO informs the engagement partner that the company will seek another audit firm unless the current year''s audit opinion is unmodified. Under the AICPA conceptual framework, this represents which type of threat?',
 '["Advocacy threat", "Self-interest threat", "Familiarity threat", "Undue influence threat"]'::jsonb,
 3,
 'When a client pressures the auditor to change the audit opinion by threatening to terminate the engagement, this constitutes an undue influence threat. The client is attempting to exert pressure that could cause the auditor to subordinate professional judgment. The auditor must not allow such threats to influence the audit opinion and should consider withdrawal if safeguards are insufficient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA serves as an expert witness on behalf of an audit client in a lawsuit against a competitor. Under the AICPA Code, which threat to independence is most directly created?',
 '["Advocacy threat", "Self-review threat", "Familiarity threat", "Self-interest threat"]'::jsonb,
 0,
 'Serving as an expert witness on behalf of an audit client creates an advocacy threat because the CPA is promoting or defending the client''s position. The auditor is acting as an advocate for the client rather than as an independent evaluator. If the matter is material to the financial statements, independence is likely impaired.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Which of the following financial interests held by a covered member would NOT impair independence under the AICPA Code?',
 '["A direct financial interest in the audit client of any amount", "A material indirect financial interest in the audit client", "An immaterial indirect financial interest in the audit client held through a diversified mutual fund", "A direct financial interest in the audit client held in a blind trust"]'::jsonb,
 2,
 'An immaterial indirect financial interest does not impair independence. Owning shares in a diversified mutual fund that holds stock in the audit client is an indirect interest, and if immaterial to the covered member, it does not impair independence. Direct financial interests impair independence regardless of materiality, and material indirect interests also impair independence. A blind trust does not change a direct interest into an indirect one.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA is auditing a manufacturing client. The CPA''s non-dependent adult child is employed by the client as a regional sales manager with no financial reporting responsibilities. Under the AICPA Code, what is the effect on the CPA''s independence?',
 '["Independence is impaired because any family member employed by the client impairs independence", "Independence is impaired because the child is an immediate family member", "Independence is impaired only if the child''s compensation is material", "Independence is not impaired because the child is in a non-key position and is not a close relative for purposes of the rules"]'::jsonb,
 3,
 'A non-dependent adult child is classified as a close relative, not an immediate family member, under the AICPA Code. Independence is impaired by a close relative only if the relative is in a key position at the client (such as CEO, CFO, or controller). A regional sales manager with no financial reporting oversight is not a key position, so independence is not impaired.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Under the AICPA Code of Professional Conduct, which of the following is considered an ''immediate family member'' for independence purposes?',
 '["The CPA''s parent", "The CPA''s sibling", "The CPA''s spouse", "The CPA''s grandparent"]'::jsonb,
 2,
 'Under the AICPA Code, immediate family members are limited to the CPA''s spouse or spousal equivalent and dependents. Parents, siblings, grandparents, and non-dependent children are classified as close relatives, which have different and generally less restrictive independence rules.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA firm completed a valuation of an audit client''s intangible assets for financial reporting purposes. The valuation was material to the financial statements. Under the AICPA Code, what is the effect on independence?',
 '["Independence is not impaired if the client accepted responsibility for the valuation", "Independence is not impaired because valuation services are always permitted for non-issuers", "Independence is impaired only if the valuation was performed by the engagement partner", "Independence is impaired because performing a valuation for a material amount creates a self-review threat that cannot be reduced to an acceptable level"]'::jsonb,
 3,
 'Under the AICPA Code, performing a valuation of a material amount for an attest client impairs independence when the results will be reported in the financial statements. The self-review threat created by auditing one''s own valuation is too significant to be mitigated by safeguards when the amount is material. Immaterial valuations may be permissible with appropriate safeguards.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'The concept of integrity under the AICPA Code of Professional Conduct primarily requires a CPA to:',
 '["Be honest and candid within the constraints of client confidentiality", "Maintain technical competence in all areas of practice", "Refuse all engagements that involve risk", "Subordinate personal judgment to the client''s preferences"]'::jsonb,
 0,
 'Integrity under the AICPA Code requires a CPA to be honest, candid, and not subordinate the public interest to personal gain or advantage. While integrity encompasses many qualities, its core meaning is honesty and truthfulness in professional dealings, tempered by the obligation of client confidentiality. It does not mean refusing risky engagements or always deferring to clients.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A staff auditor has been assigned to the audit of Birchwood Inc. The auditor recently applied for a management position at Birchwood but was not hired. Under the AICPA Code, what action is required?',
 '["The staff auditor must be removed from the engagement because seeking employment with the client impaired independence", "No action is required because the auditor was not hired", "The engagement partner should evaluate whether the auditor''s objectivity has been compromised", "The situation does not create a threat because the auditor was not hired"]'::jsonb,
 0,
 'Under the AICPA Code, when a member of the engagement team seeks or discusses employment with an audit client, independence is impaired. The member must be removed from the engagement, and any work they performed must be reviewed by other team members. This applies regardless of whether the employment was actually obtained.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Under the AICPA Code, the ''period of the professional engagement'' for independence purposes begins when:',
 '["The CPA begins fieldwork at the client''s office", "The CPA begins to perform any attest services", "The CPA signs the engagement letter", "The financial statements under audit are issued"]'::jsonb,
 1,
 'The period of the professional engagement begins when the CPA either signs an initial engagement letter or begins to perform any attest services, whichever is earlier, and continues through the date of the final report. Independence must be maintained throughout this entire period, not just during fieldwork.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA firm has been asked to represent an audit client before the IRS in a tax dispute. Under the AICPA Code, which threat to independence does this create, and is it permissible?',
 '["Advocacy threat; it is permissible if the matter is administrative in nature and not adversarial", "Self-interest threat; it is not permissible", "Familiarity threat; it is permissible without restrictions", "Management participation threat; it is not permissible"]'::jsonb,
 0,
 'Representing a client before the IRS creates an advocacy threat. Under the AICPA Code, the threat may be acceptable if the representation involves routine tax matters such as responding to IRS inquiries or administrative proceedings. However, representing the client in an adversarial proceeding such as Tax Court would likely impair independence because the CPA would be acting as the client''s advocate.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Which of the following safeguards would be most effective in mitigating a familiarity threat caused by long association with an audit client?',
 '["Rotating the engagement partner off the engagement", "Increasing the audit fee to reflect the additional risk", "Assigning a less experienced team to the engagement", "Reducing the scope of the audit procedures"]'::jsonb,
 0,
 'Rotating the engagement partner is the most effective safeguard against familiarity threats from long association. Fresh perspective from a new leader helps ensure objectivity is maintained. Increasing fees does not address the threat, assigning less experienced staff increases risk, and reducing scope is never an appropriate response to an independence threat.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'An engagement partner at a CPA firm holds a $5,000 loan from a client bank. The loan is a fully collateralized automobile loan obtained under normal lending procedures. Under the AICPA Code, is independence impaired?',
 '["Yes, because any loan from an audit client impairs independence", "No, because automobile loans obtained under normal lending procedures are grandfathered loans", "No, because automobile loans obtained under normal lending procedures are a permitted exception to the independence rules", "Yes, because the loan amount exceeds the de minimis threshold"]'::jsonb,
 2,
 'The AICPA Code provides specific exceptions for certain loans from financial institution audit clients, including automobile loans and other secured loans obtained under normal lending procedures. These loans do not impair independence provided they are kept current and obtained under terms that are available to the general public.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA''s dependent child owns stock in an audit client that was received as a birthday gift from a grandparent. The stock is worth $500. Under the AICPA Code, is the CPA''s independence impaired?',
 '["No, because the amount is immaterial", "No, because the gift was from a third party", "Yes, because a dependent''s direct financial interest impairs independence regardless of materiality", "Yes, but only if the CPA is the engagement partner"]'::jsonb,
 2,
 'A dependent child is an immediate family member under the AICPA Code. Any direct financial interest held by an immediate family member impairs independence regardless of materiality or how the interest was acquired. The CPA must arrange for the stock to be disposed of or decline the engagement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Which of the following describes the AICPA''s conceptual framework approach to evaluating independence?',
 '["Obtain pre-approval from the AICPA Ethics Division for any potential conflict", "Apply a checklist of prohibited activities and relationships", "Identify threats to independence, evaluate their significance, and apply safeguards to reduce them to an acceptable level", "Automatically decline any engagement where a threat is identified"]'::jsonb,
 2,
 'The AICPA conceptual framework is a principles-based approach that requires CPAs to identify threats to compliance with the rules, evaluate the significance of each threat, and apply safeguards to eliminate or reduce threats to an acceptable level. It is not a rigid checklist, and it does not require pre-approval or automatic declination of engagements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A partner in a CPA firm has a material joint business venture with the controller of an audit client. Under the AICPA Code, what is the impact on independence?',
 '["Independence is not impaired because joint ventures are not financial interests", "Independence is not impaired if the partner is not on the engagement team", "Independence is impaired because a material joint business venture with a key officer of the client creates a direct financial interest", "Independence is impaired only if the venture is in the same industry as the client"]'::jsonb,
 2,
 'A joint closely held business investment with a client officer constitutes a direct financial interest that is material to the covered member. Under the AICPA Code, this impairs independence because the partner has a financial interest that is intertwined with a key employee of the audit client, creating both self-interest and familiarity threats that cannot be mitigated.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Under the AICPA Code, objectivity requires a CPA to:',
 '["Ensure that audit fees are competitive with other firms", "Report all discovered fraud directly to law enforcement", "Act solely in the client''s interest at all times", "Be impartial and intellectually honest, free from conflicts of interest"]'::jsonb,
 3,
 'Objectivity requires a CPA to be impartial, intellectually honest, and free from conflicts of interest. It does not mean acting solely for the client — CPAs have obligations to the public interest. Objectivity is distinct from fee competitiveness, and fraud reporting obligations are governed by specific auditing standards rather than the objectivity principle.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'During the audit of a non-issuer, the CPA firm provided bookkeeping services by recording transactions and preparing trial balances for the client. Under the AICPA Code, which of the following conditions must be met for independence to be maintained?',
 '["The client must pay a separate fee for the bookkeeping services", "The CPA must disclose the bookkeeping services in the audit report", "Management must designate a competent individual to oversee the services and accept responsibility", "The bookkeeping services must be performed by a different office of the CPA firm"]'::jsonb,
 2,
 'For nonattest services such as bookkeeping, the AICPA Code requires that (1) the client''s management designate an individual competent to oversee the services, (2) management makes all decisions, (3) management evaluates the adequacy of the results, and (4) management accepts responsibility for the results. These conditions prevent the CPA from assuming a management role.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA''s brother serves as the chief accounting officer of an audit client. Under the AICPA Code, how does this affect the CPA''s independence if the CPA is on the engagement team?',
 '["Independence is impaired because a close relative in a key position impairs independence for engagement team members", "Independence is not impaired because a sibling is not an immediate family member", "Independence is impaired only if the CPA is the engagement partner", "Independence is not impaired if the CPA and sibling do not discuss the audit"]'::jsonb,
 0,
 'A sibling is a close relative under the AICPA Code. When a close relative holds a key position (such as chief accounting officer) at the audit client, independence is impaired for members of the engagement team. The impairment exists regardless of whether the CPA is the engagement partner or a staff auditor on the team.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA firm''s total annual fees from one audit client represent 18% of the firm''s gross revenue. Under the AICPA Code, which threat does this most directly create?',
 '["Self-review threat", "Advocacy threat", "Self-interest threat due to fee dependence", "Undue influence threat"]'::jsonb,
 2,
 'When a significant portion of a firm''s revenue comes from a single client, a self-interest threat exists because the firm may be reluctant to take actions that could jeopardize the relationship. The AICPA has indicated that fee dependence exceeding 15% of gross revenue warrants safeguards such as engagement quality review. At 18%, the firm should carefully evaluate whether safeguards are adequate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Under the AICPA Code, which of the following actions by a CPA would most likely constitute a breach of the integrity principle?',
 '["Knowingly signing a tax return that contains a false statement", "Issuing a qualified opinion due to a scope limitation", "Recommending that a client adopt a more conservative accounting policy", "Declining an engagement due to lack of industry expertise"]'::jsonb,
 0,
 'Knowingly signing a document containing a false statement is a direct violation of the integrity principle, which requires CPAs to be honest and not knowingly misrepresent facts or subordinate judgment. Issuing a qualified opinion, declining an engagement, and recommending conservative policies are all appropriate professional actions consistent with integrity.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'An audit firm provides IT consulting services to a non-issuer audit client, including designing and implementing a new general ledger system. During the implementation, firm personnel make routine configuration decisions. Under the AICPA Code, is independence impaired?',
 '["Yes, because making configuration decisions constitutes a management participation threat that may impair independence", "No, because IT consulting is a permitted nonattest service", "No, because the decisions were routine and immaterial", "Yes, because IT consulting is prohibited for all audit clients"]'::jsonb,
 0,
 'Making configuration decisions on behalf of the client constitutes a management participation threat because the auditor is performing a management function. Even routine decisions about how to configure a system used for financial reporting can impair independence if the client has not designated a competent person to oversee and accept responsibility for those decisions.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Which of the following former employment relationships would most likely impair a CPA''s independence when auditing a former employer?',
 '["The CPA left 3 years ago as a sales representative and has no ongoing financial ties", "The CPA left the company 5 years ago and held a mid-level accounting position", "The CPA left 10 years ago as an entry-level staff accountant", "The CPA left the company 1 year ago, was the CFO, and still holds unvested stock options"]'::jsonb,
 3,
 'A former employment relationship impairs independence when the CPA was in a key position (such as CFO), the departure was recent, and the CPA still has ongoing financial ties such as unvested stock options. All three factors — key position, recency, and continuing financial interest — present the most significant threat. The unvested stock options alone constitute a direct financial interest that impairs independence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Under the AICPA Code, a covered member is prohibited from having which of the following relationships during the period of a professional engagement?',
 '["A checking account at a bank audit client that is fully insured by the FDIC", "An automobile loan from a bank audit client obtained under normal lending procedures", "A home mortgage from a bank audit client obtained under normal terms", "A loan from an audit client that is not a financial institution"]'::jsonb,
 3,
 'Loans from audit clients that are not financial institutions are generally prohibited because they represent direct financial interests. The AICPA Code provides specific exceptions for certain loans from financial institution clients (such as checking accounts, home mortgages obtained under normal terms, and automobile loans), but these exceptions apply only to financial institution audit clients.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA firm is considering whether accepting a contingent fee for a tax position taken on an audit client''s return would impair independence. Under the AICPA Code, what is the rule?',
 '["Contingent fees are prohibited for any service provided to an attest client during the period of the engagement", "Contingent fees are permitted for tax services regardless of whether the client is an attest client", "Contingent fees are permitted if the fee is determined by a third party", "Contingent fees are prohibited only for audit services, not for tax services"]'::jsonb,
 0,
 'Under the AICPA Code, a member cannot charge a contingent fee for any service provided to an attest client during the period of the professional engagement or the period covered by the financial statements. This prohibition covers all services, including tax services, because a contingent fee creates a self-interest threat that is too significant to mitigate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA is evaluating independence threats for an audit engagement. The engagement quality reviewer for this engagement is married to the client''s accounts payable manager. Under the AICPA Code, is independence impaired?',
 '["No, because the accounts payable manager is not in a key position", "Yes, because the quality reviewer is a covered member and the spouse is in a position to influence the financial statements", "No, because the quality reviewer is not on the engagement team", "Yes, but only if the accounts payable manager prepares journal entries"]'::jsonb,
 1,
 'The engagement quality reviewer is a covered member under the AICPA Code. An immediate family member (spouse) who is in a position to exert significant influence over the accounting records or financial statements impairs independence, even if the person is not in a traditional key position. An accounts payable manager processes transactions that directly affect the financial statements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'An auditor discovers during fieldwork that her retirement plan holds a small investment in the audit client through a sector-specific mutual fund. The investment represents 2% of the auditor''s retirement plan. Under the AICPA Code, how should this be classified?',
 '["Direct financial interest — independence is impaired regardless of materiality", "Indirect financial interest — independence is impaired only if the interest is material to the auditor", "Direct financial interest — independence is impaired only if the investment exceeds 5% of the fund", "Indirect financial interest — independence is not impaired because it is held through a mutual fund"]'::jsonb,
 1,
 'A financial interest held through a mutual fund is an indirect financial interest because the holder does not control the investment decisions. Under the AICPA Code, an indirect financial interest impairs independence only if it is material to the covered member. At 2% of the retirement plan, the auditor must evaluate whether this amount is material to their net worth to determine the impact on independence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Under the AICPA Code, which of the following acts as both a threat category and a prohibited action?',
 '["Management participation threat", "Familiarity threat", "Advocacy threat", "Self-interest threat"]'::jsonb,
 3,
 'Management participation is unique among the threat categories because it is both a category of threat and a specifically prohibited activity. A CPA must never assume a management responsibility for an attest client, regardless of whether safeguards might be available. Other threats — self-interest, familiarity, and advocacy — can potentially be mitigated through safeguards.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA firm provides internal audit outsourcing services to a non-issuer audit client. Under the AICPA Code, which condition is required to maintain independence?',
 '["The CPA firm must perform at least 40% of the internal audit work", "The CPA firm must use different staff for internal and external audit work", "The client''s management must accept responsibility for directing and overseeing the internal audit function", "The internal audit services must be immaterial to the financial statements"]'::jsonb,
 2,
 'For internal audit outsourcing, the AICPA Code requires that the client''s management accept responsibility for establishing and maintaining the internal audit function, determining scope and risk, and evaluating the findings. This is a nonattest service, so the general requirements apply: management must designate a competent individual to oversee the services, make all management decisions, and accept responsibility for results.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'An engagement partner discovers a close personal friendship has developed between a senior auditor on the engagement team and the client''s controller over two years of working together. Under the AICPA conceptual framework, what should the partner do first?',
 '["Immediately withdraw from the engagement", "Report the friendship to the AICPA Ethics Division", "Evaluate whether the familiarity threat can be reduced to an acceptable level through safeguards such as reassigning the senior auditor", "Ignore it because friendships are normal in long-term engagements"]'::jsonb,
 2,
 'Under the conceptual framework approach, the first step after identifying a threat is to evaluate its significance and determine whether safeguards can reduce it to an acceptable level. Reassigning the senior auditor would be an appropriate safeguard. Immediate withdrawal is premature, reporting to the Ethics Division is not required at this stage, and ignoring the threat would violate the framework.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Under the AICPA Code, the ''covered member'' definition includes all of the following EXCEPT:',
 '["An individual on the attest engagement team", "A partner in the same office as the engagement partner", "A partner in a different office who provides no services to the client", "An individual in a position to influence the attest engagement"]'::jsonb,
 2,
 'A covered member includes the engagement team, individuals who can influence the engagement, partners or managers in the same office as the lead engagement partner, and the firm itself. A partner in a different office who provides no services to the client and has no influence over the engagement is not a covered member unless they fall into another category.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA performs both the audit and tax return preparation for a non-issuer client. During tax preparation, the CPA recommends an aggressive tax position. Under the AICPA Code, which principle is most at risk?',
 '["Objectivity", "Due care", "Confidentiality", "Acts discreditable"]'::jsonb,
 0,
 'When a CPA serves dual roles for the same client, objectivity is the principle most at risk because the CPA may be inclined to favor the client''s tax position to maintain the client relationship. The CPA must remain impartial and must not recommend positions that lack a reasonable basis. Objectivity requires intellectual honesty and freedom from conflicts of interest.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A former audit partner joins a client company as VP of Marketing three months after the audit report was issued. The former partner had no responsibilities on the engagement. Under the AICPA Code, what effect does this have on the firm''s independence for the current year audit?',
 '["Independence is impaired for the current year because any partner joining a client creates an impairment", "Independence is impaired unless a two-year cooling-off period has passed", "Independence is not impaired because the former partner was not on the engagement team and the position is not a financial reporting oversight role", "Independence is impaired because all partners are covered members"]'::jsonb,
 2,
 'Independence is evaluated based on whether the former partner was a covered member and whether the new position is a financial reporting oversight role (FROR). Since the partner was not on the engagement team, and VP of Marketing is not typically a FROR (not directly involved in financial reporting), the firm''s independence for the current year audit is not impaired.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'Which of the following activities would constitute assuming a management responsibility under the AICPA Code?',
 '["Advising the client on the appropriate accounting treatment for a transaction", "Providing a draft management representation letter for the client to review and customize", "Recommending a candidate for the client''s open controller position", "Establishing or maintaining internal controls on behalf of the client"]'::jsonb,
 3,
 'Establishing or maintaining internal controls is a management responsibility that cannot be assumed by the auditor. Management must design, implement, and maintain their own internal control system. Advising on accounting treatments, providing draft documents for management to evaluate and accept, and recommending candidates are permissible activities that do not constitute assuming management responsibilities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Ethics and Independence',
 'A CPA firm is engaged to audit a company in which one of the firm''s retired partners holds a material direct financial interest. The retired partner receives a fixed retirement benefit that is not dependent on firm revenues. Under the AICPA Code, is the firm''s independence impaired?',
 '["Yes, because all current and former partners are covered members", "Yes, because the retired partner holds a direct financial interest in the client", "No, because a retired partner whose retirement benefits are fixed and not tied to firm revenues is not a covered member", "No, because retired partners are never covered members"]'::jsonb,
 2,
 'Under the AICPA Code, a retired partner whose retirement benefits are fixed and not dependent on the firm''s revenues is generally not considered a covered member. Therefore, the retired partner''s financial interest in the client does not impair the firm''s independence. However, if the retirement benefits were based on firm revenues, the partner would still be a covered member.',
 'hard');

-- =============================================================================
-- Topic 2: Professional Responsibilities (32 questions)
-- Difficulty: 10 easy, 16 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'Under the AICPA Code of Professional Conduct, the principle of due care requires a CPA to:',
 '["Observe the profession''s technical and ethical standards and strive for competence", "Guarantee the accuracy of financial statements", "Report all client errors to regulatory authorities", "Accept only engagements in industries where the CPA has at least five years of experience"]'::jsonb,
 0,
 'Due care requires CPAs to observe the profession''s technical and ethical standards, continuously improve competence and quality of services, and discharge professional responsibilities to the best of their ability. It does not require guaranteeing accuracy, mandatory error reporting, or arbitrary experience thresholds. Due care is about diligent, competent performance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA is approached to perform an engagement involving specialized cryptocurrency accounting. The CPA has no experience in this area. Under the AICPA Code, the CPA should:',
 '["Decline the engagement because the CPA has no relevant experience", "Accept the engagement and rely entirely on the client''s representations about the cryptocurrency transactions", "Accept the engagement and hire a specialist without disclosing this to the client", "Accept the engagement and learn the subject matter through research, study, or consultation with experts before completing the work"]'::jsonb,
 3,
 'The AICPA Code does not prohibit CPAs from accepting engagements in new areas, provided they take steps to obtain the necessary competence before performing the work. This may include self-study, taking courses, or consulting with practitioners who have the relevant expertise. Declining automatically is overly restrictive, while relying solely on client representations or secretly outsourcing the work would violate professional standards.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA has been subpoenaed to testify in court about a client''s financial records. The client has not waived privilege. Under the AICPA Code, the CPA should:',
 '["Testify as required by the subpoena after consulting with legal counsel", "Contact the client and demand payment before testifying", "Destroy the records to protect the client", "Refuse to testify under any circumstances to protect confidentiality"]'::jsonb,
 3,
 'While the AICPA Code requires confidentiality, a valid subpoena or court order is a legally enforceable exception that supersedes the confidentiality requirement. The CPA should consult with legal counsel and comply with the subpoena. Refusing to comply with a valid court order or destroying records would expose the CPA to contempt charges and other legal consequences.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'Which of the following situations would require a CPA to disclose confidential client information without the client''s consent?',
 '["A peer review team requests access to the CPA''s engagement files", "A competitor asks for the client''s financial data", "The client''s bank requests financial information for a loan application", "A journalist investigating the client requests financial records"]'::jsonb,
 0,
 'Peer review is a required quality control process under the AICPA, and providing access to engagement files for peer review is an exception to the confidentiality rule. CPAs are required to cooperate with peer reviewers. Requests from competitors, banks (without client authorization), or journalists do not override the confidentiality obligation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA firm is considering accepting a new audit engagement. Before accepting, the firm should communicate with the predecessor auditor primarily to:',
 '["Determine the audit fee charged by the predecessor", "Obtain the predecessor''s audit workpapers to reduce audit planning time", "Determine whether the predecessor was fired or resigned voluntarily", "Obtain information about the integrity of management and any disagreements about accounting matters"]'::jsonb,
 3,
 'AU-C 210 requires a successor auditor to communicate with the predecessor auditor before accepting the engagement. The primary purpose is to obtain information about management''s integrity, disagreements with management about accounting principles or audit procedures, and reasons for the change in auditors. This helps the successor assess engagement risk.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A predecessor auditor has been contacted by a successor auditor seeking information about a former client. The client has authorized the predecessor to respond. Under professional standards, the predecessor should:',
 '["Respond promptly and fully to reasonable inquiries from the successor, including any information about disagreements with management", "Provide complete access to all workpapers without restriction", "Refuse to respond because the engagement has ended", "Provide only the audit opinion and no other information"]'::jsonb,
 0,
 'When the client authorizes communication, the predecessor auditor should respond promptly and fully to reasonable inquiries. This includes sharing information about management integrity, disagreements about accounting matters, fraud, and reasons for the change. However, the predecessor is not required to provide complete workpapers — only relevant information responsive to the successor''s inquiries.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA discovers that a former client''s financial statements, which the CPA audited, contained a material error. The CPA no longer has a professional relationship with the client. Under the AICPA Code, what is the CPA''s responsibility?',
 '["No responsibility because the relationship has ended", "The CPA should notify the client of the error and recommend appropriate corrective action", "The CPA should directly notify the SEC", "The CPA should issue a revised audit report without contacting the client"]'::jsonb,
 1,
 'Even after the professional relationship has ended, a CPA who discovers a material error in previously issued financial statements should notify the former client and recommend corrective action. If the client refuses to take appropriate steps, the CPA should evaluate whether to notify regulatory authorities or parties relying on the statements. Direct SEC notification or unilateral report revision without client contact is not the appropriate first step.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'Under the AICPA Code, a CPA commits an act discreditable to the profession if the CPA:',
 '["Advertises CPA services using social media", "Offers services at a fee lower than competitors", "Provides a second opinion to a prospective client", "Retains client records as leverage to collect unpaid fees when state law permits returning the records"]'::jsonb,
 3,
 'Retaining client records to enforce fee collection is considered an act discreditable to the profession under the AICPA Code. CPAs should not withhold records that the client needs to meet legal or regulatory obligations, even if fees are unpaid. Advertising, competitive pricing, and providing second opinions are all permissible professional activities.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA discovers that a long-time audit client has been engaged in illegal dumping of hazardous waste. The CPA believes this could result in material contingent liabilities. Under professional standards, the CPA''s primary obligation is to:',
 '["Immediately report the illegal activity to the Environmental Protection Agency", "Evaluate the impact on the financial statements and communicate with management and those charged with governance", "Withdraw from the engagement and refuse further service to the client", "Inform local law enforcement of the illegal activity"]'::jsonb,
 1,
 'The auditor''s primary obligation is to evaluate whether the illegal act has a material effect on the financial statements and to communicate the matter to management and those charged with governance. The auditor is not required to report illegal acts to external authorities (with limited exceptions under specific statutes). Withdrawal may be considered if the client refuses to address the issue, but it is not the first response.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA is asked to provide a written opinion on the application of accounting principles to a hypothetical transaction by a company that is audited by another firm. Under professional standards, the CPA should:',
 '["Consult with the existing auditor to understand the full context before providing the opinion", "Decline because only the existing auditor can provide accounting opinions to the client", "Provide the opinion without consulting the existing auditor because confidentiality prevents contact", "Provide the opinion only if it agrees with the existing auditor''s position"]'::jsonb,
 0,
 'AU-C 625 requires that when providing a written opinion on accounting principles to a company audited by another firm, the CPA should consult with the existing auditor. This ensures the CPA has a complete understanding of the facts and circumstances. The existing auditor may have information about the entity that could affect the appropriateness of the opinion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'Under the AICPA Code of Professional Conduct, which of the following forms of compensation for referring clients is prohibited?',
 '["Paying a referral fee to another CPA for recommending a client, provided the fee is disclosed to the client", "Paying a referral fee to a non-CPA for recommending a client, provided the fee is disclosed", "Receiving a commission for referring a product to a non-attest client, provided the commission is disclosed", "Receiving a commission for referring a product to an attest client"]'::jsonb,
 3,
 'Under the AICPA Code, commissions are prohibited for attest clients. A CPA may not receive a commission for recommending or referring any product or service to a client for whom the CPA performs attest services. Referral fees between CPAs are permitted with disclosure, and commissions to non-attest clients are permitted with disclosure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A client asks the CPA to prepare a report that the CPA knows will be used to mislead a bank into approving a loan. Under the AICPA Code, the CPA should:',
 '["Prepare the report with a disclaimer of responsibility", "Prepare the report but add qualifying language", "Refuse to prepare the report because it would subordinate the CPA''s judgment to the client and could constitute fraud", "Prepare the report because the CPA''s obligation is to the client"]'::jsonb,
 2,
 'The AICPA Code requires CPAs to maintain integrity and not knowingly misrepresent facts. Preparing a report the CPA knows will be used to mislead a third party violates the integrity principle and could constitute aiding fraud. The CPA must refuse the engagement, and depending on the circumstances, may need to consider withdrawal from the client relationship entirely.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA firm wants to advertise its services by claiming it is ''the best CPA firm in the state.'' Under the AICPA Code, is this permitted?',
 '["Yes, because CPAs have unrestricted rights to advertise", "No, because advertising is prohibited for CPA firms", "No, because the claim is not objectively verifiable and could be misleading", "Yes, as long as the firm has won a ''best of'' award from a recognized publication"]'::jsonb,
 2,
 'While the AICPA Code permits advertising, it prohibits advertisements that are false, misleading, or deceptive. A claim of being ''the best'' is a subjective superlative that cannot be objectively verified and could mislead consumers. The CPA may advertise factual information about services, qualifications, and experience without making unverifiable comparative claims.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'An auditor is engaged to audit the financial statements of a company that operates in a highly specialized industry. The auditor has general audit expertise but no specific knowledge of this industry. Under AU-C 220, the auditor should:',
 '["Accept the engagement and use the same procedures as any other industry", "Accept the engagement and obtain the necessary knowledge through research, training, or use of specialists during the audit", "Accept the engagement and rely on management representations for all industry-specific matters", "Decline the engagement because industry-specific knowledge is always required before accepting"]'::jsonb,
 1,
 'AU-C 220 requires the engagement partner to be satisfied that the team has appropriate competence and capabilities, including knowledge of relevant industries. The auditor may accept the engagement and obtain knowledge through research, CPE, or consulting with industry specialists. However, the auditor must achieve sufficient understanding before issuing the opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA in public practice receives a request from a government agency to provide client tax return information. The client has not authorized the disclosure. Under the AICPA Code, the CPA should:',
 '["Decline to provide the information unless compelled by a valid subpoena or summons", "Provide the information because government agencies have blanket authority to obtain it", "Provide the information only if the CPA determines it is in the client''s best interest", "Provide the information because confidentiality rules do not apply to tax return data"]'::jsonb,
 0,
 'Client information is confidential under the AICPA Code, and a CPA should not disclose it without the client''s consent unless compelled by a valid legal process such as a subpoena or summons. A general request from a government agency, without legal compulsion, does not override the confidentiality obligation. IRC Section 7216 also imposes restrictions on tax return preparers.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'When a CPA is asked to perform a consulting engagement that requires skills outside the CPA''s competence, the most appropriate action under the AICPA Code is to:',
 '["Accept the engagement and learn on the job without informing the client", "Decline the engagement under all circumstances", "Accept the engagement and subcontract all work to a specialist without the client''s knowledge", "Accept the engagement only after disclosing limitations to the client and obtaining appropriate assistance from qualified individuals"]'::jsonb,
 3,
 'The AICPA Code permits CPAs to accept engagements that stretch their existing competence, provided they disclose any limitations to the client, obtain appropriate assistance from qualified professionals, and ensure that the work meets professional standards. Secret subcontracting or accepting without disclosure violates professional standards.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA firm merges with another firm. Client records and files are transferred to the successor firm. Under the AICPA Code, what obligation does the original firm have regarding client consent?',
 '["No consent is needed because the records automatically transfer in a merger", "Clients should be notified of the change and given the opportunity to retrieve their records before transfer", "Written consent from each client must be obtained before transferring any records", "Consent is required only for clients with outstanding balances"]'::jsonb,
 1,
 'When a CPA firm merges or is acquired, professional standards require that clients be notified of the change and given the opportunity to engage the successor firm or retrieve their records. While blanket consent may be implied by the client''s decision to continue with the successor firm, clients should be informed and given a choice.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'Under the AICPA Code, a member who prepares financial statements for a client but does not audit or review them should:',
 '["Include a disclaimer that states the financial statements have not been audited or reviewed", "Issue a qualified opinion on the statements", "Apply for a special license to issue unaudited statements", "Send the statements directly to the client''s creditors"]'::jsonb,
 0,
 'When a CPA prepares financial statements without performing an audit or review, the CPA should include a disclaimer or legend on each page indicating the statements have not been audited or reviewed and no opinion or assurance is expressed. This prevents third parties from assuming the statements have been subject to verification.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA is engaged to perform an audit and discovers that the predecessor auditor''s workpapers contain evidence of management fraud at the client company. The predecessor auditor did not report this fraud in their audit report. Under professional standards, the successor auditor should:',
 '["Ignore the predecessor''s workpapers and start fresh", "Report the predecessor auditor to the state board of accountancy immediately", "Withdraw from the engagement because the client has a history of fraud", "Evaluate the evidence, extend audit procedures to determine the current impact of the fraud, and communicate with those charged with governance"]'::jsonb,
 3,
 'The successor auditor should evaluate the evidence from the predecessor''s workpapers, perform additional procedures to determine whether the fraud is ongoing or has current-period implications, and communicate findings with those charged with governance. While reporting the predecessor may be appropriate later, the immediate priority is understanding the impact on the current engagement.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'Under the AICPA Code, the principle of ''the public interest'' means that CPAs should:',
 '["Maximize shareholder returns for their audit clients", "Prioritize client interests over all other considerations", "Act in a way that serves the public trust, including clients, creditors, government, and the business community", "Ensure that audit fees are affordable for all companies"]'::jsonb,
 2,
 'The public interest principle recognizes that CPAs have obligations to multiple stakeholders, including clients, creditors, employers, investors, the business and financial community, and the government. The CPA must balance these interests, with the public trust being paramount. This distinguishes accounting from professions that serve only their clients'' interests.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA is performing tax services for a married couple. During the engagement, the couple begins divorce proceedings and each spouse requests separate representation. Under the AICPA Code, how should the CPA handle this situation?',
 '["Continue representing both spouses because the original engagement letter covers both parties", "Choose to represent the spouse who has been a longer-standing client", "Continue representing both spouses with appropriate disclosure and consent", "Withdraw from representing both spouses because a conflict of interest now exists"]'::jsonb,
 3,
 'When a married couple begins divorce proceedings, a conflict of interest arises because each spouse''s tax interests may become adverse to the other''s. The CPA should withdraw from representing both parties to avoid the conflict. In some cases, continued representation of one spouse may be possible, but simultaneous representation of both creates an untenable conflict.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA receives a request from a prospective client who is currently audited by another CPA firm. The prospective client asks for a second opinion on an accounting issue. Under professional standards, the CPA providing the second opinion should:',
 '["Refuse because second opinions are prohibited", "Provide the opinion without contacting the existing auditor to protect the prospective client''s confidentiality", "Communicate with the existing auditor before providing the opinion to understand the complete facts and circumstances", "Provide the opinion but include a disclaimer stating it may differ from the existing auditor''s view"]'::jsonb,
 2,
 'Professional standards require the CPA providing a second opinion to communicate with the existing auditor to ensure a complete understanding of the facts and circumstances. This communication helps prevent the prospective client from ''opinion shopping'' by selectively presenting information. The existing auditor may have relevant context that could affect the opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA learns that a staff member has been convicted of a felony involving financial fraud. Under the AICPA Code, which principle is most directly implicated?',
 '["Confidentiality", "Due care", "Acts discreditable to the profession", "Scope and nature of services"]'::jsonb,
 2,
 'A felony conviction, particularly one involving financial fraud, constitutes an act discreditable to the profession under the AICPA Code. Such conduct undermines public confidence in the accounting profession. The firm should evaluate the individual''s continued role and may be required to report the matter to the state board of accountancy.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'An engagement partner is evaluating whether to accept a new audit client that operates in a complex industry. The partner has adequate general audit experience but limited industry knowledge. Which factor is LEAST relevant to the engagement acceptance decision?',
 '["The ability to obtain sufficient understanding of the client''s industry", "The availability of specialists with relevant industry expertise", "The audit fees charged by the predecessor auditor", "The results of inquiries with the predecessor auditor about management integrity"]'::jsonb,
 2,
 'The predecessor auditor''s fees are least relevant to the engagement acceptance decision. The critical factors include management integrity, the ability to comply with ethical requirements, the team''s competence and capability (including access to industry expertise), and the firm''s ability to meet time and resource requirements. Fee information may be useful for proposal purposes but is not an acceptance criterion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'Under the AICPA Code, a CPA may disclose confidential client information without the client''s consent in which of the following situations?',
 '["In response to a request from the client''s competitor", "When the CPA believes disclosure would be helpful to the client", "In response to a valid and enforceable subpoena", "When the CPA is marketing services to the client''s industry peers"]'::jsonb,
 2,
 'The AICPA Code permits disclosure of confidential information without client consent in response to a valid subpoena or summons, in compliance with professional standards (such as peer review), and in certain limited circumstances related to legal proceedings. Requests from competitors, subjective judgments about helpfulness, or marketing activities do not qualify as exceptions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA firm has received an engagement letter from a new client for a review engagement. During preliminary planning, the CPA discovers the client is involved in significant litigation that could affect going concern. Under professional standards, what should the CPA consider?',
 '["Evaluate whether sufficient information can be obtained to complete the review and whether appropriate disclosures will be made", "Withdraw from the engagement because litigation prevents a review", "Convert the engagement to an audit because of the litigation risk", "Refuse to include any mention of the litigation in the review report"]'::jsonb,
 0,
 'The existence of significant litigation does not automatically preclude a review engagement. The CPA should evaluate whether sufficient information can be obtained through inquiry and analytical procedures to address the litigation, whether management will make appropriate disclosures, and whether the CPA can issue a meaningful review report under the circumstances.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA discovers during an engagement that the client''s management has intentionally misstated revenue to meet analyst expectations. The CPA has communicated this to management, who refuses to correct the misstatement. Under professional standards, the CPA''s next step should be to:',
 '["Accept management''s position and issue an unmodified opinion", "Immediately contact the SEC to report the fraud", "Resign from the engagement without further communication", "Communicate the matter to those charged with governance, such as the audit committee"]'::jsonb,
 3,
 'When management refuses to correct a known material misstatement, the CPA should escalate by communicating the matter to those charged with governance (such as the audit committee or board of directors). This step precedes any consideration of opinion modification, withdrawal, or external reporting. Those charged with governance have authority to override management and direct corrective action.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA receives a request from a new client to prepare an individual tax return. The CPA contacts the predecessor preparer, but the predecessor refuses to respond despite the client''s authorization. Under professional standards, the CPA should:',
 '["Consider the predecessor''s refusal as a risk factor, but the CPA may still accept the engagement after performing additional due diligence", "Refuse to prepare the return because the predecessor''s cooperation is mandatory", "Report the predecessor to the state board for non-cooperation", "Accept the engagement without any further inquiry because the predecessor''s refusal is the predecessor''s problem"]'::jsonb,
 0,
 'While communication with the predecessor is important, the predecessor''s refusal to respond does not automatically prevent the CPA from accepting the engagement. The CPA should treat the refusal as a risk factor that warrants additional due diligence, such as requesting prior-year returns from the client and evaluating whether other red flags exist.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'Under the AICPA Code, a CPA who uses the work of a specialist must:',
 '["Accept full responsibility for the specialist''s findings without further evaluation", "Evaluate the specialist''s qualifications, understand the nature of the work performed, and evaluate the results in relation to the audit objectives", "Disclaim responsibility for any portion of the audit that relied on the specialist", "Require the specialist to obtain their own professional liability insurance"]'::jsonb,
 1,
 'When using the work of a specialist, the auditor must evaluate the specialist''s professional qualifications, understand the nature, scope, and objectives of the specialist''s work, and evaluate the appropriateness and reasonableness of the findings. The auditor does not disclaim responsibility but rather integrates the specialist''s work into the overall audit evidence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA has been performing annual audits for a client for 15 years. The client''s industry has evolved significantly, and the CPA has not updated their knowledge in this industry for the past 3 years. Under the AICPA Code, which principle is most directly at risk?',
 '["Confidentiality", "Public interest", "Acts discreditable", "Competence and due care"]'::jsonb,
 3,
 'Failing to maintain current industry knowledge directly violates the competence component of due care. The AICPA Code requires CPAs to maintain competence in areas where they practice, including keeping current with industry developments, new accounting standards, and regulatory changes. Three years without updating industry knowledge suggests the CPA may not be competent to perform the engagement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'During an audit, a staff accountant is pressured by the engagement partner to reduce the number of confirmations sent to meet the engagement budget. The staff accountant believes the original sample was appropriate. Under professional standards, the staff accountant should:',
 '["Express the concern to the partner, and if unresolved, follow the firm''s internal conflict resolution procedures", "Comply with the partner''s instructions because the partner has ultimate authority", "Immediately report the partner to the AICPA", "Comply but document the disagreement in the workpapers"]'::jsonb,
 0,
 'Professional standards require audit team members to exercise professional judgment and not subordinate their judgment improperly. The staff accountant should express the concern to the engagement partner. If the disagreement is unresolved, the firm''s policies should provide for consultation with more senior personnel or through internal conflict resolution processes.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Responsibilities',
 'A CPA is engaged to compile financial statements for a non-attest client. During the compilation, the CPA becomes aware that the financial statements contain a material departure from GAAP. Management refuses to correct the departure. Under SSARS, the CPA should:',
 '["Withdraw from the engagement immediately", "Issue the compilation report without mentioning the departure", "Convert the engagement to an audit to investigate the departure", "Issue the compilation report with disclosure of the known departure from GAAP"]'::jsonb,
 3,
 'Under SSARS, if the CPA becomes aware of a material departure from the applicable financial reporting framework during a compilation, and management refuses to revise the statements, the CPA should disclose the departure in the compilation report. Withdrawal is an option but is not required. The CPA should not ignore the departure or convert to an audit.',
 'hard');

-- =============================================================================
-- Topic 3: Quality Management (38 questions)
-- Difficulty: 11 easy, 19 medium, 8 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'SQMS No. 1 requires a firm to design, implement, and operate a system of quality management. Which of the following best describes the objective of such a system?',
 '["To maximize firm profitability through efficient resource allocation", "To guarantee that all audit opinions issued by the firm are correct", "To provide the firm with reasonable assurance that the firm and its personnel fulfill their responsibilities and engagements are performed in accordance with professional standards", "To ensure compliance with all client requests regarding audit procedures"]'::jsonb,
 2,
 'SQMS No. 1 establishes that the objective of a quality management system is to provide reasonable assurance that the firm and its personnel fulfill their responsibilities in accordance with professional standards and applicable legal and regulatory requirements, and that engagement reports are appropriate in the circumstances. It provides reasonable, not absolute, assurance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, which of the following is a required component of a firm''s system of quality management?',
 '["Risk assessment process", "Partner compensation benchmarking", "Annual profitability analysis by engagement", "Client satisfaction surveys"]'::jsonb,
 3,
 'SQMS No. 1 requires eight components, including a risk assessment process. The firm must identify quality risks and design responses to address them. Client satisfaction surveys, profitability analysis, and compensation benchmarking, while potentially useful management tools, are not required components of the quality management system.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, which of the following are the eight components of a system of quality management?',
 '["Governance, ethics, engagement acceptance, resources, engagement performance, information systems, monitoring, and risk assessment", "Planning, fieldwork, reporting, supervision, review, consultation, documentation, and ethics", "Tone at the top, staff training, client screening, technology, outsourcing, documentation, peer review, and budgeting", "Leadership, human resources, marketing, technology, quality control, billing, risk management, and compliance"]'::jsonb,
 0,
 'The eight components of SQMS No. 1 are: (1) the firm''s risk assessment process, (2) governance and leadership, (3) relevant ethical requirements, (4) acceptance and continuance, (5) engagement performance, (6) resources, (7) information and communication, and (8) the monitoring and remediation process. The first answer choice accurately captures these components.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 2, an engagement quality review is required for which of the following?',
 '["All compilation engagements", "Audits and other engagements for which an engagement quality review is required by law, regulation, or the firm''s policies", "All tax preparation engagements", "Only engagements with fees exceeding $100,000"]'::jsonb,
 1,
 'SQMS No. 2 requires engagement quality reviews for audits of financial statements of listed entities and any other engagements for which the firm determines an EQR is an appropriate response to quality risks, as well as engagements required by law or regulation. It is not based on fee amounts or limited to specific engagement types.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Who is eligible to serve as the engagement quality reviewer under SQMS No. 2?',
 '["A partner or other individual within or outside the firm who has sufficient competence, capabilities, and objectivity", "Any partner in the firm, including the engagement partner", "Only external partners from another firm", "Only the firm''s managing partner"]'::jsonb,
 0,
 'The engagement quality reviewer must be a partner or other individual with sufficient competence, capabilities, and the authority and objectivity to perform the review. The reviewer may be from within or outside the firm but must not be the engagement partner or anyone whose objectivity is impaired. The reviewer must not have made significant judgments on the engagement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, a firm''s monitoring and remediation process should include:',
 '["Annual client satisfaction surveys and follow-up actions", "Only external peer review results", "Partner votes on quality management policies", "Inspection of completed engagements, identification of deficiencies, and implementation of corrective actions"]'::jsonb,
 3,
 'The monitoring and remediation process under SQMS No. 1 requires the firm to design and perform monitoring activities (such as engagement inspections), evaluate findings and identify deficiencies, investigate root causes, and implement remedial actions. It goes beyond external peer review to include ongoing internal monitoring.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, who has ultimate responsibility for the firm''s system of quality management?',
 '["The engagement quality reviewer", "The firm''s chief executive officer or managing partner (or equivalent)", "The AICPA Peer Review Board", "Each individual engagement partner"]'::jsonb,
 1,
 'SQMS No. 1 assigns ultimate responsibility for the system of quality management to the firm''s leadership — specifically, the chief executive officer, managing partner, or equivalent. While individual partners have responsibilities for their engagements, the overall system design, implementation, and operation is a leadership responsibility.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A CPA firm determines that a quality risk exists related to staff turnover causing knowledge gaps on recurring engagements. Under SQMS No. 1, what type of response would be most appropriate?',
 '["Raise audit fees to compensate for the increased risk", "Stop accepting new engagements until turnover stabilizes", "Outsource all audit work to a larger firm", "Implement knowledge transfer procedures, documentation requirements, and succession planning for key engagements"]'::jsonb,
 2,
 'Under SQMS No. 1, the firm must design and implement responses to identified quality risks. For knowledge gaps from staff turnover, appropriate responses include knowledge transfer procedures, comprehensive documentation requirements, succession planning, and training programs. The response should be proportionate to the risk and designed to reduce it to an acceptable level.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 2, the engagement quality reviewer must perform the review with what level of involvement?',
 '["A cursory review of the final audit report only", "A complete re-performance of all audit procedures", "A review limited to the engagement letter and management representation letter", "An in-depth review that includes evaluating significant judgments, conclusions, and the proposed report"]'::jsonb,
 3,
 'The engagement quality reviewer must perform an objective evaluation of the significant judgments made by the engagement team and the conclusions reached. This includes reviewing the proposed report, evaluating significant findings, and considering whether the audit documentation supports the conclusions. It is more than a cursory review but less than a complete re-performance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, the ''acceptance and continuance'' component requires the firm to:',
 '["Establish policies for evaluating whether to accept or continue client relationships and specific engagements based on quality considerations", "Accept all potential clients to maximize revenue", "Accept only clients referred by existing clients", "Continue all existing client relationships unless the client requests termination"]'::jsonb,
 0,
 'The acceptance and continuance component requires the firm to establish policies and procedures for evaluating potential and existing clients. Considerations include management integrity, the firm''s competence and resources, ethical requirements, and whether the engagement can be performed in accordance with professional standards. Not all clients should be accepted or retained.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A CPA firm''s annual inspection reveals that several engagements had insufficient documentation of the risk assessment process. Under SQMS No. 1, what should the firm do?',
 '["Ignore the finding because documentation is less important than audit quality", "Investigate the root cause of the deficiency and implement remedial actions such as additional training or revised templates", "Immediately terminate the engagement partners responsible", "Report the finding to the SEC"]'::jsonb,
 1,
 'SQMS No. 1 requires the firm to investigate root causes of identified deficiencies and implement appropriate remedial actions. For documentation deficiencies, this might include additional training on documentation requirements, developing or revising standardized templates, and increasing supervisory review. The response should address the root cause, not just the symptom.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, which of the following is included in the ''resources'' component?',
 '["Only financial resources such as the firm''s operating budget", "Only the number of CPAs employed by the firm", "Marketing budgets and client development resources", "Human resources, technological resources, and intellectual resources"]'::jsonb,
 3,
 'The resources component of SQMS No. 1 encompasses human resources (including recruitment, training, and competence), technological resources (audit tools, software, data analytics), and intellectual resources (methodologies, industry guidance, templates, and practice aids). It is broader than just staffing or financial resources.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A firm designates an individual to be responsible for the operation of the monitoring and remediation process. Under SQMS No. 1, this individual must have:',
 '["At least 20 years of experience in public accounting", "Sufficient experience, knowledge, and authority to fulfill the role", "A separate office from the firm''s managing partner", "External certification in quality management"]'::jsonb,
 1,
 'SQMS No. 1 requires that the individual responsible for the monitoring and remediation process have sufficient experience, knowledge, influence, authority, and time to fulfill the responsibilities. There is no specific year requirement, physical office requirement, or external certification requirement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 2, the engagement quality reviewer identifies a significant concern about the engagement team''s conclusion on a material accounting estimate. What should the reviewer do?',
 '["Accept the team''s judgment because the reviewer should not second-guess the engagement partner", "Override the engagement team''s conclusion and change the audit report", "Ignore the concern and complete the review to avoid delaying the report", "Discuss the concern with the engagement partner and, if unresolved, the reviewer should not provide concurrence for the report to be issued"]'::jsonb,
 3,
 'Under SQMS No. 2, when the engagement quality reviewer has unresolved concerns about significant judgments, the reviewer should discuss them with the engagement partner. If the concerns remain unresolved, the reviewer should not provide concurrence for the report to be issued. The engagement quality review process must be completed, and all significant concerns resolved, before the report can be released.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, a firm must evaluate its system of quality management at least:',
 '["Monthly", "Quarterly", "Annually", "Every three years"]'::jsonb,
 2,
 'SQMS No. 1 requires that the firm evaluate its system of quality management at least annually. The evaluation should consider the results of monitoring activities, other relevant information, and the effect of identified deficiencies. Based on the evaluation, the firm concludes whether the system provides reasonable assurance of quality.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A firm''s quality management system identifies that a new auditing standard will take effect in the coming year. Under SQMS No. 1, the firm should respond by:',
 '["Proactively updating firm methodology, providing training to staff, and updating templates before the effective date", "Waiting until the standard takes effect and then retroactively updating procedures", "Ignoring the new standard until the next peer review cycle", "Assigning one partner to implement the new standard without training other staff"]'::jsonb,
 0,
 'Under SQMS No. 1, the firm''s quality management system should be dynamic and responsive to changes in the nature and circumstances of the firm and its engagements. New auditing standards require proactive updates to methodology, training, templates, and practice aids. The firm should prepare in advance of the effective date to ensure compliance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, the ''governance and leadership'' component requires firm leadership to:',
 '["Focus exclusively on profitability targets and growth objectives", "Delegate all quality management responsibilities to junior staff", "Foster a culture that recognizes quality as essential and support the quality management system through actions, messages, and resource allocation", "Establish governance structures identical to those of public companies"]'::jsonb,
 2,
 'The governance and leadership component requires firm leadership to set the tone at the top by demonstrating a commitment to quality through their actions and messages. Leadership must allocate sufficient resources, establish accountability, and create a culture where quality is valued and where raising concerns is encouraged.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A firm performs an engagement quality review and the reviewer identifies that the engagement team did not adequately evaluate a going concern uncertainty. Under SQMS No. 2, what must happen before the audit report is released?',
 '["The report can be released with the reviewer''s objection noted in a memo", "The reviewer must resign from the review to avoid delaying the engagement", "The engagement team must perform additional procedures to address the reviewer''s concern, and the reviewer must be satisfied before the report is released", "The matter should be deferred to the next annual inspection"]'::jsonb,
 2,
 'Under SQMS No. 2, the engagement report cannot be dated or released until the engagement quality review is completed, including resolution of all matters raised by the reviewer. The engagement team must perform additional procedures or provide additional support to address the reviewer''s concerns. Only when the reviewer is satisfied that the significant judgments are appropriate can the report be released.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, when the firm identifies a deficiency in the quality management system, the firm must:',
 '["Only document the deficiency for the peer review file", "Immediately notify all clients affected by the deficiency", "Suspend all engagements until the deficiency is corrected", "Investigate the root cause of the deficiency and design and implement remedial actions to address it"]'::jsonb,
 3,
 'When a deficiency is identified, SQMS No. 1 requires the firm to investigate the root cause, evaluate the severity of the deficiency (including whether it is severe enough to require action on previously issued reports), and design and implement remedial actions. Root cause analysis helps prevent recurrence and strengthens the overall system.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A small CPA firm with three partners and ten staff performs only compilation and review engagements. Under SQMS No. 1, is the firm required to have a system of quality management?',
 '["No, because SQMS No. 1 applies only to firms that perform audits", "No, because the firm is too small to be subject to quality management standards", "Yes, SQMS No. 1 applies to all firms that perform engagements under the Statements on Auditing Standards, SSARS, or SSAE", "Yes, but only if the firm is subject to peer review"]'::jsonb,
 2,
 'SQMS No. 1 applies to all firms that perform engagements in accordance with SAS, SSARS, or SSAE. Since the firm performs compilation and review engagements (governed by SSARS), it is required to have a quality management system. The requirement applies regardless of firm size, though the system''s complexity may be scaled to the firm''s circumstances.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, the ''information and communication'' component requires the firm to:',
 '["Publish an annual report to shareholders about quality management activities", "Share all engagement details with every partner in the firm", "Obtain, generate, and communicate information necessary for the quality management system to function, including within the firm and to external parties as appropriate", "Communicate only through formal written memoranda"]'::jsonb,
 2,
 'The information and communication component requires the firm to establish an information system that obtains, generates, and uses relevant information to support the quality management system. Communication must flow within the firm (so personnel understand their responsibilities) and externally as appropriate (to clients, regulators, etc.).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A firm''s monitoring activities reveal that one engagement partner consistently fails to document the basis for key audit judgments. Under SQMS No. 1, what is the most appropriate remedial action?',
 '["Issue a firm-wide policy reminder without addressing the individual partner", "Remove the partner from the firm immediately", "Reduce the partner''s compensation without explanation", "Provide targeted coaching and training to the partner, implement enhanced supervisory review of the partner''s engagements, and follow up to verify improvement"]'::jsonb,
 3,
 'Effective remediation under SQMS No. 1 addresses both the systemic issue and the individual performance gap. Targeted coaching, enhanced supervision, and follow-up monitoring are proportionate and constructive responses. A firm-wide reminder alone does not address the individual behavior, while immediate removal is disproportionate unless the deficiency reflects incompetence or unwillingness to improve.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 2, the engagement quality reviewer should evaluate all of the following EXCEPT:',
 '["Significant judgments made by the engagement team regarding materiality", "The engagement team''s evaluation of the firm''s independence", "The proposed audit report, including whether it is appropriate", "The number of billable hours charged to the engagement"]'::jsonb,
 3,
 'The engagement quality reviewer evaluates significant judgments (including materiality), independence, the proposed report, significant findings and issues, and key audit documentation. The number of billable hours is a billing and resource management matter, not a quality management concern for the engagement quality review.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, a firm''s risk assessment process should:',
 '["Be performed once when the firm is established and not updated", "Focus only on financial risks to the firm such as client nonpayment", "Be delegated entirely to an external consultant", "Identify and assess quality risks on an ongoing basis, considering changes in the nature and circumstances of the firm and its engagements"]'::jsonb,
 3,
 'The risk assessment process under SQMS No. 1 is ongoing and dynamic. The firm must identify conditions, events, and activities that give rise to quality risks and assess those risks. The process must be updated as the firm''s circumstances change, such as when new types of engagements are accepted, new personnel join, or new standards are issued.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A CPA firm receives a peer review report with a rating of ''pass with deficiency.'' Under SQMS No. 1, the firm should:',
 '["Consider the peer review results as part of its monitoring and remediation process and take corrective action for the identified deficiency", "Ignore the peer review results because they are external to the firm''s system", "Immediately cease all audit engagements until the deficiency is corrected", "Appeal the rating without addressing the underlying deficiency"]'::jsonb,
 0,
 'Under SQMS No. 1, external information such as peer review results should be incorporated into the firm''s monitoring and remediation process. The firm should investigate the root cause of the identified deficiency, evaluate its impact, and implement corrective actions. Peer review results provide valuable external feedback on the effectiveness of the quality management system.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, the ''engagement performance'' component addresses which of the following?',
 '["The direction, supervision, and review of engagement work and the exercise of professional judgment", "How the firm markets its services to prospective clients", "The firm''s compensation and promotion policies for partners", "The firm''s real estate and office lease management"]'::jsonb,
 0,
 'The engagement performance component addresses the quality of work performed on individual engagements, including direction, supervision, and review of engagement work, the exercise of professional judgment and professional skepticism, and consultation on difficult or contentious matters. It ensures that engagements are performed consistently with professional standards.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A firm discovers through its monitoring process that a previously issued audit report may have been based on insufficient audit evidence for a material balance. Under SQMS No. 1, the firm should:',
 '["Take no action because the report has already been issued", "Evaluate whether additional procedures need to be performed and consider the impact on the previously issued report, including whether to recall or revise the report", "Only address the issue on the next year''s engagement", "Wait for the client to discover the issue and raise it"]'::jsonb,
 1,
 'When monitoring reveals that a previously issued report may be affected by a deficiency, SQMS No. 1 requires the firm to evaluate the impact. This may include performing additional procedures, consulting with legal counsel, communicating with the client and those charged with governance, and considering whether the report should be recalled or revised.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 2, what is the cooling-off period before a former engagement partner can serve as the engagement quality reviewer for the same client?',
 '["One year", "Two years", "Three years", "No cooling-off period is required"]'::jsonb,
 1,
 'SQMS No. 2 requires a two-year cooling-off period before a former engagement partner can serve as the engagement quality reviewer for the same engagement. This period helps ensure the reviewer can evaluate the work with sufficient objectivity and is not too closely identified with the judgments made during their tenure as engagement partner.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A CPA firm is implementing SQMS No. 1 and is deciding how to scale its quality management system. The firm has 5 partners, 20 staff, and performs primarily tax and review engagements. Under SQMS No. 1, the firm should:',
 '["Scale the system to the nature and circumstances of the firm, with simpler processes appropriate for a smaller practice", "Implement the same system used by large international firms to ensure maximum quality", "Exempt itself from SQMS No. 1 because it does not perform audits", "Delay implementation until the firm grows larger"]'::jsonb,
 0,
 'SQMS No. 1 is scalable. The standard recognizes that a system of quality management appropriate for a large international firm would differ from one appropriate for a small practice. The nature and extent of policies and procedures should be tailored to the firm''s size, complexity, and the nature of engagements performed. However, since the firm performs review engagements (SSARS), it is subject to SQMS No. 1.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, what is a ''quality objective''?',
 '["A financial target for the firm''s audit practice revenue", "A client satisfaction score that the firm aims to achieve", "An outcome to be achieved by the firm regarding quality, established for each component of the quality management system", "A target number of CPE hours for all staff"]'::jsonb,
 2,
 'A quality objective under SQMS No. 1 is a desired outcome related to quality that the firm establishes for each component of the quality management system. Quality objectives provide the basis for identifying quality risks and designing responses. They are specific to quality management, not financial targets, client satisfaction scores, or CPE metrics.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A firm uses data analytics tools to assist with monitoring activities under SQMS No. 1, including analyzing patterns in engagement documentation deficiencies. This is an example of which component of the quality management system?',
 '["Resources", "Engagement performance", "Information and communication", "Monitoring and remediation"]'::jsonb,
 3,
 'Using data analytics to analyze patterns in engagement deficiencies is part of the monitoring and remediation component. While the analytics tools themselves are resources, their application to identify patterns and trends in quality deficiencies is a monitoring activity. The monitoring process uses various methods, including analytics, to evaluate the system''s effectiveness.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 2, the engagement quality reviewer must complete the review before:',
 '["The engagement team begins fieldwork", "The engagement letter is signed", "The engagement report is dated", "The engagement fee is collected"]'::jsonb,
 2,
 'Under SQMS No. 2, the engagement quality review must be completed before the engagement report is dated. The report date signifies the completion of sufficient appropriate audit evidence, and the engagement quality review is part of ensuring that the engagement has been properly performed before the report is released.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, which of the following best describes the relationship between quality risks and responses?',
 '["Quality risks are identified and assessed, and one or more responses are designed and implemented to address each assessed quality risk", "Each quality risk must have exactly one corresponding response", "Responses are designed first, and quality risks are then identified to justify the responses", "Quality risks and responses are independent of each other"]'::jsonb,
 0,
 'Under SQMS No. 1, the firm identifies and assesses quality risks and then designs and implements one or more responses to address each assessed risk. The responses should be proportionate to the assessed risk. Multiple responses may be needed for a single risk, and a single response may address multiple risks. The process flows from risk identification to response design.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A firm conducts engagement inspections as part of its monitoring activities. The inspections reveal that the firm''s audit methodology does not adequately address the requirements of a recently issued auditing standard. Under SQMS No. 1, this represents:',
 '["An observation requiring no action", "A deficiency in the quality management system that requires root cause analysis and remediation", "An external matter outside the firm''s control", "A minor documentation issue requiring only a memo to file"]'::jsonb,
 1,
 'An outdated methodology that does not address current professional standards is a deficiency in the quality management system. Under SQMS No. 1, the firm must investigate the root cause (such as inadequate processes for updating methodology), evaluate the severity (potentially affecting all engagements), and implement remedial actions (update the methodology, retrain staff, and review affected engagements).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, the ''relevant ethical requirements'' component requires the firm to:',
 '["Adopt only the ethical requirements that the firm deems relevant to its practice", "Delegate all ethical compliance responsibilities to the AICPA", "Apply ethical requirements only when clients specifically request ethical behavior", "Establish policies and procedures to identify, evaluate, and address threats to compliance with relevant ethical requirements, including independence"]'::jsonb,
 3,
 'The relevant ethical requirements component requires the firm to establish policies and procedures that address threats to independence and compliance with ethical requirements. This includes identifying threats, evaluating their significance, and applying safeguards. The firm must ensure all personnel understand and comply with applicable ethical requirements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'A CPA firm is evaluating whether to continue an engagement with a client whose management has demonstrated questionable integrity during the current year. Under SQMS No. 1, this evaluation falls under which component?',
 '["Acceptance and continuance", "Governance and leadership", "Monitoring and remediation", "Engagement performance"]'::jsonb,
 0,
 'Evaluating whether to continue a client relationship due to concerns about management integrity falls under the acceptance and continuance component of SQMS No. 1. This component requires the firm to establish policies for evaluating ongoing client relationships, including reassessing whether to continue when circumstances change, such as emerging integrity concerns.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 2, if the engagement quality reviewer becomes aware of information after the report date that would have caused the reviewer to raise a significant concern during the review, the reviewer should:',
 '["Take no action because the review is complete and the report has been issued", "Discuss the matter with the engagement partner and determine whether appropriate action is taken, including evaluating the effect on the engagement report", "Resign as the engagement quality reviewer for future engagements", "Notify the client directly about the concern"]'::jsonb,
 1,
 'Even after the report is issued, if the engagement quality reviewer becomes aware of information that would have been significant during the review, the reviewer has an obligation to discuss the matter with the engagement partner. The firm must evaluate the impact on the issued report and determine whether further action is needed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Quality Management',
 'Under SQMS No. 1, the firm''s annual evaluation of the quality management system should result in a conclusion regarding whether:',
 '["The system of quality management provides reasonable assurance that its objectives are being achieved", "The firm is profitable enough to continue operations", "All clients are satisfied with the firm''s services", "The firm''s staff retention rate meets industry benchmarks"]'::jsonb,
 0,
 'The annual evaluation under SQMS No. 1 should result in a conclusion about whether the system of quality management provides the firm with reasonable assurance that its objectives are being achieved. The conclusion considers monitoring results, the nature and severity of deficiencies, the effectiveness of remedial actions, and whether the overall system is functioning effectively.',
 'medium');

-- =============================================================================
-- Topic 4: Government Auditing Standards (25 questions)
-- Difficulty: 8 easy, 12 medium, 5 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Government Auditing Standards (the Yellow Book) are issued by which of the following organizations?',
 '["The Government Accountability Office (GAO)", "The AICPA", "The Securities and Exchange Commission (SEC)", "The Financial Accounting Standards Board (FASB)"]'::jsonb,
 0,
 'Government Auditing Standards, commonly known as the Yellow Book, are issued by the Comptroller General of the United States through the Government Accountability Office (GAO). These standards apply to audits of government entities and entities that receive government funding. The AICPA issues auditing standards for non-issuers, while the SEC oversees public companies.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under Government Auditing Standards, auditors must comply with the independence requirements of which standards in addition to the Yellow Book?',
 '["Only the Yellow Book independence requirements", "The SEC independence rules and the Yellow Book", "International Standards on Auditing and the Yellow Book", "The AICPA Code of Professional Conduct and the Yellow Book"]'::jsonb,
 3,
 'Government Auditing Standards require auditors to comply with the independence requirements of both the Yellow Book and the AICPA Code of Professional Conduct. The Yellow Book provides additional independence requirements that are more restrictive than the AICPA Code in certain areas, particularly regarding nonaudit services provided to audit clients.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under Government Auditing Standards, which of the following nonaudit services is generally prohibited for an auditor providing services to a government audit client?',
 '["Providing advice on accounting standards", "Providing training to client personnel on new accounting standards", "Preparing financial statements from client-provided trial balances", "Performing management functions such as making policy decisions for the entity"]'::jsonb,
 3,
 'The Yellow Book prohibits auditors from performing management functions for government audit clients. This includes making policy decisions, directing employees, or performing any function that is management''s responsibility. While other services like preparing financial statements or providing training may be permissible with appropriate safeguards, management functions are categorically prohibited.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under Government Auditing Standards, auditors performing financial audits of government entities must meet continuing professional education (CPE) requirements of:',
 '["40 hours every year, with no specific subject requirements", "80 hours every two years, with at least 24 hours related to the government auditing environment", "120 hours every three years, with at least 20 hours related to auditing", "No specific CPE requirements beyond those of the AICPA"]'::jsonb,
 1,
 'The Yellow Book requires auditors to complete 80 hours of CPE every two years, with at least 24 hours directly related to the government auditing environment (including government accounting, auditing, and specific government programs). At least 20 of the 80 hours must be completed in each year of the two-year period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'The Single Audit Act requires a single audit for state and local governments and nonprofit organizations that expend federal awards exceeding what threshold?',
 '["$250,000", "$750,000", "$500,000", "$1,000,000"]'::jsonb,
 1,
 'Under the Uniform Guidance (2 CFR Part 200), a single audit is required when a non-federal entity expends $750,000 or more in federal awards during the fiscal year. This threshold was increased from $500,000 effective December 26, 2014. The single audit combines the financial statement audit with a compliance audit of federal programs.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'In a single audit under the Uniform Guidance, the auditor must identify and test ''major programs.'' What primarily determines whether a federal program is classified as a major program?',
 '["The program is specifically designated as major by the grantor agency", "Any program with expenditures exceeding $100,000", "A risk-based approach considering the dollar amount of federal awards and the risk of noncompliance", "All federal programs must be tested as major programs"]'::jsonb,
 2,
 'The Uniform Guidance uses a risk-based approach to identify major programs. The auditor considers the dollar threshold (Type A programs are those exceeding the larger of $750,000 or 3% of total federal awards), the risk assessment of individual programs (high vs. low risk), and the requirement to test at least 40% (or 20% for low-risk auditees) of total federal expenditures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'In a Yellow Book audit, the auditor''s report on the financial statements must include a reference to Government Auditing Standards. What additional reporting is required?',
 '["A separate report on internal control over financial reporting and compliance with laws and regulations", "No additional reporting beyond the standard AICPA audit report", "A report on the entity''s budget-to-actual comparisons", "A report on the efficiency of the entity''s operations"]'::jsonb,
 0,
 'In a Yellow Book financial audit, the auditor must issue a separate report (or combined report) on internal control over financial reporting and on compliance with provisions of laws, regulations, contracts, and grant agreements that could have a material effect on the financial statements. This report is in addition to the opinion on the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Uniform Guidance, the auditor performing a single audit must express an opinion on the entity''s compliance with requirements that could have a direct and material effect on each major program. What type of opinion is this?',
 '["An opinion on the financial statements as a whole", "An opinion on compliance for each major program", "An opinion on the entity''s overall efficiency", "An advisory opinion with no legal effect"]'::jsonb,
 1,
 'The single audit requires the auditor to express an opinion on the entity''s compliance with the types of compliance requirements that could have a direct and material effect on each major program. This is a separate opinion from the financial statement opinion and is expressed for each major program individually, not in aggregate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Yellow Book, which of the following is a type of engagement that can be performed under Government Auditing Standards?',
 '["Only financial statement audits", "Only compliance audits", "Financial audits and tax return preparation", "Financial audits, attestation engagements, and performance audits"]'::jsonb,
 3,
 'Government Auditing Standards cover three types of engagements: financial audits (including financial statement audits), attestation engagements (examinations, reviews, and agreed-upon procedures), and performance audits (evaluating program effectiveness, economy, and efficiency). Tax return preparation is not a Yellow Book engagement type.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Yellow Book, auditors of government entities must report findings of fraud, noncompliance with laws and regulations, and significant deficiencies in internal control. These findings must be communicated to:',
 '["Only the entity''s management", "Those charged with governance and, in certain cases, to funding agencies and oversight bodies", "The general public through a press release", "Only the Government Accountability Office"]'::jsonb,
 1,
 'Yellow Book findings must be communicated to those charged with governance. Certain findings, particularly those involving fraud, illegal acts, or violations of contracts and grants, may also need to be reported to federal awarding agencies, pass-through entities, or other oversight bodies. The specific reporting requirements depend on the nature of the finding and applicable regulations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under Government Auditing Standards, a performance audit is designed to:',
 '["Express an opinion on the fairness of financial statements", "Compile financial data for management''s use", "Provide findings or conclusions based on an evaluation of sufficient, appropriate evidence against criteria, addressing program effectiveness, economy, or efficiency", "Perform agreed-upon procedures as requested by the client"]'::jsonb,
 2,
 'Performance audits under the Yellow Book evaluate government programs and activities for effectiveness (achieving intended results), economy (minimizing costs), and efficiency (maximizing output from resources). Unlike financial audits, performance audits do not express an opinion on financial statements but provide findings and conclusions based on evidence evaluated against established criteria.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Uniform Guidance, a ''Type A'' program is defined as a federal program with expenditures exceeding:',
 '["$250,000", "$500,000", "The larger of $750,000 or 3% of total federal awards expended (with a ceiling)", "10% of total federal awards expended"]'::jsonb,
 2,
 'Under the Uniform Guidance, a Type A program is one that exceeds the larger of $750,000 or 3% of total federal awards expended, subject to a ceiling of $25 million (or the amount specified for entities with high total federal expenditures). All other programs are classified as Type B. Type A programs are presumed to be high-risk and are candidates for major program testing.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under Government Auditing Standards, the concept of ''professional judgment'' requires auditors to:',
 '["Follow a rigid checklist of procedures without deviation", "Defer all significant decisions to the Government Accountability Office", "Apply only the minimum procedures necessary to reduce costs", "Apply their knowledge, skills, and experience to make informed decisions throughout the audit"]'::jsonb,
 3,
 'Professional judgment under the Yellow Book requires auditors to apply their training, knowledge, and experience in making informed decisions throughout the audit process. This includes decisions about planning, evidence gathering, evaluation of findings, and reporting. It requires critical thinking and the willingness to question and challenge information.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under Government Auditing Standards, which of the following circumstances would impair the auditor''s independence in a government audit?',
 '["The audit organization head is appointed by the officials of the audited entity and can be removed only for cause", "The auditor previously worked for the audited entity five years ago in a non-management position", "The auditor lives in the same city as the entity''s management", "The auditor has audited the entity for two consecutive years"]'::jsonb,
 0,
 'Under the Yellow Book, structural independence threats arise when the audit organization''s head is appointed by officials of the audited entity. However, independence is considered to be maintained if the head can be removed only for cause and the appointment is confirmed by a body independent of the audited entity. If the head can be removed at will, independence is impaired.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'The Yellow Book requires peer reviews of audit organizations that perform engagements under Government Auditing Standards. How frequently must these peer reviews occur?',
 '["Annually", "Every two years", "Every three years", "Every five years"]'::jsonb,
 2,
 'The Yellow Book requires audit organizations to undergo an external peer review at least once every three years. The peer review must be conducted by an independent organization and must evaluate whether the audit organization''s quality control system is designed and operating effectively to provide reasonable assurance of conformity with Government Auditing Standards.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Uniform Guidance, the Data Collection Form (SF-SAC) must be submitted to the Federal Audit Clearinghouse within how many days after receipt of the auditor''s report?',
 '["30 calendar days or within 9 months after the end of the audit period, whichever is earlier", "60 calendar days after the end of the fiscal year", "90 calendar days after the audit is completed", "120 calendar days after the end of the fiscal year"]'::jsonb,
 0,
 'The Uniform Guidance requires the reporting package (including the Data Collection Form) to be submitted to the Federal Audit Clearinghouse within 30 calendar days after receipt of the auditor''s report, or within 9 months after the end of the audit period, whichever is earlier. Timely submission ensures federal agencies can review audit results and address any findings.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'In a single audit, the auditor identifies a material instance of noncompliance with a federal program''s eligibility requirements. Under the Uniform Guidance, this finding should be reported in:',
 '["The schedule of expenditures of federal awards only", "A separate letter to the granting agency only", "The management letter only", "The schedule of findings and questioned costs"]'::jsonb,
 3,
 'Material instances of noncompliance with federal program requirements must be reported in the schedule of findings and questioned costs. This schedule is part of the single audit reporting package and includes findings related to the financial statements, findings and questioned costs for federal awards, and a summary of the auditor''s results. Each finding should include the condition, criteria, cause, effect, and recommendation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Yellow Book, which of the following is NOT a category of nonaudit service that requires evaluation of independence threats?',
 '["Preparing financial statements for the audited entity", "Providing IT support for the audited entity''s systems", "Providing training to entity personnel on new accounting standards", "Expressing an opinion on the entity''s financial statements"]'::jsonb,
 3,
 'Expressing an opinion on the financial statements is the audit itself — not a nonaudit service. Under the Yellow Book, nonaudit services such as financial statement preparation, IT support, and training require the auditor to evaluate threats to independence before performing them. Certain nonaudit services are prohibited if they constitute management functions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Uniform Guidance, an auditee that has met specific criteria for quality financial management may qualify as a ''low-risk auditee.'' Which of the following is a requirement for low-risk auditee status?',
 '["The entity must have total federal expenditures below $1 million", "The entity must be a state government", "The entity must have received unmodified opinions on the financial statements and single audit for the prior two years with no material weaknesses", "The entity must have fewer than 100 employees"]'::jsonb,
 2,
 'Low-risk auditee status requires, among other criteria, that the entity received unmodified opinions on the financial statements and compliance for major programs in the two most recent audit periods, with no material weaknesses in internal control. Low-risk auditees benefit from reduced audit coverage: only 20% of total federal expenditures must be tested as major programs, compared to 40% for other auditees.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'In a Yellow Book audit, the auditor discovers that a government entity used federal grant funds to purchase equipment not authorized under the grant agreement. Under Government Auditing Standards, this is an example of:',
 '["An efficiency finding", "An internal control deficiency only", "A financial statement misstatement only", "A compliance finding involving noncompliance with grant provisions"]'::jsonb,
 3,
 'Using federal funds for unauthorized purposes is a compliance finding — specifically, noncompliance with the terms and conditions of the grant agreement. This type of finding must be reported in the auditor''s report on compliance and internal control, and the questioned costs should be quantified and reported in the schedule of findings and questioned costs.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Uniform Guidance, which of the following types of compliance requirements must be tested for each major program?',
 '["Only financial reporting requirements", "Types of compliance requirements identified in the OMB Compliance Supplement that could have a direct and material effect on the program", "Only procurement and suspension/debarment requirements", "All 12 types of compliance requirements for every major program regardless of applicability"]'::jsonb,
 1,
 'The auditor must test compliance requirements that are applicable to each major program and that could have a direct and material effect. The OMB Compliance Supplement identifies up to 12 types of compliance requirements, but not all types apply to every program. The auditor determines which are applicable based on the Compliance Supplement, program-specific requirements, and the terms of the award.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under Government Auditing Standards, the Yellow Book requires the auditor to exercise ''professional skepticism'' throughout the government audit. This means the auditor should:',
 '["Maintain a questioning mind and critically assess audit evidence, neither assuming honesty nor dishonesty", "Assume that management is dishonest until proven otherwise", "Accept all management representations without further testing", "Focus skepticism only on areas where fraud has been previously identified"]'::jsonb,
 0,
 'Professional skepticism under the Yellow Book requires the auditor to maintain a questioning mind and critically assess audit evidence. The auditor should not assume management is either honest or dishonest but should remain alert to conditions that may indicate possible misstatement, fraud, or noncompliance. This applies throughout the entire audit, not just in previously problematic areas.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'A city government receives federal funds through three programs: Program A ($2,000,000), Program B ($500,000), and Program C ($300,000). Total federal expenditures are $2,800,000. Under the Uniform Guidance, which programs are Type A programs?',
 '["All three programs", "Programs A and B", "None — the city does not meet the single audit threshold", "Only Program A"]'::jsonb,
 3,
 'The Type A threshold is the larger of $750,000 or 3% of total federal expenditures ($2,800,000 x 3% = $84,000). Since $750,000 is larger than $84,000, the threshold is $750,000. Only Program A ($2,000,000) exceeds $750,000, making it the only Type A program. Programs B and C are Type B programs.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Yellow Book, when a government auditor provides nonaudit services such as preparing financial statements for the audited entity, the auditor must document:',
 '["Only the fee charged for the nonaudit services", "The threats to independence identified, the safeguards applied, and the rationale for concluding that independence is not impaired", "A blanket statement that no threats exist", "Nothing, because documentation is not required for nonaudit services"]'::jsonb,
 1,
 'The Yellow Book requires auditors to document their evaluation of threats to independence when performing nonaudit services. This documentation must include the specific threats identified, the safeguards applied to reduce the threats to an acceptable level, and the rationale supporting the conclusion that independence is not impaired. Without this documentation, the auditor cannot demonstrate compliance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Government Auditing Standards',
 'Under the Uniform Guidance, the schedule of expenditures of federal awards (SEFA) must include:',
 '["The name of the federal program, the CFDA number, the federal agency, and the amount expended for each program", "Only the total amount of federal awards received during the year", "Only programs with expenditures exceeding $750,000", "A list of all state and local grants received"]'::jsonb,
 0,
 'The SEFA must include the name of the federal agency, the program name, the Assistance Listing (formerly CFDA) number, and the amount of federal expenditures for each program. It must cover all federal awards, not just major programs, and should reconcile to the entity''s financial statements. The SEFA provides the basis for identifying Type A and Type B programs.',
 'medium');
-- AUD Chunk 2: Audit Planning, Risk Assessment, Internal Controls

-- =============================================================================
-- Audit Planning (48 questions: 14 easy, 24 medium, 10 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is developing the overall audit strategy for a new engagement. Which of the following is the primary purpose of the overall audit strategy?',
 '["To communicate the audit approach to the client''s audit committee", "To evaluate the results of substantive testing procedures", "To document detailed audit procedures for each account balance", "To set the scope, timing, and direction of the audit and guide the development of the audit plan"]'::jsonb,
 3,
 'The overall audit strategy sets the scope, timing, and direction of the audit and guides the development of the more detailed audit plan. It addresses the broad approach rather than specific procedures. While communication with those charged with governance is important, it is not the primary purpose of the strategy.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'During planning, an auditor determines overall materiality to be $500,000 for the financial statements as a whole. Performance materiality is most likely set at which of the following amounts?',
 '["$500,000", "$750,000", "$375,000", "$50,000"]'::jsonb,
 2,
 'Performance materiality is set at an amount less than overall materiality to reduce the probability that the aggregate of uncorrected and undetected misstatements exceeds overall materiality. It is typically set at 50-75% of overall materiality. $375,000 represents 75% of $500,000, which falls within the typical range.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'Which of the following is a precondition for an audit that the auditor must evaluate before accepting an engagement?',
 '["Management acknowledges its responsibility for the preparation and fair presentation of the financial statements", "The client has agreed to pay the proposed audit fee", "The predecessor auditor has issued an unmodified opinion", "The entity has been in operation for at least one full fiscal year"]'::jsonb,
 0,
 'AU-C 210 requires the auditor to establish that preconditions for an audit are present, including management''s acknowledgment of its responsibility for preparing and fairly presenting financial statements in accordance with the applicable framework and for internal control. Fee agreements, predecessor opinions, and entity age are not preconditions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An engagement letter for an audit of financial statements should include all of the following EXCEPT:',
 '["The objective and scope of the audit", "The responsibilities of the auditor", "A guarantee that all fraud will be detected", "The responsibilities of management"]'::jsonb,
 2,
 'An engagement letter should never include a guarantee that all fraud will be detected because an audit provides reasonable, not absolute, assurance. The engagement letter must include the audit objective and scope, auditor responsibilities, and management responsibilities as required by AU-C 210.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'When developing the audit plan, the auditor should include which of the following?',
 '["The nature, timing, and extent of planned risk assessment procedures", "A prediction of the audit opinion to be issued", "The exact number of hours each staff member will work", "The client''s projected earnings for the next fiscal year"]'::jsonb,
 0,
 'The audit plan is more detailed than the overall audit strategy and includes the nature, timing, and extent of planned risk assessment procedures, further audit procedures at the assertion level, and other planned procedures. It does not predict outcomes or include operational budgeting details.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor determines that a benchmark of 5% of income before taxes is appropriate for calculating overall materiality. If income before taxes is $2,000,000, what is overall materiality?',
 '["$10,000", "$50,000", "$100,000", "$200,000"]'::jsonb,
 2,
 'Using a benchmark of 5% of income before taxes: $2,000,000 x 5% = $100,000. Common benchmarks include 5% of income before taxes for profit-oriented entities, 0.5-1% of total revenues, and 1-2% of total assets. The auditor exercises professional judgment in selecting the appropriate benchmark.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'Tolerable misstatement is applied at which level during audit planning?',
 '["The engagement letter level", "The financial statement level only", "The management representation letter level", "The individual account balance or class of transactions level"]'::jsonb,
 3,
 'Tolerable misstatement is applied at the individual account balance or class of transactions level. It represents the application of performance materiality to a particular sampling procedure and helps the auditor determine sample sizes and evaluate results for individual accounts rather than the financial statements as a whole.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'Which of the following best describes the relationship between overall materiality and performance materiality?',
 '["Performance materiality is always equal to overall materiality", "Performance materiality is set higher than overall materiality to provide a safety margin", "Performance materiality is set lower than overall materiality to reduce the risk of undetected aggregate misstatements", "Performance materiality and overall materiality are unrelated concepts"]'::jsonb,
 2,
 'Performance materiality is set lower than overall materiality to reduce the probability that the aggregate of uncorrected and undetected misstatements exceeds materiality for the financial statements as a whole. This provides a buffer that accounts for the possibility of undetected misstatements across multiple accounts.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is planning an audit of a company that uses a specialist to value complex derivatives. Under AU-C 620, the auditor should:',
 '["Decline the engagement because specialists introduce too much risk", "Accept the specialist''s findings without further evaluation", "Evaluate the competence, capabilities, and objectivity of the specialist", "Require the specialist to be independent of both the auditor and the client"]'::jsonb,
 2,
 'AU-C 620 requires the auditor to evaluate the competence, capabilities, and objectivity of the auditor''s specialist. The auditor cannot simply accept findings without evaluation, and the specialist does not need to be independent of the auditor. Using a specialist does not preclude accepting the engagement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'During audit planning, the auditor should obtain an understanding of the entity''s internal audit function primarily to:',
 '["Establish the audit fee based on internal audit coverage", "Evaluate whether the entity needs an internal audit function", "Replace external audit procedures with internal audit work", "Determine whether the internal audit function''s work can be used to modify the nature, timing, or extent of audit procedures"]'::jsonb,
 3,
 'The auditor evaluates the internal audit function during planning to determine whether its work can be used to modify the nature, timing, or extent of external audit procedures. This assessment considers the internal auditors'' competence, objectivity, and systematic approach. The external auditor cannot replace their own procedures entirely with internal audit work.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'When planning a group audit, the group engagement partner is responsible for:',
 '["Directing, supervising, and reviewing the work performed on the group audit", "Performing all audit procedures for every component", "Allowing component auditors to set their own materiality levels independently", "Delegating all communication with group management to component auditors"]'::jsonb,
 0,
 'Under AU-C 600, the group engagement partner is responsible for the direction, supervision, and performance of the group audit engagement. This includes setting group materiality, determining component materiality, evaluating component auditor work, and communicating with group management. The partner cannot delegate these oversight responsibilities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is required to establish an understanding with the client regarding the terms of the audit engagement. This understanding is typically documented in:',
 '["The management representation letter", "The engagement letter", "The auditor''s report", "The audit planning memorandum"]'::jsonb,
 1,
 'The engagement letter documents the agreed-upon terms of the audit engagement, including the audit objective, management and auditor responsibilities, the applicable financial reporting framework, and expected form of reports. The management representation letter is obtained at the end of the audit, not during planning.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'Which of the following factors would most likely cause an auditor to increase overall materiality?',
 '["The entity is subject to extensive regulatory oversight", "The entity has experienced significant employee turnover in accounting", "The entity''s total assets have significantly increased compared to the prior year", "The entity is a first-year audit client"]'::jsonb,
 2,
 'Materiality is typically calculated as a percentage of a financial benchmark. When total assets significantly increase, the calculated materiality amount would increase proportionally. First-year engagements, turnover, and regulatory oversight might cause the auditor to use a lower percentage but would not directly increase the benchmark-based calculation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor discovers during planning that the entity changed its revenue recognition policy. The auditor should consider this change primarily when:',
 '["Determining audit fees for the current year engagement", "Assessing the risks of material misstatement and planning the nature and extent of audit procedures", "Deciding whether to withdraw from the engagement", "Preparing the engagement letter for the following year"]'::jsonb,
 1,
 'A change in revenue recognition policy is a significant matter that affects the auditor''s risk assessment and planned audit procedures. The auditor must evaluate whether the change is appropriate, properly applied, and adequately disclosed. This directly impacts the nature and extent of substantive procedures over revenue.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is planning the audit of a company with operations in three countries. When determining the overall audit strategy, the auditor should consider:',
 '["The characteristics of the engagement, including the need for component auditors in foreign locations", "Only the domestic operations since foreign operations are immaterial by definition", "Having the client''s internal audit department audit the foreign operations", "Deferring the foreign operations audit to a subsequent year"]'::jsonb,
 0,
 'When developing the overall audit strategy, the auditor considers the characteristics of the engagement, including the entity''s organizational structure and geographic locations. For multinational operations, this includes evaluating the need for component auditors, setting component materiality, and determining the type of work to be performed at each location.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'During the planning phase, an auditor identifies that the entity uses a service organization for payroll processing. The auditor should:',
 '["Automatically request a SOC 1 Type 2 report from the service organization", "Require the entity to bring payroll processing in-house before accepting the engagement", "Obtain an understanding of how the service organization''s services affect the entity''s internal control relevant to the audit", "Ignore the service organization because payroll is not a significant account"]'::jsonb,
 2,
 'Under AU-C 402, the auditor must obtain an understanding of how the service organization''s services affect the entity''s internal control relevant to the audit. This understanding helps the auditor identify and assess risks of material misstatement. While a SOC report may be useful, it is not automatically required in all cases.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor sets overall materiality at $200,000 and performance materiality at $150,000. During the audit, the auditor accumulates identified misstatements totaling $140,000. The auditor should:',
 '["Issue an unmodified opinion because the misstatements are below overall materiality", "Evaluate whether uncorrected misstatements, individually or in aggregate, are material considering both quantitative and qualitative factors", "Immediately issue a qualified opinion because the misstatements exceed performance materiality", "Request management to adjust all misstatements regardless of their nature"]'::jsonb,
 1,
 'While the accumulated misstatements ($140,000) are below overall materiality ($200,000), they approach performance materiality ($150,000). The auditor must evaluate whether uncorrected misstatements are material considering both quantitative and qualitative factors, as the proximity to materiality thresholds increases the risk that total misstatements could be material.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'When an auditor uses the work of an auditor''s specialist, the auditor''s report should:',
 '["Disclaim an opinion due to the involvement of a specialist", "Include the specialist''s report as an appendix", "Always reference the specialist to share responsibility for the opinion", "Not reference the specialist when issuing an unmodified opinion"]'::jsonb,
 3,
 'When issuing an unmodified opinion, the auditor should not reference the specialist because doing so might be misunderstood as a qualification or a division of responsibility. The auditor is solely responsible for the opinion. Reference to a specialist is only appropriate in limited circumstances, such as when issuing a modified opinion to explain the basis for modification.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is planning an audit and needs to determine materiality for a nonprofit organization. Which benchmark is most appropriate?',
 '["3% of earnings per share", "10% of stockholders'' equity", "5% of net income", "1% of total revenues or total expenses"]'::jsonb,
 3,
 'For nonprofit organizations, total revenues or total expenses are commonly used benchmarks because these entities do not have traditional profit metrics. Net income and stockholders'' equity are less meaningful for nonprofits. The auditor typically uses 1% of total revenues or total expenses as the starting point for materiality calculations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'During the planning of a group audit, the group engagement team determines component materiality. Component materiality should be:',
 '["Determined solely by the component auditor without input from the group engagement team", "Equal to the group materiality for all components", "Set at an amount lower than group materiality to account for aggregation risk", "Based only on the component''s standalone financial statements without regard to group materiality"]'::jsonb,
 2,
 'Component materiality must be set lower than group materiality to reduce the risk that the aggregate of detected and undetected misstatements in the components exceeds group materiality. The group engagement team sets component materiality, not the component auditor independently, and it must consider the group context, not just standalone financials.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is evaluating whether to use the work of the entity''s internal auditors. Which of the following factors is most important in making this determination?',
 '["The competence and objectivity of the internal auditors", "The internal audit department''s budget relative to the external audit fee", "The number of years the internal audit department has been established", "Whether the internal auditors use the same audit software as the external auditors"]'::jsonb,
 0,
 'Under AU-C 610, the external auditor evaluates the competence and objectivity of internal auditors when determining whether to use their work. Competence considers qualifications, experience, and quality of work. Objectivity considers organizational status and policies that support independence. Budget, software, and department age are not primary evaluation criteria.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'Which of the following procedures would an auditor most likely perform during the planning phase of an audit?',
 '["Counting inventory at the client''s warehouse", "Confirming accounts receivable balances with customers", "Examining subsequent cash receipts for accounts receivable", "Performing analytical procedures to identify unusual trends or relationships"]'::jsonb,
 3,
 'Analytical procedures are required during the planning phase under AU-C 520 to help the auditor develop expectations, identify areas of potential risk, and plan the nature and extent of other audit procedures. Confirmations, inventory counts, and subsequent receipt testing are substantive procedures performed during fieldwork, not planning.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'A successor auditor is required to communicate with the predecessor auditor before accepting an engagement. The primary purpose of this communication is to:',
 '["Obtain the predecessor''s working papers", "Determine the audit fee charged by the predecessor", "Obtain information that may bear on the acceptance decision, such as disagreements with management or integrity concerns", "Transfer responsibility for the prior year audit from the predecessor to the successor"]'::jsonb,
 2,
 'AU-C 210 and AU-C 510 require the successor auditor to communicate with the predecessor to obtain information bearing on acceptance, including the reasons for the change, disagreements with management about accounting policies or audit procedures, and any concerns about management integrity. This communication requires client permission.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is planning an audit of a company that has experienced rapid growth through acquisitions. Which of the following planning considerations is most relevant?',
 '["Eliminating the need for materiality calculations due to the growth", "Relying entirely on the acquired entities'' prior auditors", "Evaluating the accounting for business combinations, including goodwill and fair value measurements", "Reducing the audit scope because acquisitions simplify the financial statements"]'::jsonb,
 2,
 'Rapid growth through acquisitions significantly impacts audit planning because business combinations involve complex accounting for purchase price allocation, goodwill, fair value measurements, and consolidation. The auditor must plan procedures to address these high-risk areas and cannot rely solely on acquired entities'' prior auditors.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'When planning an audit, the auditor is required to consider the entity''s related party relationships and transactions primarily because:',
 '["GAAP prohibits all related party transactions", "The auditor must approve all related party transactions before they occur", "Related party transactions are always fraudulent", "Related party transactions may not be conducted at arm''s length and could result in material misstatement"]'::jsonb,
 3,
 'Related party transactions may not be conducted at arm''s length prices or terms, which could result in material misstatement or inadequate disclosure. The auditor must understand these relationships to assess risk, not because they are inherently fraudulent or prohibited. The auditor does not approve transactions but evaluates their accounting treatment and disclosure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is determining materiality for a company that reported a net loss in the current year. Which benchmark would be most appropriate?',
 '["1% of total revenues", "5% of the net loss", "50% of the net loss", "5% of the change in net loss from the prior year"]'::jsonb,
 0,
 'When an entity reports a net loss, using a percentage of net income is not meaningful because it would produce a negative materiality. In such cases, the auditor selects an alternative benchmark such as total revenues, total assets, or total expenses. One percent of total revenues is a commonly used benchmark when income-based measures are not appropriate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'During audit planning, the engagement partner discusses with the engagement team the susceptibility of the entity''s financial statements to material misstatement. This discussion is required by:',
 '["AU-C 265 (Communicating Internal Control Matters)", "AU-C 300 (Planning an Audit)", "AU-C 240 (Consideration of Fraud)", "AU-C 700 (Forming an Opinion)"]'::jsonb,
 2,
 'AU-C 240 requires the engagement partner and other key members of the engagement team to discuss the susceptibility of the entity''s financial statements to material misstatement due to fraud. This brainstorming session is a critical fraud risk assessment procedure that must occur during planning to share insights about fraud risks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor determines that a significant component in a group audit will be audited by a component auditor in another country. The group engagement team should:',
 '["Accept the component auditor''s work without review since they are licensed in their jurisdiction", "Evaluate the component auditor''s competence, determine the work to be performed, and establish communication requirements", "Decline the group audit engagement because a component auditor is involved", "Issue a separate auditor''s report for the component and a separate report for the group"]'::jsonb,
 1,
 'Under AU-C 600, the group engagement team must evaluate the component auditor''s professional competence, determine the type and extent of work to be performed on the component, and establish requirements for communication between the group and component auditors. Simply accepting work without review or declining the engagement is not appropriate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'Which of the following best describes the auditor''s responsibility regarding materiality during the course of the audit?',
 '["Materiality can only be increased, never decreased, during the audit", "Materiality revisions require client approval", "The auditor should revise materiality if information comes to the auditor''s attention that would have caused a different amount to be established initially", "Materiality is set during planning and cannot be changed"]'::jsonb,
 2,
 'AU-C 320 requires the auditor to revise materiality for the financial statements as a whole if information comes to the auditor''s attention during the audit that would have caused a different amount to be established initially. Materiality can be revised upward or downward, and client approval is not required for such revisions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor decides to use the work of an internal auditor to obtain audit evidence about the operating effectiveness of certain controls. The external auditor must:',
 '["Perform sufficient audit procedures on the body of work of the internal auditors to evaluate the quality and effectiveness of their work", "Reperform all of the internal auditor''s work", "Obtain the internal auditor''s professional license number", "Issue a joint report with the internal auditor"]'::jsonb,
 0,
 'When using the work of internal auditors, the external auditor must evaluate the quality of the internal auditors'' work by performing procedures on the body of their work. This may include reperforming some procedures, examining similar items, or testing some items already tested by internal audit. Complete reperformance is not required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'During planning, the auditor identifies that the client uses a management specialist to determine the fair value of investment properties. The auditor should:',
 '["Refuse to audit the investment property account", "Hire a separate specialist to redo the entire valuation", "Treat the specialist''s work as audit evidence without further evaluation", "Evaluate the competence, capabilities, and objectivity of management''s specialist and assess the appropriateness of the specialist''s work as audit evidence"]'::jsonb,
 3,
 'Under AU-C 500, when management uses a specialist, the auditor must evaluate the specialist''s competence, capabilities, and objectivity, and assess whether the specialist''s work is appropriate audit evidence. The auditor considers the source of data, assumptions used, and methods employed. Automatic acceptance or wholesale rejection are not appropriate responses.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An entity has changed its accounting information system since the prior year audit. During planning, the auditor should:',
 '["Obtain a sufficient understanding of the new system, including how it affects the entity''s internal control and the processing of transactions", "Rely on the prior year''s understanding of IT systems since the controls should be similar", "Withdraw from the engagement because system changes increase risk beyond acceptable levels", "Defer the audit until the new system has been in place for a full year"]'::jsonb,
 0,
 'When an entity changes its accounting information system, the auditor must obtain a new understanding of the system, including how it affects internal control, transaction processing, and financial reporting. Prior year understanding is no longer sufficient. System changes do not require withdrawal but do require additional planning procedures to address new risks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'When planning a recurring audit engagement, the auditor should:',
 '["Reduce planning procedures since the auditor already understands the entity", "Eliminate risk assessment procedures for areas that were low risk in the prior year", "Update the overall audit strategy and audit plan to reflect changes in circumstances", "Use the same audit plan from the prior year without modification"]'::jsonb,
 2,
 'Even for recurring engagements, the auditor must update the overall audit strategy and audit plan to reflect changes in the entity''s business, industry, regulatory environment, and prior audit findings. Prior year plans serve as a starting point but must be modified to address current-year conditions and newly identified risks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is planning the audit of a company with significant estimates, including warranty reserves and pension obligations. The auditor''s planning should include:',
 '["Identifying areas involving significant estimates and planning procedures to evaluate the reasonableness of those estimates", "Disclosing to users that estimates cannot be audited", "Limiting procedures to recalculation of management''s estimates", "Accepting management''s estimates as presented since management has the most knowledge"]'::jsonb,
 3,
 'During planning, the auditor must identify areas involving significant accounting estimates and plan procedures to evaluate their reasonableness. This includes understanding management''s process, evaluating assumptions, and considering the need for an auditor''s specialist. Estimates are auditable, and the auditor cannot simply accept management''s figures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'In a group audit, the group engagement team sets component materiality for a significant subsidiary at $75,000. The component auditor identifies misstatements totaling $60,000 at the component. The component auditor should:',
 '["Communicate all identified misstatements to the group engagement team on a timely basis", "Ignore the misstatements because they are below component materiality", "Only communicate misstatements if they exceed group materiality", "Correct the misstatements without informing the group engagement team"]'::jsonb,
 0,
 'Component auditors must communicate identified misstatements to the group engagement team on a timely basis so the group team can evaluate whether the aggregate of misstatements across all components is material to the group financial statements. Even misstatements below component materiality may be significant in aggregate at the group level.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'The auditor''s assessment of materiality may differ for different financial statements. Which of the following statements is correct?',
 '["Materiality only applies to the balance sheet", "Materiality levels for different financial statements must be approved by the audit committee", "The same materiality level must be used for all financial statements", "Different materiality levels may be appropriate for the income statement, balance sheet, and cash flow statement based on user needs"]'::jsonb,
 3,
 'The auditor may determine that different materiality levels are appropriate for different financial statements. For example, users may be more sensitive to misstatements in the income statement than the balance sheet, requiring a lower materiality for income statement items. The auditor uses the lowest applicable materiality to drive audit procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor plans to use a specialist to assist with the valuation of complex financial instruments. Under AU-C 620, the auditor should consider all of the following EXCEPT:',
 '["The specialist''s professional certification and experience", "The specialist''s understanding of the auditing standards", "The specialist''s relationship to the client", "The nature of the work to be performed by the specialist"]'::jsonb,
 1,
 'While the auditor evaluates the specialist''s competence, capabilities, objectivity, and the nature of work to be performed, the specialist is not required to understand auditing standards. The specialist''s expertise is in their field (e.g., valuation), not auditing. The auditor is responsible for integrating the specialist''s findings into the audit.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is planning the first-year audit of a company that was previously audited by another firm. The successor auditor has been unable to communicate with the predecessor auditor because the predecessor firm has dissolved. The successor auditor should:',
 '["Accept the engagement but consider alternative procedures to obtain information normally obtained from the predecessor, such as reviewing prior year financial statements and regulatory filings", "Decline the engagement because communication with the predecessor is mandatory", "Accept the engagement without any additional procedures since predecessor communication is optional", "Report the predecessor firm to the state board of accountancy"]'::jsonb,
 0,
 'While communication with the predecessor is ordinarily required, circumstances may prevent it (e.g., firm dissolution). The successor auditor should consider alternative procedures such as reviewing prior year financial statements, SEC filings, or regulatory reports, and evaluating whether sufficient information can be obtained to accept the engagement and plan the audit.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'During planning, the auditor determines that the entity has a complex organizational structure with numerous intercompany transactions. Which of the following audit planning procedures is most critical?',
 '["Mapping the organizational structure, identifying significant intercompany transactions, and assessing the risk of misstatement related to elimination entries", "Accepting management''s consolidation schedules without testing", "Auditing only the parent company''s standalone financial statements", "Reducing materiality to zero for intercompany transactions"]'::jsonb,
 0,
 'Complex organizational structures with numerous intercompany transactions require the auditor to map the structure, identify significant intercompany balances and transactions, and assess the risk that elimination entries may be misstated or incomplete. This is critical because improper eliminations can materially misstate consolidated financial statements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is planning an audit where the entity has significant operations in a jurisdiction with known corruption and bribery risks. During planning, the auditor should:',
 '["Consider the implications for fraud risk assessment, evaluate management''s anti-corruption compliance programs, and plan procedures to address FCPA or similar regulatory requirements", "Ignore the jurisdiction-specific risks if the entity has a code of ethics", "Limit the audit to domestic operations only", "Refuse the engagement because jurisdictional risk is too high"]'::jsonb,
 0,
 'Operations in high-corruption jurisdictions require the auditor to consider jurisdiction-specific fraud risks during planning. This includes evaluating management''s anti-corruption compliance programs, assessing the risk of violations of the Foreign Corrupt Practices Act or similar laws, and planning procedures to address bribery and corruption risks in those locations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'The engagement team is planning an audit of a publicly traded company. During the planning discussion, a senior associate suggests that the company''s complex revenue arrangements with multiple performance obligations represent a significant risk. The engagement partner should:',
 '["Dismiss the concern because revenue recognition is always a presumed risk", "Evaluate the associate''s concern in light of the specific facts and circumstances, including the complexity of the arrangements, and determine the appropriate audit response", "Remove the associate from the engagement for questioning the partner''s judgment", "Immediately issue a going concern opinion"]'::jsonb,
 1,
 'While revenue recognition is a presumed fraud risk under AU-C 240, the specific complexity of multiple performance obligations warrants separate evaluation as a significant risk. The engagement partner should evaluate the facts, consider whether additional procedures are needed beyond the presumed fraud risk response, and document the assessment and planned response.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor discovers during planning that the entity recently restated its prior year financial statements due to an error in inventory valuation. This finding most directly affects the auditor''s:',
 '["Decision to change the financial reporting framework", "Requirement to report the restatement to regulatory authorities", "Decision to set the audit fee higher than the prior year", "Assessment of risk of material misstatement and the planned nature, timing, and extent of procedures for inventory"]'::jsonb,
 3,
 'A prior year restatement due to inventory valuation errors directly impacts the auditor''s risk assessment for the current year. The auditor would likely assess a higher risk of material misstatement for inventory, plan more extensive substantive procedures, potentially lower materiality for inventory, and evaluate whether the underlying cause of the error has been remediated.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'In a group audit involving components in multiple regulatory jurisdictions, the group engagement partner must consider the impact of differing legal and regulatory requirements on the audit. Which of the following represents the most significant challenge?',
 '["Time zone differences between component locations", "Differences in financial reporting frameworks, auditing standards, and regulatory requirements across jurisdictions that may affect the nature and extent of audit procedures", "The cost of travel to component locations", "Language differences in audit documentation"]'::jsonb,
 1,
 'The most significant challenge in multi-jurisdiction group audits involves differences in financial reporting frameworks, auditing standards, and regulatory requirements. These differences can affect the nature and extent of work performed by component auditors, the type of report issued, and the need for reconciling procedures to ensure consistency across the group.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor has been engaged to audit a company for the first time. The company has significant deferred tax assets on its balance sheet. During planning, the auditor should specifically consider:',
 '["The realizability of deferred tax assets, including the sufficiency of future taxable income, the nature of temporary differences, and any valuation allowance considerations", "Accepting management''s assertion that the deferred tax assets are fully realizable", "Requiring the company to write off all deferred tax assets as a condition of engagement acceptance", "Ignoring deferred tax assets because they are non-cash items"]'::jsonb,
 0,
 'Deferred tax assets require careful evaluation of realizability, which involves significant judgment. The auditor must plan procedures to assess whether sufficient future taxable income exists, evaluate the nature and timing of temporary differences, consider tax planning strategies, and determine whether a valuation allowance is needed. This is especially important for first-year audits.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'During planning, the auditor learns that the entity is involved in a significant lawsuit that could result in a material loss. The auditor should plan to:',
 '["Obtain an understanding of the nature of the claim, evaluate management''s assessment of the probable outcome, and plan procedures including inquiry of the entity''s legal counsel", "Ignore the lawsuit because litigation outcomes are inherently uncertain", "Immediately include a going concern paragraph in the audit report", "Advise the client to settle the lawsuit before the audit begins"]'::jsonb,
 0,
 'Significant pending litigation represents a contingent liability that requires the auditor to understand the claim, evaluate management''s assessment of probable outcomes, and plan procedures to gather sufficient evidence. This includes sending a letter of audit inquiry to the entity''s legal counsel and evaluating whether proper accrual and disclosure have been made.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is evaluating whether to accept a new audit engagement. The prospective client refuses to allow the auditor to communicate with the predecessor auditor. The auditor should:',
 '["Accept the engagement since predecessor communication is merely a courtesy", "Consider this refusal as a scope limitation that may affect the decision to accept the engagement, and evaluate the implications for the integrity of management", "Accept the engagement but plan to issue a qualified opinion", "Report the prospective client to regulatory authorities"]'::jsonb,
 1,
 'A client''s refusal to permit communication with the predecessor auditor is a significant red flag that should be carefully evaluated. While it is management''s right to restrict such communication, the auditor should consider the implications regarding management integrity and whether this limitation affects the ability to obtain sufficient appropriate audit evidence.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'When establishing the overall audit strategy, the auditor identifies that the entity has undergone a major restructuring, including plant closures and employee layoffs. The auditor should evaluate how this affects:',
 '["Only the going concern assessment", "Only the inventory valuation", "Only the staffing plan for the audit engagement", "The risk assessment across multiple financial statement areas, including asset impairment, restructuring charges, employee benefit obligations, and the adequacy of related disclosures"]'::jsonb,
 3,
 'Major restructuring affects multiple financial statement areas and requires comprehensive risk assessment. The auditor must evaluate asset impairment, restructuring charge estimates, employee severance and benefit obligations, lease termination costs, disclosure adequacy, and potential going concern implications. Limiting the assessment to one area would be insufficient.',
 'hard');

-- =============================================================================
-- Risk Assessment (48 questions: 14 easy, 24 medium, 10 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Under AU-C 315, the auditor is required to obtain an understanding of the entity and its environment to:',
 '["Guarantee the detection of all errors and fraud", "Determine the audit fee", "Identify and assess the risks of material misstatement", "Prepare the entity''s financial statements"]'::jsonb,
 2,
 'AU-C 315 requires the auditor to obtain an understanding of the entity and its environment, including its internal control, to identify and assess the risks of material misstatement of the financial statements, whether due to fraud or error. This understanding forms the basis for designing appropriate audit responses.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Which of the following is a component of audit risk?',
 '["Inherent risk", "Engagement risk", "Reputation risk", "Business risk"]'::jsonb,
 0,
 'Audit risk consists of three components: inherent risk, control risk, and detection risk. Inherent risk is the susceptibility of an assertion to material misstatement before considering controls. Engagement risk, reputation risk, and business risk are relevant to the auditor but are not components of the audit risk model.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Control risk is best defined as the risk that:',
 '["A material misstatement will occur due to the nature of the account balance", "The auditor will issue an inappropriate opinion", "The auditor''s procedures will fail to detect a material misstatement", "A material misstatement will not be prevented or detected on a timely basis by the entity''s internal control"]'::jsonb,
 3,
 'Control risk is the risk that a material misstatement that could occur in an assertion will not be prevented, or detected and corrected, on a timely basis by the entity''s internal control. It is one of the three components of audit risk, along with inherent risk and detection risk.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Detection risk is the risk that:',
 '["Material misstatements exist in the financial statements", "The entity''s controls fail to prevent misstatements", "The auditor''s procedures will not detect a material misstatement that exists", "Management will intentionally misstate the financial statements"]'::jsonb,
 2,
 'Detection risk is the risk that the procedures performed by the auditor to reduce audit risk to an acceptably low level will not detect a misstatement that exists and that could be material. Unlike inherent risk and control risk, detection risk is directly controlled by the auditor through the nature, timing, and extent of audit procedures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Which of the following is an inherent risk factor that would increase the risk of material misstatement?',
 '["Strong management oversight of the accounting function", "Simple, routine transactions", "Significant estimation uncertainty in accounting balances", "Experienced and competent accounting staff"]'::jsonb,
 2,
 'Significant estimation uncertainty is an inherent risk factor because estimates involve subjectivity and judgment, making them more susceptible to misstatement. Strong management oversight, simple transactions, and competent staff tend to reduce rather than increase inherent risk. Estimation uncertainty is specifically identified as an inherent risk factor in AU-C 315.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'According to AU-C 240, the auditor should presume that there is a risk of material misstatement due to fraud related to:',
 '["Depreciation calculations", "Cash disbursements", "Inventory valuation", "Revenue recognition"]'::jsonb,
 3,
 'AU-C 240 establishes a presumption that there are risks of fraud in revenue recognition. The auditor must treat revenue recognition as a presumed fraud risk unless the auditor determines specific conditions exist that would overcome the presumption. This presumption recognizes that revenue is often the area most susceptible to fraudulent financial reporting.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'The risk of management override of controls is:',
 '["Present in all entities and should always be treated as a significant risk", "Only relevant for publicly traded companies", "Eliminated when the entity has an audit committee", "Only a concern when the entity has weak internal controls"]'::jsonb,
 0,
 'AU-C 240 states that management is in a unique position to override controls, and this risk is present in all entities regardless of their size, industry, or control environment. Management override is always treated as a significant risk because management can direct other employees to record fraudulent entries or override controls designed to prevent fraud.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'A significant risk is a risk of material misstatement that:',
 '["Cannot be addressed through substantive procedures", "Is always related to fraud", "Requires special audit consideration based on the auditor''s judgment", "Is identified by the client''s management"]'::jsonb,
 2,
 'A significant risk is an identified risk of material misstatement that, in the auditor''s judgment, requires special audit consideration. Significant risks are not always fraud-related; they can arise from estimation uncertainty, related party transactions, or unusual circumstances. They require the auditor to obtain an understanding of the entity''s controls specific to the risk.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Which of the following best describes the relationship between inherent risk and control risk?',
 '["Inherent risk is always assessed after control risk", "They are the same concept viewed from different perspectives", "Control risk is always higher than inherent risk", "They combine to form the risk of material misstatement at the assertion level"]'::jsonb,
 3,
 'Inherent risk and control risk combine to form the risk of material misstatement at the assertion level. Inherent risk considers the susceptibility of an assertion to misstatement before considering controls, while control risk considers the effectiveness of controls in preventing or detecting such misstatements. Together, they represent the entity''s risk before audit procedures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When assessing the risk of material misstatement, the auditor considers risks at which levels?',
 '["Only at the financial statement level", "Only at the assertion level for classes of transactions and account balances", "At both the financial statement level and the assertion level", "Only at the engagement level"]'::jsonb,
 2,
 'The auditor assesses the risk of material misstatement at two levels: the financial statement level (pervasive risks that affect many assertions) and the assertion level (specific risks related to particular classes of transactions, account balances, and disclosures). Both levels are necessary for a comprehensive risk assessment that drives appropriate audit responses.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor identifies the risk of material misstatement at the financial statement level. This type of risk most likely:',
 '["Relates pervasively to the financial statements as a whole and potentially affects many assertions", "Relates specifically to a single account balance", "Can be addressed through a single substantive test", "Is always caused by fraud"]'::jsonb,
 0,
 'Financial statement level risks relate pervasively to the financial statements as a whole and potentially affect many assertions. Examples include a weak control environment, management integrity concerns, or significant industry downturns. These risks require overall responses such as assigning more experienced staff, increased supervision, or incorporating additional unpredictability into procedures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'The fraud risk triangle includes which of the following three conditions?',
 '["Opportunity, rationalization, and incentive/pressure", "Planning, execution, and concealment", "Detection, prevention, and correction", "Authorization, recording, and custody"]'::jsonb,
 0,
 'The fraud risk triangle describes three conditions generally present when fraud occurs: incentive or pressure to commit fraud, an opportunity to carry out the fraud, and an attitude or rationalization that justifies the fraudulent action. The auditor considers these conditions when assessing fraud risk during the risk assessment process.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When the auditor assesses inherent risk as high for a particular assertion, the auditor should respond by:',
 '["Relying entirely on internal controls", "Issuing a disclaimer of opinion", "Decreasing the extent of substantive procedures", "Designing more effective substantive procedures or performing them closer to year-end"]'::jsonb,
 3,
 'When inherent risk is assessed as high, the auditor must design more effective substantive procedures to reduce detection risk to an acceptably low level. This may include performing procedures closer to period-end, using larger sample sizes, employing more experienced staff, or selecting more effective types of procedures such as external confirmations rather than analytical procedures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Which of the following is an appropriate auditor response to an assessed risk of material misstatement due to fraud?',
 '["Reducing the audit scope to minimize costs", "Incorporating an element of unpredictability in the selection of auditing procedures", "Informing the client''s competitors about the suspected fraud", "Resigning from the engagement immediately"]'::jsonb,
 1,
 'AU-C 240 requires the auditor to incorporate an element of unpredictability in the selection of auditing procedures to address fraud risk. This may include performing procedures at unexpected times, at locations not previously announced, using different sampling methods, or applying different approaches to areas not typically tested. This makes it harder for those committing fraud to predict audit coverage.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor is assessing the risk of material misstatement for a manufacturing company''s inventory account. Which of the following factors would most likely increase the assessed inherent risk?',
 '["Inventory represents a small percentage of total assets", "The company has an experienced and competent warehouse manager", "Inventory consists of high-value raw materials subject to significant price fluctuations and obsolescence risk", "The company uses a perpetual inventory system with regular cycle counts"]'::jsonb,
 2,
 'High-value raw materials subject to price fluctuations and obsolescence risk increase inherent risk because these factors introduce estimation uncertainty and greater susceptibility to misstatement. Perpetual inventory systems, experienced staff, and low materiality relative to total assets are factors that would tend to reduce risk rather than increase it.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When responding to assessed risks at the financial statement level, the auditor may:',
 '["Assign more experienced staff to the engagement, increase supervision, and incorporate unpredictability", "Only increase sample sizes for substantive tests", "Eliminate analytical procedures from the audit", "Reduce the number of assertions tested"]'::jsonb,
 0,
 'Financial statement level risks require overall responses because they affect the audit as a whole. Appropriate responses include assigning more experienced staff, increasing the level of supervision, incorporating unpredictability into the selection of procedures, and making general changes to the nature, timing, or extent of procedures. Simply increasing sample sizes addresses assertion-level risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor identifies that the entity is under financial pressure to meet analyst earnings forecasts. Under AU-C 240, this condition most likely represents:',
 '["A control deficiency", "An inherent limitation of the audit", "An incentive or pressure to commit fraudulent financial reporting", "A reason to increase the audit fee"]'::jsonb,
 2,
 'Financial pressure to meet earnings forecasts is an incentive or pressure, which is one of the three conditions in the fraud risk triangle. This type of pressure can motivate management to manipulate earnings through improper revenue recognition, understatement of expenses, or other fraudulent financial reporting schemes. The auditor must consider this when assessing fraud risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When assessing control risk for the revenue cycle, the auditor obtains evidence about the operating effectiveness of controls. If the auditor determines that controls are not operating effectively, the auditor should:',
 '["Accept the client''s explanation for the control deficiency", "Withdraw from the engagement", "Issue a qualified opinion on internal controls", "Increase the assessed level of control risk and design substantive procedures accordingly"]'::jsonb,
 3,
 'When controls are not operating effectively, the auditor increases the assessed level of control risk and must modify the planned substantive procedures to compensate. This may mean increasing sample sizes, performing procedures closer to year-end, or changing the nature of procedures from analytical to detailed testing to obtain sufficient appropriate audit evidence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Which of the following journal entries would most likely be tested as part of the auditor''s response to the risk of management override of controls?',
 '["Routine monthly depreciation entries", "Standard payroll accrual entries", "Non-standard entries made at the end of the reporting period with unusual account combinations", "Recurring entries for rent expense"]'::jsonb,
 2,
 'AU-C 240 requires the auditor to test journal entries and other adjustments for evidence of management override. The auditor focuses on non-standard entries, particularly those made near the end of the reporting period, entries with unusual account combinations, entries made by unexpected individuals, and entries with round-dollar amounts or unusual descriptions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor is assessing IT-related risks for an entity that processes most transactions electronically. Which of the following represents the most significant IT-related risk?',
 '["The IT department has three full-time employees", "The entity uses commercially available accounting software", "The entity backs up data daily", "Unauthorized access to databases could allow manipulation of financial data without a visible audit trail"]'::jsonb,
 3,
 'Unauthorized access to databases that allows manipulation of financial data without a visible audit trail represents a significant IT risk. This could enable unauthorized changes to data, programs, or settings that affect financial reporting. Commercially available software, regular backups, and adequate staffing are positive IT characteristics that reduce risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'The auditor''s risk assessment procedures include all of the following EXCEPT:',
 '["Inquiries of management and others within the entity", "Analytical procedures", "Observation and inspection", "Sending confirmation requests to third parties"]'::jsonb,
 3,
 'Risk assessment procedures under AU-C 315 include inquiries of management and others, analytical procedures, and observation and inspection. Sending confirmation requests is a substantive procedure designed to obtain audit evidence about specific assertions, not a risk assessment procedure. Risk assessment procedures help identify and assess risks, while substantive procedures respond to those risks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor identifies a significant risk related to the valuation of goodwill. The auditor''s response should include:',
 '["Excluding goodwill from the audit scope because it is an estimate", "Only performing analytical procedures on the goodwill balance", "Obtaining an understanding of the entity''s controls that address the risk and performing substantive procedures specifically responsive to the significant risk", "Accepting management''s goodwill impairment analysis without further testing"]'::jsonb,
 2,
 'For significant risks, the auditor must obtain an understanding of the entity''s controls relevant to the risk and perform substantive procedures that are specifically responsive to the identified risk. For goodwill valuation, this includes evaluating management''s impairment analysis, testing key assumptions, and potentially engaging a valuation specialist.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'During risk assessment, the auditor learns that the entity recently experienced a cybersecurity breach affecting its financial reporting systems. The auditor should:',
 '["Evaluate the impact of the breach on the integrity of financial data and assess whether additional risks of material misstatement exist", "Ignore the breach because cybersecurity is an IT issue, not an audit issue", "Rely solely on management''s assessment of the breach impact", "Immediately withdraw from the engagement"]'::jsonb,
 0,
 'A cybersecurity breach affecting financial reporting systems could compromise the integrity of financial data and introduce risks of material misstatement. The auditor must evaluate the impact on data integrity, assess whether unauthorized changes to financial data may have occurred, and determine whether additional audit procedures are necessary to address the increased risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When assessing the risk of material misstatement for a new related party transaction, the auditor should consider:',
 '["Whether the transaction was conducted at arm''s length, the business purpose, and whether the terms could result in material misstatement", "Only whether the transaction is disclosed in the footnotes", "Whether the related party is a public company", "Only the dollar amount of the transaction"]'::jsonb,
 0,
 'Related party transactions require assessment of whether they were conducted at arm''s length, the business purpose of the transaction, and whether the terms and conditions could result in material misstatement or inadequate disclosure. The auditor must go beyond mere disclosure evaluation to understand the substance of the transaction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor assesses the combined risk of material misstatement (inherent risk and control risk) as high for accounts receivable. To maintain audit risk at an acceptably low level, the auditor should:',
 '["Issue a scope limitation", "Eliminate all substantive procedures for accounts receivable", "Set detection risk at a low level by performing more extensive substantive procedures", "Accept a higher level of detection risk"]'::jsonb,
 2,
 'The audit risk model shows that when the combined risk of material misstatement (inherent risk x control risk) is high, detection risk must be set low to maintain audit risk at an acceptably low level. This means the auditor must perform more extensive, effective substantive procedures such as larger confirmation samples, more detailed testing, and procedures performed closer to year-end.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Which of the following conditions would an auditor most likely identify as a fraud risk factor related to opportunities for fraud?',
 '["Management compensation is tied to aggressive financial targets", "The entity has significant related party transactions not in the ordinary course of business", "An employee recently experienced a personal financial hardship", "The CFO has expressed frustration with regulatory requirements"]'::jsonb,
 1,
 'Significant related party transactions not in the ordinary course of business provide an opportunity for fraud because they can be used to conceal losses, inflate revenues, or transfer assets. Opportunity is one of the three conditions in the fraud triangle. Compensation tied to targets represents incentive/pressure, while personal hardship and frustration represent rationalization or pressure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor is required to perform risk assessment procedures to obtain an understanding of the entity''s internal control. This understanding is required:',
 '["Only for publicly traded companies", "Only when fraud is suspected", "Only when the auditor plans to rely on controls", "For every audit engagement, regardless of whether the auditor plans to test controls"]'::jsonb,
 3,
 'AU-C 315 requires the auditor to obtain an understanding of internal control relevant to the audit for every engagement, regardless of whether the auditor plans to test and rely on controls. This understanding helps identify potential misstatements, understand factors affecting risks, and design the nature, timing, and extent of further audit procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'During the risk assessment phase, the auditor performs preliminary analytical procedures and notices that the gross margin percentage has increased significantly compared to the prior year and industry averages. The auditor should:',
 '["Immediately report the anomaly to the audit committee", "Ignore the change because analytical procedures are not conclusive", "Investigate the increase as a potential indicator of overstated revenues or understated cost of sales", "Accept the increase as evidence of improved operations"]'::jsonb,
 2,
 'A significant increase in gross margin compared to prior year and industry averages is a potential indicator of overstated revenues or understated cost of goods sold, both of which could indicate material misstatement or fraud. The auditor should investigate the cause, assess the risk implications, and plan appropriate responsive procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When assessing fraud risk, the auditor should evaluate the risk of management override of controls. Which of the following procedures is required to address this risk?',
 '["Reviewing accounting estimates for biases that could result in material misstatement due to fraud", "Observing the physical inventory count", "Confirming accounts payable balances", "Performing a search for unrecorded liabilities"]'::jsonb,
 0,
 'AU-C 240 requires three specific procedures to address management override risk: testing journal entries and other adjustments, reviewing accounting estimates for biases, and evaluating the business rationale for significant unusual transactions. Reviewing estimates for bias helps detect situations where management may be manipulating assumptions to achieve desired results.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An entity operates in an industry experiencing rapid technological change and declining demand for its primary product. When assessing inherent risk, the auditor should consider:',
 '["Whether the entity''s competitors are publicly traded", "Only current year transactions", "Only the entity''s historical financial performance", "The potential impact on asset values, going concern, and the risk that inventory may be obsolete or that long-lived assets may be impaired"]'::jsonb,
 3,
 'Industry conditions such as rapid technological change and declining demand are inherent risk factors that affect multiple areas. The auditor should consider inventory obsolescence, potential impairment of long-lived assets, going concern implications, and whether revenue forecasts underlying estimates remain valid. These external factors increase the susceptibility of assertions to misstatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'The auditor identifies that the entity has a complex IT environment with multiple integrated systems. When assessing IT-related risks, the auditor should consider:',
 '["IT general controls, application controls, and the risk that system interfaces may introduce errors in financial data", "Only the general controls over the primary financial reporting system", "Whether the entity uses cloud-based systems", "Only the controls tested by the entity''s IT audit team"]'::jsonb,
 0,
 'In a complex IT environment with integrated systems, the auditor must consider IT general controls (access security, change management, operations), application controls (input, processing, output), and the risk that interfaces between systems may introduce errors. System integration points are particularly susceptible to data integrity issues that could affect financial reporting.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When the auditor identifies a risk of material misstatement at the assertion level, the auditor must:',
 '["Communicate the risk to the entity''s legal counsel", "Issue a modified audit report", "Design and perform further audit procedures whose nature, timing, and extent are responsive to the assessed risks", "Always perform both tests of controls and substantive procedures"]'::jsonb,
 2,
 'When risks are identified at the assertion level, the auditor designs further audit procedures (tests of controls and/or substantive procedures) whose nature, timing, and extent are responsive to those specific risks. The auditor has flexibility to choose a combined approach or a substantive-only approach, but the response must link directly to the assessed risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor is assessing the risk of material misstatement for a client in the construction industry that uses the percentage-of-completion method. Which assertion is most likely to be assessed as having a higher risk of material misstatement?',
 '["Valuation of revenue and cost estimates for long-term contracts", "Presentation and disclosure of fixed assets", "Completeness of cash disbursements", "Existence of office equipment"]'::jsonb,
 0,
 'The percentage-of-completion method requires significant estimates of total contract revenue and costs, which directly affect the timing and amount of revenue recognition. These estimates involve substantial judgment and are inherently susceptible to misstatement. The valuation assertion for revenue and cost estimates on long-term contracts carries higher inherent risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'During risk assessment, the auditor considers the entity''s susceptibility to fraud. Which of the following factors would be LEAST indicative of fraud risk?',
 '["Significant transactions with related parties outside the normal course of business", "Management compensation heavily dependent on meeting financial targets", "The entity has a well-established whistleblower program and strong ethical culture", "The entity operates in multiple foreign jurisdictions with limited oversight"]'::jsonb,
 2,
 'A well-established whistleblower program and strong ethical culture are indicators of a positive control environment that reduces fraud risk. The other factors — unusual related party transactions, compensation tied to financial targets, and operations in jurisdictions with limited oversight — are all fraud risk factors representing opportunity, incentive/pressure, or reduced oversight.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'Under AU-C 240, if the auditor determines that the presumption of fraud risk in revenue recognition is overcome for a particular entity, the auditor should:',
 '["Document the reasons why the presumption does not apply in the specific circumstances", "Omit revenue from the audit entirely", "Issue a separate report on revenue recognition", "Obtain written approval from the audit committee to overcome the presumption"]'::jsonb,
 0,
 'If the auditor concludes that the presumed fraud risk in revenue recognition is not applicable in the specific circumstances, AU-C 240 requires the auditor to document the reasons for that conclusion. This documentation must explain the specific facts and circumstances that support overcoming the presumption, such as a single revenue stream with simple, non-judgmental recognition criteria.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor assesses inherent risk as high and control risk as low for the completeness assertion of accounts payable. Which of the following audit approaches is most appropriate?',
 '["Perform no substantive procedures because control risk is low", "Perform tests of controls to confirm control risk is low and perform reduced but targeted substantive procedures", "Perform only analytical procedures with no detailed testing", "Set detection risk at high because overall risk is moderate"]'::jsonb,
 1,
 'When inherent risk is high but control risk is assessed as low, the auditor should perform tests of controls to confirm that controls are operating effectively and then design reduced but targeted substantive procedures. The auditor cannot eliminate substantive procedures entirely, even when controls are effective, but may reduce the extent of detailed testing based on the combined assessment.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor discovers that management has overridden a key automated control to process a large, unusual transaction near year-end. The auditor should:',
 '["Treat this as a significant risk indicator, evaluate the business rationale for the transaction, and consider the implications for fraud risk and the reliability of other automated controls", "Immediately report the override to law enforcement", "Ignore the override because management has authority to override controls", "Accept the override if management provides a reasonable business explanation"]'::jsonb,
 3,
 'Management override of an automated control for a large, unusual year-end transaction is a significant fraud risk indicator. The auditor must evaluate the business rationale, consider whether the override indicates systematic circumvention of controls, assess implications for the reliability of other automated controls, and determine whether the transaction is a scheme to manipulate financial results.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'During risk assessment, the auditor identifies multiple significant risks across different financial statement areas. How should the auditor prioritize the audit response?',
 '["Address all significant risks with equal procedures regardless of their assessed likelihood", "Develop a tailored response for each significant risk based on the nature of the risk, the assertions affected, and the likely sources of misstatement", "Focus only on the single largest significant risk", "Defer all significant risks to the subsequent year''s audit"]'::jsonb,
 1,
 'Each significant risk requires a tailored audit response based on its specific characteristics. The auditor considers the nature of the risk, which assertions are affected, the likely magnitude and sources of potential misstatement, and whether the risk relates to fraud. A one-size-fits-all approach would not effectively address the unique characteristics of each identified significant risk.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor is evaluating fraud risk factors for a client whose CEO also serves as chairman of the board and whose compensation package includes significant stock options vesting based on earnings targets. Which combination of fraud triangle conditions is most directly represented?',
 '["Only opportunity", "Incentive/pressure from compensation structure and opportunity from weak governance oversight", "Only rationalization", "Detection risk and control risk"]'::jsonb,
 1,
 'The CEO''s compensation tied to earnings targets creates incentive/pressure to manipulate earnings, while the dual role as CEO and chairman represents weak governance (opportunity) because the board''s oversight of management is compromised. This combination of two fraud triangle conditions significantly increases the risk of fraudulent financial reporting.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When assessing risks related to accounting estimates, the auditor considers estimation uncertainty. Which of the following estimates would typically have the highest degree of estimation uncertainty?',
 '["Straight-line depreciation of office furniture with a known useful life", "Fair value of Level 3 financial instruments that are not traded in active markets and require significant unobservable inputs", "Accrued utility expenses based on prior month billing", "Prepaid insurance based on the insurance policy terms"]'::jsonb,
 1,
 'Level 3 financial instruments have the highest estimation uncertainty because their fair value relies on significant unobservable inputs and complex valuation models. Unlike Level 1 (quoted prices) or Level 2 (observable inputs), Level 3 valuations involve substantial judgment and subjectivity, making them highly susceptible to misstatement and often classified as significant risks.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'The auditor is assessing fraud risk and identifies that the entity has experienced unusual revenue growth in the fourth quarter that is inconsistent with industry trends and the entity''s own historical patterns. Additionally, the entity extended unusually generous payment terms to customers during this period. The auditor should:',
 '["Accept the growth as evidence of successful sales initiatives", "Evaluate whether the revenue growth and extended terms indicate fictitious revenue, channel stuffing, or other fraudulent schemes, and design procedures to test the existence and proper timing of recorded revenue", "Only test revenue transactions from the first three quarters", "Reduce the presumed fraud risk in revenue recognition"]'::jsonb,
 1,
 'Unusual fourth-quarter revenue growth inconsistent with industry trends, combined with extended payment terms, is a strong indicator of potential channel stuffing, premature revenue recognition, or fictitious sales. The auditor must evaluate these as fraud risk factors and design procedures to test the existence and cutoff of revenue, examine subsequent returns, and verify the substance of transactions.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor is assessing IT-related risks and discovers that the entity''s IT environment includes legacy systems with outdated security patches, shared administrator passwords, and no formal change management process. The auditor should assess:',
 '["IT risks as low because legacy systems are inherently more reliable", "A high risk that IT general controls are ineffective, which may affect the reliability of automated controls and electronically processed transactions, potentially requiring a substantive-only audit approach", "IT risks as irrelevant to the financial statement audit", "Only the risks related to the newest IT systems"]'::jsonb,
 1,
 'Outdated security patches, shared administrator passwords, and no change management process indicate significant IT general control weaknesses. These deficiencies could allow unauthorized changes to data and programs, undermining the reliability of automated controls and electronically processed data. The auditor may need to adopt a substantive-only approach rather than relying on IT-dependent controls.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'During risk assessment procedures, the auditor identifies that the entity''s accounting policies differ significantly from those used by comparable entities in the same industry. The auditor should:',
 '["Accept the differences as management''s prerogative", "Evaluate whether the differences represent aggressive or inappropriate accounting that could indicate management bias or a heightened risk of material misstatement", "Change the entity''s accounting policies to match industry norms", "Issue a qualified opinion based solely on the policy differences"]'::jsonb,
 1,
 'Significant departures from industry-standard accounting policies may indicate aggressive accounting, management bias, or attempts to manipulate financial results. The auditor should evaluate whether the policies are within the acceptable range under the applicable framework, whether they indicate a bias in estimates, and whether they increase the risk of material misstatement.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor is performing risk assessment for a client that recently implemented a new ERP system. Several automated controls that were previously tested are now embedded in the new system. The auditor should:',
 '["Rely on the prior year''s tests of controls since the control objectives are the same", "Reassess the design and implementation of controls in the new ERP system, perform new walkthroughs, and evaluate whether IT general controls over the new system are operating effectively before relying on automated controls", "Skip testing automated controls and perform only substantive procedures", "Accept the vendor''s assurance that the ERP system controls are effective"]'::jsonb,
 1,
 'A new ERP system fundamentally changes the control environment, even if the control objectives remain the same. The auditor must reassess control design and implementation, perform new walkthroughs of automated processes, evaluate IT general controls over the new system, and test the operating effectiveness of controls before placing reliance on them. Prior year testing is not relevant.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When assessing the risk of material misstatement due to fraud, the auditor should consider the risk of misstatement arising from both fraudulent financial reporting and misappropriation of assets. Which of the following scenarios most likely indicates a risk of misappropriation of assets rather than fraudulent financial reporting?',
 '["An employee in the warehouse has sole custody of high-value inventory with no independent verification or reconciliation", "Management selects accounting policies that consistently maximize reported income", "The CFO pressures the accounting staff to capitalize expenses to meet earnings targets", "Management provides overly optimistic revenue forecasts to support goodwill valuations"]'::jsonb,
 3,
 'An employee with sole custody of high-value inventory and no independent verification represents a classic misappropriation risk — the opportunity to steal assets due to weak physical controls and lack of segregation of duties. The other scenarios describe fraudulent financial reporting through manipulation of estimates, aggressive capitalization policies, or biased accounting policy selection.',
 'hard');

-- =============================================================================
-- Internal Controls (50 questions: 15 easy, 25 medium, 10 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'The COSO Internal Control framework identifies how many components of internal control?',
 '["Five", "Six", "Three", "Four"]'::jsonb,
 3,
 'The COSO Internal Control — Integrated Framework identifies five components of internal control: the control environment, risk assessment, control activities, information and communication, and monitoring activities. These five components work together to provide reasonable assurance regarding the achievement of an entity''s objectives.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'Which COSO component is considered the foundation for all other components of internal control?',
 '["Control activities", "Risk assessment", "Control environment", "Monitoring activities"]'::jsonb,
 2,
 'The control environment is the foundation for all other components of internal control. It sets the tone of the organization, influencing the control consciousness of its people. It includes factors such as the entity''s ethical values, management philosophy, organizational structure, assignment of authority and responsibility, and human resource policies.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'Segregation of duties is a key control activity. Which of the following represents proper segregation of duties?',
 '["The same employee records transactions and approves payments", "The same employee handles all aspects of the payroll process", "The employee who receives cash also prepares the bank reconciliation", "The employee who authorizes purchases is different from the employee who records them and the employee who has custody of assets"]'::jsonb,
 3,
 'Proper segregation of duties separates the functions of authorization, recording, and custody. When one employee authorizes purchases, a different employee records them, and a third employee has custody of the assets, the risk of errors or fraud is reduced because no single individual controls all aspects of a transaction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'IT general controls (ITGCs) typically include controls over:',
 '["Physical inventory counts", "Customer credit approval", "Access security, program changes, computer operations, and program development", "Individual transaction processing"]'::jsonb,
 2,
 'IT general controls apply broadly to the IT environment and support the effective functioning of application controls. They typically cover four areas: access security (logical and physical), program change management, computer operations (backup, job scheduling), and program development. These controls ensure the integrity of information processing.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'The monitoring component of COSO internal control involves:',
 '["Approving transactions before they are processed", "Physically safeguarding assets from theft", "Setting the ethical tone at the top of the organization", "Ongoing and separate evaluations to ascertain whether the components of internal control are present and functioning"]'::jsonb,
 3,
 'Monitoring activities involve ongoing evaluations, separate evaluations, or some combination of both to ascertain whether each of the five components of internal control is present and functioning. Ongoing monitoring is built into normal operations, while separate evaluations include internal audit assessments and management reviews.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'Which of the following is an example of a physical control?',
 '["Requiring management approval for journal entries over $10,000", "Using locked safes to store blank check stock", "Performing monthly bank reconciliations", "Running exception reports for unusual transactions"]'::jsonb,
 1,
 'Physical controls involve the physical security of assets, including adequate safeguards such as secured facilities, safes, locked storage areas, and restricted access to sensitive areas. Using locked safes for blank checks is a physical control. Approval requirements are authorization controls, reconciliations are information processing controls, and exception reports are monitoring controls.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An entity-level control is best described as a control that:',
 '["Operates at a broad level across the entire organization and affects multiple processes or accounts", "Operates at the transaction level for specific accounts", "Only applies to IT systems", "Is performed by an individual employee with no oversight"]'::jsonb,
 0,
 'Entity-level controls operate at a broad level and have a pervasive effect on the organization''s internal control system. Examples include the control environment, entity-wide risk assessment, management monitoring activities, and the internal audit function. These controls affect multiple processes, accounts, and assertions rather than specific transactions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'The information and communication component of COSO internal control requires that:',
 '["Communication only flows from top management downward", "Only financial information be communicated to employees", "The entity identifies, captures, and communicates relevant information in a form and timeframe that enables people to carry out their responsibilities", "All communications be in writing"]'::jsonb,
 2,
 'The information and communication component requires the entity to identify, capture, and communicate relevant information (both financial and non-financial) in a form and timeframe that enables people to carry out their responsibilities. Communication should flow in all directions — downward, upward, and across the organization.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'When testing internal controls, the auditor first evaluates the design of a control and then determines whether the control has been:',
 '["Documented in the entity''s policy manual", "Tested by internal audit", "Approved by the audit committee", "Implemented and placed in operation"]'::jsonb,
 3,
 'The auditor''s evaluation of internal controls follows a progression: first evaluating the design of the control (is it capable of preventing or detecting misstatements?), then determining whether the control has been implemented (placed in operation). If the auditor plans to rely on the control, a third step is testing operating effectiveness over the relevant period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'Authorization controls are designed to ensure that:',
 '["The entity complies with all tax regulations", "Financial statements are prepared in accordance with GAAP", "All transactions are recorded in the accounting system", "Transactions are executed in accordance with management''s general or specific authorization"]'::jsonb,
 3,
 'Authorization controls ensure that transactions are executed only with proper approval from management. General authorization establishes policies for routine transactions (e.g., credit limits), while specific authorization requires individual approval for non-routine or significant transactions (e.g., capital expenditures above a threshold).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'Which of the following is an example of an information processing control?',
 '["Locking the warehouse at the end of each business day", "Performing an automated three-way match of purchase orders, receiving reports, and vendor invoices before approving payment", "Establishing a code of ethics for all employees", "Assigning unique user IDs and passwords for system access"]'::jsonb,
 1,
 'An automated three-way match is an information processing control that verifies the accuracy and completeness of transaction processing by comparing purchase orders, receiving reports, and vendor invoices. Locking the warehouse is a physical control, a code of ethics is a control environment element, and user IDs are access controls (ITGCs).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'The risk assessment component of COSO internal control requires the entity to:',
 '["Identify and analyze risks to the achievement of its objectives as a basis for determining how those risks should be managed", "Perform external audits annually", "Assign a risk rating to every employee", "Eliminate all risks that could affect the financial statements"]'::jsonb,
 0,
 'The COSO risk assessment component requires the entity to identify and analyze risks relevant to the achievement of its objectives. This process involves identifying changes in the internal and external environment, assessing the significance and likelihood of risks, and determining how risks should be managed. Risk elimination is not the goal; risk management is.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'Which of the following best describes an application control in an IT environment?',
 '["A control that ensures backups are performed nightly", "A control that restricts physical access to the server room", "A control embedded in a software application that validates input data, ensures accurate processing, and verifies output completeness", "A control over the hiring of IT personnel"]'::jsonb,
 2,
 'Application controls are designed to ensure the completeness, accuracy, authorization, and validity of data capture and transaction processing within a specific application. They include input controls (validation checks), processing controls (ensuring calculations are correct), and output controls (verifying completeness). They operate at the transaction level within specific systems.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor tests the operating effectiveness of a manual control that is performed daily. The auditor''s sample for testing should be:',
 '["Only items from the last month of the period", "Exactly 25 items regardless of the population", "Large enough to provide sufficient evidence that the control operated effectively throughout the relevant period", "A single observation of the control being performed"]'::jsonb,
 2,
 'For manual controls performed daily, the auditor needs a sample large enough to provide sufficient evidence that the control operated effectively throughout the entire period under audit. A single observation is insufficient, a fixed sample of 25 may not always be appropriate, and testing only the last month does not cover the full period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'A control deficiency exists when:',
 '["The design or operation of a control does not allow management or employees, in the normal course of performing their assigned functions, to prevent, or detect and correct, misstatements on a timely basis", "The entity has not implemented all possible controls", "Any error is found during the audit", "The entity does not have an internal audit function"]'::jsonb,
 0,
 'A control deficiency exists when the design or operation of a control does not allow management or employees to prevent, or detect and correct, misstatements on a timely basis. A design deficiency exists when a necessary control is missing or improperly designed. An operating deficiency exists when a properly designed control does not operate as designed or is performed by unqualified personnel.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor is evaluating the control environment of a client and notes that the board of directors meets infrequently and has limited involvement in overseeing financial reporting. The auditor should assess this as:',
 '["A factor that only affects the monitoring component", "A strength because less board involvement means more management autonomy", "A weakness in the control environment that may increase the risk of material misstatement at the financial statement level", "Irrelevant because the board is not involved in daily operations"]'::jsonb,
 2,
 'Limited board involvement in overseeing financial reporting weakens the control environment, which is the foundation for all other control components. A disengaged board provides less effective oversight of management, increasing the risk that management may override controls or that significant issues may go undetected. This weakness affects the overall risk assessment at the financial statement level.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'When testing the design effectiveness of a control, the auditor is evaluating whether:',
 '["The control has been operating effectively for the entire period", "The control, individually or in combination with other controls, is capable of effectively preventing or detecting and correcting material misstatements", "The control has been approved by the board of directors", "The control generates documentary evidence"]'::jsonb,
 1,
 'Testing design effectiveness involves evaluating whether a control, as designed, is capable of effectively preventing or detecting and correcting material misstatements in relevant assertions. This assessment occurs before testing operating effectiveness. A well-designed control that is not properly implemented or consistently applied may still fail to prevent misstatements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor is testing the operating effectiveness of a control over purchase approvals. The auditor selects a sample of 40 purchase transactions and finds that 2 transactions were processed without proper approval. The auditor should:',
 '["Conclude the control is effective because the error rate is only 5%", "Evaluate the nature and cause of the exceptions, consider whether they indicate a systemic control failure, and determine the impact on the assessed level of control risk", "Immediately issue a material weakness communication", "Accept the 5% error rate as immaterial"]'::jsonb,
 1,
 'When exceptions are found in tests of controls, the auditor must evaluate the nature and cause of the exceptions rather than simply computing an error rate. The auditor considers whether the exceptions indicate a systematic breakdown, whether they were caused by the same person or circumstance, and whether the deviations increase control risk sufficiently to require additional substantive procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'Which of the following is a limitation of internal control?',
 '["Controls only apply to financial reporting objectives", "Controls are not required for small entities", "Internal controls are too expensive to implement", "Controls can be circumvented by collusion among employees or management override"]'::jsonb,
 3,
 'Internal control, regardless of how well designed and operated, can only provide reasonable, not absolute, assurance. Limitations include the possibility of collusion among employees to circumvent segregation of duties, management override of controls, human error in judgment or execution, and the consideration of cost-benefit in control design.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor identifies that the entity''s IT department has no formal change management process for modifying application software. This deficiency most directly affects:',
 '["The entity''s human resources policies", "The auditor''s independence", "Physical controls over assets", "The reliability of automated controls and the integrity of data processed by the application"]'::jsonb,
 3,
 'Without formal change management procedures, unauthorized or untested changes could be made to application software, potentially introducing errors or allowing manipulation of data processing. This IT general control deficiency directly affects the reliability of automated controls within the application and the integrity of all data processed by the system.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'The auditor learns that the entity''s controller prepares journal entries, posts them to the general ledger, and performs the monthly bank reconciliation. This situation represents a deficiency in:',
 '["Physical controls", "Monitoring activities", "Segregation of duties", "Information and communication"]'::jsonb,
 2,
 'Having the controller perform all three functions — preparing journal entries (authorization/recording), posting to the ledger (recording), and reconciling the bank account (custody/verification) — violates the principle of segregation of duties. This concentration of incompatible functions allows the controller to make and conceal errors or misappropriations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'When evaluating the control environment, the auditor should consider all of the following EXCEPT:',
 '["Management''s philosophy and operating style", "The entity''s organizational structure and assignment of authority", "The specific substantive procedures the auditor plans to perform", "Human resource policies and practices"]'::jsonb,
 2,
 'The control environment encompasses management''s philosophy, organizational structure, assignment of authority, human resource policies, and ethical values. The specific substantive procedures the auditor plans to perform are part of the auditor''s response to assessed risks, not an element of the entity''s control environment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor decides to test the operating effectiveness of controls over sales transactions. Which of the following procedures would provide the most evidence about operating effectiveness?',
 '["Inquiring of the sales manager about the control procedures", "Inspecting documents and reperforming the control for a sample of transactions throughout the period", "Reading the entity''s policy manual describing the control", "Observing the control being performed on one occasion"]'::jsonb,
 1,
 'Inspecting documents and reperforming controls for a sample of transactions throughout the period provides the strongest evidence of operating effectiveness. Inquiry alone is insufficient, reading policy manuals only addresses design, and a single observation does not provide evidence about consistent operation over the full period. Reperformance is the most reliable testing approach.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor is evaluating whether a material weakness in internal control exists. A material weakness is:',
 '["A deficiency that has resulted in an actual material misstatement", "Any control deficiency identified during the audit", "A deficiency, or combination of deficiencies, in internal control such that there is a reasonable possibility that a material misstatement will not be prevented, or detected and corrected, on a timely basis", "A deficiency that the entity''s management has acknowledged in writing"]'::jsonb,
 2,
 'A material weakness is a deficiency, or combination of deficiencies, in internal control such that there is a reasonable possibility that a material misstatement of the entity''s financial statements will not be prevented, or detected and corrected, on a timely basis. It does not require an actual misstatement to have occurred, only a reasonable possibility that one could occur.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'Under AU-C 265, the auditor is required to communicate significant deficiencies and material weaknesses in internal control to:',
 '["Only the entity''s management", "Only those charged with governance", "Management and those charged with governance, in writing", "The Securities and Exchange Commission"]'::jsonb,
 2,
 'AU-C 265 requires the auditor to communicate in writing to management and those charged with governance significant deficiencies and material weaknesses identified during the audit. This communication should be made on a timely basis and must be in writing. Material weaknesses must be communicated to those charged with governance; significant deficiencies to both.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'A company implements an automated control that matches shipping documents to sales invoices before recording revenue. This control most directly addresses the assertion of:',
 '["Occurrence of revenue transactions", "Presentation and disclosure", "Classification of revenue", "Subsequent events"]'::jsonb,
 0,
 'Matching shipping documents to sales invoices before recording revenue ensures that revenue is only recorded when goods have actually been shipped, directly addressing the occurrence assertion. This control prevents recording fictitious or premature revenue by requiring evidence that a sale actually took place before it enters the accounting system.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor is evaluating the entity''s monitoring activities. Which of the following would provide the strongest evidence that monitoring is effective?',
 '["Management verbally assures the auditor that monitoring occurs", "The entity has hired additional accounting staff", "The entity''s internal audit function regularly evaluates controls, reports findings to the audit committee, and tracks remediation of identified deficiencies", "The entity has a a written policy requiring monitoring"]'::jsonb,
 2,
 'An active internal audit function that regularly evaluates controls, reports to the audit committee, and tracks remediation provides the strongest evidence of effective monitoring. Written policies without evidence of execution, verbal assurances, and additional staff do not by themselves demonstrate that monitoring activities are functioning effectively.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'When testing an automated control, the auditor determines that the control has not been changed since the prior year and the IT general controls are effective. In this situation, the auditor:',
 '["Should not rely on any automated controls", "Must retest the automated control as if it were a new control", "Must test the automated control with the same sample size as a manual control", "May reduce the extent of testing because automated controls, once properly programmed and unchanged, perform consistently"]'::jsonb,
 3,
 'Automated controls, once properly programmed, perform consistently without the variation inherent in manual controls. When the auditor confirms that the control has not been changed and ITGCs are effective, the auditor may reduce the extent of testing, potentially testing the control on a single transaction or a very small sample, because the consistency of automated processing provides assurance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'A company''s employees are required to take mandatory vacations. This policy is primarily an example of which type of control?',
 '["Physical control", "Detective control within the control environment", "Preventive control over information processing", "Control activity that helps detect irregularities by requiring someone else to perform the employee''s duties during the absence"]'::jsonb,
 3,
 'Mandatory vacation policies are detective controls designed to uncover irregularities by requiring another employee to perform the duties of the absent employee. If the regular employee has been concealing errors or fraud, the substitute employee is likely to discover the irregularity. This control is particularly important in positions involving custody of assets or financial record-keeping.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor identifies that a client processes payroll through a service organization. To evaluate controls at the service organization, the auditor would most likely:',
 '["Obtain and evaluate a SOC 1 Type 2 report that covers the design and operating effectiveness of the service organization''s controls", "Ignore the service organization''s controls because they are outside the entity''s control", "Require the entity to change service organizations", "Visit the service organization and perform all control testing directly"]'::jsonb,
 0,
 'A SOC 1 Type 2 report provides information about the design and operating effectiveness of controls at the service organization. The auditor evaluates the report''s scope, the service auditor''s opinion, the test results, and the complementary user entity controls. This is typically the most efficient approach rather than visiting the service organization directly.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'Which of the following control activities would be most effective in preventing unauthorized access to the entity''s accounting system?',
 '["Requiring all employees to sign a confidentiality agreement", "Physical locks on the accounting department doors", "Role-based access controls with unique user IDs, strong passwords, and regular access reviews", "Monthly management review of financial statements"]'::jsonb,
 2,
 'Role-based access controls with unique user IDs, strong passwords, and regular access reviews provide the most effective prevention of unauthorized system access. These logical access controls limit each user to functions appropriate for their job duties. Monthly reviews are detective, physical locks protect hardware not data, and confidentiality agreements are deterrent but not preventive.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor performs a walkthrough of the revenue cycle. The primary purpose of a walkthrough is to:',
 '["Test the operating effectiveness of controls over a period", "Confirm the auditor''s understanding of the transaction flow, identify controls, and evaluate whether controls have been implemented", "Count the number of transactions processed during the period", "Determine the appropriate sample size for substantive testing"]'::jsonb,
 1,
 'A walkthrough involves tracing one or a few transactions through the entire process from initiation to recording in the financial statements. Its primary purpose is to confirm the auditor''s understanding of the transaction flow, identify the points where controls exist, and evaluate whether those controls have been implemented (design and implementation). It is not a test of operating effectiveness.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'The entity''s risk assessment process, as a COSO component, involves management identifying risks that could affect:',
 '["Only market and credit risks", "Only the auditor''s risk assessment", "The achievement of the entity''s objectives, including operations, reporting, and compliance objectives", "Only financial reporting objectives"]'::jsonb,
 2,
 'Under COSO, the entity''s risk assessment process involves management identifying and analyzing risks that could affect the achievement of the entity''s objectives across all three categories: operations, reporting (including financial reporting), and compliance. The auditor evaluates this process as part of understanding the entity''s internal control.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor observes that a client has a well-designed control requiring dual authorization for wire transfers over $50,000. However, during testing, the auditor finds that on 15 out of 30 sampled transactions, only one person authorized the transfer. This situation represents:',
 '["A design deficiency because the control is poorly designed", "A monitoring deficiency only", "No deficiency because a 50% compliance rate is acceptable", "An operating deficiency because the control is properly designed but not operating effectively"]'::jsonb,
 3,
 'This is an operating deficiency, not a design deficiency. The control requiring dual authorization is properly designed to prevent unauthorized wire transfers. However, the high rate of non-compliance (50% of sampled transactions lacked dual authorization) means the control is not operating as designed, creating a significant operating deficiency that likely constitutes at least a significant deficiency.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'A significant deficiency is distinguished from a material weakness based on:',
 '["Whether the deficiency was caused by management or employees", "The severity of the deficiency — a material weakness involves a reasonable possibility of a material misstatement, while a significant deficiency is less severe but still important enough to merit attention", "Whether the deficiency has been reported to regulators", "The cost of remediating the deficiency"]'::jsonb,
 1,
 'The distinction between a significant deficiency and a material weakness is based on severity. A material weakness exists when there is a reasonable possibility that a material misstatement will not be prevented or detected on a timely basis. A significant deficiency is less severe than a material weakness but still important enough to merit the attention of those charged with governance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'When evaluating the design of entity-level controls, the auditor should consider whether:',
 '["The entity has the maximum number of controls possible", "The entity-level controls operate at a level of precision that would prevent or detect material misstatements", "Each entity-level control has been tested by external parties", "Entity-level controls generate paper documentation"]'::jsonb,
 1,
 'Entity-level controls vary in their precision and the degree to which they can prevent or detect material misstatements. The auditor evaluates whether entity-level controls operate at a level of precision sufficient to address the risk of material misstatement. Some entity-level controls (like detailed management reviews) may be precise enough to address assertion-level risks, while others (like tone at the top) are indirect.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An entity relies heavily on automated controls within its ERP system. The auditor determines that IT general controls over access security and change management are ineffective. What is the most significant implication for the audit?',
 '["The auditor can still rely on automated application controls because they are separate from ITGCs", "The auditor cannot rely on the automated controls that depend on the ineffective ITGCs and must plan a substantive-only audit approach for affected areas", "The auditor should only test automated controls that were changed during the year", "The auditor should accept the ineffective ITGCs as a known limitation"]'::jsonb,
 1,
 'Automated application controls depend on the effective operation of ITGCs. When ITGCs over access security and change management are ineffective, the auditor cannot rely on automated controls because unauthorized changes to programs or data may have occurred. The auditor must plan substantive procedures sufficient to address the risk without reliance on automated controls.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor identifies that the entity has a strong control environment, effective risk assessment, and well-designed control activities, but the monitoring component is weak. The auditor should be most concerned that:',
 '["Control deficiencies may not be identified and corrected on a timely basis, allowing the other control components to deteriorate over time without detection", "The entity''s financial statements will automatically be materially misstated", "The auditor must resign from the engagement", "The weak monitoring component has no effect because the other four components are strong"]'::jsonb,
 0,
 'Weak monitoring creates a risk that deficiencies in the other control components will not be identified and corrected on a timely basis. Even strong controls can deteriorate over time due to changes in personnel, processes, or technology. Without effective monitoring, the entity may not detect these deteriorations, eventually leading to control failures and potential misstatements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor is testing controls in a complex IT environment where the entity uses robotic process automation (RPA) for accounts payable processing. Which of the following represents a unique risk associated with RPA that the auditor should consider?',
 '["RPA does not require IT general controls", "RPA controls are always more reliable than manual controls", "RPA eliminates all risk of error in the accounts payable process", "If the underlying rules programmed into the RPA bot are incorrect, the bot will consistently and rapidly propagate errors across a large volume of transactions"]'::jsonb,
 3,
 'RPA bots execute programmed rules consistently and at high speed. If the rules contain errors or the bot''s logic is flawed, it will propagate those errors across every transaction it processes, potentially affecting a large volume of transactions rapidly. The auditor must evaluate the design of the bot''s logic, change management controls over bot configurations, and exception handling procedures.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'During the audit of a decentralized organization with multiple locations, the auditor finds that entity-level controls such as a code of ethics and management oversight are strong at headquarters but inconsistently applied at remote locations. The auditor should:',
 '["Rely on the strong headquarters controls and reduce testing at remote locations", "Assess the risk that inconsistent application of entity-level controls at remote locations increases the risk of material misstatement and plan additional procedures at locations where controls are weaker", "Ignore the remote locations if they are individually immaterial", "Only communicate the inconsistency to headquarters management"]'::jsonb,
 1,
 'Inconsistent application of entity-level controls at remote locations creates a gap between the intended control environment and actual practice. The auditor must assess the risk implications, considering that remote locations may have higher fraud and error risk. Additional procedures may be needed at locations where controls are weaker, even if individually they appear immaterial.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor is evaluating whether a combination of individually insignificant control deficiencies constitutes a material weakness. Which of the following factors is most relevant to this evaluation?',
 '["The cost of remediating each deficiency", "Whether each individual deficiency has been communicated to management", "Whether the deficiencies, in combination, could result in a reasonable possibility that a material misstatement would not be prevented or detected, considering the relationship between the deficiencies and the accounts or assertions affected", "The total number of deficiencies identified"]'::jsonb,
 2,
 'When evaluating whether combined deficiencies constitute a material weakness, the auditor considers the interrelationship of the deficiencies and whether together they could result in a reasonable possibility that a material misstatement would not be prevented or detected. This requires evaluating whether the deficiencies affect the same accounts, assertions, or processes and whether compensating controls exist.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor discovers that the entity''s management review control over the monthly financial close involves the CFO reviewing a summary of journal entries and account reconciliations. However, the review is performed several weeks after month-end, and there is no evidence of follow-up on identified issues. The auditor should assess this control as:',
 '["Effective because the CFO is performing the review", "Having a design deficiency because the delayed timing and lack of documented follow-up render the control ineffective at preventing or detecting misstatements on a timely basis", "Operating effectively because the review is being performed", "Only a significant deficiency if it affects revenue accounts"]'::jsonb,
 1,
 'A management review control that is performed significantly after the close period and lacks evidence of follow-up on identified issues has a design deficiency. For a review control to be effective, it must be performed timely enough to detect and correct errors before financial statements are issued, and there must be evidence that identified issues are investigated and resolved.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An entity has implemented a data analytics tool that continuously monitors transactions for anomalies and generates alerts for investigation. This tool primarily enhances which COSO component?',
 '["Control environment", "Risk assessment", "Control activities", "Monitoring activities"]'::jsonb,
 3,
 'Continuous monitoring tools that analyze transactions for anomalies and generate alerts primarily enhance the monitoring component of COSO. These tools perform ongoing evaluations that assess the continued functioning of other control components. While they may overlap with control activities, their primary function is to detect anomalies that may indicate control failures or other issues requiring investigation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'During the evaluation of internal controls, the auditor identifies that the entity relies on a key manual control performed by a single individual with no backup or review. This person has been in the role for 15 years and has never taken an extended leave. The auditor should consider:',
 '["The control is more reliable because of the individual''s experience and tenure", "This is a strength of the control environment because of the employee''s dedication", "Only the design of the control, not the operating environment", "The concentration of knowledge and control in a single individual creates both a key-person dependency risk and an opportunity for concealment of errors or fraud, particularly given the absence of independent review or mandatory time off"]'::jsonb,
 2,
 'Concentration of a key control in a single individual with no backup, review, or mandatory leave creates multiple risks: key-person dependency, opportunity for concealing errors or fraud over an extended period, and lack of detective controls. The employee''s long tenure without oversight could mask problems. This represents both a control deficiency and a fraud risk factor.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor is evaluating the effectiveness of segregation of duties in a small entity with limited personnel. The entity has compensating controls, including detailed owner-manager oversight with evidence of review. The auditor should:',
 '["Evaluate whether the compensating controls, such as the owner-manager''s detailed review, are designed and operating effectively enough to mitigate the risks arising from the lack of segregation of duties", "Conclude that segregation of duties is impossible and issue a scope limitation", "Require the entity to hire additional staff before completing the audit", "Ignore the lack of segregation of duties because it is expected in small entities"]'::jsonb,
 0,
 'In small entities, ideal segregation of duties may not be achievable due to limited personnel. The auditor should evaluate whether compensating controls, such as detailed owner-manager oversight with evidence of review, adequately mitigate the risks. The effectiveness of compensating controls depends on their design, the owner-manager''s knowledge, and evidence that the reviews are substantive rather than perfunctory.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor is testing ITGCs and discovers that the entity grants system administrator access to multiple application developers. This finding most directly creates a risk that:',
 '["The developers may not complete their programming tasks on time", "Developers could make unauthorized changes to production programs or data without detection, undermining both change management controls and the integrity of application controls", "The entity''s hardware will be damaged", "The developers will have difficulty accessing development environments"]'::jsonb,
 1,
 'Granting system administrator access to application developers violates the segregation of duties between development and production environments. Developers with administrator access could promote untested code to production, modify production data, or bypass change management controls without detection. This undermines the entire framework of IT controls and the reliability of application-level controls.',
 'hard');

-- Additional Audit Planning question (48th)

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Planning',
 'An auditor is developing the audit plan for a client that has recently entered into a significant joint venture arrangement. During planning, the auditor should:',
 '["Audit the joint venture as a separate engagement", "Rely entirely on the joint venture partner''s auditor for all joint venture matters", "Evaluate the accounting for the joint venture investment, consider whether the arrangement creates additional risks of material misstatement, and determine whether access to the joint venture''s financial information is sufficient", "Exclude the joint venture from the audit scope because it is a separate legal entity"]'::jsonb,
 2,
 'A significant joint venture arrangement introduces complexities including the appropriate method of accounting (equity method, consolidation, or cost), related party considerations, and potential risks from the joint venture''s operations. The auditor must plan procedures to evaluate the investment, ensure adequate access to financial information, and assess whether the arrangement creates additional risks.',
 'medium');

-- Additional Risk Assessment questions (46th, 47th, 48th)

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor is assessing risks for an entity that recently underwent a change in senior management, including a new CEO and CFO. Which risk consideration is most relevant?',
 '["New management has no impact on the current year audit because they were not involved in prior year transactions", "The auditor should automatically issue a going concern opinion", "The audit fee should be reduced because new management may be more cooperative", "Changes in senior management may affect the control environment, the entity''s risk assessment process, and the tone at the top, requiring the auditor to reassess risks at the financial statement level"]'::jsonb,
 3,
 'Changes in senior management can significantly affect the control environment and tone at the top. New management may have different philosophies, risk appetites, or approaches to financial reporting. The auditor must reassess financial statement level risks, evaluate the new management''s integrity and competence, and consider whether the transition period creates additional risks of misstatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'When evaluating the entity''s susceptibility to misappropriation of assets, the auditor should consider which of the following?',
 '["The nature and portability of assets, the adequacy of physical controls and reconciliation procedures, and whether employees have both access to assets and the ability to conceal theft", "Only the value of assets on the balance sheet", "Only cash and cash equivalents because other assets cannot be misappropriated", "Only whether the entity has insurance coverage for asset losses"]'::jsonb,
 0,
 'Assessing misappropriation risk requires evaluating the nature and portability of assets (cash, inventory, and easily convertible items are higher risk), the adequacy of physical safeguards and reconciliation procedures, and whether inadequate segregation of duties provides employees with both access to assets and the ability to conceal theft through manipulation of records.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Risk Assessment',
 'An auditor is performing risk assessment for a client that has significant transactions denominated in foreign currencies. The auditor should assess an elevated risk of material misstatement for which of the following?',
 '["Only the cash account", "Only transactions occurring in the last month of the fiscal year", "Foreign currency translation and remeasurement, including the appropriateness of exchange rates used, the classification of gains and losses, and hedge accounting treatments", "Only the accounts receivable account"]'::jsonb,
 2,
 'Significant foreign currency transactions introduce risks related to the proper application of ASC 830, including selecting appropriate exchange rates for translation and remeasurement, correctly classifying gains and losses in the income statement or other comprehensive income, and evaluating any hedge accounting designations. These areas involve judgment and complex accounting requirements.',
 'hard');

-- Additional Internal Controls questions (47th, 48th, 49th, 50th)

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor is evaluating an entity''s controls over financial reporting close and identifies that management uses a detailed checklist for the monthly close process. This checklist includes reconciliation deadlines, review sign-offs, and a completion tracker. This control primarily addresses which COSO component?',
 '["Control activities", "Control environment", "Monitoring activities", "Risk assessment"]'::jsonb,
 0,
 'A detailed financial close checklist with reconciliation deadlines, review sign-offs, and completion tracking is a control activity. It establishes specific actions that individuals must perform to ensure accurate financial reporting. While it may support monitoring by providing visibility into the close process, its primary function is as a procedural control that guides and documents the execution of the close.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An auditor identifies that the entity does not have a formal process for communicating control deficiencies identified by the accounting department to senior management. This gap most directly affects which COSO component?',
 '["Control environment", "Risk assessment", "Control activities", "Information and communication"]'::jsonb,
 3,
 'The absence of a process for communicating identified control deficiencies to senior management is a weakness in the information and communication component of COSO. This component requires that relevant information, including information about internal control deficiencies, be communicated to appropriate levels within the organization on a timely basis so that corrective action can be taken.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'An entity''s accounts payable department uses a three-way match before processing vendor payments. A clerk matches the purchase order, receiving report, and vendor invoice for each transaction. Which assertion does this control most directly address?',
 '["Existence and accuracy of recorded disbursements", "Valuation of long-term liabilities", "Presentation of accounts payable in the financial statements", "Completeness of accounts payable"]'::jsonb,
 3,
 'The three-way match is a key control activity that ensures disbursements are for goods actually ordered (purchase order) and received (receiving report) at the agreed-upon price (vendor invoice). This directly addresses the existence assertion (the liability is real) and accuracy assertion (the amount is correct) for recorded disbursements and the related accounts payable balance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Internal Controls',
 'During testing, the auditor finds that the entity''s password policy requires only four-character passwords with no complexity requirements, no expiration period, and no lockout after failed attempts. The auditor should evaluate this as:',
 '["A significant IT general control deficiency that weakens access security and could allow unauthorized access to financial systems and data, undermining the reliability of all controls dependent on the system''s access restrictions", "Acceptable because any password policy is sufficient", "Only relevant for publicly traded companies", "A minor observation not worth reporting"]'::jsonb,
 0,
 'A weak password policy (short length, no complexity, no expiration, no lockout) is a significant ITGC deficiency over access security. Weak passwords are easily compromised through brute force or guessing, potentially allowing unauthorized individuals to access, modify, or delete financial data. This weakness undermines all controls that depend on proper user authentication and system access restrictions.',
 'medium');
-- AUD Chunk 3: Audit Evidence, Audit Sampling, Substantive Procedures

-- =============================================================================
-- Audit Evidence — 46 questions
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor is evaluating the sufficiency of audit evidence obtained during the engagement. Which of the following best describes sufficiency of audit evidence?',
 '["The quantity of evidence needed to support the auditor''s conclusions", "The relevance and reliability of the evidence", "The timeliness of the evidence relative to the reporting period", "The cost-effectiveness of obtaining additional evidence"]'::jsonb,
 0,
 'Sufficiency refers to the measure of the quantity of audit evidence. The quantity needed is affected by the risk of material misstatement and the quality of the evidence obtained. Relevance and reliability relate to appropriateness, not sufficiency.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Which of the following factors most directly affects the appropriateness of audit evidence?',
 '["The number of items tested", "The total cost of the audit engagement", "The client''s willingness to provide documentation", "The relevance and reliability of the evidence"]'::jsonb,
 3,
 'Appropriateness is the measure of the quality of audit evidence, encompassing both relevance (bearing on the assertion being tested) and reliability (trustworthiness given its source and nature). The number of items tested relates to sufficiency, not appropriateness.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor obtains a bank confirmation directly from the client''s financial institution and also receives a printout of the bank balance from the client''s controller. According to the reliability hierarchy, which evidence is more reliable and why?',
 '["The controller''s printout because it reflects internal records", "The bank confirmation because evidence obtained directly from independent external sources is more reliable", "Both are equally reliable because they originate from the same underlying data", "The controller''s printout because it can be reconciled to the general ledger"]'::jsonb,
 1,
 'Evidence obtained directly from independent external sources (such as bank confirmations) is more reliable than evidence generated internally by the client. The bank confirmation bypasses client personnel entirely, reducing the risk of manipulation or error in the evidence provided.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'During a first-year audit, the auditor discovers that the predecessor auditor''s workpapers contain evidence about opening balances. Under AU-C 510, which of the following is the most appropriate action?',
 '["Rely entirely on the predecessor''s workpapers without further procedures", "Decline the engagement because opening balance evidence is insufficient", "Review the predecessor''s workpapers and perform additional procedures as necessary to obtain sufficient appropriate evidence about opening balances", "Accept the predecessor''s conclusions without modification"]'::jsonb,
 2,
 'The auditor should review the predecessor''s workpapers for evidence about opening balances but must also perform additional procedures as deemed necessary. Simply relying on or accepting the predecessor''s conclusions without independent evaluation would not meet the sufficiency and appropriateness requirements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Which of the following types of audit evidence is generally considered the least reliable?',
 '["A confirmation received directly from a third-party debtor", "A bank statement obtained directly by the auditor", "A signed contract between the client and an independent vendor", "An internally generated purchase order approved by management"]'::jsonb,
 3,
 'Internally generated documents are generally less reliable than externally generated evidence because they are subject to the client''s internal control environment. Evidence from independent external parties — such as confirmations, bank statements obtained directly, and third-party contracts — provides greater reliability.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor sends positive confirmations to 50 of the client''s customers to verify accounts receivable balances. After two requests, 10 customers have not responded. What should the auditor do?',
 '["Perform alternative procedures such as examining subsequent cash receipts or shipping documents", "Assume the balances are correct because most confirmations were returned", "Issue a qualified opinion due to the scope limitation", "Send a third confirmation request and wait indefinitely"]'::jsonb,
 0,
 'When positive confirmations are not returned, the auditor should perform alternative procedures to obtain evidence about the assertions being tested. These typically include examining subsequent cash receipts, shipping documentation, or sales contracts. Non-responses to positive confirmations do not constitute evidence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor decides to use negative confirmations for accounts receivable testing. Which of the following conditions must exist for negative confirmations to provide sufficient appropriate evidence?',
 '["The risk of material misstatement is high and individual balances are large", "The client has requested that negative confirmations be used exclusively", "The auditor has been unable to obtain positive confirmations", "The assessed risk of material misstatement is low, a large number of small balances is involved, and the auditor has no reason to believe recipients will disregard the requests"]'::jsonb,
 3,
 'Negative confirmations are appropriate only when the assessed risk of material misstatement is low, a large number of small balances is involved, and the auditor has no reason to believe recipients will disregard the confirmation requests. If any of these conditions is not met, negative confirmations alone are insufficient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor uses blank confirmations rather than positive confirmations that state the account balance. What is the primary advantage of blank confirmations?',
 '["They are less expensive to process", "They require the respondent to fill in the amount, reducing the risk that the respondent will confirm an incorrect balance without verifying", "They have a higher response rate than positive confirmations", "They eliminate the need for alternative procedures for non-responses"]'::jsonb,
 1,
 'Blank confirmations require the respondent to provide the balance from their own records rather than simply agreeing to a stated amount. This reduces the risk that respondents will sign and return the confirmation without actually verifying the balance, providing more reliable evidence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Management refuses to allow the auditor to send confirmation requests to a specific major customer. Under AU-C 505, what is the auditor''s first step?',
 '["Immediately withdraw from the engagement", "Issue an adverse opinion", "Inquire about management''s reasons for the refusal and evaluate the reasonableness of those reasons", "Confirm the balance directly without informing management"]'::jsonb,
 2,
 'When management refuses to allow confirmations, the auditor should first inquire about the reasons and evaluate their reasonableness. If the reasons are valid, the auditor performs alternative procedures. If the refusal is unreasonable, the auditor considers the implications for the risk assessment and the audit opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Which of the following is required to be included in the written representation letter obtained from management?',
 '["A guarantee that no fraud has occurred during the period", "A list of all adjusting entries proposed by the auditor", "A projection of expected future earnings", "An acknowledgment that management has fulfilled its responsibility for the preparation and fair presentation of the financial statements"]'::jsonb,
 3,
 'AU-C 580 requires management to acknowledge in writing its responsibility for the preparation and fair presentation of the financial statements in accordance with the applicable framework. Management cannot guarantee the absence of fraud, and the letter does not require proposed adjustments or earnings projections.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'The management representation letter should be dated as of the date of:',
 '["The balance sheet", "The beginning of fieldwork", "The auditor''s report", "The engagement letter"]'::jsonb,
 2,
 'The management representation letter should be dated as of the date of the auditor''s report, which is the date the auditor has obtained sufficient appropriate evidence on which to base the opinion. This ensures that representations cover all events through the date of the report.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'If management refuses to provide one or more requested written representations, the auditor should:',
 '["Disclaim an opinion on the financial statements", "Accept oral representations instead", "Continue the audit using only other forms of evidence", "Issue an unmodified opinion with an emphasis-of-matter paragraph"]'::jsonb,
 0,
 'If management refuses to provide requested written representations, the auditor should disclaim an opinion because this constitutes a scope limitation. Written representations are required audit evidence, and oral representations cannot substitute for them. The auditor should also consider the implications for other representations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'During the audit of a calendar year-end company, the auditor learns on February 10 that a major customer declared bankruptcy on January 25. This event is best classified as:',
 '["A Type I subsequent event requiring adjustment of the financial statements", "A Type II subsequent event requiring disclosure only", "An event that has no effect on the financial statements", "A going concern issue that requires a disclaimer of opinion"]'::jsonb,
 0,
 'A customer bankruptcy occurring before year-end financial statements are issued that provides additional evidence about conditions existing at the balance sheet date (such as the collectibility of receivables) is a Type I (recognized) subsequent event. The financial statements should be adjusted to reflect the loss on the receivable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'A client''s manufacturing facility is destroyed by a fire on January 20, after the December 31 balance sheet date. How should the auditor classify this event?',
 '["A Type I event requiring financial statement adjustment", "An insignificant event that requires no action", "A Type II event that does not require adjustment but may require disclosure", "A going concern event that triggers an adverse opinion"]'::jsonb,
 2,
 'A fire occurring after the balance sheet date represents a new condition that did not exist at year-end. This is a Type II (non-recognized) subsequent event. The financial statements are not adjusted, but disclosure may be required if the event is material to prevent the statements from being misleading.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor has a dual-dating situation in the audit report. Which of the following best describes when dual dating is used?',
 '["When the auditor issues two separate opinions on different components of the financial statements", "When the audit is conducted over two separate fiscal years", "When two auditors jointly sign the report", "When a subsequent event occurring after the original report date is disclosed, and the auditor limits responsibility for events after the original date to the specific event"]'::jsonb,
 3,
 'Dual dating occurs when a material subsequent event is discovered after the original report date. The auditor dates the report with the original date except for the note describing the subsequent event, which receives the later date. This limits the auditor''s responsibility for events between the two dates to the specific disclosed event.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Under AU-C 540, when auditing accounting estimates, the auditor should evaluate whether management''s assumptions are:',
 '["Reasonable in the circumstances, individually and taken together", "Identical to the auditor''s independent calculations", "Exactly consistent with published industry benchmarks", "Approved in writing by the client''s legal counsel"]'::jsonb,
 0,
 'The auditor evaluates whether management''s assumptions are reasonable individually and taken together, consistent with the entity''s business plans, market conditions, and other relevant factors. Assumptions do not need to match the auditor''s independent estimates exactly, nor must they mirror industry benchmarks precisely.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor is testing a complex fair value estimate for a financial instrument. Which of the following approaches is most appropriate when the auditor lacks specialized expertise?',
 '["Accept management''s estimate without further testing", "Use an auditor''s specialist to assist in evaluating the estimate", "Exclude the item from the scope of the audit", "Reduce the sample size to minimize testing of complex items"]'::jsonb,
 1,
 'When the auditor lacks specialized knowledge to evaluate a complex fair value estimate, engaging an auditor''s specialist (such as a valuation expert) is appropriate. The auditor retains responsibility for the opinion but can rely on the specialist''s work after evaluating the specialist''s competence, capabilities, and objectivity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'When auditing an accounting estimate that involves significant estimation uncertainty, the auditor should develop a point estimate or range. If the auditor''s range does not include management''s estimate, this indicates:',
 '["The auditor should issue a qualified opinion automatically", "The estimate is immaterial and can be ignored", "The auditor should expand the range until management''s estimate is included", "A misstatement exists, and the auditor should request management to revise the estimate"]'::jsonb,
 3,
 'If the auditor develops a range that does not include management''s point estimate, this constitutes a misstatement. The auditor should request that management revise the estimate. If management refuses and the misstatement is material, the auditor considers the effect on the audit opinion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'When auditing fair value measurements, the auditor should evaluate whether the valuation method used by management is:',
 '["Appropriate in the circumstances and applied consistently", "The most conservative method available", "The same method used by all other companies in the industry", "Approved by the SEC for the specific type of asset"]'::jsonb,
 0,
 'The auditor evaluates whether management''s valuation method is appropriate given the nature of the item being measured and the applicable financial reporting framework, and whether it has been applied consistently. There is no requirement to use the most conservative method or the same method as industry peers.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'During the audit, the auditor identifies a related party transaction that was not previously disclosed by management. Which of the following is the most appropriate initial response?',
 '["Immediately issue an adverse opinion for fraud", "Communicate the matter to management and evaluate the business purpose and substance of the transaction", "Withdraw from the engagement without further investigation", "Disclose the transaction in the auditor''s report without consulting management"]'::jsonb,
 1,
 'When an undisclosed related party transaction is identified, the auditor should first communicate with management to understand the business purpose and economic substance. The auditor evaluates whether the transaction has been properly recorded and disclosed and considers the implications for the risk of material misstatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor discovers that the client''s CEO sold a building to the company at a price significantly above fair market value. The CEO is a related party. Which financial statement assertion is most directly at risk?',
 '["Completeness", "Classification", "Cutoff", "Valuation and allocation"]'::jsonb,
 3,
 'When a related party transaction occurs at a price significantly above fair market value, the valuation and allocation assertion is most directly at risk. The asset may be recorded at an inflated amount, which would overstate assets and potentially understate expenses if the excess is not properly accounted for.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Under AU-C 550, which of the following related party transactions would most likely indicate a significant risk of material misstatement?',
 '["A routine supply purchase from a subsidiary at market price", "Payment of standard director compensation approved by the board", "A significant transaction outside the normal course of business with an entity controlled by management", "Leasing office space from a commonly controlled entity at market rates"]'::jsonb,
 2,
 'Significant transactions outside the normal course of business with related parties, especially those controlled by management, present a higher risk of material misstatement because they may lack economic substance or may have been entered into on terms that are not at arm''s length.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Which of the following best describes the auditor''s responsibility regarding subsequent events procedures?',
 '["The auditor must perform procedures covering the entire period from the balance sheet date to the date of the auditor''s report", "The auditor only needs to consider events occurring during fieldwork", "Subsequent events procedures are optional unless the client requests them", "The auditor''s responsibility for subsequent events ends at the balance sheet date"]'::jsonb,
 0,
 'The auditor is responsible for performing procedures designed to identify subsequent events from the balance sheet date through the date of the auditor''s report. This includes inquiries of management, reading minutes of board meetings, and reviewing interim financial information that may indicate events requiring adjustment or disclosure.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor determines that a receivable confirmed at year-end was collected in full during January. This subsequent collection:',
 '["Provides evidence about the existence and valuation of the receivable at year-end", "Is a Type II subsequent event requiring disclosure", "Should be ignored because it occurred after the balance sheet date", "Requires a dual-dated audit report"]'::jsonb,
 0,
 'Subsequent cash collections provide evidence about the existence and valuation (collectibility) of receivables at the balance sheet date. This is a common alternative procedure used when confirmations are not returned, and it supports assertions about conditions that existed at year-end.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'In evaluating the sufficiency and appropriateness of audit evidence, which of the following relationships is correct?',
 '["Higher risk of material misstatement requires less evidence", "Higher quality evidence reduces the quantity of evidence needed", "Evidence from internal sources is always sufficient regardless of quantity", "The auditor''s professional judgment has no role in determining sufficiency"]'::jsonb,
 1,
 'There is an inverse relationship between the quality and quantity of evidence: when the quality (appropriateness) of evidence is higher, less quantity (sufficiency) may be needed. However, obtaining a large quantity of lower-quality evidence does not compensate for a lack of relevant, reliable evidence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Which of the following types of evidence provides the strongest support for the existence assertion of equipment?',
 '["A depreciation schedule prepared by the client", "An insurance policy listing the equipment", "Management''s written representation that the equipment exists", "Physical inspection of the equipment by the auditor"]'::jsonb,
 3,
 'Physical inspection by the auditor provides the most persuasive evidence for the existence assertion because the auditor directly observes the asset. While depreciation schedules, insurance policies, and management representations provide corroborating evidence, none is as direct or reliable as physical inspection for proving existence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'A client leases equipment under an arrangement that management classifies as an operating lease. The auditor suspects it should be classified as a finance lease. Which audit procedure would best address the classification assertion?',
 '["Reading the lease agreement to evaluate whether it meets finance lease criteria", "Confirming the lease payment amount with the lessor", "Tracing lease payments to the cash disbursements journal", "Observing the physical condition of the leased equipment"]'::jsonb,
 0,
 'Reading the lease agreement allows the auditor to evaluate the specific terms and conditions against the criteria for finance lease classification (such as transfer of ownership, bargain purchase option, lease term exceeding 75% of useful life, or present value of payments exceeding 90% of fair value). This directly addresses the classification assertion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor obtains an attorney''s letter (legal letter) as part of the audit. The primary purpose of this letter is to:',
 '["Confirm the client''s compliance with tax regulations", "Evaluate the adequacy of the client''s internal controls", "Verify the accuracy of the client''s revenue recognition", "Corroborate information provided by management concerning litigation, claims, and assessments"]'::jsonb,
 3,
 'The attorney''s letter (inquiry of a client''s lawyer) is obtained to corroborate management''s representations about pending or threatened litigation, claims, and assessments. The letter requests the attorney to confirm the existence, status, and likelihood of unfavorable outcomes of legal matters disclosed by management.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'When a client''s external attorney refuses to respond to an audit inquiry letter, the auditor should:',
 '["Consider this a scope limitation that may affect the audit opinion", "Accept management''s representations as sufficient evidence", "Issue an unmodified opinion with an other-matter paragraph", "Hire an independent attorney to evaluate the legal matters"]'::jsonb,
 0,
 'If the client''s attorney refuses to furnish information in response to the inquiry letter, this represents a scope limitation. The auditor should consider whether the limitation is material enough to require a qualified opinion or disclaimer of opinion, depending on the significance of the legal matters involved.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Under AU-C 540, which of the following indicators suggests that an accounting estimate may have a high degree of estimation uncertainty?',
 '["The estimate depends on highly subjective assumptions about future conditions that are inherently unpredictable", "The estimate is based on well-established actuarial tables with long track records", "The estimate involves a routine calculation with readily available market prices", "The estimate uses historical data that has been consistently reliable"]'::jsonb,
 0,
 'High estimation uncertainty exists when estimates depend on subjective assumptions about unpredictable future conditions. Examples include long-term environmental remediation liabilities, litigation outcomes, and certain fair value measurements for illiquid instruments. Well-established tables, routine calculations, and reliable historical data all reduce estimation uncertainty.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor discovers that a material subsequent event occurred after the financial statements were issued but before they were filed with a regulatory agency. Under AU-C 560, what is the auditor''s primary responsibility?',
 '["No responsibility because the financial statements have already been issued", "Discuss the matter with management and determine whether the financial statements need revision", "Automatically reissue the audit report with a new date", "Notify the regulatory agency directly without consulting management"]'::jsonb,
 1,
 'When the auditor becomes aware of facts after the financial statements have been issued, the auditor should discuss the matter with management and, where appropriate, those charged with governance. If revision of the financial statements is necessary, the auditor evaluates management''s actions and considers the effect on the audit report.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Which of the following audit procedures is most effective for testing the completeness assertion for accounts payable?',
 '["Examining payments made after year-end and tracing them to the accounts payable listing", "Confirming balances with known vendors", "Vouching recorded payables to supporting purchase orders", "Reviewing the aged accounts payable trial balance"]'::jsonb,
 0,
 'To test completeness of accounts payable, the auditor searches for unrecorded liabilities by examining payments made after year-end, reviewing unmatched receiving reports, and tracing them back to the year-end payable listing. Starting from a source outside the recorded population (subsequent payments) tests whether all liabilities were captured.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'When evaluating management''s estimate of the allowance for doubtful accounts, which of the following would cause the auditor the most concern?',
 '["The estimate is calculated using a consistent method applied in prior years", "Historical loss rates are used as the starting point for the estimate", "The estimate includes consideration of current economic conditions", "Management changed the estimation methodology without adequate justification and the change significantly reduced the allowance"]'::jsonb,
 3,
 'An unjustified change in estimation methodology that significantly reduces the allowance raises a presumption of management bias and potential misstatement. This warrants heightened scrutiny and may indicate an intentional attempt to inflate earnings. Consistent methods, historical loss rates, and economic considerations are all appropriate estimation practices.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor receives a positive confirmation from a customer that disagrees with the client''s recorded balance. The next step should be to:',
 '["Automatically record an adjusting entry for the difference", "Investigate the nature and cause of the difference", "Ignore the difference if it is below the tolerable misstatement", "Send a negative confirmation to verify the discrepancy"]'::jsonb,
 1,
 'When a confirmation response disagrees with the client''s records, the auditor should investigate the nature and cause of the discrepancy. Differences may result from timing (payments or shipments in transit), errors in the client''s records, or misstatements. The auditor must determine whether the difference represents a misstatement before deciding on further action.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Under the reliability hierarchy, which of the following types of audit evidence is most reliable?',
 '["Oral representations from the client''s accounting staff", "Internally generated documents subject to effective internal controls", "Evidence obtained directly by the auditor through physical inspection, observation, or computation", "Documents generated externally but provided to the auditor by the client"]'::jsonb,
 2,
 'Evidence obtained directly by the auditor (through inspection, observation, or recalculation) is the most reliable because it is not subject to interception or alteration by the client. External documents provided by the client are next, followed by internal documents subject to good controls, with oral representations being least reliable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'A company reports a fair value for Level 3 investments using a discounted cash flow model. The auditor should be most concerned about:',
 '["Whether the discount rate used is publicly available", "Whether Level 3 fair values are disclosed in a separate footnote", "Whether an external appraiser was engaged", "Whether the significant unobservable inputs and assumptions are reasonable and adequately supported"]'::jsonb,
 3,
 'Level 3 fair value measurements rely on significant unobservable inputs (such as projected cash flows, growth rates, and discount rates) that are not market-corroborated. The auditor''s primary concern is whether these inputs and assumptions are reasonable, internally consistent, and adequately supported by available data.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Which of the following procedures would an auditor perform during the subsequent events review period?',
 '["Recount all physical inventory", "Read the minutes of board meetings held after year-end through the date of the auditor''s report", "Re-confirm all accounts receivable balances", "Retest all internal controls"]'::jsonb,
 1,
 'Reading minutes of meetings of the board of directors, shareholders, and relevant committees held after the balance sheet date is a standard subsequent events procedure. The auditor also makes inquiries of management and reviews interim financial data. Recounting inventory, re-confirming receivables, and retesting controls are not standard subsequent events procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'A client has a significant lawsuit pending at year-end. The client''s attorney states that the outcome is probable and the range of loss is between $2 million and $5 million, with no amount within the range being more likely. Under GAAP, how should the client record this?',
 '["Record $5 million as the best estimate of the maximum loss", "Disclose the contingency in the notes but make no accrual", "Record $3.5 million as the midpoint of the range", "Record $2 million, the minimum of the range, as the accrued liability"]'::jsonb,
 3,
 'Under ASC 450 (formerly SFAS 5), when a loss is probable and a range of amounts can be estimated but no single amount within the range is a better estimate, the entity accrues the minimum amount of the range ($2 million). The remainder of the range is disclosed in the footnotes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor is evaluating the reliability of evidence generated by the client''s information system. Which of the following factors would most increase the auditor''s confidence in the reliability of such evidence?',
 '["Management asserts that the system is functioning properly", "The information system has been operating without changes for over 10 years", "The auditor has tested and found the relevant IT general controls and application controls to be operating effectively", "The system was purchased from a well-known vendor"]'::jsonb,
 2,
 'The reliability of internally generated evidence is enhanced when the auditor tests the IT general controls (access, change management, operations) and application controls (input, processing, output) and finds them operating effectively. The effectiveness of controls directly affects the trustworthiness of the data produced by the system.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'When using the work of a management''s specialist (such as an actuary), the auditor should evaluate:',
 '["The competence, capabilities, and objectivity of the specialist, as well as the appropriateness of the specialist''s work as audit evidence", "Only whether the specialist''s report is properly formatted", "Whether the specialist has been approved by the PCAOB", "Only the mathematical accuracy of the specialist''s calculations"]'::jsonb,
 0,
 'The auditor evaluates the competence, capabilities, and objectivity of management''s specialist, the appropriateness of the specialist''s work as audit evidence for the relevant assertion, and whether the assumptions, methods, and source data used are reasonable and relevant.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor discovers that a key written representation from management contradicts other audit evidence obtained during the engagement. The auditor should:',
 '["Accept management''s representation because it is signed", "Investigate the inconsistency and consider the reliability of all representations received from management", "Immediately resign from the engagement", "Issue a disclaimer of opinion without further investigation"]'::jsonb,
 1,
 'When a written representation is inconsistent with other evidence, the auditor must investigate the contradiction and consider whether it casts doubt on the reliability of other management representations. The auditor should perform additional procedures to resolve the matter and may need to reconsider the risk assessment.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'Which of the following is an example of a Type I (recognized) subsequent event?',
 '["A new product line is launched after year-end", "A new bond issue is completed after year-end", "An earthquake destroys a warehouse after year-end", "A customer who owed money at year-end files for bankruptcy after year-end, confirming the receivable was impaired at the balance sheet date"]'::jsonb,
 3,
 'A customer bankruptcy after year-end that confirms impairment existing at the balance sheet date is a Type I (recognized) subsequent event. The condition (customer financial difficulty) existed at year-end, and the post-year-end event provides additional evidence. The financial statements should be adjusted to reflect the impaired receivable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'When auditing related party transactions, the auditor is most concerned with which of the following risks?',
 '["That related party transactions will increase the client''s tax liability", "That related party transactions may not have been conducted at arm''s length and may lack economic substance", "That related party transactions are always fraudulent", "That the client has too many related parties to disclose"]'::jsonb,
 1,
 'The primary risk with related party transactions is that they may not be conducted at arm''s length — the terms may differ from what would be agreed between unrelated parties. Additionally, some transactions may lack genuine economic substance and could be used to manipulate financial results or obscure the true nature of arrangements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor evaluates management''s estimate of warranty obligations. Which of the following procedures would be most relevant?',
 '["Confirming warranty terms with customers", "Testing inventory counts for warranty replacement parts", "Reviewing the marketing department''s product satisfaction surveys", "Comparing the current estimate to actual warranty claims experienced in prior periods and evaluating the reasonableness of assumptions about future claims"]'::jsonb,
 3,
 'To evaluate a warranty estimate, the auditor should compare management''s current estimate against actual historical warranty experience, evaluate the reasonableness of assumptions about future claim rates and costs, and consider changes in product quality, sales volume, or warranty terms that might affect the estimate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'An auditor discovers after the date of the auditor''s report, but before the financial statements are issued, that a material adjusting event occurred. What is the appropriate action?',
 '["No action is needed because the report has already been dated", "Issue a supplemental report covering only the new event", "Notify the client''s shareholders directly", "Discuss the matter with management, consider whether the financial statements need amendment, and if so, perform additional procedures and dual-date or re-date the report"]'::jsonb,
 3,
 'When a material event is discovered after the report date but before issuance, the auditor should discuss the matter with management, determine if amendment is needed, perform necessary additional procedures, and either dual-date the report or extend the date. The auditor''s responsibility continues until the financial statements are issued.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Evidence',
 'In evaluating audit evidence about an accounting estimate, the auditor develops an independent expectation that differs from management''s estimate by $400,000. The tolerable misstatement for the account is $500,000. The auditor should:',
 '["Investigate the cause of the difference and accumulate it as a misstatement for evaluation purposes", "Accept management''s estimate because the difference is below tolerable misstatement", "Require management to adjust the estimate to match the auditor''s expectation", "Issue a qualified opinion because the difference is material"]'::jsonb,
 0,
 'Even though the $400,000 difference is below tolerable misstatement, the auditor should investigate the cause and accumulate it with other identified misstatements. When aggregated with other misstatements, the total could exceed tolerable misstatement. The auditor should also consider whether the difference indicates management bias.',
 'hard');

-- =============================================================================
-- Audit Sampling — 36 questions
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor plans to use statistical sampling for a test of controls. Which of the following sampling methods is most appropriate?',
 '["Variables sampling", "Monetary unit sampling (MUS)", "Attribute sampling", "Classical variables sampling"]'::jsonb,
 2,
 'Attribute sampling is used for tests of controls because it measures the rate of deviation from a prescribed control procedure. Variables sampling and monetary unit sampling are used for substantive testing of account balances. Attribute sampling answers the question: how often does the control fail to operate?',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'In attribute sampling, the auditor sets a tolerable rate of deviation at 5% and expects a population deviation rate of 1%. If the auditor increases the confidence level from 90% to 95%, how will the sample size be affected?',
 '["Sample size will decrease", "Sample size will increase", "Sample size will remain the same", "The effect on sample size is unpredictable"]'::jsonb,
 1,
 'Increasing the confidence level (reducing the risk of assessing control risk too low) increases the required sample size. A higher confidence level means the auditor wants to be more certain that the sample results reflect the population, which requires testing more items to achieve that level of assurance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor is determining the sample size for a test of controls. Which of the following would result in a larger sample size?',
 '["Increasing the tolerable rate of deviation", "Decreasing the expected population deviation rate", "Decreasing the risk of assessing control risk too low (increasing confidence)", "Increasing the population size from 500 to 10,000 in a very large population"]'::jsonb,
 2,
 'Decreasing the risk of assessing control risk too low (equivalent to increasing the confidence level) requires a larger sample size. A lower tolerable rate also increases sample size. In contrast, a higher tolerable rate decreases it, a lower expected deviation rate decreases it, and population size has minimal effect for large populations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'What is the primary distinction between statistical and nonstatistical sampling?',
 '["Statistical sampling is always more accurate than nonstatistical sampling", "Nonstatistical sampling is prohibited under auditing standards", "Statistical sampling does not require professional judgment", "Statistical sampling uses random selection and mathematical measurement of sampling risk, while nonstatistical sampling does not"]'::jsonb,
 3,
 'Statistical sampling uses random selection methods and applies probability theory to evaluate results, providing a mathematical measurement of sampling risk. Nonstatistical sampling relies on the auditor''s judgment for selection and evaluation. Both are acceptable under auditing standards, and both require professional judgment in design and interpretation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor selects every 20th invoice from a file of 2,000 purchase invoices, with a random starting point. This is an example of:',
 '["Haphazard selection", "Random number selection", "Systematic selection", "Block selection"]'::jsonb,
 2,
 'Systematic selection involves selecting items at a uniform interval (every nth item) with a random starting point. In this case, selecting every 20th invoice from a population of 2,000 with a random start is systematic selection. This method provides an approximately random sample if the population is not structured in a way that correlates with the selection interval.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor uses haphazard selection for a nonstatistical sample. Which of the following describes a key risk of haphazard selection?',
 '["It always results in a biased sample", "It is prohibited for nonstatistical samples", "It requires the use of a random number generator", "The auditor may unconsciously select items that are easiest to locate or most readily accessible, potentially introducing bias"]'::jsonb,
 3,
 'Haphazard selection involves choosing items without a structured methodology, and the main risk is unconscious bias. The auditor may avoid selecting items that are difficult to locate, are in poor condition, or are in inconvenient locations, potentially producing a sample that is not representative of the population.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'Monetary unit sampling (MUS) is a form of variables sampling that selects individual dollar amounts within a population. Which of the following is a primary advantage of MUS?',
 '["It gives every dollar an equal chance of selection, which means larger account balances are more likely to be selected", "It is the only method that can be used for tests of controls", "It automatically detects all fraud in the population", "It eliminates the need for stratification"]'::jsonb,
 0,
 'MUS treats each individual dollar as a sampling unit, giving every dollar an equal probability of selection. As a result, items with larger recorded amounts have a proportionally higher chance of being selected. This focuses the audit effort on the largest items, which have the greatest potential for material misstatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'A disadvantage of monetary unit sampling (MUS) is that it:',
 '["Cannot detect understatements effectively because items with small or zero recorded amounts have little or no chance of selection", "Requires the auditor to use judgment-based selection", "Is not a statistically valid sampling technique", "Can only be applied to accounts with fewer than 100 items"]'::jsonb,
 0,
 'Because MUS selects dollars rather than items, accounts with small or zero recorded balances have little or no chance of selection. This makes MUS less effective at detecting understatements, where the true amount is higher than the recorded amount (e.g., an unrecorded liability would have a $0 recorded balance).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'In classical variables sampling, the auditor estimates the total value of a population. Which of the following methods is commonly used in classical variables sampling?',
 '["Discovery sampling", "Attribute sampling", "Mean-per-unit estimation", "Sequential sampling"]'::jsonb,
 2,
 'Mean-per-unit estimation is a classical variables sampling technique where the auditor estimates the average value of items in the population and multiplies by the number of items to estimate the total. Other classical methods include difference estimation and ratio estimation. Attribute sampling is used for tests of controls, not substantive testing.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor is performing a test of controls using attribute sampling. The sample of 100 items reveals 3 deviations. The tolerable rate of deviation was set at 5% and the expected population deviation rate was 1%. What conclusion should the auditor draw?',
 '["The control is operating effectively because 3% is below the 5% tolerable rate", "The control has completely failed and should be abandoned", "No conclusion can be drawn from attribute sampling", "The auditor cannot conclusively support the planned assessment of control risk based on this result alone — the auditor must consider the achieved upper deviation rate"]'::jsonb,
 3,
 'While the sample deviation rate (3%) is below the tolerable rate (5%), the auditor must calculate the achieved upper deviation rate, which accounts for sampling risk. If the achieved upper deviation rate exceeds the tolerable rate, the auditor cannot support the planned assessment of control risk even though the sample deviation rate appears acceptable.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor sets the tolerable misstatement at $50,000 for accounts receivable and expects no misstatements in the population. After testing a sample, the projected misstatement is $55,000. The auditor should:',
 '["Conclude that the account balance may be materially misstated and consider expanding the sample or requesting an adjustment", "Accept the results because the actual misstatements found in the sample were small", "Ignore the projected misstatement and rely on other procedures", "Reduce the tolerable misstatement to $40,000 and retest"]'::jsonb,
 0,
 'When the projected misstatement ($55,000) exceeds the tolerable misstatement ($50,000), the auditor should conclude that there is an unacceptably high risk that the account balance is materially misstated. The auditor should consider expanding procedures, requesting management to investigate and adjust, or evaluating the effect on the audit opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'Which of the following factors has a direct relationship with sample size in substantive tests of details?',
 '["Tolerable misstatement — as tolerable misstatement increases, sample size increases", "Expected misstatement — as expected misstatement increases, sample size increases", "Acceptable risk of incorrect acceptance — as acceptable risk increases, sample size increases", "Population size for large populations — as population size doubles, sample size doubles"]'::jsonb,
 1,
 'Expected misstatement has a direct relationship with sample size: as the expected amount of misstatement increases, a larger sample is needed to determine whether actual misstatements exceed tolerable misstatement. Tolerable misstatement and acceptable risk of incorrect acceptance have inverse relationships with sample size.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'The risk of assessing control risk too low is the risk that:',
 '["The auditor concludes controls are ineffective when they are actually effective", "The auditor overestimates the amount of misstatement in the account", "The auditor fails to identify any control deviations in the sample", "The auditor concludes controls are effective when they are actually ineffective"]'::jsonb,
 3,
 'The risk of assessing control risk too low is the risk that sample results support the auditor''s planned reliance on internal controls when the true deviation rate exceeds the tolerable rate — meaning controls are actually less effective than the sample indicates. This is an effectiveness risk because it could lead to insufficient substantive testing.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'The risk of assessing control risk too high is the risk that:',
 '["The auditor concludes controls are ineffective when they are actually effective, leading to more substantive testing than necessary", "The auditor concludes controls are effective when they are ineffective", "The auditor fails to detect a material misstatement", "The auditor issues an incorrect audit opinion"]'::jsonb,
 0,
 'The risk of assessing control risk too high leads the auditor to believe controls are ineffective when they actually work well. This is an efficiency risk — the auditor performs more substantive testing than necessary, increasing audit cost and effort, but it does not affect the effectiveness of the audit.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor decides to stratify the accounts receivable population before sampling. The primary reason for stratification is to:',
 '["Reduce the variability within each stratum and improve the efficiency of the sample", "Ensure that every item in the population has an equal chance of selection", "Eliminate the need for statistical sampling", "Ensure compliance with PCAOB sampling standards"]'::jsonb,
 0,
 'Stratification divides the population into subgroups with similar characteristics (such as dollar amount ranges), reducing variability within each stratum. This allows the auditor to focus more attention on higher-risk or higher-value strata and often results in a smaller overall sample size while maintaining the desired level of assurance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'When projecting misstatements found in a sample to the population, the auditor should:',
 '["Only consider the actual dollar amount of misstatements found in the sample without projection", "Project misstatements only if statistical sampling was used", "Assume the sample is perfectly representative and report only the sample misstatements", "Project the misstatements to the entire population and add an allowance for sampling risk"]'::jsonb,
 3,
 'The auditor should project (extrapolate) the misstatements found in the sample to the entire population and then add an allowance for sampling risk. The projected misstatement plus the allowance for sampling risk is compared to tolerable misstatement to evaluate whether the account is materially misstated.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'In a test of controls, an auditor finds zero deviations in a sample of 60 items. The tolerable deviation rate is 5%. Can the auditor conclude the control is effective?',
 '["Yes, because the sample deviation rate (0%) is well below the tolerable rate", "No, because the sample size is too small to draw any conclusion", "No, because zero deviations is statistically impossible in practice", "Yes, but only if the achieved upper deviation rate at the desired confidence level is at or below the tolerable rate"]'::jsonb,
 3,
 'Even with zero deviations, the auditor must consider the achieved upper deviation rate, which accounts for sampling risk. With 60 items and zero deviations, the achieved upper deviation rate depends on the confidence level. The auditor can support reliance only if this calculated upper rate does not exceed the 5% tolerable rate.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'Which of the following best describes the concept of tolerable misstatement in substantive sampling?',
 '["The total amount of misstatement in the financial statements", "The amount of misstatement that will always result in a qualified opinion", "The maximum amount of misstatement in a population that the auditor is willing to accept and still conclude the account is fairly stated", "The expected level of misstatement based on prior year results"]'::jsonb,
 2,
 'Tolerable misstatement is the application of performance materiality to a particular sampling procedure. It represents the maximum misstatement the auditor is willing to accept in the population and still conclude that the audit objective has been achieved. It is typically set at or below performance materiality.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor performing monetary unit sampling selects a sample and identifies a $1,000 overstatement in an item with a recorded value of $5,000 that was selected from a sampling interval of $25,000. What is the projected misstatement for this item?',
 '["$1,000", "$25,000", "$5,000", "$20,000"]'::jsonb,
 2,
 'In MUS, when an item smaller than the sampling interval contains a misstatement, the projected misstatement is calculated by multiplying the sampling interval by the tainting percentage. The tainting is $1,000 / $5,000 = 20%. Projected misstatement = $25,000 x 20% = $5,000. The projection amplifies the misstatement to reflect the population represented by that sampling unit.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor uses block selection by choosing all purchase transactions from the first two weeks of March. This method is generally:',
 '["The most reliable selection method for statistical sampling", "Required when testing cyclical transactions", "Preferred over random selection for large populations", "Acceptable only if the auditor can demonstrate the blocks are representative of the entire population"]'::jsonb,
 3,
 'Block (cluster) selection involves selecting contiguous items, such as all transactions in a specific time period. This method is generally discouraged because a few blocks may not be representative of the full population. It is acceptable only in limited circumstances when the auditor can justify that the selected blocks are representative.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'If an auditor reduces the assessed risk of material misstatement for a particular assertion after completing tests of controls, the effect on the substantive sample size is:',
 '["The substantive sample size should decrease because less substantive assurance is needed", "The substantive sample size should increase", "There is no relationship between control risk and substantive sample size", "The substantive sample size should remain unchanged regardless of control testing results"]'::jsonb,
 0,
 'When the auditor reduces the assessed risk of material misstatement (including control risk) based on effective controls, the required amount of substantive evidence decreases. This allows the auditor to reduce the sample size for substantive tests of details while still achieving the desired overall audit risk.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'In a substantive test using monetary unit sampling, the auditor calculates a total projected misstatement of $30,000. The tolerable misstatement is $50,000. Considering an allowance for sampling risk of $25,000, what is the auditor''s conclusion?',
 '["The account is fairly stated because the projected misstatement is below tolerable misstatement", "No conclusion can be reached because the allowance for sampling risk exceeds the projected misstatement", "The account may be materially misstated because the projected misstatement plus the allowance for sampling risk ($55,000) exceeds the tolerable misstatement ($50,000)", "The tolerable misstatement should be increased to accommodate the results"]'::jsonb,
 2,
 'The total to compare against tolerable misstatement includes both the projected misstatement ($30,000) and the allowance for sampling risk ($25,000), totaling $55,000. Since $55,000 exceeds the tolerable misstatement of $50,000, the auditor should conclude there is an unacceptably high risk that the account is materially misstated.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'Which of the following sample selection methods would disqualify a sample from being considered a statistical sample?',
 '["Random number selection", "Systematic selection with a random start", "Haphazard selection", "Computer-generated random selection"]'::jsonb,
 2,
 'Statistical sampling requires that every item in the population has a known, non-zero probability of selection. Haphazard selection relies on auditor judgment and does not provide a known probability for each item, making it unsuitable for statistical sampling. Random and systematic methods with random starts do provide known probabilities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor uses classical variables sampling and estimates the population mean of an account balance. The sample mean is $500, the standard deviation is $100, and the sample size is 100 items. To achieve a desired precision and confidence level, the auditor computes a confidence interval. The primary purpose of this interval is to:',
 '["Determine the exact population value", "Calculate the audit fee", "Identify individual misstatements in the population", "Provide a range within which the true population value is expected to fall with a specified level of confidence"]'::jsonb,
 3,
 'In classical variables sampling, the confidence interval provides a range within which the true population value is expected to fall at a given confidence level. The auditor compares this range against the recorded amount and tolerable misstatement to assess whether the account may be materially misstated.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor decides to test 100% of all items over $100,000 in accounts receivable and sample the remaining items. This approach is best described as:',
 '["Stratified sampling with 100% examination of the top stratum", "Block selection", "Haphazard sampling", "Attribute sampling"]'::jsonb,
 0,
 'Testing all items over a specified threshold (100% of the top stratum) and sampling the remainder is a stratified sampling approach. The large items are examined individually because they present the greatest dollar exposure, while sampling is used for the remaining population to achieve efficiency.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'When using nonstatistical sampling, the auditor determines sample size based on professional judgment. Which of the following statements is correct regarding nonstatistical sampling?',
 '["The auditor does not need to define the sampling objective", "Results cannot be used to draw conclusions about the population", "The auditor must still consider the same factors (tolerable rate, expected deviation rate, confidence level) even though they are not quantified mathematically", "Nonstatistical sampling always requires a smaller sample than statistical sampling"]'::jsonb,
 2,
 'In nonstatistical sampling, the auditor uses professional judgment rather than statistical formulas to determine sample size and evaluate results. However, the auditor must still consider the same conceptual factors — tolerable rate/misstatement, expected deviation rate/misstatement, and desired level of assurance — even if these are not quantified mathematically.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor performing attribute sampling for a test of controls calculates that the achieved upper deviation rate is 7%, while the tolerable deviation rate is 5%. What should the auditor conclude?',
 '["The planned reliance on the control is supported", "The sample size was too large", "The planned reliance on the control is not supported, and the auditor should revise the assessed level of control risk upward", "The auditor should reduce the tolerable deviation rate and retest"]'::jsonb,
 2,
 'When the achieved upper deviation rate (7%) exceeds the tolerable deviation rate (5%), the sample results do not support the planned reliance on the control. The auditor should increase the assessed level of control risk and plan additional substantive procedures to compensate for the reduced reliance on controls.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'Which of the following is the risk of incorrect acceptance in substantive testing?',
 '["The risk that the auditor concludes the account is materially misstated when it is actually fairly stated", "The risk that the auditor selects too many items for testing", "The risk that the sampling interval is too large", "The risk that the auditor concludes the account is fairly stated when it is actually materially misstated"]'::jsonb,
 3,
 'The risk of incorrect acceptance is the risk that sample results lead the auditor to conclude that a population is not materially misstated when, in fact, it is. This is an effectiveness risk because it may result in the auditor failing to detect a material misstatement, potentially leading to an inappropriate opinion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'Which of the following is the risk of incorrect rejection in substantive testing?',
 '["The risk that the auditor concludes the account is materially misstated when it is actually fairly stated", "The risk that the auditor concludes the account is fairly stated when it is materially misstated", "The risk that the auditor over-relies on internal controls", "The risk that the sample is not randomly selected"]'::jsonb,
 0,
 'The risk of incorrect rejection is the risk that sample results lead the auditor to conclude that a population is materially misstated when it is not. This is an efficiency risk — it causes the auditor to perform unnecessary additional procedures but does not lead to an incorrect audit opinion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor plans an attribute sampling application with a tolerable deviation rate of 6%, an expected population deviation rate of 1.5%, and a 95% confidence level. If the expected population deviation rate increases to 3%, what effect does this have?',
 '["Required sample size increases because the gap between expected and tolerable rates narrows", "Required sample size decreases", "Required sample size remains unchanged", "The auditor should switch to variables sampling"]'::jsonb,
 0,
 'When the expected population deviation rate increases from 1.5% to 3% while the tolerable rate remains at 6%, the gap between expected and tolerable rates narrows. A larger sample is needed to determine with the same confidence whether the true deviation rate exceeds the tolerable rate.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'In evaluating sample results, the auditor should consider both the projected misstatement and the qualitative aspects of misstatements found. Which of the following is a qualitative factor?',
 '["Whether the misstatements appear to be intentional rather than unintentional errors", "The total dollar amount of the projected misstatement", "The number of items in the sample", "The recorded book value of the account"]'::jsonb,
 0,
 'Qualitative factors include whether misstatements appear to be intentional (possible fraud), whether they involve senior management, whether they indicate a systematic pattern, or whether they result from a control breakdown. These factors may be more significant than the quantitative amount of the misstatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor uses difference estimation to test accounts receivable. For each sampled item, the auditor calculates the difference between the audited value and the recorded value. The average difference is then applied to the population. This technique is most effective when:',
 '["Few misstatements are expected in the population", "The population has a very small number of items", "No misstatements are found in the sample", "Misstatements are expected and are not proportional to recorded amounts"]'::jsonb,
 3,
 'Difference estimation works best when misstatements are expected and the size of misstatements is not proportional to the recorded amounts. If misstatements are proportional to recorded values, ratio estimation may be more appropriate. If few or no misstatements are expected, mean-per-unit estimation may be more suitable.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'When defining the population for sampling, the auditor should ensure that the population is:',
 '["Complete and appropriate for the audit objective being tested", "As large as possible to maximize statistical validity", "Limited to items over a specified dollar threshold", "Defined by management rather than the auditor"]'::jsonb,
 0,
 'The population must be complete (include all items relevant to the audit objective) and appropriate (consist of items that are relevant to the assertion being tested). An incomplete population means the auditor''s conclusions cannot be extended to the items omitted, creating a potential gap in audit coverage.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor is designing a monetary unit sampling application and must determine the sampling interval. Which formula correctly calculates the sampling interval?',
 '["Sampling interval = Population size / Sample size", "Sampling interval = Recorded population amount / Sample size", "Sampling interval = Tolerable misstatement / Confidence factor", "Sampling interval = Population standard deviation / Sample size"]'::jsonb,
 2,
 'In MUS, the sampling interval is typically calculated as tolerable misstatement divided by the confidence factor (reliability factor) for the desired confidence level with zero expected misstatements. For example, at 95% confidence with zero expected errors, the reliability factor is approximately 3.0, so the interval = tolerable misstatement / 3.0.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An anomalous misstatement is one that the auditor determines:',
 '["Is the largest misstatement found in the sample", "Affects a related party transaction", "Is not representative of misstatements in the population and arose from an event that is demonstrably isolated", "Exceeds the tolerable misstatement by more than 50%"]'::jsonb,
 2,
 'An anomalous misstatement is a misstatement arising from an isolated event that has not recurred other than on specifically identifiable occasions and is therefore not representative of misstatements in the population. If a misstatement is truly anomalous, the auditor may exclude it from the projection but must obtain evidence supporting the anomalous classification.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Sampling',
 'An auditor uses ratio estimation to test the valuation of inventory. The ratio of audited values to recorded values in the sample is 0.96. The total recorded inventory balance is $2,000,000. What is the estimated population value using ratio estimation?',
 '["$2,000,000", "$2,080,000", "$1,960,000", "$1,920,000"]'::jsonb,
 3,
 'Ratio estimation multiplies the total recorded population value by the ratio of audited to recorded values from the sample. The estimated value is $2,000,000 x 0.96 = $1,920,000. The implied projected misstatement is $80,000 ($2,000,000 - $1,920,000), suggesting inventory may be overstated by approximately that amount.',
 'hard');

-- =============================================================================
-- Substantive Procedures — 40 questions
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor designs a substantive analytical procedure to test revenue. Which of the following steps is performed first?',
 '["Investigate significant differences between expected and recorded amounts", "Determine the acceptable threshold for differences", "Compare the current year balance to the prior year balance", "Develop an independent expectation of the recorded amount using reliable data"]'::jsonb,
 3,
 'The first step in a substantive analytical procedure is developing an independent expectation of the recorded amount using reliable and relevant data. This expectation serves as the benchmark against which the recorded amount is compared. Without a reliable expectation, the analytical procedure cannot provide meaningful evidence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'When performing a substantive analytical procedure, the auditor develops an expectation that revenue should be approximately $10 million based on industry trends and operating data. The recorded revenue is $10.8 million. The auditor set a threshold of $500,000. What should the auditor do?',
 '["Investigate the $800,000 difference because it exceeds the $500,000 threshold", "Accept the recorded amount because revenue is growing", "Adjust the threshold upward to $1 million to accommodate the difference", "Conclude that the difference is immaterial without further investigation"]'::jsonb,
 0,
 'When the difference ($800,000) between the expectation and the recorded amount exceeds the predetermined threshold ($500,000), the auditor must investigate by obtaining explanations from management and corroborating those explanations with additional evidence. An unexplained difference exceeding the threshold may indicate a misstatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'Which of the following factors most increases the reliability of a substantive analytical procedure?',
 '["Using disaggregated data and independently developed expectations based on multiple reliable sources", "Relying on management''s explanations without further corroboration", "Performing the procedure early in the audit before other evidence is gathered", "Using the prior year balance as the sole basis for the expectation"]'::jsonb,
 3,
 'Substantive analytical procedures are more reliable when expectations are developed using disaggregated data (by product line, location, or month rather than annual totals), multiple independent sources, and data that the auditor has validated. Greater precision in the expectation produces more persuasive evidence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor is confirming accounts receivable balances. Several positive confirmations are returned marked "balance not owed — paid on December 28." The invoices were recorded as receivables at December 31. What should the auditor investigate?',
 '["Whether the customer is attempting to defraud the company", "Whether the confirmations were sent to the wrong addresses", "Whether the receivable balances are understated", "Whether the cash receipts were recorded in the proper period (potential cutoff error)"]'::jsonb,
 3,
 'When customers indicate they paid before year-end but the amounts still appear as receivables at December 31, this suggests a potential cutoff error in cash receipts. The auditor should investigate whether the payments were received before year-end but not recorded until January, which would overstate both receivables and cash receipts in the wrong period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'During the audit of inventory, the auditor is unable to attend the client''s physical inventory count because the auditor was appointed after year-end. Under AU-C 501, what should the auditor do?',
 '["Disclaim an opinion because the scope limitation is always material", "Perform alternative procedures such as observing a subsequent count, testing intervening transactions, and inspecting documentation to obtain sufficient evidence about inventory quantities at year-end", "Accept management''s inventory count without further testing", "Resign from the engagement"]'::jsonb,
 1,
 'When the auditor cannot attend the physical count, alternative procedures should be performed, including observing a subsequent physical count, testing rollback/rollforward of transactions between the count date and year-end, and inspecting purchase and sales records. Only if these procedures are insufficient should the auditor consider a scope limitation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'During inventory observation, the auditor notices that certain inventory items appear damaged or obsolete. The auditor should:',
 '["Note the items and evaluate whether management has properly accounted for impairment through write-downs or reserves", "Ignore the items because inventory valuation is management''s responsibility", "Immediately write down the items in the auditor''s workpapers", "Count the damaged items but exclude them from the inventory total"]'::jsonb,
 0,
 'When the auditor observes damaged or obsolete inventory, the auditor should note these items and evaluate whether management has appropriately considered impairment through write-downs, lower of cost or net realizable value adjustments, or obsolescence reserves. This addresses the valuation assertion for inventory.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor performs a test of details on sales transactions to test the occurrence assertion. Which of the following procedures best addresses this assertion?',
 '["Tracing from shipping documents to recorded sales to verify that recorded sales actually occurred", "Selecting from shipping documents and tracing to sales invoices", "Analyzing sales trends compared to industry benchmarks", "Selecting recorded sales and vouching to supporting shipping documents and customer orders"]'::jsonb,
 3,
 'To test the occurrence assertion (whether recorded transactions actually occurred), the auditor starts from the recorded amount and vouches backward to supporting documentation. Selecting recorded sales and tracing to shipping documents and customer orders confirms that the sales actually took place and were properly authorized.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'To test the completeness assertion for revenue, the auditor should:',
 '["Select from a source independent of the accounting records (such as shipping documents) and trace forward to the revenue journal", "Select a sample of recorded revenue transactions and vouch them to supporting documents", "Confirm revenue amounts with customers", "Recalculate the revenue amounts in the general ledger"]'::jsonb,
 0,
 'To test completeness (whether all transactions that should be recorded are recorded), the auditor starts from a source outside the accounting records — such as shipping documents or delivery records — and traces forward to determine whether each shipment was recorded as revenue. Starting from recorded amounts tests occurrence, not completeness.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor is evaluating whether a client has a going concern issue. Under AU-C 570, which of the following conditions would most likely raise substantial doubt about the entity''s ability to continue as a going concern?',
 '["A 5% decline in revenue from the prior year", "The entity changed its depreciation method from straight-line to double-declining balance", "The entity has violated debt covenants, is unable to obtain additional financing, and recurring operating losses continue to deplete working capital", "The entity has a minor pending lawsuit with a probable loss of $10,000"]'::jsonb,
 2,
 'Substantial doubt about going concern is raised by conditions such as recurring operating losses, negative cash flows, debt covenant violations, inability to obtain financing, and depletion of working capital. These factors together indicate the entity may not be able to meet its obligations within one year of the financial statement date.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'When the auditor concludes that substantial doubt exists about the entity''s ability to continue as a going concern, but management''s plans are adequate to mitigate the doubt, the audit report should:',
 '["Include an adverse opinion", "Include an emphasis-of-matter paragraph describing the going concern uncertainty", "Be unmodified with no additional paragraphs", "Disclaim an opinion due to the uncertainty"]'::jsonb,
 1,
 'Even when management''s plans adequately mitigate the going concern doubt, the auditor includes an emphasis-of-matter paragraph in the audit report to draw attention to the financial statement disclosures about the conditions and management''s plans. The opinion itself remains unmodified if the disclosures are adequate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'If the auditor concludes that substantial doubt about going concern exists and the financial statements do not include adequate disclosures about the matter, the auditor should:',
 '["Issue an unmodified opinion with an emphasis-of-matter paragraph", "Disclaim an opinion because going concern is uncertain", "Issue the standard report without modification", "Issue a qualified or adverse opinion due to the departure from GAAP"]'::jsonb,
 3,
 'Inadequate disclosure of going concern uncertainty is a departure from GAAP. The auditor should issue a qualified opinion if the omission is material but not pervasive, or an adverse opinion if the omission is both material and pervasive. A disclaimer is not appropriate for a GAAP departure.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor sends a letter of inquiry to the client''s external legal counsel. Which of the following matters should the letter specifically request the attorney to evaluate?',
 '["Pending or threatened litigation, claims, and assessments — including the likelihood of an unfavorable outcome and an estimate of the range of potential loss", "The entity''s overall financial health", "The adequacy of the entity''s internal controls", "Whether the entity''s tax returns were filed on time"]'::jsonb,
 0,
 'The inquiry letter to legal counsel specifically requests information about pending or threatened litigation, claims, and assessments. The attorney is asked to evaluate the likelihood of an unfavorable outcome (probable, reasonably possible, or remote) and to provide an estimate of the amount or range of potential loss if reasonably estimable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor learns that a significant lawsuit was filed against the client two weeks after the balance sheet date. The event that gave rise to the lawsuit occurred before year-end. How should the auditor treat this matter?',
 '["Ignore it because the lawsuit was filed after year-end", "Treat it solely as a Type II subsequent event requiring disclosure only", "Evaluate whether it represents a Type I subsequent event that requires adjustment to the financial statements", "Withdraw from the engagement due to the litigation risk"]'::jsonb,
 2,
 'Because the underlying event occurred before year-end, the lawsuit filed after the balance sheet date provides additional evidence about a condition existing at the balance sheet date. The auditor should evaluate whether the financial statements should be adjusted to reflect the probable loss (Type I subsequent event) or at minimum ensure proper disclosure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'The auditor designs a test of details for the valuation of accounts receivable. Which of the following procedures is most relevant?',
 '["Evaluating the adequacy of the allowance for doubtful accounts by analyzing aging, historical loss rates, and current economic conditions", "Inspecting the credit approval process for new customers", "Tracing sales invoices to shipping documents", "Confirming selected receivable balances with customers"]'::jsonb,
 3,
 'Evaluating the allowance for doubtful accounts directly tests the valuation assertion for accounts receivable. This involves analyzing the aged receivables schedule, reviewing historical write-off patterns, considering current economic conditions, and evaluating management''s assumptions about collectibility.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'When performing substantive analytical procedures on payroll expense, which of the following expectations would be most precise and reliable?',
 '["Comparing total payroll expense to the prior year and expecting a similar amount", "Comparing payroll expense to revenue and expecting a consistent ratio", "Reviewing the payroll register for unusual entries", "Multiplying the average number of employees by the average pay rate for each department, adjusted for known raises and hiring changes"]'::jsonb,
 3,
 'Developing an expectation using disaggregated data (by department), specific operational data (headcounts, pay rates, known changes), and independent sources produces the most precise and reliable expectation. This approach creates a narrow threshold for investigation, making the analytical procedure more effective as substantive evidence.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor is testing inventory at a client that uses a perpetual inventory system and conducts cycle counts throughout the year rather than a full physical count at year-end. The auditor should:',
 '["Require the client to perform a full physical count at year-end", "Accept the perpetual records without further testing", "Evaluate the reliability of the perpetual system and cycle count procedures, observe selected cycle counts during the year, and test the roll-forward to year-end", "Disclaim an opinion because no year-end count was performed"]'::jsonb,
 2,
 'When a client uses perpetual inventory with cycle counts, the auditor evaluates the reliability of the perpetual system, observes selected cycle counts during the year, tests the reconciliation between cycle count results and perpetual records, and tests the roll-forward of inventory to year-end. A full year-end count is not required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'During the observation of inventory, the auditor performs test counts. The primary purpose of test counts is to:',
 '["Verify that the client''s count teams are following proper counting procedures and that the count is accurate", "Determine the total value of inventory on hand", "Identify obsolete inventory for write-down", "Count all inventory items in the warehouse"]'::jsonb,
 0,
 'Test counts serve two purposes: to evaluate whether the client''s count teams are following proper procedures (testing from the floor to the count sheets and from count sheets to the floor) and to obtain evidence about the accuracy of the count. The auditor does not count all items — test counts are samples to validate the process.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor identifies potential related parties by reviewing which of the following?',
 '["Only the client''s trial balance", "The prior year audit report", "The client''s marketing materials", "Proxy statements, SEC filings, organizational charts, and inquiry of management about relationships with officers, directors, and affiliates"]'::jsonb,
 3,
 'Related parties are identified through multiple procedures: reviewing proxy statements, SEC filings, corporate minutes, organizational charts, and conflict-of-interest questionnaires; inquiring of management about relationships with officers, directors, and affiliated entities; and examining unusual transactions for indications of previously undisclosed relationships.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor discovers after the audit report date that a fact existed at the report date that might have caused the auditor to revise the report. Under AU-C 560, the auditor''s response should depend on:',
 '["Whether the audit fee has already been collected", "Whether the client requests the auditor to investigate", "Whether the statute of limitations has expired", "Whether the financial statements have already been issued to users and whether the fact, if known at the report date, would have affected the report"]'::jsonb,
 3,
 'The auditor''s response depends on whether the financial statements have been issued and whether the newly discovered fact would have caused the auditor to revise the report had it been known. If the statements have been issued, the auditor discusses with management and evaluates whether the statements should be revised and reissued.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor uses a ratio analysis comparing cost of goods sold to revenue and notices a significant decline from the prior year. This change could indicate:',
 '["A possible overstatement of revenue or understatement of cost of goods sold, warranting further investigation", "Normal business operations with no audit significance", "That the company has improved its efficiency and no further testing is needed", "That the auditor should immediately issue a qualified opinion"]'::jsonb,
 0,
 'A significant decline in the cost of goods sold to revenue ratio could indicate overstated revenue (e.g., fictitious sales without corresponding cost), understated cost of goods sold (e.g., improper capitalization or cutoff errors), or a genuine change in business operations. The auditor should investigate the cause before drawing conclusions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'Which of the following is a prerequisite for using substantive analytical procedures as the primary source of evidence for a significant account balance?',
 '["The account must have a balance below materiality", "Substantive analytical procedures can never be the primary evidence for significant account balances", "The relationship being tested must be predictable and based on plausible expectations using reliable data", "The client must provide written assurance that the balance is correct"]'::jsonb,
 2,
 'Substantive analytical procedures can serve as the primary source of evidence when the relationship is sufficiently predictable, the expectation is precise enough to identify material misstatements, and the data used to develop the expectation is reliable. For significant accounts with high risk, tests of details may also be needed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'When evaluating going concern under AU-C 570, the auditor''s evaluation period covers:',
 '["The next five years from the balance sheet date", "The current fiscal year only", "An indefinite future period", "A reasonable period of time, not to exceed one year beyond the date the financial statements are issued or available to be issued"]'::jsonb,
 3,
 'Under AU-C 570, the auditor evaluates whether substantial doubt exists about the entity''s ability to continue as a going concern for a reasonable period of time, which is defined as not exceeding one year beyond the date the financial statements are issued (or available to be issued).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor discovers that the client failed to record a material purchase of inventory that was received before year-end. The invoice was recorded in January. This error most directly affects which assertion?',
 '["Existence", "Valuation", "Cutoff", "Classification"]'::jsonb,
 2,
 'Recording a purchase in January when the goods were received before year-end is a cutoff error. The transaction should have been recorded in the period when the goods were received (before year-end). This results in an understatement of both inventory and accounts payable at year-end.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor uses the work of a specialist to evaluate the fair value of mineral reserves. The specialist is employed by the audit firm. Under AU-C 620, the auditor should:',
 '["Always name the specialist in the audit report", "Not refer to the specialist in the audit report if the opinion is unmodified", "Disclaim responsibility for the specialist''s conclusions", "Require the specialist to sign the audit report"]'::jsonb,
 1,
 'When using an auditor''s specialist (one employed by or engaged by the firm), the auditor should not refer to the specialist in the audit report if issuing an unmodified opinion. The auditor takes sole responsibility for the opinion. Reference to the specialist is permitted only in a modified opinion if relevant to understanding the modification.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'During confirmation of accounts receivable, the auditor maintains control of the confirmation process. Which of the following best describes what "maintaining control" means?',
 '["The auditor selects the items, prepares and sends the requests, and receives the responses directly without client interception", "The auditor reviews confirmations after management sends them", "Management sends the confirmations and provides copies to the auditor", "The client''s internal audit department manages the confirmation process"]'::jsonb,
 0,
 'Maintaining control means the auditor personally selects the accounts to be confirmed, prepares or supervises the preparation of confirmation requests, sends them directly to the respondents, and ensures responses are returned directly to the auditor. This prevents management from intercepting or altering confirmations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor suspects that the client may have fictitious vendors in its accounts payable system used to generate fraudulent payments. Which substantive procedure is most effective?',
 '["Confirming accounts payable balances with all known vendors", "Reviewing the accounts payable aging schedule for large balances", "Recalculating the total accounts payable balance", "Selecting payments to vendors with only P.O. box addresses, no phone numbers, or other suspicious attributes, and verifying the legitimacy of the vendors and the reality of the goods or services received"]'::jsonb,
 3,
 'To detect fictitious vendors, the auditor should focus on vendor attributes that suggest they may not be real businesses — such as P.O. box-only addresses, no telephone numbers, single-employee vendors, or vendors matching employee names or addresses. Verifying the legitimacy of suspicious vendors and the reality of goods/services received is the most effective approach.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'When performing a search for unrecorded liabilities, the auditor should focus on which time period?',
 '["Only transactions recorded during the last week of the fiscal year", "Only transactions that occurred before the fiscal year began", "Cash disbursements and invoices received after year-end through the completion of fieldwork", "Only transactions that will occur in the next fiscal year"]'::jsonb,
 2,
 'The search for unrecorded liabilities examines cash disbursements made after year-end, invoices received after year-end, and unmatched receiving reports to identify obligations that existed at year-end but were not recorded. This procedure tests the completeness assertion for liabilities and covers the period from year-end through the completion of fieldwork.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor is testing the rights and obligations assertion for real estate owned by the client. Which of the following procedures best addresses this assertion?',
 '["Examining title documents, property tax records, and mortgage agreements", "Physically inspecting the property", "Recalculating depreciation expense", "Reviewing the property insurance policy"]'::jsonb,
 0,
 'Examining title documents (deeds), property tax records in the entity''s name, and mortgage agreements directly addresses whether the entity has legal rights to the real estate and whether any obligations (liens, mortgages) exist. Physical inspection addresses existence, depreciation addresses valuation, and insurance is corroborative but not primary evidence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor is evaluating management''s going concern assessment. Management presents a plan to sell a major division to raise cash. The auditor should:',
 '["Accept the plan at face value if management seems confident", "Require management to complete the sale before issuing the audit report", "Evaluate the feasibility of the plan by examining whether a buyer has been identified, whether negotiations are underway, and whether the expected proceeds and timing are realistic", "Ignore the plan and base the going concern assessment solely on historical financial data"]'::jsonb,
 2,
 'The auditor must evaluate the feasibility and timing of management''s plans to mitigate going concern doubt. For an asset sale, this includes assessing whether a buyer exists, the stage of negotiations, the realistic sale price, expected timing, and whether the proceeds would be sufficient to address the entity''s liquidity needs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'During the audit, the auditor identifies indicators that the client may have understated its environmental remediation liability. Which of the following would be the most appropriate substantive procedure?',
 '["Engaging an environmental specialist to assess the extent of contamination and estimate cleanup costs, and comparing the results to management''s recorded liability", "Confirming the liability balance with the EPA", "Accepting management''s estimate because environmental matters are inherently uncertain", "Excluding the liability from the scope of the audit"]'::jsonb,
 0,
 'When evidence suggests a possible understatement of an environmental liability, the auditor should consider engaging a specialist to independently assess the contamination and estimate remediation costs. The specialist''s findings are compared to management''s recorded amount to evaluate whether the liability is adequate.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor selects a sample of recorded fixed asset additions during the year and vouches them to invoices, receiving reports, and capital authorization forms. This test primarily addresses which assertion?',
 '["Completeness of fixed assets", "Classification of fixed assets as current or noncurrent", "Presentation of fixed assets in the notes", "Existence and valuation of fixed asset additions"]'::jsonb,
 3,
 'Vouching recorded additions to supporting documentation (invoices for cost, receiving reports for receipt, and capital authorization for approval) primarily tests existence (the asset was actually acquired) and valuation (the amount recorded agrees to the purchase price). Starting from the recorded amount and tracing backward tests occurrence/existence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'Which of the following is the most appropriate procedure when the auditor suspects that journal entries may have been used to manipulate financial results?',
 '["Review only standard, recurring journal entries for completeness", "Accept management''s explanation that all journal entries are appropriate", "Test a selection of non-standard journal entries, particularly those made near period-end, to unusual accounts, or by senior personnel, by examining the supporting documentation and business purpose", "Test only journal entries above a specific dollar threshold"]'::jsonb,
 2,
 'When fraud risk involving journal entries exists, the auditor should focus on non-standard entries, particularly those made near the end of reporting periods, posted to unusual account combinations, prepared by senior personnel outside their normal duties, or lacking adequate supporting documentation. AU-C 240 specifically requires testing journal entries as an anti-fraud procedure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor is performing a substantive test of payroll. Which of the following procedures best tests the existence assertion for payroll?',
 '["Recalculating gross-to-net pay for a sample of employees", "Comparing payroll tax deposits to W-2 forms", "Tracing payroll journal entries to the general ledger", "Observing the distribution of paychecks or direct deposit confirmations to verify that recorded employees are real individuals"]'::jsonb,
 3,
 'Observing paycheck distribution or verifying direct deposit recipients against personnel records tests whether recorded employees actually exist. Ghost employees (fictitious employees created to generate fraudulent payroll payments) are a common payroll fraud scheme, and physical distribution observation or identity verification directly addresses the existence assertion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'When the auditor identifies a material misstatement that the auditor believes is intentional, the auditor should:',
 '["Consider the implications for the entire audit, communicate the matter to those charged with governance, and evaluate the effect on the financial statements and audit report", "Increase the sample size and continue testing without further action", "Immediately resign from the engagement without notifying anyone", "Record the misstatement and proceed with the remaining audit procedures without escalation"]'::jsonb,
 0,
 'When an intentional material misstatement (fraud) is suspected, AU-C 240 requires the auditor to consider the implications for all aspects of the audit, re-evaluate the risk assessment, communicate with those charged with governance (and potentially to regulatory authorities), and determine the effect on the audit report. The auditor cannot simply continue without escalation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor tests the completeness of accounts payable by examining invoices received after year-end. Several large invoices dated in December were not recorded until January. The auditor should:',
 '["Accept the January recording because the invoices were paid on time", "Notify the SEC of the late recording", "Propose an adjusting entry to record the payables in the proper period and evaluate whether the misstatement is material", "Ignore the timing difference if the amounts are below the individually significant threshold"]'::jsonb,
 2,
 'Invoices for goods or services received before year-end that were not recorded until January represent a cutoff error that understates accounts payable and overstates net income. The auditor should propose an adjusting entry and evaluate whether the aggregate misstatement, combined with other identified misstatements, is material.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor develops a regression model to estimate expected depreciation expense based on historical data and known changes in the asset base. This is an example of:',
 '["A test of controls", "An inquiry of management", "An inspection of tangible assets", "A substantive analytical procedure using a statistical method to develop the expectation"]'::jsonb,
 3,
 'Using a regression model to develop an independent expectation of an account balance is a substantive analytical procedure. The statistical relationship between variables (asset base, useful lives, depreciation methods) creates a precise expectation that the auditor compares to the recorded amount to identify potential misstatements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'During accounts receivable confirmation, an auditor receives a confirmation response that is delivered electronically via email. The auditor should:',
 '["Accept the response without further verification", "Reject all electronic responses and require paper confirmations only", "Evaluate the risks that the electronic response may not be authentic (such as interception or forgery) and consider performing additional procedures to verify the sender''s identity", "Forward the response to management for verification"]'::jsonb,
 2,
 'Electronic confirmation responses carry risks of inauthenticity, including email spoofing, interception, or alteration. The auditor should evaluate these risks and may need to take additional steps to verify the identity of the sender, such as calling the respondent directly at a known phone number or using a secure confirmation platform.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor is evaluating going concern indicators for a manufacturing company. Which of the following management plans would most effectively mitigate going concern doubt?',
 '["An executed binding agreement for a new $20 million credit facility with a major bank, sufficient to cover projected cash flow deficits for the next 18 months", "A plan to reduce employee travel expenses by 10%", "A verbal commitment from a potential investor with no written agreement", "A plan to increase advertising spending to grow revenue"]'::jsonb,
 0,
 'The most effective mitigation plans are those that are concrete, executed, and sufficient to address the identified problems. A signed binding credit agreement with a major bank that covers projected shortfalls provides the strongest evidence. Verbal commitments, minor cost reductions, and aspirational revenue plans are less persuasive due to greater uncertainty.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'When an attorney''s response to an audit inquiry letter states that the attorney cannot form an opinion regarding the likelihood of an unfavorable outcome of a major lawsuit, the auditor should:',
 '["Accept the response and issue an unmodified opinion", "Withdraw from the engagement immediately", "Instruct the attorney to provide a definitive assessment", "Consider this a scope limitation and evaluate whether sufficient evidence can be obtained through other procedures"]'::jsonb,
 3,
 'When an attorney cannot or will not evaluate the likelihood of an unfavorable outcome of a significant legal matter, the auditor faces a potential scope limitation. The auditor should consider whether sufficient evidence can be obtained through other means (such as inquiry of management, review of board minutes, or consultation with the auditor''s own legal counsel).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Substantive Procedures',
 'An auditor identifies that management has significant transactions with an entity owned by the CEO''s spouse. To evaluate these related party transactions, the auditor should:',
 '["Accept management''s assertion that the transactions are at arm''s length", "Ignore the transactions because spousal relationships are not considered related parties", "Examine the terms of the transactions, compare prices to market rates, evaluate the business purpose, and verify that adequate disclosure has been made in the financial statements", "Require the CEO to divest the spouse''s ownership interest"]'::jsonb,
 2,
 'The auditor should evaluate related party transactions by examining the terms and conditions, comparing them to arm''s-length transactions, assessing the economic substance and business purpose, and verifying that the financial statements include all required disclosures about the nature and amounts of related party transactions.',
 'medium');

-- AUD Chunk 4: Audit Reports, Review and Compilation, Review/Compilation Engagements, Attestation Engagements

-- =============================================================================
-- Audit Reports (42 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor has completed the audit of a nonpublic entity and determined that the financial statements are presented fairly in all material respects. Which type of opinion should the auditor issue?',
 '["Qualified opinion", "Unmodified opinion", "Adverse opinion", "Disclaimer of opinion"]'::jsonb,
 1,
 'When the auditor concludes that the financial statements are presented fairly in all material respects in accordance with the applicable financial reporting framework, an unmodified (clean) opinion is appropriate. A qualified opinion is issued when there is a material but not pervasive misstatement or scope limitation. Adverse opinions and disclaimers address more severe situations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'Which of the following is NOT a required element of an auditor''s standard unmodified report under AU-C 700?',
 '["Title that includes the word ''independent''", "Addressee", "A statement that the auditor has verified all transactions during the period", "Auditor''s signature"]'::jsonb,
 2,
 'The auditor''s report does not state that the auditor verified all transactions. That would imply absolute assurance, whereas an audit provides reasonable assurance. Required elements include a title referencing independence, an addressee, the opinion paragraph, basis for opinion, management and auditor responsibilities, and the auditor''s signature.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'The introductory paragraph of a standard unmodified audit report identifies the financial statements audited. Which of the following is also stated in this section?',
 '["The audit was conducted in accordance with GAAS", "The period covered by the financial statements", "The auditor''s responsibility to express an opinion", "The applicable financial reporting framework"]'::jsonb,
 1,
 'The introductory section of the audit report identifies the entity, the financial statements that were audited, and the period covered. The statement about GAAS appears in the Basis for Opinion section, auditor responsibilities appear in their own section, and the financial reporting framework is referenced in the Opinion section.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'In an unmodified audit report, management''s responsibility section states that management is responsible for which of the following?',
 '["Conducting the audit in accordance with GAAS", "Determining materiality levels for the audit", "Communicating deficiencies to those charged with governance", "The preparation and fair presentation of the financial statements"]'::jsonb,
 2,
 'The management responsibility section explicitly states that management is responsible for the preparation and fair presentation of the financial statements in accordance with the applicable framework, as well as for internal control relevant to that preparation. Conducting the audit, setting materiality, and communicating deficiencies are auditor responsibilities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor issues a qualified opinion due to a material departure from GAAP. How does this affect the opinion paragraph wording?',
 '["The opinion states the financial statements are presented fairly ''except for'' the effects of the departure", "The opinion states the auditor was unable to obtain sufficient appropriate evidence", "The opinion paragraph is replaced entirely by an explanatory paragraph", "The auditor disclaims an opinion on the financial statements"]'::jsonb,
 0,
 'When a qualified opinion is issued due to a material GAAP departure, the opinion paragraph uses the phrase ''except for'' the effects of the matter giving rise to the qualification. The ''except for'' language limits the qualification to the specific departure while still opining on the remainder of the financial statements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'A scope limitation occurs when the auditor is unable to obtain sufficient appropriate audit evidence. If the possible effects are material but not pervasive, which opinion is appropriate?',
 '["Unmodified opinion", "Qualified opinion", "Adverse opinion", "Disclaimer of opinion"]'::jsonb,
 1,
 'When a scope limitation results in possible effects that are material but not pervasive to the financial statements, the auditor issues a qualified opinion. If the possible effects were both material and pervasive, a disclaimer of opinion would be appropriate. An adverse opinion applies to known material and pervasive misstatements, not scope limitations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor determines that a client''s financial statements contain a misstatement that is both material and pervasive. The client refuses to correct the misstatement. Which opinion should the auditor issue?',
 '["Qualified opinion", "Disclaimer of opinion", "Adverse opinion", "Unmodified opinion with emphasis-of-matter paragraph"]'::jsonb,
 2,
 'An adverse opinion is issued when the auditor concludes that misstatements, individually or in the aggregate, are both material and pervasive to the financial statements. The term pervasive means the effects are not confined to specific elements or accounts but affect the financial statements as a whole or represent a substantial proportion of them.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'When the auditor is unable to obtain sufficient appropriate audit evidence and the possible effects on the financial statements are both material and pervasive, the auditor should issue a:',
 '["Qualified opinion", "Adverse opinion", "Disclaimer of opinion", "Unmodified opinion with other-matter paragraph"]'::jsonb,
 2,
 'A disclaimer of opinion is issued when the auditor is unable to obtain sufficient appropriate audit evidence on which to base an opinion and concludes that the possible effects of undetected misstatements could be both material and pervasive. The auditor states they do not express an opinion on the financial statements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor decides to add an emphasis-of-matter paragraph to the audit report. Which of the following conditions must be met?',
 '["The matter must result in a modification to the auditor''s opinion", "The matter must relate to a scope limitation", "The auditor must obtain written permission from management", "The matter must be adequately disclosed in the financial statements"]'::jsonb,
 2,
 'An emphasis-of-matter paragraph is included when the auditor considers it necessary to draw users'' attention to a matter that is appropriately presented or disclosed in the financial statements and that is fundamental to users'' understanding. The matter must be adequately disclosed; the paragraph does not modify the opinion, is not related to scope limitations, and does not require management permission.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'Which of the following circumstances would most likely require an emphasis-of-matter paragraph in the auditor''s report?',
 '["The entity has a significant related-party transaction that is fully disclosed", "The entity changed its inventory valuation method from FIFO to LIFO", "The auditor was unable to observe the year-end inventory count", "The entity''s management refused to sign the representation letter"]'::jsonb,
 1,
 'A change in accounting principle that has a material effect on the financial statements requires an emphasis-of-matter paragraph to draw attention to the change note. The inability to observe inventory is a scope limitation, and refusal to sign the representation letter may lead to a disclaimer. A disclosed related-party transaction may or may not warrant emphasis depending on circumstances.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An other-matter paragraph in the audit report differs from an emphasis-of-matter paragraph primarily because it:',
 '["Addresses a matter not disclosed in the financial statements", "Results in a modification of the opinion", "Is required only for public company audits", "Communicates a going concern doubt"]'::jsonb,
 0,
 'An other-matter paragraph refers to a matter that is relevant to users'' understanding of the audit, the auditor''s responsibilities, or the auditor''s report but is not presented or disclosed in the financial statements. In contrast, an emphasis-of-matter paragraph draws attention to a matter that is disclosed in the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'Under AU-C 701, key audit matters (KAMs) are reported for audits of which type of entities?',
 '["Entities that elect to include KAMs voluntarily or when required by law", "All nonpublic entities", "Only entities with material weaknesses", "Only government entities"]'::jsonb,
 0,
 'Under AU-C 701 for nonissuers, KAMs are communicated in the auditor''s report when the auditor is engaged to do so, when required by law or regulation, or when the auditor voluntarily decides to communicate them. KAMs are not a default requirement for all nonpublic entity audits. For issuers, critical audit matters are required under PCAOB AS 3101.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'When key audit matters are communicated in the audit report, the auditor describes each KAM and explains:',
 '["Why the matter was considered a KAM and how it was addressed in the audit", "The specific audit procedures performed and their detailed results", "The dollar amount of each misstatement identified", "Management''s response to the identified risk"]'::jsonb,
 0,
 'For each KAM, the auditor describes why the matter was considered to be a key audit matter and how the matter was addressed in the audit. The auditor does not provide detailed results of procedures or specific misstatement amounts. KAM disclosures are meant to provide transparency about the most significant matters in the audit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'When comparative financial statements are presented and the auditor''s opinion on the prior-period statements differs from the opinion previously expressed, the auditor should:',
 '["Reissue the prior-period report without changes", "Include an other-matter paragraph disclosing the date and type of the previous opinion and the reasons for the different opinion", "Disclaim an opinion on both years", "Issue a qualified opinion on both years"]'::jsonb,
 1,
 'When the auditor''s current opinion on the prior period differs from the opinion previously expressed, the auditor includes an other-matter paragraph that states the date and type of the previous opinion, the circumstances or events causing the different opinion, and that the opinion is different. This provides transparency about the change.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'A predecessor auditor is asked to reissue the audit report on prior-period comparative financial statements. Before doing so, the predecessor should:',
 '["Accept without additional procedures since the work was already completed", "Read the current-period financial statements and the successor auditor''s report", "Perform a complete re-audit of the prior-period financial statements", "Obtain a new engagement letter from the entity''s audit committee"]'::jsonb,
 1,
 'Before reissuing a report, the predecessor auditor should read the current-period financial statements, obtain a representation letter from management, compare the prior-period statements with those previously reported on, and read the successor auditor''s report. These procedures help identify events that may affect the previously issued report.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'Under AU-C 720, the auditor''s responsibility for other information included in documents containing audited financial statements is to:',
 '["Audit the other information with the same rigor as the financial statements", "Read the other information and consider whether there is a material inconsistency with the financial statements", "Disclaim responsibility for all other information", "Verify the accuracy of all statistical data in the annual report"]'::jsonb,
 1,
 'Under AU-C 720, the auditor reads the other information and considers whether there is a material inconsistency between the other information and the financial statements, or whether the other information appears to contain a material misstatement of fact. The auditor does not audit the other information or verify all statistical data.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'If the auditor identifies a material inconsistency between the other information and the audited financial statements, and management refuses to revise the other information, the auditor should:',
 '["Withdraw from the engagement immediately", "Issue an adverse opinion on the financial statements", "Communicate the matter to those charged with governance and consider the implications for the auditor''s report", "Take no further action since the other information is not audited"]'::jsonb,
 2,
 'When a material inconsistency exists and management refuses to correct it, the auditor communicates the matter to those charged with governance and considers whether to include the matter in the auditor''s report, modify the opinion, or withdraw from the engagement. Simply ignoring the inconsistency is not appropriate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor is engaged to report on supplementary information that accompanies the audited financial statements. Under AU-C 725, the auditor''s report on the supplementary information may be:',
 '["Included as an other-matter paragraph in the auditor''s report on the financial statements or in a separate report", "Only issued as a separate standalone report", "Only included as part of the opinion paragraph", "Issued only if the supplementary information is required by GAAP"]'::jsonb,
 0,
 'Under AU-C 725, the auditor may report on supplementary information either in an other-matter paragraph within the report on the financial statements or in a separate report. Both options are acceptable. The supplementary information does not need to be GAAP-required; voluntarily presented information can also be reported on.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An entity is experiencing significant financial difficulties, and the auditor has substantial doubt about its ability to continue as a going concern. If adequate disclosure is made, the auditor should:',
 '["Issue an adverse opinion", "Issue an unmodified opinion with an emphasis-of-matter paragraph about going concern", "Issue a disclaimer of opinion", "Issue a qualified opinion due to the uncertainty"]'::jsonb,
 1,
 'When substantial doubt about going concern exists and is adequately disclosed, the auditor issues an unmodified opinion with an emphasis-of-matter paragraph that includes the terms ''substantial doubt'' and ''going concern.'' The going concern uncertainty does not, by itself, require a modified opinion if disclosure is adequate.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'The going concern emphasis-of-matter paragraph in an auditor''s report should include a reference to:',
 '["The note in the financial statements that discloses the relevant conditions and events", "The specific dollar amount of the entity''s projected losses", "The exact date the entity is expected to cease operations", "Management''s personal guarantee of the entity''s survival"]'::jsonb,
 0,
 'The going concern emphasis-of-matter paragraph should reference the note in the financial statements that describes the conditions or events giving rise to the substantial doubt, and the related plans of management. The auditor does not include projected loss amounts, predicted cessation dates, or personal guarantees.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'During the audit, an auditor discovers that the entity changed its method of depreciation from double-declining balance to straight-line. This change is properly disclosed and the auditor concurs with it. The auditor should:',
 '["Issue a qualified opinion for the inconsistency", "Include an emphasis-of-matter paragraph regarding the change in accounting principle", "Issue an adverse opinion", "Issue an unmodified opinion with no additional paragraphs"]'::jsonb,
 1,
 'A change in accounting principle that is properly applied and adequately disclosed requires the auditor to include an emphasis-of-matter paragraph in the report. This paragraph draws attention to the change note in the financial statements so users understand the effect on comparability. The opinion itself remains unmodified.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'A client presents its balance sheet on a tax basis rather than GAAP. If the auditor determines this special purpose framework is appropriate and fairly presented, the report should:',
 '["Express a qualified opinion noting the departure from GAAP", "Express an unmodified opinion using the special purpose framework opinion format", "Express an adverse opinion because GAAP was not followed", "Disclaim an opinion due to the non-GAAP presentation"]'::jsonb,
 1,
 'When financial statements are prepared using a special purpose framework such as the tax basis, the auditor can issue an unmodified opinion if the statements are fairly presented within that framework. The report includes an emphasis-of-matter paragraph or description noting the basis of accounting used and that the framework differs from GAAP.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor issues a report on financial statements prepared using a regulatory basis of accounting intended for general use. The report should include:',
 '["An opinion on the regulatory basis and, in a separate paragraph, an opinion that the statements are not in conformity with GAAP", "A disclaimer of opinion on the regulatory basis", "An unmodified opinion without any additional paragraphs", "An adverse opinion only"]'::jsonb,
 3,
 'When regulatory-basis financial statements are intended for general use, AU-C 800 requires the auditor to express an opinion on whether the statements are presented in accordance with the regulatory basis and include a separate paragraph stating the statements are not in accordance with GAAP. This dual opinion ensures users understand the basis.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'A qualified opinion due to a scope limitation differs from a disclaimer of opinion primarily based on:',
 '["Whether the client caused the limitation or it was beyond their control", "Whether the possible effects of the undetected misstatement are material but not pervasive, versus material and pervasive", "Whether the limitation relates to current-year or prior-year balances", "Whether the auditor has issued a management letter"]'::jsonb,
 1,
 'The key distinction between a qualified opinion and a disclaimer of opinion for a scope limitation is the pervasiveness of the possible effects. If the possible effects are material but not pervasive, a qualified opinion is appropriate. If the possible effects are both material and pervasive to the financial statements, a disclaimer is required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'Management imposes a scope limitation that prevents the auditor from performing necessary procedures on a significant account. The auditor should first:',
 '["Immediately issue a disclaimer of opinion", "Request that management remove the limitation and communicate the matter to those charged with governance", "Withdraw from the engagement without further communication", "Issue an unmodified opinion and document the limitation in the workpapers"]'::jsonb,
 1,
 'When management imposes a scope limitation, the auditor should first request removal of the limitation. If management refuses, the auditor communicates with those charged with governance and determines whether it is possible to perform alternative procedures. Only after exhausting these steps does the auditor determine the appropriate opinion modification.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor''s report on the financial statements of a nonpublic entity includes the statement ''In our opinion, except for the effects of the matter described in the Basis for Qualified Opinion section...'' This language indicates:',
 '["A disclaimer of opinion", "A qualified opinion due to a misstatement or scope limitation", "An adverse opinion", "An unmodified opinion with emphasis-of-matter"]'::jsonb,
 1,
 'The ''except for'' language is the hallmark of a qualified opinion. It indicates that the auditor has identified a matter that is material but not pervasive to the financial statements. The Basis for Qualified Opinion section describes the specific matter, and the opinion paragraph carves out that specific exception.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'Which of the following matters would most likely cause an auditor to issue an adverse opinion rather than a qualified opinion?',
 '["The entity failed to consolidate a material subsidiary, and the effects are pervasive to the financial statements", "The entity changed its depreciation method", "The auditor was unable to observe inventory at one location", "The entity disclosed a subsequent event that required an emphasis-of-matter paragraph"]'::jsonb,
 0,
 'Failure to consolidate a material subsidiary results in misstatements affecting multiple financial statement line items (assets, liabilities, revenue, expenses), making the effects both material and pervasive. This level of pervasive misstatement requires an adverse opinion rather than a qualified opinion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'When an auditor issues a qualified or adverse opinion, the Basis for Opinion section must include:',
 '["A description of the matter giving rise to the modification and quantification of the effects if practicable", "Only a general statement that the financial statements are misstated", "A recommendation for how management should correct the issue", "A reference to the IRS code section that applies"]'::jsonb,
 0,
 'The Basis for Qualified (or Adverse) Opinion section must describe the matter giving rise to the modification. For misstatements, the auditor quantifies the financial effects if practicable. For scope limitations, the auditor describes why sufficient evidence could not be obtained. The section explains the specific nature and impact.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor issues a report on group financial statements and decides not to reference the component auditor. In this case, the group engagement partner:',
 '["Assumes no responsibility for the component auditor''s work", "Must disclaim an opinion on the group financial statements", "Must reperform all procedures of the component auditor", "Assumes responsibility for the component auditor''s work as it relates to the group opinion"]'::jsonb,
 2,
 'When the group engagement partner decides not to reference the component auditor, the group engagement partner assumes responsibility for the component auditor''s work. This means the group auditor must be involved in the component auditor''s work through direction, supervision, or review to a sufficient degree.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'If a group engagement partner decides to reference a component auditor in the group audit report, the report should:',
 '["Name the component auditor and describe their qualifications", "Indicate the division of responsibility by stating the magnitude of the component audited", "Include the component auditor''s complete report as an appendix", "State that the group engagement partner takes full responsibility for the component work"]'::jsonb,
 1,
 'When referencing a component auditor, the group audit report discloses the division of responsibility by stating the magnitude of the financial statements audited by the component auditor (e.g., percentage of assets or revenues). The component auditor is not named unless required by law or regulation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'During the audit of comparative financial statements, the auditor resolves a prior-year scope limitation. The current-year opinion on the prior period should be:',
 '["A disclaimer of opinion, consistent with the original report", "An adverse opinion due to the original limitation", "A qualified opinion regardless of the results", "Updated based on the results of the additional procedures performed"]'::jsonb,
 3,
 'When a prior-year scope limitation has been resolved through procedures performed in the current year, the auditor updates the opinion on the prior-period financial statements based on the results of those additional procedures. The auditor is not required to maintain the original opinion if the circumstances have changed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor dates the audit report on March 15, 2026. A subsequent event occurring on March 20 comes to the auditor''s attention before the report is released. The auditor should:',
 '["Ignore the event since it occurred after the report date", "Dual-date the report for the subsequent event or extend the report date to March 20", "Issue a completely new audit report with a new engagement letter", "Add a disclaimer paragraph about the subsequent event"]'::jsonb,
 1,
 'When a subsequent event occurs between the report date and the date the report is released, the auditor may either dual-date the report (keeping the original date except for the specific event) or extend the report date to the later date. If dual-dating, the auditor''s responsibility for events after the original date is limited to the specific event.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An entity has a lawsuit pending that could result in a material loss. The outcome is reasonably possible but not probable, and adequate disclosure is made. What effect does this have on the auditor''s report?',
 '["The auditor issues an unmodified opinion since the matter is properly disclosed", "The auditor must add an emphasis-of-matter paragraph", "The auditor should issue a disclaimer of opinion", "The auditor should issue a qualified opinion"]'::jsonb,
 3,
 'A contingency that is reasonably possible and properly disclosed in the notes to the financial statements does not require modification of the auditor''s opinion. GAAP requires note disclosure for reasonably possible contingencies, and if management has complied, the auditor issues an unmodified opinion without additional paragraphs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor discovers that a client has omitted the statement of cash flows from its GAAP financial statements. The omission is material. The auditor should:',
 '["Issue an unmodified opinion with an emphasis-of-matter paragraph", "Issue a qualified or adverse opinion for the departure from GAAP", "Issue a disclaimer of opinion", "Request the client prepare the statement and delay the report"]'::jsonb,
 1,
 'Omission of a required financial statement (the statement of cash flows is required under GAAP) constitutes a departure from the applicable financial reporting framework. Depending on whether the omission is material but not pervasive or material and pervasive, the auditor issues a qualified or adverse opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor has been asked to report on only one financial statement—the balance sheet. Under AU-C 805, which of the following is true?',
 '["The auditor cannot report on a single financial statement", "The auditor may report on a single financial statement, and the opinion is on that statement alone", "A report on a single statement must include a disclaimer on the other statements", "The auditor must also audit the income statement to form an opinion on the balance sheet"]'::jsonb,
 1,
 'AU-C 805 permits the auditor to report on a single financial statement or a specific element of a financial statement. The opinion relates only to that specific statement. The auditor considers the interrelationship of accounts but is not required to audit other statements to form the opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'When the auditor has issued an adverse opinion on the complete set of financial statements, can the auditor also report on a single financial statement in a separate report?',
 '["Yes, if the single statement is not tainted by the matter causing the adverse opinion and the single-statement report is not published with the adverse report", "No, an adverse opinion on the complete set prevents reporting on any component", "Yes, but only if management requests it in writing", "No, unless the entity is a government entity"]'::jsonb,
 0,
 'AU-C 805 allows reporting on a single financial statement even when an adverse opinion was issued on the complete set, provided the matter causing the adverse opinion does not affect the single statement. Additionally, the single-statement report should not be published together with the adverse report to avoid confusion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'Under AU-C 706, when is an auditor required to include an emphasis-of-matter paragraph in the report?',
 '["When there is a change in accounting principle, going concern doubt, or a matter the auditor believes is fundamental to users'' understanding", "When the auditor wants to disclaim an opinion", "Only when the financial statements contain a material misstatement", "Only when the entity requests it"]'::jsonb,
 0,
 'AU-C 706 requires an emphasis-of-matter paragraph when the auditor considers it necessary to draw users'' attention to matters that are fundamental to their understanding of the financial statements. Common required circumstances include going concern doubt, changes in accounting principles, and certain uncertainties.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'In an unmodified audit report, the Basis for Opinion section states that the audit was conducted in accordance with:',
 '["International Financial Reporting Standards", "Generally accepted accounting principles", "Auditing standards generally accepted in the United States of America", "Internal auditing standards"]'::jsonb,
 2,
 'The Basis for Opinion section states that the audit was conducted in accordance with auditing standards generally accepted in the United States of America (GAAS). GAAS are the auditing standards, whereas GAAP is the financial reporting framework. IFRS is an alternative reporting framework, and internal auditing standards apply to internal audit functions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'A client corrects a material misstatement in the prior-year financial statements by restating them. The current-year auditor should:',
 '["Ignore the restatement since it relates to the prior year", "Include an emphasis-of-matter paragraph referencing the restatement note", "Issue an adverse opinion for the current year", "Issue a qualified opinion on the current year"]'::jsonb,
 1,
 'When prior-year financial statements are restated to correct a material misstatement, the auditor adds an emphasis-of-matter paragraph that references the note describing the restatement. This alerts users to the correction and its effects on the comparative financial statements. The restatement does not automatically affect the current-year opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'An auditor issues a report containing a going concern emphasis-of-matter paragraph in Year 1. In Year 2, the going concern doubt is resolved. How should the auditor handle the Year 2 report?',
 '["The going concern paragraph must be repeated in Year 2", "The going concern paragraph is not included in Year 2 since the doubt has been resolved", "The auditor must issue a qualified opinion in Year 2 referencing the prior-year doubt", "The auditor must include an other-matter paragraph explaining the resolution"]'::jsonb,
 1,
 'When the conditions giving rise to the going concern doubt have been resolved, the emphasis-of-matter paragraph is no longer necessary in the subsequent year''s report. The auditor evaluates going concern independently each year. If substantial doubt no longer exists, the paragraph is removed from the current-year report.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'A company''s auditor identifies a deficiency in the entity''s disclosure of segment information. The omission is material but affects only the segment disclosure, not the overall financial statements. The most appropriate opinion is:',
 '["Unmodified opinion", "Qualified opinion for the GAAP departure", "Adverse opinion", "Disclaimer of opinion"]'::jsonb,
 1,
 'An inadequate or missing disclosure required by GAAP constitutes a departure from the applicable financial reporting framework. If the departure is material but not pervasive to the financial statements as a whole—affecting only the segment note disclosure—a qualified opinion is appropriate. The Basis for Qualified Opinion section would describe the omitted disclosure.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Audit Reports',
 'Under AU-C 570, which of the following is the auditor''s responsibility regarding going concern?',
 '["To guarantee the entity''s ability to continue as a going concern", "To evaluate whether there is substantial doubt about the entity''s ability to continue as a going concern for a reasonable period of time", "To predict the entity''s future profitability", "To determine whether the entity should file for bankruptcy"]'::jsonb,
 1,
 'The auditor''s responsibility is to evaluate whether there is substantial doubt about the entity''s ability to continue as a going concern for a reasonable period of time (one year from the financial statement date). The auditor does not guarantee viability, predict profitability, or make bankruptcy determinations.',
 'easy');

-- =============================================================================
-- Review and Compilation (36 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Under the SSARS framework, which standards govern review, compilation, and preparation engagements for nonissuers?',
 '["Statements on Auditing Standards (SASs)", "Statements on Standards for Accounting and Review Services (SSARS)", "Statements on Standards for Attestation Engagements (SSAEs)", "Public Company Accounting Oversight Board (PCAOB) standards"]'::jsonb,
 1,
 'SSARS, issued by the AICPA''s Accounting and Review Services Committee, govern preparation, compilation, and review engagements for nonissuers. SASs apply to audits, SSAEs apply to attestation engagements, and PCAOB standards apply to public company engagements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'In a review engagement under SSARS, the accountant obtains what level of assurance?',
 '["Reasonable assurance", "Limited assurance", "Absolute assurance", "No assurance"]'::jsonb,
 1,
 'A review engagement provides limited (also called negative) assurance. The accountant states that nothing came to their attention that causes them to believe the financial statements are not in accordance with the framework. This is less than the reasonable assurance provided by an audit but more than no assurance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'The primary procedures performed in a review engagement are:',
 '["Inquiry of management and analytical procedures", "Inspection of documents and observation of processes", "Confirmation of account balances and vouching of transactions", "Physical examination of assets and recalculation of computations"]'::jsonb,
 0,
 'Review engagements are primarily based on inquiry of management and analytical procedures. These are the two principal procedures that form the basis for the limited assurance provided. Unlike an audit, a review does not involve inspection of documents, confirmation of balances, or physical examination of assets.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'During a review engagement, an accountant performs analytical procedures. Which of the following best describes these procedures?',
 '["Comparing recorded amounts to physical counts of inventory", "Evaluating financial information through analysis of plausible relationships among financial and nonfinancial data", "Confirming account balances with third parties", "Testing internal controls over financial reporting"]'::jsonb,
 1,
 'Analytical procedures in a review engagement involve evaluating financial information by studying plausible relationships among both financial and nonfinancial data. This includes comparing current-year amounts to prior years, industry data, budgets, and expected relationships. They do not involve physical counts, confirmations, or control testing.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'In a compilation engagement, the accountant assists management in presenting financial statements without providing any assurance. Which statement best describes the accountant''s responsibility?',
 '["The accountant must verify the accuracy of the underlying accounting records", "The accountant should read the compiled financial statements and consider whether they are free from obvious material errors", "The accountant must perform analytical procedures on all material accounts", "The accountant must confirm all material account balances"]'::jsonb,
 1,
 'In a compilation, the accountant reads the financial statements and considers whether they appear to be appropriate in form and free from obvious material misstatements. The accountant is not required to verify records, perform analytical procedures, or confirm balances. The accountant provides no assurance on the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'A compilation engagement differs from a preparation engagement under SSARS primarily because:',
 '["A compilation requires an engagement letter and a preparation does not", "A compilation results in the issuance of a report, while a preparation does not require a report", "A compilation provides limited assurance while a preparation provides reasonable assurance", "A compilation requires independence while a preparation does not"]'::jsonb,
 1,
 'The key difference is that a compilation results in the issuance of a compilation report, while a preparation engagement does not require a report. Both require engagement letters. Neither provides assurance (compilation provides no assurance; preparation provides no assurance). Independence is required for neither.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Under SSARS, when performing a preparation of financial statements engagement, the accountant:',
 '["Prepares or assists in preparing financial statements but is not required to issue a report", "Must issue a report expressing limited assurance", "Must be independent of the entity", "Must verify the accuracy of the trial balance"]'::jsonb,
 0,
 'Under AR-C 70, the preparation engagement involves the accountant assisting management in preparing financial statements without issuing a report and without providing any assurance. Independence is not required for a preparation engagement. The accountant is not required to verify the trial balance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Is an accountant required to be independent when performing a compilation engagement?',
 '["Yes, independence is always required for compilations", "Yes, unless the entity is a nonprofit organization", "No, independence is never relevant for compilations", "No, but if not independent, the accountant must disclose the lack of independence in the compilation report"]'::jsonb,
 3,
 'Independence is not required for a compilation engagement; however, if the accountant is not independent, the compilation report must include a statement indicating the lack of independence. The accountant is not required to disclose the reason for the impairment unless the accountant chooses to do so.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Is an accountant required to be independent when performing a review engagement under SSARS?',
 '["No, independence is optional for review engagements", "Independence is only required if the financial statements include disclosures", "Independence is only required if the entity is publicly traded", "Yes, the accountant must be independent for a review engagement"]'::jsonb,
 3,
 'Independence is required for a review engagement under SSARS. If the accountant is not independent, the accountant cannot perform a review and must consider whether a compilation or preparation engagement would be appropriate. This is a key distinction from compilation and preparation engagements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Management''s responsibilities in a review engagement include all of the following EXCEPT:',
 '["Preparation and fair presentation of the financial statements", "Designing and implementing internal controls relevant to financial reporting", "Providing the accountant with access to all relevant information", "Performing analytical procedures to support the financial statements"]'::jsonb,
 3,
 'Performing analytical procedures is the accountant''s responsibility, not management''s. Management is responsible for the preparation and fair presentation of the financial statements, maintaining adequate internal controls, and providing the accountant with all information relevant to the engagement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'In a review engagement, the accountant obtains a management representation letter. Which of the following is true about this requirement?',
 '["The accountant must obtain written representations from management for all review engagements", "The representation letter is optional and only obtained if the accountant deems it necessary", "The representation letter is only required for initial engagements", "The representation letter is obtained only when the accountant becomes aware of misstatements"]'::jsonb,
 0,
 'Written representations from management are required for all review engagements. The letter confirms management''s responsibility for the financial statements, completeness of information provided, and other relevant matters. Failure to obtain the letter represents a scope limitation that may require withdrawal.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'During a review engagement, the accountant becomes aware of a material departure from the applicable financial reporting framework. Management refuses to revise the financial statements. The accountant should:',
 '["Modify the review report to disclose the departure", "Issue the standard review report without modification", "Withdraw from the engagement without further action", "Convert the engagement to a compilation"]'::jsonb,
 0,
 'When a material departure from the framework exists and management refuses to revise, the accountant should modify the review report to disclose the departure. The modified report includes a separate paragraph describing the departure and, if practicable, the effects on the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'An accountant''s standard review report on financial statements of a nonissuer includes which of the following statements?',
 '["We have audited the accompanying financial statements", "We are not aware of any material modifications that should be made to the financial statements for them to be in accordance with the applicable framework", "The financial statements are guaranteed to be free from material misstatement", "We have verified all transactions and account balances"]'::jsonb,
 1,
 'The standard review report includes the limited assurance conclusion: the accountant is not aware of any material modifications that should be made to the financial statements for them to be in accordance with the applicable financial reporting framework. This negative assurance language is the hallmark of a review engagement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'When performing a compilation, the accountant discovers that management has omitted substantially all disclosures required by the applicable framework. The accountant may:',
 '["Issue a compilation report provided the omission is clearly indicated in the report and the omission is not intended to mislead users", "Not issue a compilation report under any circumstances", "Issue a standard compilation report with no modifications", "Issue a review report instead"]'::jsonb,
 0,
 'Under AR-C 80, the accountant may compile financial statements that omit substantially all disclosures if the omission is clearly indicated in the report and the omission is not, to the accountant''s knowledge, undertaken with the intent to mislead users. This is a common practice for internal-use financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'An accountant compiles financial statements for a client. Which of the following is a required element of the compilation engagement letter?',
 '["A guarantee that the financial statements will be free from misstatement", "The objective and scope of the compilation and that the accountant will not provide assurance", "A statement that the accountant will perform analytical procedures", "A requirement for management to provide a representation letter"]'::jsonb,
 1,
 'The compilation engagement letter must include the objective and scope of the compilation, a statement that the engagement is not an audit or review and that no assurance will be provided, the responsibilities of management and the accountant, and limitations of the engagement. No guarantee of accuracy is made.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'In a review engagement, the accountant''s inquiries of management should include questions about all of the following EXCEPT:',
 '["Whether the financial statements have been prepared in accordance with the applicable framework", "Subsequent events that could affect the financial statements", "The specific design of internal control activities over each transaction cycle", "Any known fraud or suspected fraud affecting the entity"]'::jsonb,
 2,
 'Review inquiries do not require detailed questions about the design of internal control activities over each transaction cycle. That level of inquiry is more consistent with an audit. Review inquiries focus on framework compliance, unusual items, subsequent events, fraud, and analytical procedure results.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'A CPA firm is engaged to compile financial statements but discovers during the engagement that it lacks independence from the client. What should the firm do?',
 '["Decline the engagement and refer the client to another firm", "Proceed with the compilation but disclose the lack of independence in the report", "Proceed with the compilation without any disclosure since independence is not required", "Convert the engagement to a review engagement"]'::jsonb,
 1,
 'A firm that is not independent may still perform a compilation engagement. However, the lack of independence must be disclosed in the compilation report. The firm is not required to disclose the reason for the lack of independence. Converting to a review is not possible since reviews require independence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'An accountant performs a review engagement and subsequently discovers information that existed at the date of the review report that may affect the financial statements. The accountant should:',
 '["Take no action since the report has already been issued", "Discuss the matter with management, determine if the financial statements need revision, and consider the effect on the review report", "Immediately recall all copies of the financial statements", "Issue an audit report to replace the review report"]'::jsonb,
 1,
 'When the accountant subsequently discovers information that may affect the financial statements and the review report, the accountant should discuss the matter with management, determine whether the financial statements need to be revised, and consider the effect on the review report. The response depends on the nature and significance of the matter.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Under SSARS, a compilation report is addressed to:',
 '["The SEC", "Management or those charged with governance of the entity", "The entity''s bank or primary creditor", "The AICPA"]'::jsonb,
 1,
 'A compilation report is typically addressed to management, the board of directors, or those charged with governance of the entity for which the financial statements are prepared. It is not addressed to regulatory bodies, creditors, or professional organizations unless the engagement terms specify otherwise.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Which of the following is required for all SSARS engagements (preparation, compilation, and review)?',
 '["Independence of the accountant", "Issuance of a report", "Performance of analytical procedures", "A written engagement letter"]'::jsonb,
 2,
 'A written engagement letter (or other suitable form of written agreement) is required for all SSARS engagements—preparation, compilation, and review. Independence is only required for reviews. Reports are required for compilations and reviews but not preparations. Analytical procedures are only performed in reviews.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'During a review engagement, the accountant identifies a matter that causes the accountant to believe the financial statements may be materially misstated. The accountant should:',
 '["Immediately withdraw from the engagement", "Perform additional procedures to address the matter, including additional inquiries and possibly other procedures", "Issue a qualified review report without performing further procedures", "Convert the engagement to a compilation"]'::jsonb,
 1,
 'When the accountant becomes aware of a matter suggesting material misstatement, the accountant performs additional procedures as deemed necessary. This may include further inquiries of management, additional analytical procedures, or other procedures the accountant considers appropriate to obtain limited assurance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'A preparation engagement under AR-C 70 requires each page of the financial statements to include which of the following?',
 '["The accountant''s report", "A legend stating ''no assurance is provided on these financial statements''", "The CPA firm''s letterhead", "A statement that the financial statements are GAAP-compliant"]'::jsonb,
 1,
 'When no report is issued for a preparation engagement, each page of the financial statements must include a legend such as ''no assurance is provided on these financial statements.'' This alerts users that the statements have not been subjected to audit, review, or compilation procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Under AR-C 80, if management fails to provide an adequate response to the accountant''s inquiry about a known misstatement in compiled financial statements, the accountant should:',
 '["Correct the misstatement without management''s approval", "Consider whether to withdraw from the engagement", "Issue a qualified compilation report", "Contact the entity''s legal counsel directly"]'::jsonb,
 1,
 'If management fails to respond adequately to a known misstatement, the accountant should consider the effect on the compilation report and whether withdrawal from the engagement is appropriate. The accountant cannot correct the financial statements without management''s approval, and compilation reports are not qualified or modified for misstatements in the same way as audit reports.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'An accountant compiles financial statements for a client that reports on the income tax basis of accounting. The compilation report should:',
 '["Include a paragraph indicating the financial reporting framework used (tax basis) and reference the note describing the basis", "State that the financial statements are not in accordance with GAAP and express a qualified opinion", "Include a disclaimer that the tax basis statements are unreliable", "Be identical to a GAAP-basis compilation report with no additional language"]'::jsonb,
 0,
 'When financial statements are prepared on a special purpose framework like the tax basis, the compilation report should indicate the framework used and reference the note describing the basis of accounting. This ensures users understand the financial statements are not prepared under GAAP.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Which of the following would a CPA most likely perform during a review engagement but NOT during a compilation engagement?',
 '["Obtain an engagement letter from management", "Read the financial statements for obvious material errors", "Compare current-year revenue to prior-year revenue and investigate significant fluctuations", "Consider whether the financial statements are in appropriate form"]'::jsonb,
 2,
 'Comparing current-year revenue to prior-year revenue and investigating significant fluctuations is an analytical procedure, which is a key component of a review engagement but is not performed in a compilation. Both compilations and reviews require engagement letters, reading the statements, and considering appropriate form.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'An accountant performing a review engagement should obtain an understanding of the entity and its environment, including the entity''s:',
 '["Complete internal control system including all five components", "Industry, accounting practices, and nature of its operations", "Detailed system of IT general controls", "Internal audit function and its testing procedures"]'::jsonb,
 1,
 'For a review engagement, the accountant should obtain an understanding of the entity''s industry, accounting practices, and the nature of its operations sufficient to identify areas where material misstatements are likely to arise. This level of understanding is less detailed than what is required for an audit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'A client asks the accountant to perform a review engagement, but the accountant determines that the scope of the review will be limited because management will not allow certain inquiries. The accountant should:',
 '["Proceed with the limited review and modify the report", "Consider whether the limitation results in an incomplete review and, if so, withdraw from the engagement", "Downgrade the engagement to a compilation automatically", "Issue a standard review report and document the limitation"]'::jsonb,
 1,
 'If management imposes a limitation that prevents the accountant from performing procedures considered necessary, the accountant must consider whether this results in an incomplete review. If the review cannot be completed, withdrawal from the engagement is appropriate. The accountant cannot simply issue a modified review report for a scope limitation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'When an accountant compiles financial statements that contain a known departure from the applicable framework, and management refuses to revise, the accountant should:',
 '["Issue a standard compilation report without modification", "Withdraw from the engagement immediately", "Issue an adverse opinion", "Modify the compilation report to disclose the departure and, if practicable, its effects"]'::jsonb,
 3,
 'If the accountant becomes aware of a material departure from the applicable framework and management refuses to revise, the accountant should modify the compilation report to disclose the departure. The report should describe the departure and, if practicable, include the effects on the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Under SSARS, which of the following best describes the accountant''s documentation requirements for a review engagement?',
 '["No documentation is required", "Documentation is identical to audit workpaper requirements", "Documentation is limited to the engagement letter only", "Documentation must include the engagement letter, significant findings, the review report, and communications with management"]'::jsonb,
 3,
 'Review engagement documentation must include the engagement letter, analytical procedures performed, significant inquiries and their results, unusual matters identified, communications with management and governance, and the review report. The documentation supports the basis for the accountant''s conclusion but is less extensive than audit documentation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'During a review engagement, the accountant notes that accounts receivable increased 40% year over year while revenue remained flat. The most appropriate response is to:',
 '["Inquire of management about the reasons for the disproportionate increase and evaluate the response", "Perform detailed testing of the aged receivable schedule", "Confirm a sample of accounts receivable with third parties", "Accept the fluctuation as normal business activity"]'::jsonb,
 3,
 'In a review engagement, when analytical procedures identify an unexpected fluctuation, the accountant should make additional inquiries of management to obtain explanations. Confirming balances and detailed testing are audit procedures. The accountant evaluates management''s response for reasonableness and consistency.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'An accountant compiled financial statements for a client in the prior year and is now engaged to review the current-year financial statements. Which statement is true regarding the comparative prior-year statements?',
 '["The prior-year compiled statements must be re-compiled under the review engagement", "The prior-year compiled statements may be presented with the current-year reviewed statements, provided the compilation report or a reference to it is included", "The prior-year statements must be audited before being presented comparatively", "The prior-year statements cannot be presented alongside the reviewed statements"]'::jsonb,
 1,
 'When comparative financial statements are presented with different levels of service, the prior-year compiled statements may be presented alongside the current-year reviewed statements. The compilation report should be reissued or an appropriate reference made in the current-year review report regarding the prior-year service level.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Under AR-C 90, the date of the review report should be no earlier than the date on which the accountant:',
 '["Was first engaged to perform the review", "Obtained the signed engagement letter", "Completed the review procedures, including obtaining the representation letter", "Presented the draft financial statements to management"]'::jsonb,
 2,
 'The review report should be dated no earlier than the date on which the accountant completed the review procedures sufficient to obtain limited assurance, including obtaining the signed management representation letter. This ensures the report date reflects the completion of all required procedures.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'An entity''s management is responsible for selecting the financial reporting framework used in the preparation of financial statements. In a compilation engagement, the accountant should:',
 '["Select the most appropriate framework for the entity", "Ensure the framework selected by management is acceptable and identify it in the compilation report", "Only accept the engagement if GAAP is used", "Recommend the entity change to IFRS"]'::jsonb,
 1,
 'The accountant should ensure that the financial reporting framework selected by management is acceptable for the compilation engagement. The framework is identified in the compilation report. The accountant does not select the framework, is not limited to GAAP-basis statements, and does not recommend framework changes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'When compiling financial statements, the accountant discovers that management has made an accounting estimate that appears unreasonable. The accountant should:',
 '["Accept the estimate since no assurance is provided in a compilation", "Discuss the matter with management and consider whether modification of the compilation report is needed", "Perform independent testing to develop a more reasonable estimate", "Issue a review report instead of a compilation report"]'::jsonb,
 1,
 'Even in a compilation, if the accountant becomes aware that the financial statements may be materially misstated—including due to unreasonable estimates—the accountant should discuss the matter with management. If management refuses to revise, the accountant considers modifying the report or withdrawing from the engagement.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'Which hierarchy correctly orders SSARS engagements from the lowest to the highest level of service?',
 '["Compilation, review, preparation", "Preparation, review, compilation", "Preparation, compilation, review", "Review, compilation, preparation"]'::jsonb,
 2,
 'The correct hierarchy from lowest to highest level of service is: preparation (no report, no assurance), compilation (report issued, no assurance), and review (report issued, limited assurance). An audit, which provides reasonable assurance, is above all SSARS engagements but is governed by SASs, not SSARS.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review and Compilation',
 'An accountant performing a review engagement is required to obtain an understanding of the entity''s internal control. Which statement best describes this requirement?',
 '["The accountant must obtain a detailed understanding of all five components of internal control", "The accountant is required to obtain a sufficient understanding of the entity''s internal control relevant to financial reporting, but is not required to test controls", "The accountant has no obligation to consider internal control", "The accountant must test the operating effectiveness of key controls"]'::jsonb,
 1,
 'In a review engagement, the accountant obtains a sufficient understanding of internal control relevant to financial reporting to assist in performing the review. However, the accountant is not required to test the operating effectiveness of internal controls, which is an audit-level procedure. The understanding helps the accountant design effective inquiries and analytical procedures.',
 'medium');

-- =============================================================================
-- Review/Compilation Engagements (30 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'During a review engagement, the accountant''s inquiries regarding revenue recognition should focus on:',
 '["Only the total revenue figure reported on the income statement", "Whether management''s revenue recognition policies are consistent with the applicable framework and applied consistently", "The detailed terms of every customer contract", "The entity''s marketing strategy for increasing revenue"]'::jsonb,
 1,
 'Review inquiries about revenue recognition should address whether the entity''s policies are consistent with the applicable financial reporting framework (e.g., ASC 606) and whether they have been applied consistently. The accountant does not review every contract or evaluate marketing strategy in a review engagement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'In a review engagement, the accountant inquires about related-party transactions. Which of the following is the primary purpose of this inquiry?',
 '["To eliminate all related-party transactions from the financial statements", "To determine whether related-party transactions have been properly identified, accounted for, and disclosed", "To verify that all related-party transactions are at arm''s length", "To recommend that the entity avoid related-party transactions"]'::jsonb,
 1,
 'The accountant inquires about related-party transactions to determine whether they have been properly identified, accounted for, and disclosed in accordance with the applicable framework. The accountant does not eliminate, verify arm''s-length pricing, or recommend avoidance; the focus is on proper identification and disclosure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant designing analytical procedures for a review of a manufacturing company would most likely:',
 '["Compare the gross margin percentage to industry averages and prior-year results", "Physically inspect the factory equipment to assess useful lives", "Send confirmation letters to the entity''s top ten customers", "Test a sample of purchase orders for proper authorization"]'::jsonb,
 0,
 'Analytical procedures in a review typically involve comparing financial ratios and trends to industry averages, prior-year results, and budgets. Comparing gross margin percentage is a classic analytical procedure. Physical inspection, confirmations, and testing purchase orders are audit procedures beyond the scope of a review.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'During a review, the accountant calculates the inventory turnover ratio and finds it has decreased significantly from the prior year. The most appropriate next step is to:',
 '["Perform a physical inventory observation", "Inquire of management about the reasons for the change, such as new products, economic conditions, or obsolescence", "Issue a qualified review report", "Request that management write down the inventory"]'::jsonb,
 1,
 'When an analytical procedure reveals an unexpected result, the accountant makes additional inquiries of management to understand the cause. In a review, the accountant does not observe inventory, issue qualified reports for analytical variances, or direct management to make adjustments. The accountant evaluates the reasonableness of management''s explanations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'The standard review report for a nonissuer includes which of the following conclusions?',
 '["In our opinion, the financial statements present fairly in all material respects", "Based on our review, we are not aware of any material modifications that should be made", "We have examined the financial statements and found them to be accurate", "The financial statements are free from all misstatements"]'::jsonb,
 1,
 'The standard review report expresses limited (negative) assurance using the language: ''Based on our review, we are not aware of any material modifications that should be made to the accompanying financial statements for them to be in accordance with [framework].'' This is distinctly different from the positive assurance of an audit opinion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'A standard compilation report on financial statements prepared in accordance with GAAP includes all of the following EXCEPT:',
 '["A statement that management is responsible for the financial statements", "A statement that the accountant did not audit or review the financial statements", "A conclusion that nothing came to the accountant''s attention indicating material modifications are needed", "Identification of the financial statements compiled"]'::jsonb,
 2,
 'A compilation report does not include a conclusion about material modifications because no assurance is provided. The limited assurance conclusion (''nothing came to our attention'') is the language of a review report. A compilation report identifies the statements, references management''s responsibility, and states that no audit or review was performed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant compiles financial statements that omit substantially all disclosures required by GAAP. The compilation report should include a paragraph that:',
 '["Indicates that substantially all disclosures have been omitted and that users should be aware the statements might differ if disclosures were included", "States that the financial statements are misleading", "Expresses a qualified opinion on the disclosure omission", "States the accountant takes responsibility for the omitted disclosures"]'::jsonb,
 0,
 'When substantially all disclosures are omitted from compiled financial statements, the report must include a paragraph indicating the omission and that users should be aware that the financial statements might differ substantially from those that include all disclosures. The omission must not be intended to mislead.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'A compilation report that omits substantially all disclosures can still include selected disclosures (e.g., going concern or related-party notes). Under which condition is this acceptable?',
 '["Only if all required disclosures are eventually included", "If the selected disclosures are not misleading and the report clearly states the omission of substantially all disclosures", "Only if the entity is a nonprofit", "It is never acceptable to include selected disclosures when substantially all are omitted"]'::jsonb,
 1,
 'Selected disclosures may be included in compiled financial statements that omit substantially all disclosures, provided the selected disclosures are not misleading and the compilation report still includes the paragraph about the omission. Including selected notes does not imply that all required disclosures have been made.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant compiles financial statements that contain a known departure from GAAP—specifically, inventory is stated at cost when the market value is significantly lower. The accountant should:',
 '["Modify the compilation report to disclose the departure and its known or estimated effects", "Refuse to compile the financial statements under any circumstances", "Issue a standard compilation report since no assurance is provided", "Adjust the inventory value without consulting management"]'::jsonb,
 3,
 'When the accountant is aware of a material departure from the applicable framework, the compilation report should be modified to disclose the nature of the departure and, if known, its effects. The accountant cannot adjust the statements unilaterally but should not issue an unmodified report when aware of a material departure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'After issuing a review report, the accountant learns that the inventory was materially overstated due to a counting error that existed at the balance sheet date. The accountant should:',
 '["Discuss the matter with management, request revision of the financial statements if necessary, and consider the effect on the issued report", "Take no action since the report has already been issued", "Issue an audit report on the revised financial statements", "Notify the SEC about the misstatement"]'::jsonb,
 0,
 'When subsequently discovered information indicates the financial statements may be materially misstated, the accountant should discuss the matter with management, request revision of the financial statements if appropriate, and consider whether users of the statements need to be informed about the revision and its impact on the review report.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'A client initially engaged an accountant to perform a review engagement but subsequently requests that the engagement be changed to a compilation. Under which circumstance is this change in engagement level generally acceptable?',
 '["Only if the accountant has not yet begun the review procedures", "When there is a reasonable justification such as a change in circumstances, change in the requirement for the engagement, or a misunderstanding about the nature of the service", "It is never acceptable to downgrade from a review to a compilation", "Only if the client agrees to pay the original review fee"]'::jsonb,
 1,
 'A change from a review to a compilation may be acceptable when there is a reasonable justification, such as a change in management''s requirements, a change in circumstances, or a misunderstanding of the nature of the service. However, the accountant should not agree to the change if it appears the reason is to avoid disclosure of a known misstatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'When a review engagement is changed to a compilation, the accountant should:',
 '["Include review-level language in the compilation report", "Issue only the compilation report and not reference the original review engagement in the report", "Disclose in the compilation report that review procedures were partially performed", "Issue both a review report and a compilation report"]'::jsonb,
 1,
 'When an engagement is appropriately changed from a review to a compilation, the accountant issues only the compilation report. The report should not reference the original review engagement or any review procedures that were performed. The engagement letter should be amended to reflect the new scope.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'During a review engagement, the accountant makes inquiries about the entity''s compliance with debt covenants. This inquiry is most directly related to assessing:',
 '["The entity''s marketing effectiveness", "Whether the financial statements reflect the proper classification of debt as current or noncurrent and related disclosures", "The entity''s cash flow projections for the next five years", "The adequacy of the entity''s insurance coverage"]'::jsonb,
 1,
 'Inquiries about debt covenant compliance help the accountant assess whether debt is properly classified (violations may require reclassification to current) and whether adequate disclosure has been made. Covenant violations can also indicate going concern issues. This inquiry relates directly to financial statement presentation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'In a review engagement, the accountant develops an expectation that cost of goods sold should represent approximately 65% of revenue based on prior periods and industry data. The reported ratio is 58%. The accountant should:',
 '["Inquire of management about the reasons for the favorable variance, considering factors such as product mix changes, pricing strategies, or possible understatement of expenses", "Confirm the cost of goods sold with vendors", "Perform a physical inventory count to verify the ratio", "Accept the improvement as a positive trend"]'::jsonb,
 2,
 'When an analytical expectation differs materially from the reported amount—even in a favorable direction—the accountant should inquire of management to understand the cause. Unexpected improvements may reflect legitimate changes or may indicate misstatement. Confirmations and physical counts are audit procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'Under AR-C 90, the accountant''s review report must include a statement that a review is:',
 '["Substantially less in scope than an audit, the objective of which is the expression of an opinion on the financial statements", "Equivalent in scope to an audit but with different reporting requirements", "Limited to confirming account balances and testing controls", "Designed to detect all instances of fraud and error"]'::jsonb,
 0,
 'The standard review report explicitly states that a review is substantially less in scope than an audit, the objective of which is the expression of an opinion regarding the financial statements as a whole. This language helps users understand the limitations of the assurance provided by a review.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant''s review report for a nonissuer identifies the financial statements reviewed. Which of the following statements is included in the report?',
 '["A statement that the review was performed in accordance with SSARS promulgated by the AICPA", "A paragraph describing each analytical procedure performed", "A list of all management personnel interviewed", "A description of the specific inquiry questions asked"]'::jsonb,
 0,
 'The review report states that the review was conducted in accordance with Statements on Standards for Accounting and Review Services promulgated by the Accounting and Review Services Committee of the AICPA. The report does not detail specific procedures, personnel interviewed, or inquiry questions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant compiling financial statements for a closely held business notices that the entity''s loan from a shareholder is classified as long-term debt, but the loan agreement requires repayment within six months. The accountant should:',
 '["Reclassify the debt to current without consulting management", "Discuss the classification with management and, if management refuses to reclassify, consider modifying the compilation report", "Ignore the issue since compilations provide no assurance", "Issue a review report instead"]'::jsonb,
 1,
 'Even in a compilation, the accountant should bring known misclassifications to management''s attention. If management refuses to make the correction, the accountant considers modifying the compilation report to disclose the departure from the framework. The accountant cannot unilaterally change the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'The accountant is performing a review of a nonprofit entity''s financial statements. The inquiry procedures should include questions about:',
 '["Only the entity''s investment returns", "Restrictions on contributions, net asset classifications, and functional expense allocation", "The personal finances of the board members", "Only the entity''s commercial revenue sources"]'::jsonb,
 1,
 'Review inquiries for nonprofits should address entity-specific matters including donor-imposed restrictions on contributions, proper net asset classification (with and without donor restrictions), functional expense allocation, and other nonprofit-specific accounting considerations under ASC 958.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant performs a review engagement and obtains a management representation letter dated March 10, 2026. The review report should be dated:',
 '["January 1, 2026, the first day of the fiscal year", "December 31, 2025, the balance sheet date", "No earlier than March 10, 2026, the date the representation letter was obtained", "The date the financial statements were delivered to the entity"]'::jsonb,
 2,
 'The review report should be dated no earlier than the date on which the accountant completed the review procedures, including obtaining the management representation letter. Since the representation letter is dated March 10, 2026, the report cannot be dated before that date.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'A client undergoing a compilation engagement asks the accountant to include a note about a subsequent event (a major fire after year-end). The accountant should:',
 '["Refuse, as subsequent events are not relevant to compilations", "Insist that the disclosure be verified through audit procedures first", "Add the disclosure only if the fire resulted in a loss exceeding $1 million", "Include the disclosure if management requests it and it is not misleading, noting that the financial statements do not include all required disclosures if applicable"]'::jsonb,
 2,
 'In a compilation, the accountant may include selected disclosures such as subsequent events if management requests it, provided they are not misleading. If substantially all disclosures are omitted, the report should note the omission while still permitting the selected subsequent event disclosure.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'In a review engagement, the accountant''s analytical procedures identify that the allowance for doubtful accounts as a percentage of receivables is significantly lower than in prior years and industry benchmarks. After inquiry, management provides a vague explanation. The accountant should:',
 '["Perform additional inquiry procedures and consider whether the matter indicates a possible material misstatement requiring further action", "Convert the engagement to an audit", "Perform a detailed test of the receivables aging schedule", "Accept management''s explanation and conclude the procedures"]'::jsonb,
 3,
 'When management''s explanation is vague or unsatisfactory, the accountant should perform additional inquiry procedures and consider whether the matter indicates a possible material misstatement. If the accountant cannot resolve the matter through additional inquiries, the accountant considers the effect on the review report and whether withdrawal is necessary.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'When the accountant performs a review of interim financial statements of a nonissuer, the review report should:',
 '["Be identical to an annual review report", "Identify the interim financial information reviewed and note that interim financial information is the responsibility of management", "Include an audit opinion on the interim statements", "Only be issued if the entity also has an annual audit"]'::jsonb,
 1,
 'The review report on interim financial statements identifies the interim information, states management''s responsibility, describes the accountant''s review procedures, and provides the limited assurance conclusion. While similar to an annual review report, it is tailored to interim financial information and does not require a concurrent annual audit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant is asked to compile prospective financial statements (a forecast). Under SSARS, can the accountant compile prospective financial statements?',
 '["Yes, SSARS governs compilations of all types of financial presentations", "No, prospective financial statement compilations are governed by attestation standards (AT-C sections), not SSARS", "Yes, but only if the forecast period is less than one year", "No, prospective financial statements cannot be compiled under any framework"]'::jsonb,
 1,
 'Compilations of prospective financial statements (forecasts and projections) are governed by the attestation standards (AT-C 305), not by SSARS. SSARS (AR-C sections) apply to historical financial statement preparation, compilation, and review engagements for nonissuers.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'The accountant issues a review report that includes a modified conclusion due to a known departure from GAAP. Where should the modification appear in the report?',
 '["In the title of the report", "In a separate paragraph that describes the departure, placed before the conclusion paragraph", "As a footnote at the bottom of the report", "In the management responsibility section"]'::jsonb,
 1,
 'When modifying a review report for a known departure, the accountant includes a separate paragraph describing the departure and its known or estimated effects on the financial statements. This paragraph is placed before (or after, depending on the format) the conclusion paragraph to draw the reader''s attention to the departure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant issues a compilation report and includes a statement that the accountant is not independent with respect to the entity. The accountant is NOT required to:',
 '["Disclose the lack of independence in the report", "Identify the financial statements compiled", "Include a statement that no audit or review was performed", "Disclose the reason for the lack of independence"]'::jsonb,
 3,
 'While the accountant must disclose the lack of independence in the compilation report, the accountant is not required to disclose the reason for the impairment. The accountant may choose to disclose the reason but is not obligated to do so. All other elements (no audit/review statement and identification of statements) remain required.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'During a review engagement, the accountant learns that a significant transaction occurred the day after the balance sheet date. The accountant should:',
 '["Ignore it since it occurred after the balance sheet date", "Perform a detailed investigation of the transaction", "Extend the review report date to cover the subsequent event", "Inquire of management about the transaction and evaluate whether it requires adjustment or disclosure in the financial statements"]'::jsonb,
 2,
 'Subsequent events are within the scope of a review engagement. The accountant should inquire about events after the balance sheet date that may require adjustment (Type I) or disclosure (Type II) in the financial statements. The accountant evaluates management''s treatment of the event for consistency with the framework.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant performs a compilation engagement for a client that maintains its books on the cash basis. During the engagement, the client requests that the accountant convert the financial statements to the accrual basis. The accountant should:',
 '["Refuse, as this would require audit procedures", "Consider whether sufficient information is available to prepare accrual-basis statements and, if so, compile them on the accrual basis with an appropriate engagement letter amendment", "Only convert if the entity has been audited in the prior year", "Issue a disclaimer on the accrual-basis statements"]'::jsonb,
 1,
 'The accountant can compile financial statements on the accrual basis even if the books are maintained on the cash basis, provided sufficient information is available to make the conversion. The engagement letter should be amended to reflect the accrual-basis framework, and the compiled statements should be presented accordingly.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'In a review engagement, which of the following analytical procedures would be most useful for evaluating the reasonableness of depreciation expense?',
 '["Calculating the ratio of depreciation expense to gross depreciable assets and comparing it to the prior year and expected useful lives", "Comparing the current-year depreciation expense to revenue", "Confirming the original cost of assets with vendors", "Inspecting asset purchase invoices for proper recording"]'::jsonb,
 0,
 'Calculating the ratio of depreciation expense to gross depreciable assets provides insight into the average depreciation rate being applied. Comparing this to prior years and expected useful lives helps assess reasonableness. Confirming costs and inspecting invoices are audit-level procedures beyond the scope of a review.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'An accountant performs a review of a construction company''s financial statements. Percentage-of-completion revenue recognition shows revenue growth of 30% while contract backlog has decreased. The accountant should:',
 '["Accept the revenue figure since management determined the percentage complete", "Recompute all percentage-of-completion calculations independently", "Confirm the percentage-of-completion calculations with the entity''s customers", "Inquire of management about the revenue growth in light of declining backlog, considering factors such as acceleration of existing contracts or changes in estimation methods"]'::jsonb,
 3,
 'When analytical procedures reveal an inconsistency—such as revenue growing while contract backlog declines—the accountant should inquire of management about the discrepancy. Legitimate explanations may include acceleration of work on existing contracts or changes in estimation methods. Confirmations and independent recomputation are audit-level procedures.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Review/Compilation Engagements',
 'When compiling financial statements for a new client, the accountant discovers the entity uses an accounting policy that the accountant believes is inappropriate but not a departure from the applicable framework. The accountant should:',
 '["Refuse to compile the financial statements", "Modify the compilation report to disclose the policy disagreement", "Convert the engagement to a review to evaluate the policy", "Proceed with the compilation because the policy does not depart from the framework, even if the accountant would prefer a different policy"]'::jsonb,
 2,
 'If an accounting policy is within the range permitted by the applicable framework (e.g., FIFO vs. LIFO), the accountant may proceed with the compilation even if the accountant would prefer a different method. The accountant''s role is to determine whether the statements conform to the framework, not to impose preferred policies.',
 'medium');

-- =============================================================================
-- Attestation Engagements (31 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'The Statements on Standards for Attestation Engagements (SSAEs) are codified under which designation?',
 '["AU-C sections", "AR-C sections", "AT-C sections", "AS sections"]'::jsonb,
 2,
 'Attestation standards are codified as AT-C sections. AU-C sections cover auditing standards, AR-C sections cover accounting and review services, and AS sections are PCAOB auditing standards for issuers. AT-C sections govern examination, review, and agreed-upon procedures attestation engagements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'Under the attestation standards, which three types of engagements may a practitioner perform?',
 '["Audit, review, and compilation", "Examination, review, and agreed-upon procedures", "Preparation, compilation, and review", "Examination, compilation, and agreed-upon procedures"]'::jsonb,
 1,
 'The attestation standards (AT-C sections) provide for three types of engagements: examination (reasonable assurance), review (limited assurance), and agreed-upon procedures (findings without assurance). Compilations and preparations are governed by SSARS (AR-C sections), and audits are governed by SASs (AU-C sections).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'In an examination engagement under AT-C 205, the practitioner provides what level of assurance?',
 '["No assurance", "Limited assurance", "Reasonable assurance", "Absolute assurance"]'::jsonb,
 2,
 'An examination engagement under AT-C 205 provides reasonable assurance, the same level as an audit. The practitioner obtains sufficient appropriate evidence to reduce attestation risk to an acceptably low level and expresses an opinion on the subject matter or assertion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'An examination engagement may be performed on either subject matter directly or on an assertion about subject matter. What is the key distinction?',
 '["Subject matter engagements are always more expensive", "In an assertion-based engagement, the responsible party provides a written assertion; in a direct engagement, the practitioner reports directly on the subject matter", "There is no practical distinction between the two", "Direct engagements are only used for financial statements"]'::jsonb,
 1,
 'In an assertion-based engagement, the responsible party measures or evaluates the subject matter and provides a written assertion, and the practitioner reports on whether the assertion is fairly stated. In a direct engagement, the practitioner measures or evaluates the subject matter directly and reports on it without a written assertion from the responsible party.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'Which AT-C section specifically addresses examination engagements?',
 '["AT-C 105", "AT-C 205", "AT-C 210", "AT-C 305"]'::jsonb,
 1,
 'AT-C 205 addresses examination engagements. AT-C 105 establishes the general concepts common to all attestation engagements. AT-C 210 covers review engagements, and AT-C 305 covers prospective financial information. Each section has specific requirements tailored to its engagement type.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'In an examination engagement, the practitioner''s report expresses an opinion. Which of the following is the correct form of a practitioner''s unqualified examination opinion?',
 '["Based on our review, nothing came to our attention...", "In our opinion, [the subject matter] is presented, in all material respects, based on [the criteria]", "We make no representation regarding the subject matter", "The procedures performed and findings obtained are as follows..."]'::jsonb,
 1,
 'An unqualified examination opinion uses positive assurance language: ''In our opinion, [the subject matter] is presented, in all material respects, based on [the criteria].'' The other options represent a review conclusion (limited assurance), a disclaimer, and agreed-upon procedures findings, respectively.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner performs a review attestation engagement under AT-C 210. The conclusion expressed in the report should be in which form?',
 '["Positive assurance: ''In our opinion...''", "Negative assurance: ''Based on our review, we are not aware of any material modifications...''", "No assurance: the practitioner merely presents findings", "A guarantee of the accuracy of the subject matter"]'::jsonb,
 1,
 'A review attestation engagement provides limited (negative) assurance. The practitioner''s conclusion states that based on the review, nothing came to the practitioner''s attention that causes them to believe the subject matter is not presented in accordance with the criteria. This parallels the limited assurance in a SSARS review.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'In an agreed-upon procedures (AUP) engagement under AT-C 215, the practitioner provides:',
 '["Reasonable assurance on the subject matter", "Limited assurance on the subject matter", "No assurance; only a report of findings based on the specific procedures performed", "A compilation of the subject matter"]'::jsonb,
 2,
 'In an AUP engagement, the practitioner performs specific procedures agreed upon by the engaging party and specified parties, and reports the findings without providing assurance. Users draw their own conclusions from the findings. The practitioner does not express an opinion or a conclusion about the subject matter.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'Under the revised AT-C 215, an agreed-upon procedures report may be used by:',
 '["Only the engaging party and the responsible party", "Only parties who have agreed to the procedures in advance", "Any party who obtains the report, as use is no longer restricted to specified parties", "Only the practitioner''s firm and the engaging party"]'::jsonb,
 2,
 'Under the revised AT-C 215 (effective 2021), AUP reports are no longer required to be restricted to specified parties. The report may be used by any party who obtains it. This change eliminated the prior requirement that all parties using the report must agree to the procedures in advance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'AT-C 305 addresses engagements on prospective financial statements. Which of the following are the two types of prospective financial statements?',
 '["Forecasts and projections", "Historical and projected", "Budgets and estimates", "Pro forma and comparative"]'::jsonb,
 0,
 'AT-C 305 identifies two types of prospective financial statements: financial forecasts (based on expected conditions and expected courses of action) and financial projections (based on hypothetical assumptions, or ''what-if'' scenarios). Forecasts are for general use; projections are typically for limited use.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A financial forecast differs from a financial projection primarily in that a forecast:',
 '["Covers a shorter time period", "Presents the entity''s expected financial position given expected conditions and expected courses of action", "Is prepared only by external accountants", "Uses only historical data without assumptions"]'::jsonb,
 1,
 'A financial forecast presents an entity''s expected financial position, results of operations, and cash flows based on the responsible party''s assumptions reflecting conditions it expects to exist and the course of action it expects to take. A projection, by contrast, presents results based on one or more hypothetical (''what-if'') assumptions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'Which type of prospective financial statement is appropriate for general use (distribution to parties who are not negotiating directly with the responsible party)?',
 '["Financial projections only", "Financial forecasts only", "Both forecasts and projections", "Neither; prospective statements are for internal use only"]'::jsonb,
 1,
 'Financial forecasts are appropriate for general use because they present expected results. Financial projections, which are based on hypothetical assumptions, are limited to parties who can discuss the assumptions directly with the responsible party and are therefore restricted to limited use.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner examines a financial forecast and issues a report. The examination report on the forecast should include a caveat that:',
 '["The forecast is guaranteed to be achieved", "The forecast has been audited with the same rigor as historical financial statements", "The practitioner accepts liability for the accuracy of the forecast", "Prospective results may not be achieved because events and circumstances frequently do not occur as expected"]'::jsonb,
 3,
 'The examination report on a forecast must include a caveat stating that the prospective results may not be achieved because events and circumstances frequently do not occur as expected, and that the differences between prospective and actual results may be material. This alerts users to the inherent uncertainty of forecasts.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'Pro forma financial information is addressed in which AT-C section?',
 '["AT-C 205", "AT-C 210", "AT-C 310", "AT-C 215"]'::jsonb,
 2,
 'AT-C 310 addresses reporting on pro forma financial information. Pro forma statements show the effect of a significant transaction or event on historical financial statements as if the transaction had occurred at an earlier date. AT-C 205 covers examinations, AT-C 210 covers reviews, and AT-C 215 covers agreed-upon procedures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'When examining pro forma financial information, the practitioner should obtain satisfaction that:',
 '["The historical financial statements have been audited or reviewed and the pro forma adjustments give appropriate effect to the significant transaction", "The pro forma adjustments are mathematically correct and the assumptions are reasonable", "The entity will definitely complete the proposed transaction", "All pro forma statements are prepared in accordance with IFRS"]'::jsonb,
 0,
 'The practitioner must obtain satisfaction that the underlying historical financial statements have been audited or reviewed, that the pro forma adjustments give appropriate effect to the significant transaction or event, and that the presentation complies with the relevant criteria. Mathematical accuracy is part of the evaluation but not the sole focus.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner is engaged to examine an entity''s compliance with specified requirements of a regulatory agency. This engagement falls under:',
 '["SSARS (AR-C sections)", "Auditing standards (AU-C sections)", "Attestation standards (AT-C sections)", "Government auditing standards only"]'::jsonb,
 2,
 'Compliance attestation engagements, where a practitioner examines or reviews an entity''s compliance with specified requirements, fall under the attestation standards (AT-C sections). The practitioner reports on whether the entity complied, in all material respects, with the specified requirements based on established criteria.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'In a compliance examination engagement, the practitioner''s opinion states that the entity complied, in all material respects, with the specified requirements. If a material instance of noncompliance is found, the practitioner should:',
 '["Issue an unqualified opinion with an emphasis paragraph", "Modify the opinion to qualified or adverse depending on the pervasiveness of the noncompliance", "Disclaim an opinion", "Issue the report as agreed-upon procedures instead"]'::jsonb,
 1,
 'If material noncompliance is identified, the practitioner modifies the opinion. A qualified opinion is issued if the noncompliance is material but not pervasive. An adverse opinion is issued if the noncompliance is both material and pervasive. The determination follows the same materiality and pervasiveness framework used in financial statement audits.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'AT-C 105 establishes the general framework for attestation engagements. One fundamental requirement is that the subject matter must be:',
 '["Capable of consistent measurement or evaluation against suitable criteria", "Limited to publicly available information", "Prepared by the practitioner", "Exclusively financial in nature"]'::jsonb,
 3,
 'AT-C 105 requires that the subject matter be capable of consistent measurement or evaluation against suitable criteria that are available to the expected users. Subject matter can be financial, nonfinancial, quantitative, or qualitative. The criteria must be suitable and available.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'The criteria used to evaluate subject matter in an attestation engagement must be:',
 '["Developed solely by the practitioner", "Suitable, meaning they are objective, measurable, complete, and relevant", "Published in the Federal Register", "Approved by the AICPA board of directors for each engagement"]'::jsonb,
 1,
 'Suitable criteria are those that are objective, measurable, complete, and relevant to the subject matter. They can be established (e.g., GAAP), specified by an agreement, or developed by the responsible party. They do not need to be developed by the practitioner or published in any particular source.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner is engaged to perform an AUP engagement on a nonprofit entity''s schedule of grant expenditures. The practitioner should:',
 '["Express an opinion on whether the schedule is fairly presented", "Perform only the specific procedures identified in the engagement and report the findings", "Provide limited assurance that the schedule is free from material misstatement", "Audit the entire set of financial statements before reporting on the schedule"]'::jsonb,
 1,
 'In an AUP engagement, the practitioner performs only the specific procedures that have been agreed upon and reports the factual findings. No opinion or conclusion is expressed. Users of the report are responsible for drawing their own conclusions from the reported findings.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'In an AUP engagement, the practitioner discovers that 5 out of 25 sampled disbursements lack proper approval. The AUP report should:',
 '["State the finding factually: 5 of 25 disbursements tested lacked proper approval documentation", "Express an adverse opinion on the disbursement process", "Recommend that management improve the approval process", "State that the internal controls are deficient"]'::jsonb,
 0,
 'The AUP report presents findings factually without adding conclusions, opinions, or recommendations. The practitioner states what was tested and what was found. In this case, the report would state that 5 of the 25 disbursements tested lacked the required approval documentation. Users draw their own conclusions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner is asked to examine management''s assertion that the entity''s cybersecurity risk management program is effective based on specific criteria. This engagement would be performed under:',
 '["SSARS standards", "Government auditing standards", "AT-C 205 (examination engagement)", "AU-C 700 (audit of financial statements)"]'::jsonb,
 2,
 'An examination of management''s assertion about the effectiveness of a cybersecurity risk management program is an attestation examination engagement under AT-C 205. The practitioner evaluates the assertion against the specified criteria and issues an opinion. This is not a financial statement audit or a SSARS engagement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'When a practitioner examines prospective financial statements, the practitioner must evaluate whether the assumptions are:',
 '["Suitably supported and provide a reasonable basis for the prospective statements", "Guaranteed to produce accurate results", "Identical to assumptions used by competitors", "Approved by the entity''s external auditor"]'::jsonb,
 0,
 'In an examination of prospective financial statements, the practitioner evaluates whether the assumptions provide a reasonable basis for the prospective statements. Assumptions must be suitably supported by available information and internally consistent. The practitioner does not guarantee results or require competitor benchmarks.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner performing an examination engagement on a SOC 2 report is examining the entity''s:',
 '["Financial statements", "Tax returns", "Controls relevant to security, availability, processing integrity, confidentiality, or privacy", "Revenue recognition policies"]'::jsonb,
 2,
 'A SOC 2 examination evaluates a service organization''s controls relevant to the Trust Services Criteria: security, availability, processing integrity, confidentiality, and privacy. This is an attestation examination engagement where the practitioner tests and reports on the design and operating effectiveness of controls.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'In an attestation engagement, the practitioner must maintain independence. Which of the following correctly describes this requirement?',
 '["Independence is required for all attestation engagements—examinations, reviews, and agreed-upon procedures", "Independence is optional for all attestation engagements", "Independence is only required for examination engagements", "Independence is required for examinations and reviews but not for agreed-upon procedures"]'::jsonb,
 3,
 'Independence is required for all types of attestation engagements: examinations, reviews, and agreed-upon procedures. This is a fundamental requirement under AT-C 105. Without independence, the practitioner cannot accept or continue an attestation engagement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner issues an examination report on an entity''s compliance with environmental regulations. During the examination, the practitioner discovers a material scope limitation that prevents testing of certain compliance areas. The practitioner should:',
 '["Issue an unqualified opinion and note the limitation in an emphasis paragraph", "Proceed with the examination and omit the untested areas from the report", "Issue an adverse opinion", "Issue a qualified opinion or disclaim an opinion depending on the significance of the limitation"]'::jsonb,
 3,
 'A material scope limitation in an examination engagement requires the practitioner to either qualify the opinion (if the limitation is material but not pervasive) or disclaim an opinion (if the limitation is material and pervasive). The practitioner cannot simply omit untested areas or issue an unqualified opinion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner is engaged to examine management''s assertion about the entity''s internal control over financial reporting (ICFR) under AT-C 205. The examination report should include:',
 '["An opinion on whether the assertion is fairly stated in all material respects, a description of the criteria, and management''s responsibility", "A compilation of the entity''s control activities", "A recommendation for improving internal controls", "Only the practitioner''s conclusion without describing the criteria"]'::jsonb,
 2,
 'The examination report on ICFR includes the practitioner''s opinion on whether management''s assertion is fairly stated based on the criteria, a description of the criteria used, a statement of management''s responsibility, and the practitioner''s responsibility. Recommendations for improvement are not part of the examination report.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'Under AT-C 320, a practitioner reporting on pro forma financial information in an examination engagement must be satisfied that the historical financial statements on which the pro forma adjustments are based have been:',
 '["Compiled by an independent accountant", "Audited or reviewed by the practitioner or another practitioner", "Prepared by management without any external involvement", "Filed with the SEC"]'::jsonb,
 1,
 'AT-C 320 requires that the historical financial statements underlying the pro forma information have been audited or reviewed. This provides a reasonable basis for the pro forma adjustments. The audit or review need not be performed by the same practitioner, but must have been completed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner performs an AUP engagement and during the procedures discovers potential fraud. The practitioner''s obligation is to:',
 '["Investigate the fraud thoroughly before reporting", "Report the findings from the agreed-upon procedures, including the factual results that may indicate fraud, and consider the effect on the engagement", "Ignore the fraud since AUP engagements do not involve fraud detection", "Issue an opinion on the entity''s fraud risk"]'::jsonb,
 1,
 'If during an AUP engagement the practitioner discovers findings that may indicate fraud, the practitioner reports those factual findings as part of the procedures performed. The practitioner also considers the effect on the engagement and any communication obligations. However, AUP engagements are not designed to detect fraud, and the practitioner does not investigate or opine.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'A practitioner is engaged to examine a sustainability report based on the Global Reporting Initiative (GRI) standards. The GRI standards serve as the:',
 '["Subject matter of the engagement", "Criteria against which the subject matter is evaluated", "Practitioner''s methodology for performing the examination", "Responsible party''s assertion"]'::jsonb,
 1,
 'In this engagement, the GRI standards serve as the criteria—the benchmarks against which the sustainability report (the subject matter) is evaluated. The practitioner examines whether the sustainability report is prepared, in all material respects, in accordance with the GRI criteria.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Attestation Engagements',
 'AT-C 105 requires that the practitioner establish an understanding with the client regarding the terms of an attestation engagement. This understanding should be documented in:',
 '["An oral agreement only", "A written engagement letter or other suitable written agreement", "A report filed with the AICPA", "Meeting minutes of the board of directors"]'::jsonb,
 1,
 'AT-C 105 requires a written engagement letter or other suitable form of written agreement documenting the terms of the attestation engagement. This includes the objective and scope of the engagement, responsibilities of both parties, limitations, and the expected form of the report.',
 'easy');
