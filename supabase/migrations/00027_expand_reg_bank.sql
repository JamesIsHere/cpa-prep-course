-- =============================================================================
-- Migration: Expand REG Question Bank
-- Section: REG — Taxation and Regulation (section_id = 3)
-- New questions: ~552
-- Difficulty: 30% easy, 50% medium, 20% hard
-- =============================================================================
-- REG Chunk 1: Circular 230, Professional Ethics in Tax, Tax Procedures, Business Law Contracts, Agency

-- =============================================================================
-- Circular 230 — 28 questions (8 easy, 14 medium, 6 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Which of the following individuals is NOT authorized to practice before the IRS under Circular 230?',
 '["A certified public accountant (CPA) in good standing", "An enrolled agent who passed the Special Enrollment Examination", "A licensed attorney admitted to a state bar", "A bookkeeper who prepares tax returns for clients"]'::jsonb,
 3,
 'Under Circular 230, only CPAs, attorneys, and enrolled agents are authorized to practice before the IRS as practitioners. Bookkeepers, even those who prepare tax returns, do not have unlimited practice rights. They may have limited representation rights under the Annual Filing Season Program but are not considered practitioners under Circular 230.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'An enrolled agent receives a request from a client to represent them before the IRS Appeals Office. Under Circular 230, which statement is correct regarding the enrolled agent''s authority?',
 '["Enrolled agents may only represent clients during audits, not appeals", "Enrolled agents have unlimited practice rights and may represent clients at all administrative levels of the IRS", "Enrolled agents may only represent clients whose returns they prepared", "Enrolled agents must obtain special permission from the IRS before representing a client at appeals"]'::jsonb,
 1,
 'Enrolled agents, like CPAs and attorneys, have unlimited practice rights before the IRS under Circular 230. This includes representation during examinations, appeals, and collection proceedings. They are not limited to returns they prepared, nor do they need special permission for appeals-level representation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A CPA is preparing a tax return and relies on information provided by the client without independent verification. Under Circular 230, the CPA''s due diligence obligation requires:',
 '["Verification of every item reported on the return through third-party documentation", "Reliance in good faith on client-provided information unless the CPA knows or should know it is incorrect", "That the CPA obtain written representations from the client for every deduction claimed", "An independent audit of the client''s records before signing the return"]'::jsonb,
 1,
 'Circular 230 Section 10.34 and the due diligence standard allow practitioners to rely in good faith on information furnished by the client without requiring independent verification. However, the practitioner cannot ignore the implications of information provided and must make reasonable inquiries if the information appears incorrect, inconsistent, or incomplete.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Under Circular 230, which of the following is considered a "covered opinion"?',
 '["A routine tax return preparation engagement", "An oral discussion with a client about estimated tax payments", "A brief email confirming the filing deadline for a client''s return", "Written advice concerning one or more federal tax issues arising from a transaction that has tax avoidance as a significant purpose"]'::jsonb,
 3,
 'Under Circular 230 Section 10.37 (as historically defined), a covered opinion is written advice concerning one or more federal tax issues arising from a transaction that has tax avoidance or evasion as a significant purpose, or a listed transaction. Routine return preparation, oral advice, and administrative correspondence are not covered opinions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A practitioner provides written tax advice to a client regarding a complex partnership transaction. To comply with Circular 230''s requirements for written advice, the practitioner must:',
 '["Base the advice on reasonable factual and legal assumptions and not rely on unreasonable assumptions", "Obtain a written engagement letter that limits the practitioner''s liability", "Provide the advice only in a formal opinion letter format", "Submit a copy of the advice to the IRS Office of Professional Responsibility"]'::jsonb,
 0,
 'Circular 230 Section 10.37 requires that written advice be based on reasonable factual and legal assumptions, consider all relevant facts the practitioner knows or reasonably should know, and not take into account the possibility that a return will not be audited. The practitioner need not use a formal opinion letter format, submit copies to the IRS, or include liability limitations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A tax practitioner is asked to provide written advice on a transaction identified by the IRS as a listed transaction. Under Circular 230, what additional obligation applies?',
 '["The practitioner must decline the engagement", "The practitioner must report the client to the IRS", "The practitioner must use heightened due diligence and cannot assume favorable audit resolution", "No additional obligations apply beyond normal written advice standards"]'::jsonb,
 2,
 'When providing advice on a listed transaction, the practitioner must exercise heightened due diligence. The practitioner cannot assume the transaction will not be challenged by the IRS and must analyze all relevant tax issues with greater scrutiny. There is no requirement to decline the engagement or report the client, but the advice must meet the higher standard for covered opinions.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Which of the following best practices is recommended under Circular 230 Section 10.33 for all practitioners?',
 '["Communicating clearly with the client regarding the terms of the engagement", "Charging fees based solely on a percentage of the tax refund obtained", "Guaranteeing a specific outcome for the client''s tax matter", "Delegating all tax research to non-credentialed staff without review"]'::jsonb,
 0,
 'Section 10.33 of Circular 230 recommends that practitioners communicate clearly with clients about the terms of the engagement, including the scope of services and the basis for fees. Contingent fees based on refund amounts are generally prohibited, practitioners may never guarantee outcomes, and work delegated to staff must be properly supervised and reviewed.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'The IRS Office of Professional Responsibility (OPR) initiates a disciplinary proceeding against a CPA for incompetence. Which of the following sanctions may the OPR impose?',
 '["Censure, suspension, or disbarment from practice before the IRS", "Criminal prosecution and imprisonment", "Revocation of the CPA''s state license", "Termination of the CPA''s firm''s business license"]'::jsonb,
 0,
 'The OPR may impose administrative sanctions including censure (public reprimand), suspension (temporary prohibition from practice), or disbarment (permanent prohibition from practice before the IRS). The OPR does not have authority to impose criminal penalties, revoke state CPA licenses, or terminate business licenses — those actions fall under other agencies'' jurisdiction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A practitioner subject to Circular 230 receives a monetary penalty of $25,000 for a first violation. Under what circumstances may the IRS impose a monetary penalty instead of or in addition to censure, suspension, or disbarment?',
 '["Only if the practitioner is convicted of a felony", "When the practitioner engages in conduct subject to sanction and a monetary penalty is appropriate given the severity of the conduct", "Only if the practitioner fails to respond to OPR correspondence within 30 days", "Monetary penalties are never available — only censure, suspension, and disbarment"]'::jsonb,
 1,
 'Under Circular 230 Section 10.50, the IRS may impose monetary penalties on practitioners who engage in sanctionable conduct. The penalty amount is determined based on the nature and severity of the misconduct and may be imposed in lieu of or in addition to censure, suspension, or disbarment. Monetary penalties are not limited to felony convictions or failure to respond to correspondence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Under Circular 230, in which of the following situations is a contingent fee arrangement permitted?',
 '["Preparation of an original individual income tax return", "Filing a claim for refund based on a determination by the IRS of the taxpayer''s liability", "Representation in an IRS examination of an original return", "Preparation of an original corporate tax return"]'::jsonb,
 1,
 'Circular 230 Section 10.27 generally prohibits contingent fees for preparing original tax returns and for advising on positions taken on original returns. However, contingent fees are permitted for services rendered in connection with IRS examinations or challenges (including claims for refund or credit) when the claim is filed after the IRS has assessed or proposed an adjustment. Filing a refund claim based on an IRS determination is a permitted exception.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A practitioner receives a subpoena from the IRS requesting client records. The practitioner holds both the client''s original tax records and the practitioner''s own workpapers. Under Circular 230, the practitioner must:',
 '["Return all records, including workpapers, to the client upon request", "Refuse to return any records until all outstanding fees are paid", "Turn all records over to the IRS immediately without client notification", "Return client records necessary for the client to comply with tax obligations but may retain the practitioner''s own workpapers"]'::jsonb,
 3,
 'Under Circular 230 Section 10.28, a practitioner must return to the client those records necessary for the client to comply with federal tax obligations. However, the practitioner may retain copies and is not required to surrender the practitioner''s own workpapers and analyses. A practitioner cannot withhold records necessary for compliance as leverage for fee collection, and the client must be notified of any IRS requests.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A CPA is soliciting new tax clients through direct mail advertising. Under Circular 230, which statement about solicitation is correct?',
 '["All forms of advertising and solicitation by practitioners are prohibited", "Practitioners may only advertise through referrals from existing clients", "Practitioners may use truthful, non-deceptive advertising, including direct mail solicitation", "Direct mail solicitation is permitted only if pre-approved by the IRS"]'::jsonb,
 2,
 'Circular 230 Section 10.30 permits practitioners to advertise and solicit business through any means, including direct mail, provided the communications are not false, fraudulent, coercive, misleading, or deceptive. The practitioner is not required to obtain IRS pre-approval, and advertising is not limited to referrals. However, uninvited in-person solicitation of vulnerable or distressed persons may be prohibited.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A client provides a power of attorney (Form 2848) designating a CPA as their representative before the IRS. Under Circular 230, the power of attorney authorizes the CPA to:',
 '["Sign the client''s tax returns on their behalf", "Access the client''s bank records without the client''s additional consent", "Override IRS determinations without further appeal", "Represent the client before all offices of the IRS for the specific matters listed on the form"]'::jsonb,
 3,
 'Form 2848 authorizes the designated representative to act on the client''s behalf before the IRS for the specific tax matters, tax periods, and IRS offices listed on the form. The power of attorney does not automatically grant authority to sign returns (unless specifically authorized), access non-tax records such as bank accounts, or override IRS determinations unilaterally.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A practitioner learns that a client intentionally omitted $50,000 of income on a previously filed return. The client refuses to file an amended return. Under Circular 230, the practitioner should:',
 '["Continue the engagement without taking further action since the return was already filed", "Report the client''s income directly to the IRS", "Consider whether to withdraw from the engagement and not sign any current-year return that reflects the prior omission", "File an amended return on the client''s behalf without authorization"]'::jsonb,
 2,
 'When a practitioner becomes aware of a client''s deliberate omission, the practitioner must advise the client of the error and recommend filing an amended return. If the client refuses, the practitioner should consider withdrawing from the engagement and must not sign a current-year return that is materially affected by the prior omission. The practitioner may not unilaterally file an amended return and generally cannot disclose the information to the IRS without client consent.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Which of the following actions by a practitioner would most likely result in disbarment from practice before the IRS?',
 '["Filing a client''s return one day after the deadline without an extension", "Failing to respond to a client''s phone call within 24 hours", "Conviction of a felony involving dishonesty or breach of trust", "Charging fees that exceed the industry average for tax preparation"]'::jsonb,
 2,
 'Conviction of a felony involving dishonesty or breach of trust (such as fraud, embezzlement, or tax evasion) is one of the most serious grounds for disbarment under Circular 230. Minor procedural delays, slow client communication, and high fees — while potentially problematic — do not rise to the level of conduct warranting disbarment. Disbarment is reserved for the most egregious violations of professional conduct.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Under Circular 230, the term "practice before the IRS" encompasses which of the following activities?',
 '["Preparing and filing tax returns, communicating with the IRS, and representing clients in proceedings", "Only representing a client during an in-person audit", "Only providing written tax opinions to clients", "Only appearing before the U.S. Tax Court"]'::jsonb,
 0,
 'Circular 230 defines practice before the IRS broadly to include all matters connected with presentations to the IRS, including preparing documents, filing returns, corresponding and communicating with the IRS, and representing a client at conferences, hearings, and meetings. It is not limited to in-person audits, written opinions, or Tax Court appearances.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A CPA in private practice is suspended from practice before the IRS for two years. During the suspension period, the CPA:',
 '["May continue to prepare tax returns but cannot represent clients in IRS proceedings", "Is completely prohibited from practicing before the IRS in any capacity during the suspension period", "May petition the OPR for early reinstatement after six months", "May practice before the IRS under the direct supervision of another CPA"]'::jsonb,
 1,
 'A suspended practitioner is completely barred from practicing before the IRS during the suspension period. This includes preparing returns to be filed with the IRS, representing clients, and corresponding with the IRS on clients'' behalf. The suspension is absolute — the practitioner cannot practice under supervision and there is no automatic early reinstatement provision, although the practitioner may petition for reinstatement after the suspension period expires.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A tax practitioner provides oral advice to a client about a transaction with potential tax consequences. Under Circular 230, what standard applies to oral advice?',
 '["Oral advice is not governed by Circular 230", "The practitioner must not take into account the possibility that the return will not be audited, and must base the advice on reasonable factual and legal assumptions", "Oral advice must be followed up with a formal written opinion within 30 days", "The practitioner must disclose all oral advice to the IRS within the tax year"]'::jsonb,
 1,
 'Under Circular 230 Section 10.37, the standards for competent written and oral advice are essentially the same. The practitioner must base advice on reasonable factual and legal assumptions, reasonably consider all relevant facts, and must not take into account the possibility that the return will not be audited or that the issue will not be raised on audit. Oral advice does not require a follow-up written opinion or IRS disclosure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A practitioner who provides false or misleading information to the IRS Office of Professional Responsibility during a disciplinary investigation is subject to:',
 '["No penalty because communications with the OPR are privileged", "A written warning with no further consequences", "Automatic referral to criminal prosecution", "Additional sanctions including an enhanced penalty and potential disbarment for obstructing the investigation"]'::jsonb,
 3,
 'Providing false or misleading information to the OPR during a disciplinary investigation is itself a violation of Circular 230 and constitutes obstruction. This can result in additional sanctions beyond those for the original alleged misconduct, including enhanced penalties and disbarment. While criminal referral is possible, it is not automatic. Communications with OPR are not privileged in the sense of being protected from sanction.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Under Circular 230, a practitioner must exercise due diligence when determining the correctness of a tax return position. Which of the following demonstrates a failure of due diligence?',
 '["Knowingly failing to review relevant tax authority before recommending a deduction", "Relying on a client-provided Form W-2 when preparing a return", "Estimating travel expenses based on the client''s business records", "Using tax preparation software to calculate depreciation"]'::jsonb,
 0,
 'Knowingly failing to review relevant tax authority (statutes, regulations, case law) before recommending a return position represents a clear failure of due diligence under Circular 230. The practitioner must make reasonable efforts to ascertain the correctness of positions taken. Relying on W-2s, using reasonable estimates from business records, and using software tools are all acceptable practices consistent with due diligence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Which individual has limited representation rights before the IRS without being a CPA, attorney, or enrolled agent?',
 '["A registered tax return preparer who participates in the Annual Filing Season Program", "Any individual who has filed their own tax return", "A real estate agent who handles property transactions", "A financial advisor holding a Series 7 license"]'::jsonb,
 0,
 'The Annual Filing Season Program (AFSP) provides limited representation rights to unenrolled return preparers who complete required continuing education. AFSP participants may represent clients only before revenue agents, customer service representatives, and similar IRS employees during examinations of returns they prepared. They cannot represent clients before appeals officers, revenue officers, or in collection matters.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A CPA signs a client''s tax return as the paid preparer. Two years later, the IRS audits the return and discovers the CPA applied an incorrect tax code section that resulted in a $15,000 understatement. The CPA had relied on outdated software without verifying the code. Under Circular 230, the CPA is most likely to face:',
 '["No sanction because the error was caused by software", "Criminal prosecution for tax fraud", "Automatic disbarment from practice", "Sanctions for failure to exercise due diligence and competence in preparing the return"]'::jsonb,
 3,
 'A practitioner who relies on outdated software without independently verifying the applicable tax code has failed to exercise the due diligence and competence required under Circular 230. While software is a useful tool, it does not relieve the practitioner of the responsibility to ensure positions are correct. This is a sanctionable failure of professional duty, though it does not rise to the level of fraud or warrant automatic disbarment.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Under Circular 230, a practitioner negotiating a client''s tax refund check is:',
 '["Permitted as long as the client provides written authorization", "Permitted if the practitioner deposits the check into a client trust account", "Prohibited — a practitioner may not endorse or negotiate a client''s refund check", "Permitted only for refunds under $5,000"]'::jsonb,
 2,
 'Circular 230 Section 10.31 expressly prohibits practitioners from endorsing or otherwise negotiating any check issued to a client by the government in respect of a federal tax liability. This prohibition is absolute regardless of client authorization, the existence of a trust account, or the refund amount. The rule exists to prevent conflicts of interest and protect client funds.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'An attorney discovers that a former partner at the firm was recently disbarred from practice before the IRS. Under Circular 230, the firm:',
 '["Must ensure that the disbarred individual does not participate in practice before the IRS through the firm", "Has no obligations since the partner has already left the firm", "Must immediately notify all current clients about the disbarment", "Must dissolve the partnership within 90 days"]'::jsonb,
 0,
 'Circular 230 Section 10.24 requires that practitioners and firms take steps to ensure that individuals who are disbarred or suspended do not practice before the IRS through the firm. The firm need not dissolve or notify all clients, but it must ensure that the disbarred individual has no involvement in IRS matters. This includes ensuring the individual does not prepare returns, correspond with the IRS, or represent clients through the firm.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A CPA prepares a tax return that takes an aggressive position with only a "reasonable basis" level of support but does not disclose the position on the return. Under Circular 230, this approach is:',
 '["Acceptable because reasonable basis is the minimum standard for all return positions", "Acceptable as long as the CPA believes the position will more likely than not be sustained", "Not acceptable — undisclosed positions must have substantial authority, while disclosed positions need only a reasonable basis", "Not acceptable — all positions must meet the more-likely-than-not standard"]'::jsonb,
 2,
 'Under Circular 230 Section 10.34, a practitioner may not sign a return or advise a client to take a position that lacks substantial authority unless the position is adequately disclosed and has a reasonable basis. Without disclosure, a mere reasonable basis is insufficient — the position must have substantial authority. The more-likely-than-not standard applies to tax shelters and reportable transactions, not all positions.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'Under Circular 230, which of the following describes the "censure" sanction?',
 '["A temporary prohibition from practicing before the IRS", "A public reprimand that does not affect the practitioner''s ability to practice before the IRS", "A monetary penalty equal to the client''s tax deficiency", "A permanent prohibition from practicing before the IRS"]'::jsonb,
 1,
 'Censure is the least severe of the three primary disciplinary sanctions under Circular 230. It is a public reprimand that expresses disapproval of the practitioner''s conduct but does not restrict or terminate the practitioner''s right to practice before the IRS. Suspension is a temporary prohibition, and disbarment is a permanent prohibition. Monetary penalties are a separate sanction category.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A practitioner with a valid power of attorney for a client receives a notice from the IRS regarding the client''s account. Under Circular 230, the practitioner must:',
 '["Immediately respond to the IRS without informing the client", "Ignore the notice if it relates to a tax year not covered by the power of attorney", "Promptly forward or inform the client of the notice and take appropriate action within the scope of the engagement", "Return the notice to the IRS and request that all correspondence be sent directly to the client"]'::jsonb,
 2,
 'A practitioner with a valid power of attorney has a duty to act promptly and diligently on behalf of the client. When receiving IRS notices, the practitioner should inform the client and take appropriate action within the scope of the representation. Ignoring notices, responding without client knowledge, or redirecting correspondence without proper authorization would all violate the practitioner''s professional obligations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Circular 230',
 'A tax practitioner is asked to represent a married couple in an IRS examination, but the practitioner identifies a potential conflict of interest between the spouses regarding the treatment of certain deductions. Under Circular 230, the practitioner:',
 '["Must decline the engagement entirely — dual representation is always prohibited", "May proceed without disclosure since spouses are treated as one taxpayer for conflict purposes", "Must refer both spouses to separate practitioners immediately", "May represent both spouses only if each spouse gives informed written consent after full disclosure of the conflict"]'::jsonb,
 3,
 'Under Circular 230 Section 10.29, a practitioner may represent conflicting interests before the IRS if each party provides informed written consent after full disclosure of the conflict. The practitioner must reasonably believe they can provide competent and diligent representation to each affected client. Dual representation of spouses is not automatically prohibited, but the conflict must be properly disclosed and consented to.',
 'hard');

-- =============================================================================
-- Professional Ethics in Tax — 25 questions (8 easy, 12 medium, 5 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under SSTS No. 1 (Tax Return Positions), a CPA may recommend a tax return position to a client if:',
 '["The position has at least a reasonable basis and is properly disclosed, or has substantial authority without disclosure", "The CPA believes the position will definitely be sustained in court", "The position is based on the client''s wishes regardless of legal support", "The position has been approved in advance by the IRS"]'::jsonb,
 0,
 'SSTS No. 1 establishes that a CPA should not recommend a tax return position unless there is at least a realistic possibility of the position being sustained on its merits. The AICPA standard aligns with the substantial authority standard for undisclosed positions and the reasonable basis standard for disclosed positions. The CPA need not believe the position will definitely win, and IRS pre-approval is not required.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under SSTS No. 1, the "realistic possibility" standard for a tax return position means:',
 '["There is a greater than 50% chance the position will be sustained", "There is approximately a one-in-three (33%) chance the position will be sustained on its merits", "The position is guaranteed to be upheld by the Tax Court", "The position has been explicitly approved by the IRS in a private letter ruling"]'::jsonb,
 1,
 'The realistic possibility standard under SSTS No. 1 is generally interpreted as approximately a one-in-three (33%) likelihood that the position will be sustained on its merits. This is a lower threshold than the "more likely than not" (greater than 50%) standard but provides a meaningful level of confidence. The position need not be guaranteed or pre-approved by the IRS.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA prepares a client''s tax return and the client provides documentation for a charitable contribution of $10,000 to a qualified organization. Under SSTS No. 3 (Certain Procedural Aspects of Preparing Returns), the CPA:',
 '["Must independently verify the donation with the charitable organization", "Must require the client to provide a canceled check before claiming the deduction", "Should reduce the claimed amount by 50% as a conservative measure", "May rely in good faith on the client''s information without independent verification"]'::jsonb,
 3,
 'Under SSTS No. 3, a CPA may in good faith rely on information furnished by the client without requiring independent verification. The CPA is not required to examine or verify supporting data such as canceled checks. However, the CPA should make reasonable inquiries if the information appears incorrect, incomplete, or inconsistent with other known facts.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A client informs their CPA that they failed to report $20,000 of cash income on a return filed two years ago. Under SSTS No. 6 (Knowledge of Error), the CPA should:',
 '["Promptly inform the client of the error, its potential consequences, and recommend filing an amended return", "Report the error directly to the IRS without informing the client", "Ignore the error because the original return was already filed", "Withdraw from the engagement immediately without further communication"]'::jsonb,
 0,
 'Under SSTS No. 6, when a CPA becomes aware of an error on a previously filed return, the CPA must promptly advise the client of the error and recommend corrective action, typically filing an amended return. The CPA cannot report the error to the IRS without client consent, and simply ignoring the error or withdrawing without communication fails to meet the CPA''s professional obligations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under SSTS No. 4 (Use of Estimates), which of the following statements about using estimates in tax return preparation is correct?',
 '["Estimates are never permitted on a tax return", "Estimates may be used when it is impracticable to obtain exact data, provided they are reasonable and the use of estimates does not imply greater accuracy than exists", "Estimates require a separate disclosure statement attached to the return", "Estimates may be used only if the amount is less than $500"]'::jsonb,
 1,
 'SSTS No. 4 recognizes that estimates are sometimes necessary when exact data is impractical or impossible to obtain. The CPA may use estimates that are reasonable based on the known facts and circumstances. The estimates should not be presented in a manner that implies greater accuracy than exists. There is no dollar threshold, and a separate disclosure statement is not automatically required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA is preparing a current-year return for a client who refused to file an amended return for a prior-year error that understated income by $30,000. Under SSTS No. 6, the CPA:',
 '["Must refuse to prepare the current-year return under all circumstances", "Must report the prior-year error to the IRS before preparing the current return", "May prepare the current-year return but must ensure it is correct and should consider whether the prior error affects the current return", "May prepare the current-year return and ignore the prior-year error entirely"]'::jsonb,
 2,
 'Under SSTS No. 6, a CPA who knows of a prior-year error is not automatically required to terminate the engagement. The CPA may prepare the current-year return as long as the current return itself is correct. However, the CPA must consider whether the prior error has any effect on the current-year return (e.g., carryforward amounts) and should not repeat the error. The CPA should also consider whether continuing the engagement is appropriate given the circumstances.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under SSTS No. 2 (Answers to Questions on Returns), when a reasonable effort to obtain information from the client to answer a question on a return has been unsuccessful, the CPA:',
 '["Must refuse to file the return", "Must attach a statement to the return explaining why the question was left blank", "Should provide an estimated answer to avoid leaving the question blank", "May sign the return and omit the answer, but should consider whether the omission could be seen as an attempt to mislead the IRS"]'::jsonb,
 3,
 'SSTS No. 2 provides that a CPA is not required to obtain all answers to all questions on a return but should make a reasonable effort. If information is unavailable, the CPA may omit the answer and still sign the return. However, the CPA must consider whether the omission might lead the IRS to conclude that the taxpayer is attempting to mislead. The CPA need not attach an explanation or provide an estimated answer.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA discovers that tax preparation software incorrectly calculated a deduction on a client''s return, resulting in a $5,000 overstatement. The CPA had not reviewed the calculation before filing. Under SSTS standards, the CPA''s primary responsibility is to:',
 '["Notify the client of the error and recommend corrective action, such as filing an amended return", "Blame the software vendor and take no further action", "Wait for the IRS to discover the error during audit", "Deduct a penalty from the next year''s preparation fee to compensate the client"]'::jsonb,
 0,
 'Regardless of the source of the error, the CPA bears professional responsibility for the accuracy of returns they prepare and sign. Under SSTS No. 6, upon discovering the error, the CPA must promptly notify the client and recommend appropriate corrective action. The CPA cannot rely on software as a defense for errors and cannot wait for the IRS to discover the mistake.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under SSTS No. 5 (Departure from a Position Previously Concluded in an Administrative Proceeding or Court Decision), a CPA may recommend a position contrary to a prior administrative settlement with the IRS if:',
 '["The settlement was reached more than three years ago", "The client insists on the contrary position regardless of authority", "The facts and circumstances have changed or there is new authority supporting a different position", "The CPA believes the IRS will not audit the return again"]'::jsonb,
 2,
 'SSTS No. 5 permits a CPA to recommend a position that departs from a prior administrative proceeding conclusion if the facts and circumstances have changed or there is new legal authority supporting the different position. The passage of time alone, client insistence, or assumptions about audit probability do not justify departing from a prior determination.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A client asks their CPA for advice on whether to take an aggressive position on a tax return that has only a 15% chance of being sustained. Under SSTS No. 1, the CPA should:',
 '["Advise the client that the position does not meet the realistic possibility standard and should not be taken without adequate disclosure", "Refuse to prepare the return entirely", "Take the position without disclosure since 15% constitutes a reasonable basis", "Report the client''s request to the IRS"]'::jsonb,
 0,
 'A 15% likelihood does not meet the realistic possibility standard (approximately 33%) or even the reasonable basis standard (approximately 20%). Under SSTS No. 1, the CPA should advise the client that the position lacks sufficient authority to be recommended. The CPA need not refuse the entire engagement or report the client, but must not sign a return with a position that fails to meet minimum standards.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under SSTS No. 7 (Form and Content of Advice), a CPA providing tax advice to a client should:',
 '["Always provide advice in writing to ensure it is documented", "Use professional judgment to determine the appropriate form and content of advice, considering the importance and complexity of the matter", "Limit advice to issues that have been previously litigated", "Provide advice only when specifically requested by the client"]'::jsonb,
 1,
 'SSTS No. 7 states that a CPA should use professional judgment regarding the form (oral or written) and content of tax advice. The appropriate format depends on the importance of the issue, the complexity, the dollar amount involved, and whether the advice involves a potentially significant tax planning opportunity or risk. Written advice is not always required, and advice should be given proactively when appropriate.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA is preparing a return for a new client and notices that the prior-year return, prepared by another firm, contains what appears to be a significant error. Under SSTS No. 6, the CPA should:',
 '["Ignore the prior-year return since it was prepared by another firm", "Contact the prior CPA firm to discuss the potential error", "Inform the client of the possible error and recommend that the client take corrective action", "Report the error to the IRS whistleblower office"]'::jsonb,
 2,
 'Under SSTS No. 6, when a CPA becomes aware of a possible error on a previously filed return — regardless of who prepared it — the CPA should inform the client and recommend corrective action. The CPA should not contact the prior firm without client consent, report to the IRS without client authorization, or ignore the issue. The duty is to the client, not the prior preparer or the IRS.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A client provides their CPA with a round-number estimate of $5,000 for unreimbursed business expenses, stating they do not have receipts. Under SSTS No. 4, which approach is most appropriate?',
 '["Accept the $5,000 estimate without question and include it on the return", "Make reasonable inquiries about the nature and basis of the estimate, and include it only if it appears reasonable under the circumstances", "Refuse to include any amount for business expenses without receipts", "Require the client to sign a separate indemnification agreement for the estimated amount"]'::jsonb,
 1,
 'SSTS No. 4 allows the use of estimates when exact data is unavailable, but the CPA must exercise professional judgment. The CPA should inquire about the basis for the estimate, consider whether it is reasonable given the client''s occupation and income level, and determine whether it is consistent with known facts. Blindly accepting round-number estimates or categorically refusing all estimates without receipts both fail to meet the standard of professional care.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under the AICPA Code of Professional Conduct, a CPA performing tax services must maintain which of the following?',
 '["Independence from the client, identical to the standard for attest engagements", "No ethical obligations beyond those imposed by the IRS", "Loyalty to the client that overrides all other professional obligations", "Integrity and objectivity, though not the same level of independence required for attest engagements"]'::jsonb,
 3,
 'For tax services, the AICPA Code of Professional Conduct requires CPAs to maintain integrity and objectivity. Unlike attest (audit) engagements, tax engagements do not require the CPA to be independent of the client. However, the CPA must remain objective and not subordinate professional judgment to the client''s wishes. The CPA''s ethical obligations extend beyond IRS requirements to encompass the AICPA standards.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA is advising a client on a complex tax planning strategy involving multiple entities. Under SSTS No. 7, the CPA should consider providing written advice when:',
 '["The strategy involves significant legal uncertainty and the client could face substantial penalties if the position is not sustained", "The amount of tax savings is less than $1,000", "The client has been a long-time client and trusts the CPA''s oral recommendations", "Written advice is only necessary for listed transactions"]'::jsonb,
 0,
 'Under SSTS No. 7, the decision to provide written versus oral advice depends on professional judgment. Written advice is particularly important when the matter involves significant legal uncertainty, substantial dollar amounts, potential penalties, or complex strategies where documentation serves both the client''s and the CPA''s interests. Client trust and the size of savings alone do not determine the appropriate form.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA discovers that a client used a fraudulent Social Security number to claim the Earned Income Tax Credit on a return the CPA prepared. Under professional ethics standards, the CPA must:',
 '["Continue the engagement since the CPA was unaware of the fraud at the time of filing", "Report the fraud to law enforcement immediately", "Withdraw from the engagement and consider obligations under Circular 230 regarding knowledge of false information", "File an amended return removing the credit without client consent"]'::jsonb,
 2,
 'When a CPA discovers that a client has provided fraudulent information, the CPA faces serious professional and legal obligations. The CPA should withdraw from the engagement, as continuing to represent a client known to have committed fraud creates liability. Under Circular 230 and the SSTS, the CPA must consider whether to advise the client to take corrective action and must not sign any future returns affected by the fraud. Direct reporting to law enforcement is generally not required absent a court order.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under SSTS No. 3, a CPA preparing a client''s return receives a Form 1099-MISC showing $8,000 in non-employee compensation. The client claims the amount is incorrect and should be $3,000. The CPA should:',
 '["Report $8,000 as shown on the Form 1099 regardless of the client''s claim", "Inquire further, request supporting documentation, and exercise professional judgment in determining the correct amount to report", "Report $3,000 based solely on the client''s oral statement", "Report $5,500 as a compromise between the two amounts"]'::jsonb,
 1,
 'When there is a discrepancy between information reported on third-party forms and the client''s claim, SSTS No. 3 requires the CPA to exercise professional judgment. The CPA should make additional inquiries, request supporting documentation, and evaluate the evidence before determining the correct amount. Neither blindly accepting the 1099 nor accepting the client''s unsupported claim is appropriate. Splitting the difference is not a valid professional approach.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA takes a position on a client''s return that has substantial authority but is contrary to an IRS regulation. Under SSTS No. 1, this position:',
 '["Is never acceptable because IRS regulations cannot be challenged", "Requires pre-approval from the IRS National Office", "Is acceptable only if the taxpayer has previously won on the issue in Tax Court", "May be acceptable if the CPA has a good-faith belief that the regulation does not accurately reflect the law"]'::jsonb,
 3,
 'Under SSTS No. 1, a CPA may recommend a position contrary to an IRS regulation if the CPA has a good-faith belief, based on substantial authority such as case law, legislative history, or statutory language, that the regulation does not accurately reflect the law. Regulations are not immune from challenge, but the CPA must have a reasonable basis for the contrary position and should consider disclosure requirements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under the AICPA Code of Professional Conduct, a CPA who performs both tax preparation and bookkeeping services for the same client:',
 '["Violates independence rules and must terminate one engagement", "Must obtain a waiver from the state board of accountancy", "Does not violate independence rules because independence is not required for tax and bookkeeping services", "Must disclose the dual relationship to the IRS"]'::jsonb,
 2,
 'The AICPA independence rules apply primarily to attest (audit and review) engagements. A CPA may perform tax preparation, bookkeeping, and other non-attest services for the same client without an independence violation. However, if the CPA also audits the same client, providing bookkeeping and tax services could impair independence for the attest engagement. No waiver or IRS disclosure is required for non-attest dual services.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA obtains information during tax preparation that a client has been operating an unlicensed business. Under SSTS and AICPA ethical standards, the CPA should:',
 '["Report the client to the appropriate licensing authority", "Continue to prepare the return accurately and advise the client to obtain proper licensing, as tax reporting is separate from regulatory compliance", "Include a note on the return disclosing the unlicensed status to the IRS", "Refuse to report the income from the unlicensed business"]'::jsonb,
 1,
 'The CPA''s obligation in tax preparation is to report income accurately regardless of the source. Income from unlicensed activities is still taxable and must be reported. The CPA should advise the client to obtain proper licensing but is not required to report the client to a licensing authority or disclose the licensing status to the IRS on the return. Refusing to report the income would be incorrect.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A client asks their CPA to claim a home office deduction. The client works from home three days per week but also has a dedicated office at their employer''s location. Under SSTS No. 1, the CPA should:',
 '["Evaluate whether the home office meets the exclusive and regular use requirements and the convenience-of-the-employer test before recommending the position", "Claim the deduction because the client works from home most of the week", "Refuse to claim the deduction under any circumstances", "Claim a partial deduction based on the ratio of days worked at home"]'::jsonb,
 0,
 'Under SSTS No. 1, the CPA must evaluate the legal requirements before recommending a return position. For a home office deduction, the space must be used exclusively and regularly for business, and if the taxpayer has another office available, the home office must be for the convenience of the employer (not just the employee). The CPA should analyze whether these requirements are met rather than automatically claiming or refusing the deduction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA is engaged to prepare a partnership return. During preparation, the CPA learns that one partner wants to allocate 90% of losses to himself despite owning only 30% of the partnership. Under SSTS No. 1:',
 '["The CPA may allocate losses however the partners agree", "The CPA must allocate losses strictly in proportion to ownership percentages", "The CPA should decline the engagement because special allocations are inherently fraudulent", "The CPA should evaluate whether the special allocation has substantial economic effect under IRC Section 704(b) before taking the position"]'::jsonb,
 3,
 'Under IRC Section 704(b), special allocations of partnership income and loss are permitted only if they have substantial economic effect. Under SSTS No. 1, the CPA must evaluate whether the proposed allocation meets this legal standard before recommending the position. Special allocations are not inherently fraudulent but must be supported by the partnership agreement and meet the economic effect safe harbor or equivalence test.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'Under professional ethics standards, a CPA who signs a client''s tax return as the paid preparer is representing that:',
 '["The return will not be audited by the IRS", "The CPA has examined all supporting documentation and guarantees accuracy", "The return is based on all information of which the CPA has knowledge and the positions taken meet applicable standards", "The CPA assumes personal liability for any tax deficiency resulting from the return"]'::jsonb,
 2,
 'By signing a return as the paid preparer, the CPA represents that the return is correct and complete based on all information known to the CPA, and that the positions taken comply with applicable tax standards. The CPA does not guarantee that the return will not be audited, does not certify that every supporting document was examined, and does not assume personal liability for the client''s tax deficiency.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA provides a client with written advice recommending a tax position. Two years later, a new court decision undermines the authority for that position. Under SSTS No. 7, the CPA:',
 '["Has a continuing obligation to update the client about developments that affect previously provided advice", "Has no obligation to update the client once the advice is delivered", "Must immediately file an amended return for the client", "Should wait for the IRS to challenge the position before notifying the client"]'::jsonb,
 0,
 'SSTS No. 7 recognizes that a CPA generally has no obligation to update previously provided advice for subsequent developments. However, when the CPA becomes aware of new developments that significantly affect prior advice — and the CPA has an ongoing relationship with the client — the CPA should consider informing the client of the change. The standard emphasizes professional judgment about whether to communicate material developments.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Professional Ethics in Tax',
 'A CPA is preparing a return for a client who operates a cash-intensive business. The client provides income records that appear incomplete, with reported revenues significantly lower than industry norms. Under SSTS No. 3, the CPA should:',
 '["Accept the records as provided because the client is responsible for their own income reporting", "Refuse to prepare the return and report the client to the IRS", "Make additional inquiries about the discrepancy, consider whether the records are reliable, and document the CPA''s conclusions before completing the return", "Adjust the income upward to match industry averages"]'::jsonb,
 2,
 'Under SSTS No. 3, while a CPA may generally rely on client-provided information, the CPA must not ignore obvious red flags. When income appears significantly understated relative to industry norms in a cash-intensive business, the CPA has a duty to make additional inquiries and evaluate the reliability of the records. The CPA should document the inquiry and conclusions but is not required to report the client or adjust income based on industry averages alone.',
 'medium');

-- =============================================================================
-- Tax Procedures — 22 questions (7 easy, 11 medium, 4 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'The general statute of limitations for the IRS to assess additional income tax is:',
 '["One year from the date the return was filed", "Five years from the date the return was filed", "Three years from the later of the date the return was filed or the due date of the return", "Ten years from the date the return was filed"]'::jsonb,
 2,
 'Under IRC Section 6501(a), the IRS generally has three years from the later of the date the return was filed or the due date of the return (including extensions) to assess additional tax. If a return is filed early, the statute runs from the original due date. This three-year window is the standard assessment period for most individual and business returns.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer filed a return reporting $100,000 of gross income but omitted $30,000 of gross income. What statute of limitations period applies to the IRS assessment?',
 '["Three years from the filing date", "Ten years from the filing date", "There is no statute of limitations because any omission constitutes fraud", "Six years from the filing date because the omission exceeds 25% of reported gross income"]'::jsonb,
 3,
 'Under IRC Section 6501(e), the statute of limitations is extended to six years when a taxpayer omits from gross income an amount exceeding 25% of the gross income stated on the return. Here, $30,000 omitted exceeds 25% of $100,000 reported ($25,000 threshold), so the six-year statute applies. The ten-year period applies to collection, not assessment, and fraud requires intentional wrongdoing beyond mere omission.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'Under what circumstances does the statute of limitations for IRS assessment never expire?',
 '["When the taxpayer commits fraud or fails to file a return", "When the taxpayer files a late return", "When the taxpayer underpays estimated taxes", "When the taxpayer claims too many exemptions"]'::jsonb,
 0,
 'Under IRC Section 6501(c), there is no statute of limitations on assessment when the taxpayer files a false or fraudulent return with the intent to evade tax, or when the taxpayer fails to file a return at all. In these cases, the IRS may assess additional tax at any time. Late filing, underpayment of estimates, and excessive exemptions do not eliminate the statute of limitations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'The IRS issues a statutory notice of deficiency (90-day letter) to a taxpayer. Which of the following statements about the taxpayer''s options is correct?',
 '["The taxpayer must pay the deficiency within 90 days and may then file a refund claim", "The taxpayer must appeal to the IRS Appeals Office within 90 days", "The taxpayer must file a protest in U.S. District Court within 90 days", "The taxpayer may file a petition with the U.S. Tax Court within 90 days without first paying the deficiency"]'::jsonb,
 3,
 'A statutory notice of deficiency gives the taxpayer 90 days (150 days if mailed to a foreign address) to file a petition with the U.S. Tax Court. The Tax Court is unique because it allows the taxpayer to contest the deficiency without first paying the disputed amount. If the taxpayer does not petition the Tax Court, the IRS may assess and collect the tax. District Court and Court of Federal Claims require prepayment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer disagrees with the results of an IRS examination and wants to litigate without paying the tax first. Which court should the taxpayer petition?',
 '["U.S. District Court", "U.S. Tax Court", "U.S. Court of Federal Claims", "U.S. Court of Appeals"]'::jsonb,
 1,
 'The U.S. Tax Court is the only forum where a taxpayer may litigate a tax deficiency without first paying the disputed amount. Both U.S. District Court and the U.S. Court of Federal Claims require the taxpayer to pay the full assessment and then file a claim for refund before bringing suit. The Court of Appeals is an appellate court, not a trial court for tax disputes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer wants a jury trial for a federal income tax dispute. Which court provides this option?',
 '["U.S. Tax Court", "U.S. Court of Federal Claims", "U.S. District Court", "IRS Appeals Office"]'::jsonb,
 2,
 'Only the U.S. District Court offers the right to a jury trial in federal tax disputes. The Tax Court and the Court of Federal Claims do not provide jury trials — cases in those courts are decided by judges. The IRS Appeals Office is an administrative body, not a court, and does not conduct trials of any kind.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'The penalty for failure to file a tax return by the due date (including extensions) is:',
 '["5% of the unpaid tax per month, up to 25%", "0.5% of the unpaid tax per month, up to 25%", "A flat $500 penalty regardless of the amount owed", "10% of the total tax liability for the year"]'::jsonb,
 0,
 'Under IRC Section 6651(a)(1), the failure-to-file penalty is 5% of the unpaid tax for each month (or part of a month) the return is late, up to a maximum of 25%. This is separate from and in addition to the failure-to-pay penalty. If both penalties apply in the same month, the failure-to-file penalty is reduced by the failure-to-pay penalty amount for that month.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer files a return on time but does not pay the full amount of tax shown on the return. The penalty for failure to pay is:',
 '["5% of the unpaid tax per month, up to 25%", "0.5% of the unpaid tax per month, up to 25%", "No penalty applies if the return is filed on time", "A flat 10% penalty on the unpaid balance"]'::jsonb,
 1,
 'Under IRC Section 6651(a)(2), the failure-to-pay penalty is 0.5% of the unpaid tax for each month (or part of a month) the tax remains unpaid, up to a maximum of 25%. Filing the return on time avoids the more severe failure-to-file penalty (5% per month) but does not eliminate the failure-to-pay penalty. The rate increases to 1% per month if the IRS issues a notice of intent to levy and the tax remains unpaid after 10 days.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer''s return contains an understatement due to negligence. The accuracy-related penalty under IRC Section 6662 is:',
 '["5% of the understated tax", "10% of the understated tax", "20% of the understated tax", "75% of the understated tax"]'::jsonb,
 2,
 'The accuracy-related penalty under IRC Section 6662 is 20% of the portion of the underpayment attributable to negligence, disregard of rules, substantial understatement of income tax, or other specified conduct. The 75% penalty rate applies to fraud under Section 6663, not negligence. The penalty can be avoided if the taxpayer shows reasonable cause and good faith.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'The civil fraud penalty under IRC Section 6663 is:',
 '["20% of the underpayment attributable to fraud", "75% of the underpayment attributable to fraud", "50% of the underpayment attributable to fraud", "100% of the underpayment attributable to fraud"]'::jsonb,
 1,
 'The civil fraud penalty under IRC Section 6663 is 75% of the portion of the underpayment attributable to fraud. This is significantly more severe than the 20% accuracy-related penalty and is imposed when the IRS proves by clear and convincing evidence that the taxpayer intended to evade tax. The fraud penalty and the accuracy-related penalty cannot both apply to the same portion of an underpayment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer receives a 30-day letter from the IRS proposing changes to their return. The taxpayer may:',
 '["Only accept the proposed changes — no appeal is available at this stage", "File a petition with the U.S. Tax Court within 30 days", "Request a conference with the IRS Appeals Office by filing a written protest", "Ignore the letter with no consequences"]'::jsonb,
 2,
 'A 30-day letter proposes adjustments and gives the taxpayer 30 days to either agree or file a written protest requesting a conference with the IRS Appeals Office. This is an administrative appeal, not a court proceeding. If the taxpayer does not respond, the IRS will issue a statutory notice of deficiency (90-day letter), which then provides access to Tax Court. Ignoring the 30-day letter means losing the opportunity for administrative appeal.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer paid $12,000 in taxes but owed only $10,000. The taxpayer wants to file a claim for refund. The general statute of limitations to file a refund claim is:',
 '["The later of three years from the date the return was filed or two years from the date the tax was paid", "One year from the date of overpayment", "Five years from the due date of the return", "There is no time limit for refund claims"]'::jsonb,
 0,
 'Under IRC Section 6511, a taxpayer must file a refund claim by the later of three years from the date the return was filed or two years from the date the tax was paid. If filed within the three-year period, the refund is limited to the amount paid within the three years plus the period of any extension. If filed within the two-year period, the refund is limited to the amount paid within two years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer has a "substantial understatement" of income tax, which triggers the accuracy-related penalty under Section 6662. A substantial understatement exists when the understatement exceeds the greater of:',
 '["$1,000 or 5% of the tax required to be shown on the return", "$10,000 or 10% of the tax required to be shown on the return (for individuals)", "$25,000 or 25% of the tax required to be shown on the return", "$5,000 or 10% of the tax required to be shown on the return"]'::jsonb,
 3,
 'For individuals, a substantial understatement exists when the understatement exceeds the greater of $5,000 or 10% of the tax required to be shown on the return. For corporations (other than S corporations and personal holding companies), the threshold is the lesser of 10% of the tax or $10,000,000 (but not less than $10,000). The penalty can be avoided by adequate disclosure of the position or by showing reasonable cause.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'The IRS has assessed a tax deficiency against a taxpayer. Under IRC Section 6502, the statute of limitations for the IRS to collect the assessed tax is generally:',
 '["Three years from the date of assessment", "Six years from the date of assessment", "Ten years from the date of assessment", "There is no collection statute of limitations"]'::jsonb,
 2,
 'Under IRC Section 6502, the IRS generally has 10 years from the date of assessment to collect a tax by levy or by a court proceeding. After the 10-year period expires, the tax is no longer legally collectible and the assessment is released. This is separate from the assessment statute of limitations (generally 3 years) and can be extended by agreement, bankruptcy, or certain collection actions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'During an IRS examination, the revenue agent determines a $15,000 deficiency. The taxpayer disagrees with the findings. The correct sequence of the IRS dispute resolution process is:',
 '["90-day letter → 30-day letter → Appeals → Tax Court", "30-day letter → Appeals → 90-day letter → Tax Court", "Tax Court petition → 30-day letter → Appeals → payment", "Appeals → 30-day letter → 90-day letter → District Court"]'::jsonb,
 1,
 'The standard IRS dispute resolution sequence is: (1) the IRS issues a 30-day letter proposing changes; (2) the taxpayer may appeal to the IRS Appeals Office; (3) if the dispute is not resolved, the IRS issues a statutory notice of deficiency (90-day letter); (4) the taxpayer may petition the Tax Court within 90 days. Each step must generally be exhausted before proceeding to the next.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer fails to pay estimated taxes throughout the year and owes $8,000 when filing their return. The penalty for underpayment of estimated tax under IRC Section 6654:',
 '["Is calculated as a flat 5% of the underpayment", "Does not apply if the total tax owed is less than $10,000", "Can be waived only if the taxpayer has never previously underpaid estimated taxes", "Is calculated using the federal short-term rate plus 3 percentage points, applied to each quarterly underpayment for the period of underpayment"]'::jsonb,
 3,
 'The estimated tax penalty under Section 6654 is computed as interest on the underpayment at the federal short-term rate plus 3 percentage points, calculated for each quarter separately from the quarterly due date to the earlier of the payment date or the filing deadline. The penalty may be waived for casualty, disaster, or other unusual circumstances, and safe harbors exist (paying 90% of current year or 100%/110% of prior year tax).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer can avoid the estimated tax penalty if the taxpayer pays at least:',
 '["80% of the current year''s tax liability through withholding and estimated payments", "100% of the current year''s tax liability", "90% of the current year''s tax liability or 100% of the prior year''s tax liability (110% if prior year AGI exceeds $150,000)", "50% of the current year''s tax liability"]'::jsonb,
 2,
 'The safe harbor for avoiding the estimated tax penalty requires payment of at least 90% of the current year''s tax liability or 100% of the prior year''s tax liability through withholding and estimated payments. If the taxpayer''s prior year AGI exceeds $150,000 ($75,000 for married filing separately), the prior year safe harbor increases to 110% of the prior year''s tax. The payments must be timely across all four quarters.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'Interest on tax underpayments assessed by the IRS:',
 '["Is deductible as an itemized deduction for individual taxpayers", "Is calculated at a flat 5% annual rate", "Does not accrue during the period a case is pending in Tax Court", "Runs from the due date of the return to the date of payment and is compounded daily"]'::jsonb,
 3,
 'Under IRC Section 6601, interest on tax underpayments runs from the due date of the return (without regard to extensions) to the date of payment. Under Section 6622, the interest is compounded daily. The rate is the federal short-term rate plus 3 percentage points and is adjusted quarterly. Personal interest on tax underpayments is not deductible for individuals, and interest continues to accrue during Tax Court proceedings.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'Which of the following IRS collection actions requires the IRS to provide the taxpayer with notice and an opportunity for a hearing before proceeding?',
 '["Issuing a refund offset", "Filing a federal tax lien (the IRS must provide notice within 5 business days after filing)", "Imposing a levy on the taxpayer''s wages or bank accounts", "Requesting voluntary payment from the taxpayer"]'::jsonb,
 2,
 'Under IRC Section 6330, the IRS must provide the taxpayer with notice and an opportunity for a Collection Due Process (CDP) hearing before levying the taxpayer''s property (wages, bank accounts, etc.). The notice of federal tax lien requires post-filing notice within 5 business days under Section 6320 but not pre-filing notice. Refund offsets and voluntary payment requests do not require CDP hearings.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer files a return on February 15, 2026, for the 2025 tax year (due date April 15, 2026). The statute of limitations for IRS assessment begins running on:',
 '["February 15, 2026, the actual filing date", "January 1, 2026, the beginning of the tax year", "April 15, 2026, the due date of the return", "December 31, 2025, the end of the tax year"]'::jsonb,
 2,
 'When a return is filed before the due date, the statute of limitations for assessment begins on the due date of the return, not the actual filing date. Under IRC Section 6501(b)(1), a return filed before the due date is deemed filed on the due date. So the three-year assessment period begins April 15, 2026, and expires April 15, 2029.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'A taxpayer successfully argues in Tax Court that they owe no additional tax. The IRS had imposed a frivolous return penalty under Section 6702. Which of the following is true about the frivolous return penalty?',
 '["The penalty is $500 per frivolous return or submission", "The penalty only applies to returns filed by tax protesters", "The penalty is waived if the taxpayer wins in Tax Court", "The penalty is $5,000 per frivolous return or submission"]'::jsonb,
 3,
 'The frivolous return penalty under IRC Section 6702 is $5,000 per frivolous return or submission. A return is considered frivolous if it does not contain sufficient information to determine the correct tax liability or contains a position that the IRS has identified as frivolous (such as tax protester arguments). The penalty is separate from any substantive tax determination and is not automatically waived by a favorable Tax Court outcome on the underlying tax issue.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax Procedures',
 'An individual taxpayer''s return shows total tax of $50,000 and the taxpayer has an understatement of $6,000. Does a "substantial understatement" exist for purposes of the accuracy-related penalty?',
 '["Yes, because $6,000 exceeds $5,000", "No, because $6,000 does not exceed 10% of $50,000 ($5,000), and the threshold requires exceeding the greater of $5,000 or 10%", "Yes, because any understatement over $1,000 is substantial", "No, because substantial understatement only applies to corporate taxpayers"]'::jsonb,
 0,
 'For individuals, a substantial understatement exists when the understatement exceeds the greater of $5,000 or 10% of the tax required to be shown on the return. Here, 10% of $50,000 is $5,000. The greater of $5,000 or $5,000 is $5,000. Since $6,000 exceeds $5,000, a substantial understatement exists. The accuracy-related penalty of 20% would apply unless the taxpayer demonstrates reasonable cause and good faith or adequate disclosure.',
 'medium');

-- =============================================================================
-- Business Law: Contracts — 30 questions (9 easy, 15 medium, 6 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Which of the following is required for a valid offer under common law contract principles?',
 '["A statement of intent to enter into a contract, definite terms, and communication to the offeree", "A written document signed by both parties", "Consideration exchanged at the time the offer is made", "Approval by a neutral third party"]'::jsonb,
 0,
 'A valid offer requires three elements: (1) a manifestation of present intent to contract, (2) definite and certain terms, and (3) communication of the offer to the offeree. The offer need not be in writing (unless required by the Statute of Frauds), consideration is required for the contract but not the offer itself, and no third-party approval is necessary.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'An advertisement in a newspaper stating "Widget X for sale, $50" is generally considered:',
 '["A valid offer that any reader may accept", "A binding unilateral contract", "An option contract that remains open for 30 days", "An invitation to negotiate, not an offer"]'::jsonb,
 3,
 'Under common law, advertisements are generally considered invitations to negotiate rather than offers because they lack the specificity required for a binding offer and are directed at the general public rather than a specific offeree. Exceptions exist when an advertisement includes specific, definite terms and a clear limitation (e.g., "first come, first served"), but a simple price listing is typically an invitation to deal.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Under the common law "mirror image rule," an acceptance that changes the terms of an offer is treated as:',
 '["A valid acceptance with the modified terms becoming part of the contract", "A counteroffer that terminates the original offer", "A conditional acceptance that keeps the original offer open", "A breach of the original offer"]'::jsonb,
 1,
 'Under the common law mirror image rule, an acceptance must be an unconditional assent to the exact terms of the offer. Any change, addition, or qualification in the acceptance is treated as a counteroffer, which simultaneously rejects and terminates the original offer. The original offeror then becomes the offeree of the new counteroffer and may accept or reject it. This rule is modified by UCC Section 2-207 for sales of goods.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Under the mailbox rule, an acceptance sent by mail is effective:',
 '["When the offeror receives it", "When it is properly dispatched (placed in the mail) by the offeree", "When the offeree writes the acceptance letter", "Only if the offeror acknowledges receipt within 48 hours"]'::jsonb,
 1,
 'The mailbox rule (also called the dispatch rule) provides that an acceptance is effective upon proper dispatch — when the offeree places the acceptance in the mail with proper postage and addressing. This creates a binding contract at the moment of mailing, even before the offeror receives the acceptance. The rule does not apply to revocations, rejections, or counteroffers, which are effective only upon receipt.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Baker promises to pay $500 to Chen for services Chen performed last month without any prior agreement. Baker''s promise is:',
 '["Enforceable because the services were performed", "Enforceable under the doctrine of promissory estoppel", "Unenforceable because past consideration is not valid consideration", "Enforceable as a quasi-contract"]'::jsonb,
 2,
 'Past consideration — a benefit already conferred before the promise was made — is generally not valid consideration for a new contract. For consideration to be valid, there must be a bargained-for exchange where each party''s performance is induced by the other''s promise. Since Chen''s services were already completed before Baker''s promise, there is no bargained-for exchange, and the promise is a gift promise that is unenforceable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'The doctrine of promissory estoppel allows enforcement of a promise when:',
 '["The promisor made a clear and definite promise that the promisee reasonably relied on to their detriment, and injustice can only be avoided by enforcing the promise", "The promise is supported by adequate consideration", "Both parties have signed a written agreement", "The promise involves the sale of goods over $500"]'::jsonb,
 0,
 'Promissory estoppel is a substitute for consideration when three conditions are met: (1) the promisor made a clear and definite promise, (2) the promisee reasonably and foreseeably relied on the promise, (3) the promisee suffered a detriment as a result, and (4) injustice can only be avoided by enforcement. It applies precisely in situations where traditional consideration is absent.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'The Statute of Frauds requires which of the following types of contracts to be in writing to be enforceable?',
 '["All contracts regardless of subject matter", "Contracts that can be performed within one year", "Contracts for the sale of goods priced at $500 or more under the UCC", "Oral contracts between family members"]'::jsonb,
 2,
 'The Statute of Frauds requires certain contracts to be evidenced by a writing signed by the party to be charged. Under UCC Section 2-201, contracts for the sale of goods priced at $500 or more must be in writing. The common law Statute of Frauds covers contracts that cannot be performed within one year, contracts for the sale of land, promises to pay another''s debt, and marriage contracts (remembered by the mnemonic MYLEGS).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'The mnemonic "MYLEGS" for the Statute of Frauds represents contracts involving:',
 '["Money, Yearly contracts, Land, Estates, Goods over $500, and Suretyship", "Mortgages, Yearly leases, Licenses, Employment, Guarantees, and Sales", "Minors, Year-end contracts, Leases, Employment, Gifts, and Services", "Marriage, contracts not performable within one Year, Land, Executor promises, Goods ($500+), and Suretyship"]'::jsonb,
 3,
 'MYLEGS stands for: Marriage (promises made in consideration of marriage), Year (contracts not performable within one year from making), Land (contracts for the sale of real property interests), Executor (executor''s promise to pay estate debts personally), Goods (sale of goods $500+ under UCC), and Suretyship (promises to pay another''s debt). These categories of contracts must be evidenced by a writing to be enforceable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'The parol evidence rule prevents:',
 '["All oral testimony in court proceedings involving contracts", "The introduction of prior or contemporaneous oral agreements that contradict the terms of a fully integrated written contract", "Parties from modifying a contract after it has been signed", "Evidence of fraud from being presented in a contract dispute"]'::jsonb,
 1,
 'The parol evidence rule bars the introduction of evidence of prior or contemporaneous oral agreements that contradict or vary the terms of a final, fully integrated written agreement. The rule does not bar evidence of subsequent modifications, fraud, duress, mistake, ambiguity, conditions precedent, or partially integrated agreements where the writing was not intended to be the complete agreement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Davis enters into a contract with Evans to paint Evans'' house. Davis then assigns the right to receive payment to First Bank. In this situation:',
 '["Evans must pay First Bank because contract rights are freely assignable unless prohibited", "Evans may refuse to pay First Bank because Evans did not consent to the assignment", "The assignment is void because personal service contracts cannot be assigned", "First Bank must complete the painting before receiving payment"]'::jsonb,
 0,
 'Under common law, contract rights (especially the right to receive payment) are freely assignable unless the contract expressly prohibits assignment, the assignment would materially change the obligor''s duty, or the assignment is prohibited by law. The right to receive payment is almost always assignable. Evans must pay First Bank as the assignee. Note that duties (the obligation to paint) generally cannot be delegated without consent if they involve personal skill.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Garcia contracts with Harper to deliver 100 widgets by March 1. Garcia delivers only 80 widgets by the deadline. This is most likely:',
 '["A minor breach, entitling Harper to damages but not discharge", "Not a breach because substantial performance was achieved", "An anticipatory repudiation of the contract", "A material breach, entitling Harper to suspend performance and sue for damages"]'::jsonb,
 3,
 'Delivering only 80% of contracted goods by the deadline is likely a material breach, especially for a sale of goods where the buyer expects complete delivery. Under UCC Article 2, the buyer has the right to reject goods that fail to conform to the contract (perfect tender rule). The 20% shortfall exceeds what courts would consider a minor deviation, and Harper may suspend performance, reject the goods, and sue for damages.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'An intended third-party beneficiary of a contract:',
 '["May enforce the contract against the promisor once the beneficiary''s rights have vested", "Has no rights under the contract until the beneficiary is named in a court order", "May never enforce the contract because they are not a party to the agreement", "Must provide consideration to the promisor to have enforceable rights"]'::jsonb,
 0,
 'An intended third-party beneficiary (either a donee beneficiary or creditor beneficiary) may enforce the contract against the promisor once the beneficiary''s rights have vested. Rights vest when the beneficiary learns of the contract and assents to it, materially changes position in reliance on it, or brings suit to enforce it. Incidental beneficiaries, by contrast, have no enforceable rights.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Under the UCC Article 2 "perfect tender rule," a buyer may reject goods if:',
 '["The goods or their delivery fail to conform to the contract in any respect", "The defects are material and affect the value of the goods by more than 10%", "The buyer provides a written inspection report within 24 hours of delivery", "The nonconformity could not have been detected by reasonable inspection"]'::jsonb,
 0,
 'Under UCC Section 2-601, the perfect tender rule allows a buyer to reject the whole, accept the whole, or accept any commercial units and reject the rest if the goods or the tender of delivery fail to conform to the contract in any respect. This is stricter than the common law substantial performance doctrine. However, the rule is subject to exceptions including cure, installment contracts, and commercial impracticability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Under UCC Section 2-207 (the "battle of the forms"), when two merchants exchange forms with different terms:',
 '["No contract is formed because the forms do not match", "The last form sent controls all terms of the contract", "The additional terms in the acceptance become part of the contract unless they materially alter it, the offer expressly limits acceptance to its terms, or the offeror objects within a reasonable time", "The buyer''s form always takes precedence over the seller''s form"]'::jsonb,
 2,
 'UCC Section 2-207 modifies the common law mirror image rule for sales of goods. Between merchants, additional terms in the acceptance become part of the contract unless: (1) the offer expressly limits acceptance to its terms, (2) the additional terms materially alter the contract, or (3) the offeror objects to the additional terms within a reasonable time. This rule addresses the reality that businesses often use preprinted forms with different boilerplate terms.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'A merchant offers to sell goods to a buyer and states the offer will remain open for 10 days. Under UCC Article 2, this is:',
 '["Not binding because no consideration was given for the promise to keep the offer open", "A firm offer that is irrevocable for the stated period even without consideration, provided the offer is in a signed writing", "Automatically revoked after 5 business days", "Valid only if the buyer pays a deposit to hold the offer open"]'::jsonb,
 1,
 'Under UCC Section 2-205, a firm offer by a merchant to buy or sell goods, made in a signed writing that assures the offer will be held open, is irrevocable for the stated time (up to 3 months) without consideration. This is an exception to the common law rule requiring consideration for option contracts. The offer must be made by a merchant, be in a signed writing, and give assurance of irrevocability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Jones, a 16-year-old, enters into a contract to purchase a non-essential item for $2,000. Two months later, Jones wants to avoid the contract. Under common law:',
 '["Jones cannot avoid the contract because it has been partially performed", "Jones may disaffirm the contract because minors have the power to void contracts for non-necessities", "Jones must wait until reaching the age of majority to disaffirm", "The contract is void from its inception and no action is needed"]'::jsonb,
 1,
 'Under common law, contracts with minors (persons under 18 in most states) for non-necessities are voidable at the minor''s option. The minor may disaffirm (void) the contract at any time during minority or within a reasonable time after reaching the age of majority. The contract is voidable, not void — it is valid until the minor chooses to disaffirm. The minor generally must return any property still in their possession upon disaffirmance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Which of the following is a valid defense to contract enforcement based on a lack of genuine assent?',
 '["The contract was a bad bargain for one party", "One party''s financial circumstances changed after signing", "The contract was entered into under duress, involving threats of physical harm or wrongful economic pressure", "One party did not read the contract before signing"]'::jsonb,
 2,
 'Duress — including threats of physical harm, wrongful detention of property, or improper economic pressure — is a valid defense to contract enforcement because it vitiates genuine assent. A bad bargain, changed circumstances, and failure to read the contract are generally not defenses. Other defenses based on lack of genuine assent include fraud, misrepresentation, undue influence, and mutual mistake of material fact.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Kelly and Lee enter into a written contract for the sale of Kelly''s house. Before closing, Kelly claims they orally agreed to exclude the backyard shed from the sale. Under the parol evidence rule, Lee''s best argument against admitting this oral evidence is:',
 '["The written contract is a fully integrated agreement that contains a merger clause, so prior oral agreements cannot contradict its terms", "The oral agreement was made after the written contract", "Oral agreements are never enforceable for real property", "Kelly has the burden of proving the oral agreement by clear and convincing evidence"]'::jsonb,
 0,
 'If the written contract is a fully integrated agreement (containing all terms the parties intended to include, often evidenced by a merger or integration clause), the parol evidence rule bars evidence of prior or contemporaneous oral agreements that contradict its terms. Lee''s strongest argument is that the written contract represents the complete and final agreement, making the alleged oral side agreement inadmissible.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'In a breach of contract action, the non-breaching party is generally entitled to:',
 '["Punitive damages to punish the breaching party", "Attorney''s fees automatically in all contract disputes", "Expectation damages that put the non-breaching party in the position they would have been in had the contract been performed", "Specific performance for all types of contracts"]'::jsonb,
 2,
 'The standard remedy for breach of contract is expectation damages (also called benefit-of-the-bargain damages), which aim to place the non-breaching party in the same economic position they would have occupied had the contract been fully performed. Punitive damages are generally not available in contract actions. Attorney''s fees are not automatically awarded unless provided by contract or statute, and specific performance is an equitable remedy limited to unique situations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Specific performance as a remedy for breach of contract is most likely to be granted when:',
 '["The contract involves a standard commodity available on the open market", "The plaintiff can prove the dollar amount of damages with certainty", "The defendant is a corporation rather than an individual", "The subject matter of the contract is unique, such as real property or a rare artwork"]'::jsonb,
 3,
 'Specific performance — a court order compelling the breaching party to perform — is an equitable remedy available when monetary damages are inadequate because the subject matter is unique. Real property is presumed unique, and specific performance is routinely available for land sale contracts. Other unique items (rare art, antiques, custom goods) may also qualify. Fungible goods available on the market do not justify specific performance because a substitute can be purchased.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Martin contracts with Nelson to deliver 500 units of a standard product at $10 each by June 1. Nelson repudiates the contract on April 1. Martin can immediately purchase the same product from another supplier at $12 per unit. Martin''s cover damages are:',
 '["$5,000 (the full contract price)", "$500 (10% of the contract value)", "Nothing, because Martin was able to cover", "$1,000 (the difference between cover price and contract price times the quantity)"]'::jsonb,
 3,
 'Under UCC Section 2-712, when a seller breaches, the buyer may "cover" by making a reasonable substitute purchase and recover the difference between the cover price and the contract price, plus incidental and consequential damages. Here, cover damages are ($12 - $10) × 500 = $1,000. The ability to cover does not eliminate the right to damages — it establishes the measure of damages.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Parker sends an offer to Quinn by mail on Monday. On Wednesday, before Quinn receives the offer, Parker mails a revocation. Quinn receives the offer on Thursday and immediately mails an acceptance. Parker receives Quinn''s acceptance on Friday. Is there a valid contract?',
 '["Yes, because the acceptance was effective when dispatched on Thursday under the mailbox rule, and the revocation was not effective until Quinn received it", "No, because Parker revoked the offer before Quinn accepted", "No, because the revocation was mailed before the acceptance", "Yes, but only if Quinn was aware of the revocation before accepting"]'::jsonb,
 0,
 'Under the mailbox rule, an acceptance is effective when properly dispatched, while a revocation is effective only when received by the offeree. Quinn received the offer on Thursday and immediately mailed an acceptance, which was effective upon dispatch. The revocation, though mailed earlier, was not effective until received by Quinn. Since Quinn dispatched the acceptance before receiving the revocation, a valid contract was formed on Thursday.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Under the UCC, a merchant who receives a written confirmation of a contract and does not object within 10 days:',
 '["Is bound by the confirmation as if the merchant had signed it, satisfying the Statute of Frauds", "Is not bound because the Statute of Frauds requires the merchant''s own signature", "May object at any time within the three-year statute of limitations", "Must pay a penalty for failing to respond"]'::jsonb,
 0,
 'Under UCC Section 2-201(2), between merchants, a written confirmation that is sufficient against the sender also satisfies the Statute of Frauds against the recipient if the recipient does not object in writing within 10 days of receiving it. This merchant exception prevents a party from using the Statute of Frauds to avoid an oral agreement when they failed to object to a confirming memorandum from the other merchant.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Rescission as a contract remedy:',
 '["Awards the non-breaching party double the contract value", "Cancels the contract and requires both parties to return any benefits received, restoring them to their pre-contract positions", "Is available only for contracts involving real property", "Requires a finding of criminal fraud before it can be granted"]'::jsonb,
 1,
 'Rescission is an equitable remedy that cancels the contract and returns both parties to their pre-contract positions through mutual restitution. Each party must return any benefits received under the contract. Rescission is available for fraud, misrepresentation, mistake, duress, undue influence, or failure of consideration. It does not require criminal fraud — civil misrepresentation or mutual mistake is sufficient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Roberts agrees to sell their house to Stevens for $300,000. Before closing, Roberts receives a higher offer and refuses to complete the sale. Stevens sues for specific performance. A court will most likely:',
 '["Deny specific performance because Stevens can buy a different house", "Award only nominal damages because Stevens suffered no actual loss", "Require Stevens to accept the higher offer price", "Grant specific performance because real property is considered unique"]'::jsonb,
 3,
 'Courts routinely grant specific performance for real property contracts because each parcel of land is considered unique — no two parcels have the same location, characteristics, and features. Monetary damages are presumed inadequate because the buyer cannot simply purchase an identical substitute. Stevens would be entitled to a court order compelling Roberts to complete the sale at the agreed price of $300,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Under the UCC, a seller discovers a defect in delivered goods and wants to cure the nonconformity. The seller may cure if:',
 '["The time for performance has not yet expired, or the seller had reasonable grounds to believe the tender would be acceptable", "The buyer has already used the goods", "More than 30 days have passed since delivery", "The buyer expressly accepts the nonconforming goods"]'::jsonb,
 0,
 'Under UCC Section 2-508, a seller has the right to cure a nonconforming tender in two situations: (1) if the time for performance has not yet expired, the seller may notify the buyer and make a conforming delivery within the contract time; or (2) if the seller had reasonable grounds to believe the tender would be acceptable (e.g., based on prior dealings), the seller may have additional reasonable time to cure. The right to cure balances the perfect tender rule with commercial reasonableness.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Thompson and Underwood enter into a contract requiring Thompson to personally perform a specialized engineering service. Thompson attempts to delegate the duty to a subcontractor. Under common law:',
 '["The delegation is valid because all contractual duties are delegable", "The delegation transfers all liability to the subcontractor", "The delegation is invalid because duties involving personal skill, judgment, or expertise cannot be delegated without the obligee''s consent", "Thompson must obtain a court order before delegating"]'::jsonb,
 2,
 'Under common law, contractual duties that are personal in nature — those requiring unique skill, judgment, trust, or expertise — cannot be delegated without the consent of the obligee (the party entitled to performance). Engineering services requiring specialized expertise are personal duties. Even when delegation is permitted, the delegating party remains liable for performance unless there is a novation releasing them.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'A contract between a homeowner and a painter requires the painter to complete exterior painting by October 15. On October 1, the painter notifies the homeowner that the painter will not perform. This is an example of:',
 '["Anticipatory repudiation, which gives the homeowner the right to immediately treat the contract as breached and seek remedies", "A minor breach entitling the homeowner to damages only", "A condition subsequent that terminates the contract", "Impossibility of performance excusing the painter"]'::jsonb,
 0,
 'Anticipatory repudiation (anticipatory breach) occurs when one party unequivocally communicates, before the time for performance, that they will not perform their contractual obligations. The non-breaching party may immediately treat the contract as breached and pursue remedies (damages, cover, etc.) without waiting for the actual performance date to pass. Alternatively, the non-breaching party may wait a reasonable time and urge performance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'Under UCC Article 2, which of the following additional terms would be considered to "materially alter" a contract between merchants and therefore NOT become part of the contract?',
 '["A term specifying the shipping carrier", "A term confirming the quantity agreed upon orally", "A term specifying the payment method as check rather than cash", "A term adding an arbitration clause that waives the right to a jury trial"]'::jsonb,
 3,
 'Under UCC Section 2-207, additional terms in an acceptance between merchants become part of the contract unless they materially alter it. An arbitration clause is considered a material alteration because it significantly changes the parties'' dispute resolution rights by waiving the right to a jury trial. Terms regarding shipping carriers, confirming agreed quantities, or specifying standard payment methods are generally not material alterations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Law: Contracts',
 'A contract requires payment of $10,000 for services to be rendered. After partial performance, the parties agree to modify the contract to reduce the price to $8,000. Under common law, this modification:',
 '["Requires new consideration from both parties to be enforceable", "Is enforceable without additional consideration because modifications are always valid", "Is enforceable only if it is in writing", "Is automatically void because it reduces the original price"]'::jsonb,
 0,
 'Under common law (as opposed to the UCC), modifications to existing contracts require new consideration from both parties to be enforceable. This is the pre-existing duty rule — performing or promising to perform an existing contractual obligation is not valid consideration for a new promise. Without new consideration, the modification is a gratuitous promise and unenforceable. The UCC eliminates this requirement for contracts involving the sale of goods.',
 'hard');

-- =============================================================================
-- Agency and Regulation — 26 questions (8 easy, 13 medium, 5 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agency relationship is created when:',
 '["One person agrees to act on behalf of another, subject to the other''s control", "Two parties enter into a partnership agreement", "An employee is hired to perform a specific task with no supervision", "A person purchases goods from a merchant"]'::jsonb,
 0,
 'An agency relationship is created when one person (the agent) agrees to act on behalf of and subject to the control of another person (the principal). The essential elements are mutual consent, the agent acting on the principal''s behalf, and the principal''s right to control the agent''s conduct. Partnership, unsupervised employment, and buyer-seller relationships are distinct legal relationships.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'Express authority in an agency relationship arises when:',
 '["The agent assumes authority based on the circumstances", "A third party reasonably believes the agent has authority", "The agent acts in an emergency to protect the principal''s interests", "The principal explicitly grants the agent authority through words, whether oral or written"]'::jsonb,
 3,
 'Express authority is actual authority granted by the principal to the agent through explicit communication — either oral statements or written instructions. It is distinguished from implied authority (reasonably necessary to carry out express authority), apparent authority (created by the principal''s representations to third parties), and emergency authority (arising from necessity when the principal is unavailable).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'Implied authority of an agent includes the power to:',
 '["Take any action the agent believes would benefit the principal", "Perform acts that are reasonably necessary and customary to carry out the agent''s express authority", "Enter into contracts that exceed the scope of the express authorization", "Bind the principal to personal guarantees"]'::jsonb,
 1,
 'Implied authority gives an agent the power to perform acts that are reasonably necessary, customary, or incidental to carrying out the express authority granted by the principal. It fills gaps in express authority based on what is reasonable in the circumstances. It does not grant unlimited discretion, allow the agent to exceed the scope of authorization, or extend to extraordinary acts like personal guarantees.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'Apparent authority exists when:',
 '["The agent has actual authority that has not been communicated to third parties", "The agent claims to have authority without any basis", "The agent exceeds express authority in an emergency", "The principal''s conduct causes a reasonable third party to believe the agent has authority to act"]'::jsonb,
 3,
 'Apparent authority (also called ostensible authority) arises from the principal''s conduct or representations to third parties, not from the agent''s claims. When a principal creates an appearance of authority through words, conduct, or by allowing the agent to occupy a position that customarily carries certain authority, third parties who reasonably rely on that appearance can hold the principal liable. The focus is on the principal''s actions, not the agent''s assertions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'A general agent differs from a special agent in that a general agent:',
 '["Is authorized to conduct a broad range of transactions on the principal''s behalf on a continuing basis", "Is appointed only for a single, specific transaction", "Has no authority to bind the principal in contracts", "Must always be an employee of the principal"]'::jsonb,
 0,
 'A general agent is authorized to conduct a broad range of business transactions on the principal''s behalf on a continuing basis — for example, a manager running a retail store. A special agent, by contrast, is appointed for a single transaction or limited series of transactions. Both types can bind the principal within their scope of authority. General agents need not be employees — they may be independent contractors.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'A gratuitous agent — one who receives no compensation — owes which duties to the principal?',
 '["No duties because there is no consideration", "Only the duty of loyalty, not the duty of care", "The same fiduciary duties as a compensated agent, including loyalty and care", "Duties are limited to what is expressly stated in writing"]'::jsonb,
 2,
 'A gratuitous agent owes the same fiduciary duties as a compensated agent, including the duties of loyalty, obedience, care, accounting, and notification. The absence of compensation does not relieve the agent of fiduciary obligations once the agency relationship is accepted. However, some courts may apply a slightly lower standard of care to gratuitous agents, requiring only slight diligence rather than ordinary care.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'Under the doctrine of respondeat superior, a principal (employer) is liable for:',
 '["All actions of the agent regardless of when or where they occur", "Only criminal acts committed by the agent", "Only contractual obligations entered into by the agent", "Torts committed by the agent while acting within the scope of employment"]'::jsonb,
 3,
 'Respondeat superior ("let the master answer") holds a principal/employer vicariously liable for torts committed by an agent/employee while acting within the scope of employment. The doctrine applies even if the employer did not authorize or know about the specific tortious act. Actions outside the scope of employment (such as personal errands or frolic and detour) generally do not trigger vicarious liability.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agent enters into a contract with a third party on behalf of a disclosed principal. If the principal fails to perform the contract, the third party may seek remedies against:',
 '["Only the agent, because the agent signed the contract", "Both the agent and the principal jointly", "Only the principal, because a disclosed principal is the real party in interest", "Neither party — the third party assumed the risk"]'::jsonb,
 2,
 'When an agent acts for a disclosed principal (one whose identity is known to the third party), the principal is the real party to the contract. The third party''s contractual remedies run against the principal, not the agent, unless the agent personally guaranteed performance or exceeded authority. The agent drops out of the transaction once the disclosed principal is bound.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agent enters into a contract on behalf of an undisclosed principal (the third party does not know the principal exists). If the principal fails to perform:',
 '["The third party has no recourse because the principal was unknown", "Only the agent is liable because the third party dealt with the agent alone", "The third party may hold either the agent or the undisclosed principal liable once the principal''s identity is discovered", "The contract is automatically void because the principal was not disclosed"]'::jsonb,
 2,
 'When an agent acts for an undisclosed principal, the third party may hold either the agent or the principal liable once the principal''s existence and identity are discovered. The agent remains liable because the third party relied on the agent''s credit and reputation. The principal is also liable because the agent acted within actual authority. The third party must generally elect to hold one party liable once both are known.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agent''s duty of loyalty requires the agent to:',
 '["Disclose all material information to the principal, avoid self-dealing, and not compete with the principal during the agency", "Work exclusively for one principal at all times", "Accept any compensation offered by the principal without negotiation", "Guarantee the success of all transactions conducted for the principal"]'::jsonb,
 0,
 'The duty of loyalty is the most fundamental fiduciary duty. It requires the agent to act in the principal''s best interests by disclosing all material information, avoiding conflicts of interest and self-dealing, not profiting at the principal''s expense, and not competing with the principal during the agency relationship. The agent may work for multiple principals (absent a restrictive agreement) and is not required to guarantee outcomes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agent who uses confidential information obtained during the agency to personally profit has breached the duty of:',
 '["Care", "Loyalty", "Obedience", "Accounting"]'::jsonb,
 1,
 'Using confidential information obtained during the agency for personal profit is a breach of the duty of loyalty. The duty of loyalty requires the agent to refrain from self-dealing and not to exploit the agency relationship for personal gain. This duty continues even after the agency terminates with respect to confidential information. The duty of care relates to competence, obedience to following instructions, and accounting to keeping records.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'The principal owes the agent a duty to:',
 '["Provide a written employment contract", "Compensate the agent as agreed and reimburse the agent for authorized expenses incurred on the principal''s behalf", "Disclose the principal''s complete financial records", "Guarantee the agent''s personal safety at all times"]'::jsonb,
 1,
 'The principal owes the agent the duties of compensation (as agreed), reimbursement (for authorized expenses incurred in performing agency duties), indemnification (for losses suffered without fault while acting within authority), and cooperation (not interfering with the agent''s performance). The principal is not required to provide a written contract, guarantee safety beyond reasonable standards, or disclose all financial records.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'A principal suffers a loss because an agent acted outside the scope of authority. The principal sues the agent. Under agency law, the agent:',
 '["Is liable to the principal for losses caused by acting outside the scope of authority", "Is not liable because the principal assumed the risk of the agency", "Is liable only if the agent profited from the unauthorized act", "Is protected by the business judgment rule"]'::jsonb,
 0,
 'An agent who exceeds the scope of authority and causes the principal to suffer a loss is personally liable to the principal. The agent has a duty of obedience to follow the principal''s reasonable instructions and stay within authorized boundaries. Acting outside authority breaches this duty and makes the agent liable for resulting damages. The business judgment rule protects corporate directors, not agents generally.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agency relationship may be terminated by:',
 '["Only the mutual agreement of the principal and agent", "A court order only", "The death of either the principal or the agent, by operation of law", "Only the passage of a specified time period"]'::jsonb,
 2,
 'An agency relationship may be terminated in several ways, including: (1) acts of the parties — mutual agreement, revocation by the principal, or renunciation by the agent; (2) operation of law — death or incapacity of either party, bankruptcy of the principal, or impossibility of performance; and (3) expiration of the agency term or accomplishment of the purpose. Death automatically terminates the agency by operation of law.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'A principal revokes an agent''s authority but fails to notify a third party who has previously dealt with the agent. The agent subsequently enters into a contract with the third party. The principal is:',
 '["Not bound because the agent had no actual authority", "Bound only if the agent acted in good faith", "Not bound because revocation is effective immediately against all parties", "Bound on the contract because the agent had apparent authority arising from the prior course of dealing"]'::jsonb,
 3,
 'When a principal revokes an agent''s authority but fails to notify third parties who have previously dealt with the agent, the agent retains apparent authority. Third parties who reasonably rely on the continuing appearance of authority (created by the principal''s prior course of dealing) can hold the principal bound. The principal must give actual notice to third parties who have dealt with the agent and constructive notice (publication) to others to terminate apparent authority.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'Ratification of an unauthorized act by a principal requires:',
 '["The principal had knowledge of all material facts at the time of ratification and the principal had the capacity to authorize the act originally", "The third party agreed to the ratification", "The agent acted in bad faith when exceeding authority", "A written ratification filed with the court"]'::jsonb,
 0,
 'Ratification occurs when a principal, with knowledge of all material facts, affirms or accepts an agent''s previously unauthorized act. Requirements include: (1) the principal must have knowledge of all material facts, (2) the principal must have had capacity and legal power to authorize the act originally, (3) the ratification must encompass the entire transaction, and (4) it must occur before the third party withdraws. No third-party consent or court filing is required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'Wilson hires Martinez as a sales agent. Martinez enters into a sales contract with a customer, but the contract price is below the minimum authorized by Wilson. Wilson, upon learning of the contract, ships the goods to the customer at the contract price. Wilson has:',
 '["Breached the agency agreement with Martinez", "No liability because Martinez exceeded authority", "Ratified Martinez''s unauthorized act by accepting the benefits of the transaction", "Created a new agency relationship with the customer"]'::jsonb,
 2,
 'By shipping the goods at the contract price, Wilson accepted the benefits of Martinez''s unauthorized transaction. This constitutes ratification — the principal''s affirmation of a previously unauthorized act. Ratification can be express or implied through conduct, such as accepting the benefits of the transaction. Once ratified, the transaction is treated as if it had been originally authorized, and Wilson is bound by the contract terms.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agent has a duty of accounting that requires the agent to:',
 '["Keep accurate records of all property and funds received and expended on the principal''s behalf, and not commingle them with the agent''s own property", "Prepare audited financial statements for the principal", "File annual tax returns for the principal", "Provide monthly profit and loss statements"]'::jsonb,
 0,
 'The duty of accounting requires the agent to keep and render accurate accounts of all property and funds received or expended on behalf of the principal. The agent must maintain the principal''s property separate from the agent''s own property (no commingling) and be prepared to account for all transactions at any time. This does not require audited financials, tax filing, or formal monthly statements unless specifically agreed.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'A principal instructs an agent to sell a property for no less than $200,000. The agent sells it for $180,000 because the agent believed it was a fair price in the current market. The agent has breached the duty of:',
 '["Loyalty", "Care", "Notification", "Obedience"]'::jsonb,
 3,
 'The duty of obedience requires the agent to follow the principal''s reasonable and lawful instructions. By selling the property below the authorized minimum price, the agent violated the principal''s express instruction, regardless of the agent''s personal belief about market conditions. If the agent believed the instruction was unreasonable, the proper course was to inform the principal and seek revised instructions, not to unilaterally disregard the directive.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agent for a partially disclosed principal (the third party knows an agent is acting for a principal but does not know the principal''s identity) enters into a contract. If the principal fails to perform:',
 '["Only the agent is liable because the principal was not identified", "Only the principal is liable once identified", "The contract is voidable at the third party''s option", "Both the agent and the principal may be held liable by the third party"]'::jsonb,
 3,
 'When an agent acts for a partially disclosed principal (the third party knows a principal exists but not the identity), both the agent and the principal may be held liable. The agent is liable because the third party relied in part on the agent''s credit given the unknown principal. The principal is liable because the agent acted with authority on the principal''s behalf. The third party may pursue either or both parties.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agency coupled with an interest:',
 '["May be revoked by the principal at any time", "Cannot be revoked by the principal because the agent has a property interest in the subject matter of the agency", "Terminates automatically upon the death of the principal", "Is created only by court order"]'::jsonb,
 1,
 'An agency coupled with an interest exists when the agent has a property interest or security interest in the subject matter of the agency (for example, when a lender has authority to sell collateral upon default). Because the agent has an independent stake in the subject matter, the principal cannot unilaterally revoke the agency. It also survives the death or incapacity of the principal, unlike ordinary agency relationships.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'A principal hires an independent contractor to perform a construction project. A worker on the project is injured due to the contractor''s negligence. Under agency law, the principal is generally:',
 '["Liable under respondeat superior because the principal hired the contractor", "Liable only if the principal was present at the job site", "Liable regardless of the contractor''s status", "Not liable because the principal does not control the manner and method of the independent contractor''s work"]'::jsonb,
 3,
 'Generally, a principal who hires an independent contractor is not vicariously liable for the contractor''s torts because the principal does not control the manner and method of the independent contractor''s work. This is a key distinction from the employer-employee relationship. Exceptions exist for inherently dangerous activities, non-delegable duties, and negligent hiring, but the general rule shields the principal from vicarious liability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'An agent learns that a third party is willing to pay significantly more than the asking price for property the agent is authorized to sell. The agent''s duty of notification requires the agent to:',
 '["Promptly inform the principal of the third party''s willingness to pay a higher price", "Keep this information confidential to negotiate a better commission", "Sell at the asking price to complete the transaction quickly", "Report the information to a regulatory authority"]'::jsonb,
 0,
 'The duty of notification (also called the duty to inform) requires an agent to promptly communicate to the principal all information relevant to the agency that comes to the agent''s attention. Learning that a higher price is available is clearly material information that affects the principal''s interests. Withholding this information to benefit the agent (through a quicker sale or higher commission) would breach both the duties of notification and loyalty.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'Renunciation of an agency by the agent:',
 '["Is never permitted once the agency has been established", "Terminates the agency but may subject the agent to liability for breach of contract if the renunciation violates the agency agreement", "Automatically terminates all contracts entered into by the agent on behalf of the principal", "Requires the consent of all third parties who have dealt with the agent"]'::jsonb,
 1,
 'An agent may renounce (terminate) the agency at any time, as the law does not compel involuntary servitude. However, if the renunciation violates the terms of the agency agreement (e.g., the agent agreed to serve for a specific period), the agent may be liable to the principal for breach of contract damages. Renunciation does not retroactively affect contracts already entered into or require third-party consent.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'The duty of indemnification requires the principal to:',
 '["Pay the agent a bonus for exceptional performance", "Compensate the agent for losses and expenses reasonably incurred while acting within the scope of authority on the principal''s behalf", "Provide health insurance and retirement benefits to the agent", "Hold the agent harmless from all liability regardless of the agent''s conduct"]'::jsonb,
 1,
 'The duty of indemnification requires the principal to compensate the agent for losses, liabilities, and expenses reasonably incurred while the agent acted within the scope of authorized duties. This includes legal costs if the agent is sued by a third party for actions taken on the principal''s behalf within authority. The duty does not extend to losses caused by the agent''s own negligence, unauthorized acts, or illegal conduct.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Agency and Regulation',
 'A real estate broker is authorized to find a buyer for a seller''s property. The broker finds a buyer and negotiates a sale. The broker is most accurately described as:',
 '["A general agent with broad continuing authority", "A special agent authorized for a specific transaction", "An undisclosed agent acting for an unknown principal", "A gratuitous agent acting without compensation"]'::jsonb,
 1,
 'A real estate broker hired to sell a specific property is a special agent — one authorized to handle a particular transaction or a limited series of transactions. The broker''s authority is confined to finding a buyer and negotiating the sale of that specific property. Once the transaction is completed, the agency typically ends. A general agent, by contrast, has broader, continuing authority to conduct a range of business activities.',
 'easy');
-- REG Chunk 2: Business Structures, Property Basis, Gains/Losses, Like-Kind Exchanges, Individual Income

-- =============================================================================
-- Business Structures — 26 questions (8 easy, 13 medium, 5 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'A sole proprietor reports business income and expenses on which federal tax form?',
 '["Form 1120", "Schedule C of Form 1040", "Form 1065", "Schedule E of Form 1040"]'::jsonb,
 1,
 'A sole proprietorship is not a separate legal entity for tax purposes. The owner reports all business income and expenses on Schedule C (Profit or Loss from Business) of Form 1040. Form 1120 is for C corporations, Form 1065 is for partnerships, and Schedule E is primarily for rental and passive income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Maria operates a bakery as a sole proprietor. In 2026, she has $180,000 of net business income. She must pay self-employment tax on this income. What is the self-employment tax rate applied to 92.35% of net earnings?',
 '["7.65%", "12.4%", "15.3%", "6.2%"]'::jsonb,
 2,
 'The self-employment tax rate is 15.3% (12.4% Social Security + 2.9% Medicare) applied to 92.35% of net self-employment earnings. The 92.35% factor approximates the employer-equivalent portion of FICA. For 2026, the Social Security wage base applies to the first $176,100 of combined wages and self-employment income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'In a general partnership, which of the following statements about liability is correct?',
 '["Partners are liable only up to their capital contributions", "Each partner has joint and several liability for partnership debts", "Only the managing partner is personally liable", "Partners are shielded from tort liability of other partners"]'::jsonb,
 1,
 'In a general partnership, each partner has joint and several liability for all partnership obligations, including debts, contracts, and torts committed by other partners in the ordinary course of business. This unlimited personal liability is a key disadvantage of the general partnership form compared to LLCs or limited partnerships.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Tom and Jerry form a general partnership. Tom contributes $100,000 cash and Jerry contributes equipment worth $100,000 (adjusted basis $60,000). A supplier sues the partnership for $300,000 and wins. If the partnership has only $50,000 in assets, how much can the supplier collect from Tom personally?',
 '["$100,000 (his capital contribution)", "$125,000 (half the remaining debt)", "$250,000 (the full remaining debt)", "$150,000 (the full debt minus partnership assets minus Jerry''s share)"]'::jsonb,
 2,
 'In a general partnership, each partner has joint and several liability for the full amount of partnership debts. The supplier can collect the entire $250,000 remaining debt ($300,000 - $50,000 partnership assets) from Tom alone if Jerry cannot pay. Tom would then have a right of contribution against Jerry for Jerry''s share, but the creditor is not limited to collecting only a proportionate amount.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'In a limited partnership, which of the following is true about a limited partner''s liability?',
 '["A limited partner is personally liable for all partnership debts", "A limited partner''s liability is generally limited to their capital contribution", "A limited partner has joint and several liability with the general partner", "A limited partner is never liable for any amount"]'::jsonb,
 1,
 'A limited partner''s liability is generally limited to their capital contribution to the partnership. The limited partner does not participate in management and in return receives liability protection. However, if a limited partner exercises control over the business equivalent to a general partner, they may lose this protection under the control rule.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Green Hills LP has two general partners and ten limited partners. The partnership incurs $500,000 in debt. Which partners bear personal liability for this obligation?',
 '["All twelve partners share the liability equally", "Only the two general partners are personally liable", "Only the limited partners who voted on the debt are liable", "No partner is personally liable because it is a limited partnership"]'::jsonb,
 1,
 'In a limited partnership, general partners have unlimited personal liability for partnership debts, while limited partners'' liability is limited to their capital contributions. The two general partners bear personal liability for the full $500,000 debt. The ten limited partners risk only their invested capital, provided they have not participated in management.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Which of the following is an advantage of forming a limited liability company (LLC) rather than a general partnership?',
 '["LLCs must have at least two members", "LLC members receive limited liability protection while retaining management flexibility", "LLCs are always taxed as corporations", "LLC members cannot participate in management"]'::jsonb,
 1,
 'An LLC combines the limited liability of a corporation with the management flexibility and pass-through taxation of a partnership. Unlike limited partners, LLC members can actively participate in management without losing liability protection. LLCs can be single-member, can elect partnership or corporate taxation, and members have full management rights unless they choose a manager-managed structure.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Alpha LLC is member-managed with three equal members. Member A wants to sign a $200,000 supply contract on behalf of the LLC. Under default rules, what authority does Member A have?',
 '["No authority — only a designated manager can bind the LLC", "Apparent authority to bind the LLC in ordinary course transactions", "Authority only if all three members unanimously approve", "Authority only for contracts under $100,000"]'::jsonb,
 1,
 'In a member-managed LLC, each member has apparent authority to bind the LLC in transactions within the ordinary course of the company''s business, similar to a general partner''s authority. Third parties can reasonably rely on any member''s authority. For extraordinary transactions outside the ordinary course, member approval is typically required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'A creditor of an LLC member obtains a judgment against the member personally (not against the LLC). Under most state LLC statutes, the creditor''s remedy against the member''s LLC interest is:',
 '["Seizure and sale of the member''s LLC interest", "A charging order against the member''s distributions", "Forced dissolution of the LLC", "Direct collection from LLC assets"]'::jsonb,
 1,
 'Under most state LLC statutes, a creditor of an individual member is limited to obtaining a charging order, which entitles the creditor to receive distributions that would otherwise go to the debtor-member. The creditor cannot seize the membership interest, force a sale, compel dissolution, or reach LLC assets directly. This protects the other members from disruption.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Which of the following best describes a limited liability partnership (LLP)?',
 '["A partnership where no partner has personal liability for any obligation", "A partnership where partners are shielded from liability for other partners'' malpractice but remain liable for their own acts", "A partnership that must be taxed as a corporation", "A partnership that cannot have more than 100 partners"]'::jsonb,
 1,
 'An LLP provides partners with protection from vicarious liability for the negligence, malpractice, or misconduct of other partners. Each partner remains fully liable for their own acts and for obligations they directly supervise. LLPs are commonly used by professional firms such as accounting and law firms. They retain partnership taxation and have no partner limit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'When forming a corporation, which document must be filed with the state to legally create the entity?',
 '["Bylaws", "Operating agreement", "Articles of incorporation", "Shareholder agreement"]'::jsonb,
 2,
 'Articles of incorporation (also called a corporate charter or certificate of incorporation) must be filed with the state to legally create a corporation. Bylaws are internal governance rules adopted by the board but not filed with the state. Operating agreements govern LLCs, not corporations. Shareholder agreements are private contracts among owners.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Riverdale Inc. has three shareholders, a five-member board of directors, and two officers (CEO and CFO). Under corporate law, which body has the authority to declare dividends?',
 '["The shareholders by majority vote", "The board of directors", "The officers", "The state secretary of state"]'::jsonb,
 1,
 'Under corporate law, the board of directors has the exclusive authority to declare dividends. Shareholders elect the board and approve fundamental changes (mergers, dissolution, charter amendments), but they do not declare dividends. Officers handle day-to-day management under the board''s direction. The decision to distribute profits rests with the board''s business judgment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'The board of directors of Apex Corp. approves a transaction that results in a $2 million loss. Shareholders sue the directors for breach of fiduciary duty. Under the business judgment rule, the directors will most likely be protected if:',
 '["The transaction was profitable for at least one director personally", "The directors made an informed decision in good faith with no conflict of interest", "The company had liability insurance covering the loss", "The shareholders approved the transaction after the fact"]'::jsonb,
 1,
 'The business judgment rule presumes that directors act on an informed basis, in good faith, and in the honest belief that the action taken was in the best interest of the corporation. Directors are protected from personal liability for business decisions that turn out poorly, provided they acted with due care, without conflicts of interest, and with reasonable inquiry. A bad outcome alone does not establish a breach.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'A director of Beta Corp. learns at a board meeting that Beta plans to acquire a smaller competitor. Before the acquisition is announced, the director purchases 5,000 shares of the target company. This action violates the director''s:',
 '["Duty of care", "Duty of loyalty", "Duty of obedience", "Business judgment rule"]'::jsonb,
 1,
 'Trading on material nonpublic information obtained through a fiduciary position violates the duty of loyalty, which requires directors to put the corporation''s interests above personal gain. The duty of loyalty prohibits self-dealing, usurping corporate opportunities, and using confidential corporate information for personal benefit. This conduct also violates insider trading laws under federal securities regulations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Which of the following factors would a court MOST likely consider when deciding whether to pierce the corporate veil?',
 '["The corporation has fewer than 10 shareholders", "The corporation failed to observe corporate formalities and was used as a mere alter ego of its owner", "The corporation elected S corporation status", "The corporation had a single line of business"]'::jsonb,
 1,
 'Courts pierce the corporate veil when the corporation is merely an alter ego of its shareholders, typically evidenced by failure to observe corporate formalities (no minutes, no separate bank accounts), commingling of personal and corporate funds, undercapitalization, and use of the entity to perpetrate fraud. Having few shareholders, S corp status, or a single business line are not grounds for piercing.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Jackson is the sole shareholder of Jackson Consulting Inc. He uses the corporate bank account to pay his personal mortgage, car payments, and vacation expenses. He has never held a board meeting or recorded corporate minutes. A creditor sues the corporation for $400,000 but the corporation has only $50,000 in assets. The creditor seeks to hold Jackson personally liable. Which outcome is most likely?',
 '["Jackson is protected because incorporation shields shareholders from all liability", "A court will pierce the corporate veil due to alter ego and failure to maintain corporate formalities", "The creditor can only recover the $50,000 in corporate assets", "Jackson is liable only up to his original capital contribution"]'::jsonb,
 1,
 'Jackson''s commingling of personal and corporate funds, failure to hold board meetings, and absence of corporate minutes are classic grounds for piercing the corporate veil. Courts treat the corporation as the alter ego of its shareholder when the corporate form is disregarded. Jackson would be held personally liable for the full $400,000 debt because the corporation was not operated as a separate entity.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Which of the following is a key difference between a corporation''s bylaws and its articles of incorporation?',
 '["Bylaws are filed with the state; articles are internal documents", "Articles are filed with the state; bylaws are internal governance rules", "Both must be filed with the state to be effective", "Bylaws require shareholder approval; articles do not"]'::jsonb,
 1,
 'Articles of incorporation are filed with the state and create the corporation as a legal entity. They contain fundamental provisions such as the corporate name, registered agent, authorized shares, and purpose. Bylaws are internal governance documents adopted by the board that detail meeting procedures, officer roles, committee structures, and voting requirements. Bylaws are not filed with the state.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Sara contributes $80,000 cash to form an LLC as a 40% member. The LLC takes out a $200,000 nonrecourse loan from a bank. What is Sara''s tax basis in her LLC interest immediately after formation?',
 '["$80,000", "$160,000", "$120,000", "$280,000"]'::jsonb,
 1,
 'Sara''s initial tax basis is her $80,000 cash contribution plus her 40% share of the $200,000 nonrecourse liability ($80,000), totaling $160,000. Under Section 752, a partner''s share of partnership liabilities increases their basis. Nonrecourse liabilities are generally allocated according to profit-sharing ratios. This basis determines Sara''s ability to deduct losses and take tax-free distributions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Which of the following statements about a sole proprietorship is INCORRECT?',
 '["The owner has unlimited personal liability for business debts", "Business income is reported on Schedule C of Form 1040", "The business must file a separate federal income tax return", "The owner pays self-employment tax on net business income"]'::jsonb,
 2,
 'A sole proprietorship does not file a separate federal income tax return. The owner reports all business income and deductions on Schedule C of their personal Form 1040. The sole proprietorship is a disregarded entity for tax purposes. The owner does have unlimited personal liability and must pay self-employment tax on net earnings from the business.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Two CPAs form an LLP to practice public accounting. Partner A negligently issues an incorrect audit opinion, and the client sues for $1 million. Under LLP statutes, which statement is correct?',
 '["Both partners are jointly and severally liable for the full $1 million", "Partner B has no personal liability for Partner A''s negligence", "Partner A''s liability is limited to the partnership assets", "The LLP structure eliminates all liability for both partners"]'::jsonb,
 1,
 'In an LLP, Partner B is shielded from personal liability for Partner A''s negligent acts. Partner A remains fully personally liable for their own malpractice. The LLP structure protects innocent partners from vicarious liability for other partners'' professional negligence, though all partners remain liable for their own acts and for general partnership contractual obligations in most states.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Mega Corp. is a C corporation with 50 shareholders. Which of the following corporate actions requires shareholder approval rather than just board approval?',
 '["Declaring a quarterly dividend", "Hiring a new CEO", "Amending the articles of incorporation", "Approving the annual operating budget"]'::jsonb,
 2,
 'Amending the articles of incorporation is a fundamental change that requires shareholder approval, typically by a majority vote. Other fundamental changes requiring shareholder approval include mergers, dissolution, and sale of substantially all assets. Day-to-day management decisions such as declaring dividends, hiring officers, and setting budgets are within the board''s authority.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'A manager-managed LLC has three members and one designated manager. Member B, who is not the manager, signs a $50,000 contract with a vendor on behalf of the LLC. Which statement is correct?',
 '["The contract is automatically binding because all members have apparent authority", "The contract is not binding because in a manager-managed LLC, only the manager has apparent authority to bind the LLC", "The contract is binding only if the vendor knew Member B was not the manager", "The contract is void and unenforceable under all circumstances"]'::jsonb,
 1,
 'In a manager-managed LLC, only the designated manager has apparent authority to bind the LLC in ordinary course transactions. Non-manager members do not have apparent authority. If a non-manager member enters a contract, it is generally not binding on the LLC unless the LLC ratifies it or the member had actual authority. This differs from a member-managed LLC where all members have apparent authority.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Dave and Ellen each contribute $50,000 to form a general partnership with equal profit-sharing. In its first year, the partnership earns $120,000. How much income must Dave report on his individual tax return?',
 '["$0 — partnerships do not distribute income until withdrawn", "$50,000 — limited to his capital contribution", "$60,000 — his 50% share of partnership income", "$120,000 — the full partnership income"]'::jsonb,
 2,
 'Partnerships are pass-through entities under Subchapter K. Each partner reports their distributive share of partnership income on their individual tax return regardless of whether the income is actually distributed. Dave''s 50% share of $120,000 equals $60,000, which he must report as ordinary income. The partnership files an informational return (Form 1065) but pays no entity-level tax.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'FastGrow LLC is taxed as a partnership and has three members: A (50%), B (30%), and C (20%). The LLC has $100,000 of recourse debt for which only Member A has personally guaranteed repayment. How is the $100,000 liability allocated for basis purposes?',
 '["$50,000 to A, $30,000 to B, $20,000 to C", "$100,000 to A, $0 to B, $0 to C", "$33,333 to each member equally", "$0 to all members because LLC members have limited liability"]'::jsonb,
 1,
 'Under Section 752, recourse liabilities are allocated to the partner who bears the economic risk of loss. Because Member A personally guaranteed the $100,000 debt, A bears the entire economic risk of loss and the full liability is allocated to A''s basis. Members B and C receive no basis increase from this recourse liability. This differs from nonrecourse liabilities, which are shared based on profit ratios.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Which of the following is true regarding corporate officers?',
 '["Officers are elected by shareholders at the annual meeting", "Officers are appointed by the board of directors and serve at the board''s pleasure", "Officers must also be members of the board of directors", "Officers have the authority to amend the corporate bylaws"]'::jsonb,
 1,
 'Corporate officers are appointed by the board of directors and handle the day-to-day operations of the corporation. They serve at the board''s discretion and can be removed by the board. Officers do not need to be directors (though they often are). Shareholders elect the board, not the officers. Only the board (or shareholders, per the articles) can amend bylaws.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Business Structures',
 'Phil operates a consulting firm as a sole proprietorship with $250,000 of net income in 2026. His wife Karen earns $90,000 in wages from an unrelated employer. They file jointly. How is Phil''s self-employment (SE) tax deduction treated?',
 '["It reduces Phil''s Schedule C net income directly", "Half of the SE tax is deductible as an adjustment to gross income on Form 1040", "The full SE tax is an itemized deduction on Schedule A", "Self-employment tax is not deductible under any provision"]'::jsonb,
 1,
 'Under Section 164(f), taxpayers may deduct 50% of self-employment tax as an above-the-line adjustment to gross income (for AGI) on Form 1040. This deduction approximates the employer''s share of FICA that would be deductible by an employer. The deduction does not reduce Schedule C income or SE earnings — it is a separate line item that reduces AGI.',
 'medium');

-- =============================================================================
-- Property Transactions: Basis — 33 questions (10 easy, 17 medium, 6 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Rachel purchases a rental property for $320,000. She pays $8,000 in closing costs (title insurance, legal fees, recording fees). What is Rachel''s initial cost basis in the property?',
 '["$320,000", "$328,000", "$312,000", "$316,000"]'::jsonb,
 1,
 'The cost basis of property includes the purchase price plus all costs incident to the acquisition, such as title insurance, legal fees, recording fees, and transfer taxes. Rachel''s basis is $320,000 + $8,000 = $328,000. Closing costs that are capitalized into basis do not include prepaid interest, property taxes prorated to the buyer, or insurance premiums.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Kevin buys a house for $400,000. Over the next five years, he adds a $40,000 garage and replaces the roof for $25,000. He also claims $15,000 in casualty loss deductions. What is Kevin''s adjusted basis?',
 '["$400,000", "$450,000", "$465,000", "$480,000"]'::jsonb,
 1,
 'Adjusted basis starts with the original cost basis ($400,000), adds capital improvements ($40,000 garage + $25,000 roof = $65,000), and subtracts items that reduce basis such as casualty loss deductions ($15,000). The adjusted basis is $400,000 + $65,000 - $15,000 = $450,000. Routine maintenance and repairs are not added to basis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Lisa purchased a commercial building for $500,000 and has claimed $120,000 in depreciation deductions over the years. What is her adjusted basis in the building?',
 '["$620,000", "$500,000", "$380,000", "$120,000"]'::jsonb,
 2,
 'Adjusted basis equals cost basis minus depreciation allowed or allowable. Lisa''s adjusted basis is $500,000 - $120,000 = $380,000. Depreciation reduces basis regardless of whether it was actually claimed — the tax code uses the greater of depreciation allowed (actually taken) or allowable (should have been taken).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'A taxpayer fails to claim $10,000 of allowable depreciation on a rental property over three years. If the taxpayer sells the property, the adjusted basis is reduced by:',
 '["$0 — depreciation not claimed does not reduce basis", "$10,000 — the amount of depreciation allowable", "Only the amount of depreciation actually claimed", "50% of the allowable amount"]'::jsonb,
 1,
 'Under Section 1016, basis is reduced by depreciation allowed or allowable, whichever is greater. Even if the taxpayer fails to claim depreciation, basis is still reduced by the amount that should have been claimed (allowable). This prevents taxpayers from intentionally skipping depreciation to maintain a higher basis for a future sale. The IRS uses the greater of the two amounts.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Uncle Bob gives his nephew a stock portfolio with a fair market value of $50,000 on the date of the gift. Uncle Bob''s adjusted basis in the stock is $30,000. No gift tax is paid. What is the nephew''s basis for computing a GAIN on a later sale?',
 '["$0", "$30,000", "$50,000", "$40,000"]'::jsonb,
 1,
 'Under Section 1015, the donee''s basis for computing gain on gifted property is generally the donor''s adjusted basis (carryover basis). Since Uncle Bob''s basis was $30,000, the nephew uses $30,000 as his basis for gain purposes. The FMV of $50,000 is relevant only if the property had declined in value (the dual-basis rule applies when FMV is less than donor''s basis).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Aunt Mary gives her niece land with an adjusted basis of $80,000 and a fair market value of $55,000 at the date of the gift. No gift tax is paid. If the niece later sells the land for $50,000, what is her recognized loss?',
 '["$30,000 loss", "$5,000 loss", "$25,000 loss", "$0 loss"]'::jsonb,
 1,
 'Under the dual-basis rule of Section 1015, when gifted property has a FMV less than the donor''s basis at the time of the gift, the donee uses FMV ($55,000) as the basis for computing a loss. The niece''s loss is $55,000 - $50,000 = $5,000. The donor''s higher basis ($80,000) is used only for computing gain. This rule prevents donors from shifting built-in losses to donees.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Aunt Mary gives her niece land with an adjusted basis of $80,000 and a FMV of $55,000 at the date of the gift. If the niece sells the land for $70,000, what is the tax result?',
 '["$10,000 gain", "$15,000 gain", "$10,000 loss", "No gain or loss recognized"]'::jsonb,
 3,
 'Under the dual-basis rule, when the selling price falls between the donor''s basis ($80,000) and the FMV at the date of the gift ($55,000), no gain or loss is recognized. There is no gain because $70,000 is less than the gain basis of $80,000, and no loss because $70,000 exceeds the loss basis of $55,000. This is the "no man''s land" or "twilight zone" of the dual-basis rule.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Frank inherits 500 shares of stock from his mother, who died on March 15, 2026. Her adjusted basis was $20 per share and the FMV on the date of death was $75 per share. What is Frank''s basis in the inherited stock?',
 '["$10,000", "$37,500", "$20,000", "$47,500"]'::jsonb,
 1,
 'Under Section 1014, property acquired from a decedent receives a basis equal to the FMV at the date of death (stepped-up or stepped-down basis). Frank''s basis is 500 shares x $75 = $37,500. The decedent''s original cost basis of $20 per share ($10,000 total) is irrelevant. This step-up in basis eliminates the unrealized appreciation that accrued during the decedent''s lifetime.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'George inherits a vacation home from his father, who died on June 1, 2026. The father purchased the home for $350,000 and the FMV at the date of death is $280,000. What is George''s basis in the property?',
 '["$350,000", "$280,000", "$315,000", "$70,000"]'::jsonb,
 1,
 'Under Section 1014, inherited property receives a basis equal to FMV at the date of death, which can be a step-up or a step-down. Since the FMV ($280,000) is less than the decedent''s cost ($350,000), George receives a stepped-down basis of $280,000. The $70,000 built-in loss is permanently lost and cannot be recognized by George or anyone.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Helen''s mother died on April 10, 2026. The estate executor elects the alternate valuation date. Which date is used to value the estate''s assets?',
 '["April 10, 2026 (date of death)", "October 10, 2026 (six months after death)", "April 10, 2027 (one year after death)", "The date the estate tax return is filed"]'::jsonb,
 1,
 'Under Section 2032, the executor may elect the alternate valuation date, which is six months after the date of death. If an asset is distributed, sold, or otherwise disposed of within the six-month period, it is valued on the date of disposition. The election is available only if it reduces both the gross estate value and the estate tax liability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'David gives stock to his daughter on July 1, 2026. David purchased the stock on March 1, 2020, for $15,000. On July 1, 2026, the stock is worth $45,000. No gift tax is paid. The daughter sells the stock on September 1, 2026. What is her holding period?',
 '["Two months (July 1 to September 1, 2026)", "Over six years (tacked from March 1, 2020)", "One year starting from the date of gift", "The holding period cannot be determined"]'::jsonb,
 1,
 'When a donee takes a carryover basis from the donor (Section 1015 basis for gain), the donee also tacks the donor''s holding period. David''s holding period began March 1, 2020, so the daughter''s holding period is over six years. This means any gain on the September 2026 sale would be a long-term capital gain, qualifying for preferential tax rates.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Nancy buys a parcel of land and a small office building in a single transaction for $600,000. At the time of purchase, the land is appraised at $200,000 and the building at $400,000. What is Nancy''s cost basis in the building for depreciation purposes?',
 '["$600,000", "$400,000", "$300,000", "$200,000"]'::jsonb,
 1,
 'When multiple assets are purchased in a lump-sum transaction, the total cost must be allocated among the assets based on their relative fair market values. The building''s FMV ($400,000) is 2/3 of the total appraised value ($600,000), so the building receives 2/3 of the $600,000 purchase price = $400,000. Only the building portion is depreciable; land is not depreciable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Tim buys a duplex for $500,000 (building $400,000, land $100,000). He rents one unit and lives in the other. For depreciation, what is the depreciable basis of the rental portion?',
 '["$500,000", "$400,000", "$200,000", "$250,000"]'::jsonb,
 2,
 'When property is used partly for personal purposes and partly for rental, only the rental portion is depreciable. The building basis of $400,000 is split 50/50 between the two units (assuming equal size), giving a depreciable basis of $200,000 for the rental unit. Land ($100,000) is never depreciable. Tim cannot depreciate the personal-use portion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Sandra receives stock as a gift from her father. His basis is $40,000, FMV at the date of gift is $60,000, and he paid $3,000 in gift tax on the transfer. Under Section 1015, what is Sandra''s basis in the stock?',
 '["$40,000", "$43,000", "$60,000", "$42,000"]'::jsonb,
 3,
 'When gift tax is paid, the donee''s basis is increased by a portion of the gift tax attributable to the net appreciation. The appreciation is $20,000 ($60,000 FMV - $40,000 basis). The ratio is $20,000 / $60,000 = 1/3. The basis increase is 1/3 x $3,000 gift tax = $1,000 (rounding applies). Sandra''s basis is approximately $40,000 + $2,000 = $42,000. The gift tax addition cannot exceed FMV.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'A taxpayer converts a personal residence (cost $300,000, FMV $250,000) to rental property. What basis does the taxpayer use for depreciation?',
 '["$300,000", "$250,000", "$275,000", "$50,000"]'::jsonb,
 1,
 'When personal-use property is converted to business or rental use, the basis for depreciation is the LOWER of the taxpayer''s adjusted basis ($300,000) or the FMV at the date of conversion ($250,000). Since FMV is lower, the depreciable basis is $250,000 (allocated between land and building). This prevents taxpayers from claiming depreciation on the personal-use decline in value.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'A taxpayer converts a personal residence (cost $200,000, FMV $260,000) to rental property. What is the basis for depreciation?',
 '["$260,000", "$200,000", "$230,000", "$60,000"]'::jsonb,
 1,
 'When converting personal property to business use, the basis for depreciation (and for computing loss) is the lower of adjusted basis or FMV at the date of conversion. Here, the adjusted basis ($200,000) is lower than FMV ($260,000), so the depreciable basis is $200,000. The taxpayer cannot depreciate the unrealized appreciation that existed before conversion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'William inherits corporate bonds from his uncle who died on February 14, 2026. The uncle''s adjusted basis was $95,000 and the FMV at the date of death was $102,000. William sells the bonds on August 1, 2026, for $108,000. What is William''s gain or loss?',
 '["$6,000 long-term capital gain", "$13,000 long-term capital gain", "$6,000 short-term capital gain", "$13,000 short-term capital gain"]'::jsonb,
 0,
 'William''s basis is $102,000 (FMV at date of death under Section 1014). His gain is $108,000 - $102,000 = $6,000. Inherited property is always treated as held long-term regardless of the actual holding period, so this is a long-term capital gain. The uncle''s original basis of $95,000 is irrelevant, and the holding period rule for inherited property is a deemed long-term holding.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Which of the following costs is added to the basis of real property at the time of purchase?',
 '["Prepaid property taxes allocated to the buyer", "Title search and title insurance fees", "Mortgage interest paid at closing", "Homeowner''s insurance premiums"]'::jsonb,
 1,
 'Title search and title insurance fees are costs of acquiring title and are capitalized into the property''s basis. Prepaid property taxes are deductible as taxes, not added to basis. Mortgage interest paid at closing is deductible as interest expense. Insurance premiums are period expenses. Other capitalizable costs include legal fees, recording fees, surveys, and transfer taxes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Megan buys a rental property for $275,000. In year one, she adds a $15,000 deck and claims $8,500 in depreciation. In year two, a storm causes $12,000 in damage, and she claims a casualty loss deduction of $12,000. What is her adjusted basis at the end of year two?',
 '["$275,000", "$269,500", "$281,500", "$257,500"]'::jsonb,
 1,
 'Starting basis is $275,000. Add capital improvements ($15,000 deck) = $290,000. Subtract year one depreciation ($8,500) = $281,500. Subtract casualty loss deduction ($12,000) = $269,500. Capital improvements increase basis, while depreciation and casualty losses claimed as deductions reduce basis. Repairs that are expensed do not affect basis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Peter inherits land from his grandmother who died on September 1, 2026. The grandmother originally purchased the land in 1995 for $40,000. The FMV on the date of death is $175,000. Peter sells the land on December 1, 2026, for $185,000. What is the character of Peter''s gain?',
 '["$10,000 short-term capital gain", "$10,000 long-term capital gain", "$145,000 long-term capital gain", "$185,000 ordinary income"]'::jsonb,
 1,
 'Peter''s stepped-up basis under Section 1014 is $175,000 (FMV at date of death). His gain is $185,000 - $175,000 = $10,000. Although Peter held the land only three months, inherited property is automatically treated as long-term regardless of the actual holding period. The $135,000 of appreciation during the grandmother''s lifetime is eliminated by the step-up in basis.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Robert purchases 1,000 shares of XYZ Corp. on January 15, 2026, for $25 per share, paying a $150 brokerage commission. What is Robert''s basis per share?',
 '["$25.00", "$25.15", "$24.85", "$25.50"]'::jsonb,
 1,
 'The cost basis of stock includes the purchase price plus any transaction costs such as brokerage commissions. Robert''s total cost is (1,000 x $25) + $150 = $25,150. Divided by 1,000 shares, the per-share basis is $25.15. Similarly, when selling stock, the brokerage commission reduces the amount realized rather than increasing basis.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Alice receives a gift of 200 shares of stock from her mother on May 1, 2026. Her mother''s adjusted basis is $15,000 and the FMV on the date of the gift is $22,000. Alice sells all 200 shares on November 15, 2026, for $24,000. What is Alice''s gain?',
 '["$2,000 short-term capital gain", "$9,000 long-term capital gain", "$9,000 short-term capital gain", "$2,000 long-term capital gain"]'::jsonb,
 1,
 'Alice''s basis for computing gain is the donor''s carryover basis of $15,000 (Section 1015). Her gain is $24,000 - $15,000 = $9,000. Because the donee tacks the donor''s holding period when using carryover basis, and the mother''s holding period is assumed to exceed one year, the gain is long-term. The FMV at the date of gift ($22,000) is not used when FMV exceeds donor''s basis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'A taxpayer purchases a business for $800,000. The fair market values of the identifiable assets are: equipment $200,000, inventory $150,000, building $300,000, and land $50,000. The remaining $100,000 is allocated to which asset?',
 '["Additional basis in the building", "Additional basis in equipment", "Goodwill (Section 197 intangible)", "A Section 1231 asset"]'::jsonb,
 2,
 'In a lump-sum business purchase, the purchase price is first allocated to identifiable tangible and intangible assets at FMV. Any excess of the purchase price over the total FMV of identifiable assets is allocated to goodwill under the residual method (Section 1060). The $100,000 excess is goodwill, a Section 197 intangible amortized over 15 years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Under Section 1014, which of the following is NOT eligible for a stepped-up basis at death?',
 '["Stocks held in a brokerage account", "Real estate owned by the decedent", "Income in respect of a decedent (IRD) items such as unpaid salary", "A personal automobile"]'::jsonb,
 2,
 'Income in respect of a decedent (IRD) does not receive a stepped-up basis under Section 1014. IRD items — such as unpaid wages, accrued interest, IRA/401(k) distributions, and installment sale receivables — retain their tax character and are taxed to the recipient when received. All other property owned by the decedent, including stocks, real estate, and personal property, is eligible for the step-up.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Mark buys a warehouse and land for $750,000. The county tax assessment values the land at $150,000 and the building at $450,000 (total $600,000). How much of the $750,000 purchase price is allocated to the building?',
 '["$450,000", "$562,500", "$600,000", "$375,000"]'::jsonb,
 1,
 'When a lump-sum purchase includes land and building, the total cost is allocated based on relative fair market values. Using the tax assessment as a proxy: building ratio = $450,000 / $600,000 = 75%. Building basis = 75% x $750,000 = $562,500. Land basis = 25% x $750,000 = $187,500. Only the building portion is depreciable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Carol has a personal car (cost $35,000, FMV $22,000) that she begins using 100% for her sole proprietorship. What is the depreciable basis of the car for business use?',
 '["$35,000", "$22,000", "$28,500", "$13,000"]'::jsonb,
 1,
 'When personal property is converted to business use, the depreciable basis is the lower of adjusted basis (cost of $35,000, assuming no prior adjustments) or FMV at the date of conversion ($22,000). Since FMV is lower, the depreciable basis is $22,000. This rule prevents taxpayers from depreciating the decline in value that occurred during personal use. The $13,000 personal-use loss is permanently disallowed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'James receives a painting as a gift from his father. The father''s basis is $5,000 and the FMV at the date of gift is $12,000. The father paid $800 in gift tax, all attributable to the gift of the painting. Under Section 1015, what is James''s basis?',
 '["$5,000", "$5,800", "$5,467", "$12,000"]'::jsonb,
 2,
 'James''s basis starts with the donor''s basis of $5,000, plus the portion of gift tax attributable to net appreciation. Net appreciation = $12,000 - $5,000 = $7,000. Ratio = $7,000 / $12,000 = 58.33%. Basis increase = $800 x 58.33% = $467 (rounded). James''s basis = $5,000 + $467 = $5,467. The gift tax adjustment cannot raise basis above FMV.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Which of the following statements correctly distinguishes Section 1014 from Section 1015?',
 '["Section 1014 applies to gifted property; Section 1015 applies to inherited property", "Section 1014 applies to inherited property (FMV basis); Section 1015 applies to gifted property (carryover basis)", "Both sections apply only to real property", "Section 1014 provides a lower basis; Section 1015 provides a higher basis"]'::jsonb,
 1,
 'Section 1014 governs the basis of property acquired from a decedent, providing a FMV basis (step-up or step-down) at the date of death. Section 1015 governs the basis of property acquired by gift, providing a carryover basis from the donor (with the dual-basis rule for loss property). These two sections are the primary basis rules for gratuitous transfers.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'A taxpayer builds a new fence around a rental property at a cost of $8,000 and also pays $2,000 to repair a broken water heater. How do these expenditures affect the property''s adjusted basis?',
 '["Both increase basis by a total of $10,000", "Only the $8,000 fence increases basis; the $2,000 repair is expensed", "Only the $2,000 repair increases basis", "Neither affects basis"]'::jsonb,
 1,
 'Capital improvements that add value, prolong the useful life, or adapt property to a new use are added to basis. The $8,000 fence is a capital improvement that increases basis. The $2,000 water heater repair is a deductible expense that maintains the property''s current condition and does not increase basis. The distinction between improvements and repairs is critical for basis calculations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Beth''s husband died on January 20, 2026. They owned their home as joint tenants with right of survivorship. The home was purchased for $200,000 (each contributed equally). The FMV at the date of death is $500,000. In a common law state, what is Beth''s basis in the home after her husband''s death?',
 '["$200,000", "$350,000", "$500,000", "$250,000"]'::jsonb,
 1,
 'In a common law (non-community property) state, only the decedent''s half of jointly held property receives a stepped-up basis. Beth''s half retains her original basis of $100,000. Her husband''s half receives a stepped-up basis of $250,000 (half of $500,000 FMV). Beth''s total basis is $100,000 + $250,000 = $350,000. In a community property state, both halves would receive a step-up.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Dan receives land as a gift. The donor''s basis is $45,000, and the FMV at the date of gift is $45,000. No gift tax is paid. What is Dan''s basis in the land?',
 '["$0", "$45,000", "$22,500", "Basis cannot be determined"]'::jsonb,
 1,
 'When the donor''s basis equals the FMV at the date of gift, there is no built-in gain or loss. The donee''s basis is simply the donor''s carryover basis of $45,000 under Section 1015. The dual-basis rule does not apply because FMV is not less than the donor''s basis. Dan''s holding period also tacks onto the donor''s holding period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Sophia buys a rental condo for $220,000 ($180,000 building, $40,000 land). She claims MACRS depreciation of $6,545 in year one. She also installs a new HVAC system for $12,000. What is the adjusted basis of the building at the end of year one?',
 '["$220,000", "$185,455", "$193,455", "$225,455"]'::jsonb,
 1,
 'Building basis starts at $180,000, plus the $12,000 HVAC improvement = $192,000, minus $6,545 MACRS depreciation = $185,455. Land ($40,000) is not depreciable and is tracked separately. Capital improvements like HVAC systems are added to the building''s basis and depreciated over their own recovery period (or the remaining life of the building).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Basis',
 'Oscar inherits a portfolio of stocks and bonds from his father who died on July 4, 2026. The executor properly elected the alternate valuation date. One stock was sold by the estate on August 15, 2026, before the alternate valuation date. At what value is that stock included in the estate?',
 '["FMV on July 4, 2026 (date of death)", "FMV on August 15, 2026 (date of disposition)", "FMV on January 4, 2027 (alternate valuation date)", "The decedent''s original cost basis"]'::jsonb,
 1,
 'When the alternate valuation date is elected, assets disposed of before the six-month alternate date are valued at the date of disposition. Since the stock was sold on August 15, 2026, its value on that date is used for both estate tax purposes and the heir''s stepped-up basis. Assets still held six months after death are valued on the alternate date.',
 'hard');

-- =============================================================================
-- Property Transactions: Gains/Losses — 28 questions (8 easy, 14 medium, 6 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'A taxpayer sells machinery used in a trade or business for more than one year at a gain. Under Section 1231, how is the net gain treated?',
 '["Ordinary income", "Short-term capital gain", "Long-term capital gain", "Tax-exempt income"]'::jsonb,
 2,
 'Under Section 1231, if a taxpayer''s Section 1231 gains exceed Section 1231 losses for the year, the net gain is treated as a long-term capital gain, eligible for preferential tax rates (0%, 15%, or 20%). If Section 1231 losses exceed gains, the net loss is treated as an ordinary loss, fully deductible against ordinary income. This provides the best of both worlds for business property.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Under Section 1231, if a taxpayer has a net Section 1231 loss for the year, how is that loss treated?',
 '["Long-term capital loss subject to the $3,000 annual deduction limit", "Ordinary loss fully deductible against ordinary income", "Carried forward indefinitely with no current deduction", "Short-term capital loss"]'::jsonb,
 1,
 'A net Section 1231 loss is treated as an ordinary loss, which is fully deductible against the taxpayer''s ordinary income without limitation. This is one of the key benefits of Section 1231 — gains are treated as favorable long-term capital gains, but losses receive the more advantageous ordinary loss treatment. The $3,000 limitation applies only to capital losses, not ordinary losses.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'An individual taxpayer has $8,000 in short-term capital gains and $15,000 in short-term capital losses in 2026. After netting, what is the tax treatment?',
 '["$7,000 short-term capital loss, fully deductible", "$7,000 short-term capital loss, with $3,000 deductible and $4,000 carried forward", "$3,000 ordinary deduction with no carryforward", "$7,000 long-term capital loss"]'::jsonb,
 1,
 'The taxpayer has a net short-term capital loss of $7,000 ($8,000 - $15,000). Individual taxpayers may deduct up to $3,000 of net capital losses against ordinary income per year ($1,500 if married filing separately). The remaining $4,000 is carried forward indefinitely to future tax years, retaining its short-term character.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Blake sells equipment used in his business for $45,000. He purchased the equipment for $70,000 and has claimed $35,000 in depreciation. What is the amount and character of his gain under Section 1245?',
 '["$10,000 Section 1231 gain (long-term capital gain)", "$10,000 ordinary income under Section 1245 recapture", "$35,000 ordinary income under Section 1245 recapture", "$45,000 ordinary income"]'::jsonb,
 1,
 'Blake''s adjusted basis is $70,000 - $35,000 depreciation = $35,000. His gain is $45,000 - $35,000 = $10,000. Under Section 1245, gain on the sale of depreciable personal property is recaptured as ordinary income to the extent of all depreciation previously claimed. Since the $10,000 gain is less than the $35,000 total depreciation, the entire $10,000 gain is ordinary income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Carla sells a machine used in her business for $90,000. She purchased it for $60,000 and has claimed $25,000 in MACRS depreciation. What is the amount and character of her gain?',
 '["$55,000 all ordinary income under Section 1245", "$25,000 ordinary income and $30,000 Section 1231 gain", "$55,000 all Section 1231 gain", "$30,000 ordinary income and $25,000 Section 1231 gain"]'::jsonb,
 1,
 'Carla''s adjusted basis is $60,000 - $25,000 = $35,000. Her total gain is $90,000 - $35,000 = $55,000. Under Section 1245, gain is recaptured as ordinary income to the extent of depreciation claimed ($25,000). The remaining $30,000 ($55,000 - $25,000) is Section 1231 gain, treated as long-term capital gain if net Section 1231 gains exceed losses for the year.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Nathan sells a commercial building (nonresidential real property) for $750,000. He purchased it for $600,000 and has claimed $180,000 in straight-line depreciation. What is the character of his gain under Section 1250?',
 '["$330,000 ordinary income", "$180,000 ordinary income and $150,000 Section 1231 gain", "$330,000 Section 1231 gain with $180,000 taxed at 25% as unrecaptured Section 1250 gain", "$330,000 long-term capital gain at preferential rates"]'::jsonb,
 2,
 'Nathan''s adjusted basis is $600,000 - $180,000 = $420,000. Total gain is $750,000 - $420,000 = $330,000. Section 1250 only recaptures depreciation in excess of straight-line as ordinary income, and since straight-line was used, there is no Section 1250 ordinary income recapture. However, the $180,000 of straight-line depreciation is taxed at a maximum 25% rate as unrecaptured Section 1250 gain. The remaining $150,000 is Section 1231 gain.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Which of the following types of property is subject to Section 1245 depreciation recapture?',
 '["Residential rental buildings", "Nonresidential commercial buildings", "Office furniture and equipment", "Land held for investment"]'::jsonb,
 2,
 'Section 1245 applies to depreciable personal property (tangible and intangible) used in a trade or business, including machinery, equipment, furniture, vehicles, and certain other property. Buildings (both residential and nonresidential) are Section 1250 property, not Section 1245 property. Land is not depreciable and is neither Section 1245 nor Section 1250 property.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'In 2026, a taxpayer has $20,000 of short-term capital gains, $5,000 of short-term capital losses, $30,000 of long-term capital gains, and $12,000 of long-term capital losses. What is the taxpayer''s net capital gain?',
 '["$33,000", "$15,000", "$18,000", "$50,000"]'::jsonb,
 0,
 'First, net short-term: $20,000 - $5,000 = $15,000 net STCG. Then net long-term: $30,000 - $12,000 = $18,000 net LTCG. The total net capital gain is $15,000 + $18,000 = $33,000. Short-term gains are taxed at ordinary rates, while net long-term capital gains receive preferential rates (0%, 15%, or 20% depending on taxable income).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'A taxpayer has a $12,000 net short-term capital loss and a $5,000 net long-term capital gain in 2026. What is the net result and how much can be deducted against ordinary income?',
 '["$7,000 net short-term capital loss; $3,000 deductible, $4,000 carried forward", "$7,000 net long-term capital loss; $3,000 deductible, $4,000 carried forward", "$12,000 short-term loss; $3,000 deductible", "$7,000 loss; fully deductible as ordinary loss"]'::jsonb,
 0,
 'Net the $12,000 STCL against the $5,000 LTCG, resulting in a $7,000 net short-term capital loss. The taxpayer deducts $3,000 against ordinary income (the annual capital loss limitation) and carries forward the remaining $4,000 as a short-term capital loss to 2027. The character (short-term) is preserved in the carryforward.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Under Section 1250, depreciation recapture on the sale of real property applies to:',
 '["All depreciation claimed, regardless of method", "Only depreciation in excess of straight-line depreciation", "Only the first year''s depreciation", "Depreciation claimed in the year of sale only"]'::jsonb,
 1,
 'Section 1250 recapture applies only to the excess of accelerated depreciation over what straight-line depreciation would have been. Since MACRS requires straight-line for real property (27.5-year residential, 39-year nonresidential), there is typically no Section 1250 recapture. However, unrecaptured Section 1250 gain (the total straight-line depreciation) is taxed at a maximum 25% rate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Paul sells a rental house (residential real property) for $400,000. His adjusted basis is $280,000, reflecting $120,000 of straight-line depreciation. What portion of his $120,000 gain is unrecaptured Section 1250 gain?',
 '["$0", "$120,000", "$80,000", "$40,000"]'::jsonb,
 1,
 'Paul''s total gain is $400,000 - $280,000 = $120,000. Since all depreciation was straight-line, there is no Section 1250 ordinary recapture. However, unrecaptured Section 1250 gain equals the lesser of the total gain ($120,000) or the depreciation claimed ($120,000). The entire $120,000 gain is unrecaptured Section 1250 gain, taxed at a maximum 25% rate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'In 2026, Marcus sells Section 1231 assets at a $40,000 net gain. In 2024 and 2025, he had $15,000 in unrecaptured net Section 1231 losses. Under the five-year lookback rule, how is his 2026 gain treated?',
 '["$40,000 long-term capital gain", "$15,000 ordinary income and $25,000 long-term capital gain", "$40,000 ordinary income", "$25,000 ordinary income and $15,000 long-term capital gain"]'::jsonb,
 1,
 'The Section 1231 lookback rule requires that net Section 1231 gains be recharacterized as ordinary income to the extent of unrecaptured net Section 1231 losses from the five preceding tax years. Marcus has $15,000 of prior unrecaptured losses, so $15,000 of his $40,000 gain is ordinary income. The remaining $25,000 retains its character as long-term capital gain.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'A taxpayer''s personal-use car (cost $30,000, FMV $18,000) is destroyed in a storm. Insurance reimburses $15,000. What is the casualty loss before applying the $100 floor and 10% AGI limitation?',
 '["$15,000", "$12,000", "$3,000", "$0"]'::jsonb,
 2,
 'For personal-use property, the casualty loss is the lesser of (a) the decline in FMV ($30,000 cost is irrelevant; decline is $18,000 - $0 = $18,000) or (b) the adjusted basis ($30,000), minus insurance recovery ($15,000). The loss is $18,000 - $15,000 = $3,000 before the $100 per-event floor and the 10% AGI threshold. Note: Personal casualty losses are deductible only in federally declared disaster areas.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'An investor holds stock in a corporation that files for bankruptcy. The stock becomes completely worthless on December 15, 2026. How is the loss treated for tax purposes?',
 '["Ordinary loss in the year the stock becomes worthless", "Long-term capital loss deemed to occur on the last day of the tax year", "Short-term capital loss deemed to occur on the date of bankruptcy filing", "No loss is recognized until the stock is formally canceled"]'::jsonb,
 1,
 'Under Section 165(g), a loss from worthless securities is treated as a capital loss deemed to occur on the last day of the tax year in which the security becomes worthless (December 31, 2026). The holding period is measured to that deemed date. If held more than one year, it is a long-term capital loss. The taxpayer does not need to sell the stock to recognize the loss.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Ryan sells a piece of land he held for investment for $100,000 on an installment basis, receiving $30,000 in year one. His basis in the land is $60,000. Under the installment method, how much gain does Ryan recognize in year one?',
 '["$40,000", "$12,000", "$30,000", "$0"]'::jsonb,
 1,
 'Under the installment method (Section 453), gain is recognized proportionally as payments are received. The gross profit percentage is ($100,000 - $60,000) / $100,000 = 40%. In year one, Ryan recognizes 40% x $30,000 = $12,000 of gain. The installment method spreads gain recognition over the collection period rather than recognizing all gain in the year of sale.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Which of the following correctly describes the netting process for capital gains and losses?',
 '["Short-term and long-term are combined into one category before netting", "Short-term gains and losses are netted separately, then long-term gains and losses are netted separately, then the two net amounts are combined", "Losses are deducted first, then gains are added", "Only long-term transactions are netted; short-term transactions are treated as ordinary"]'::jsonb,
 1,
 'Capital gains and losses follow a specific netting process: (1) net short-term gains against short-term losses, (2) net long-term gains against long-term losses, then (3) combine the net short-term and net long-term results. This ordering matters because short-term gains are taxed at ordinary rates while long-term gains receive preferential rates.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Kelly sells equipment (Section 1245 property) for $50,000 that she purchased for $80,000. She has claimed $40,000 in depreciation. What is the amount and character of her gain or loss?',
 '["$10,000 Section 1231 gain", "$10,000 ordinary income under Section 1245", "$30,000 ordinary loss", "$10,000 long-term capital gain"]'::jsonb,
 1,
 'Kelly''s adjusted basis is $80,000 - $40,000 = $40,000. Her gain is $50,000 - $40,000 = $10,000. Under Section 1245, the gain is recaptured as ordinary income to the extent of prior depreciation ($40,000). Since the $10,000 gain is entirely within the $40,000 of depreciation claimed, all $10,000 is ordinary income. Section 1245 recapture takes priority over Section 1231.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Jennifer has $4,000 of net long-term capital losses and no capital gains in 2026. Her AGI before capital losses is $85,000. How much of the capital loss can she deduct in 2026?',
 '["$4,000", "$3,000", "$1,000", "$0"]'::jsonb,
 1,
 'Individual taxpayers may deduct a maximum of $3,000 of net capital losses against ordinary income per year ($1,500 if married filing separately). Jennifer can deduct $3,000 of her $4,000 net LTCL in 2026 and carry forward the remaining $1,000 as a long-term capital loss to 2027. The carryforward retains its long-term character and has no expiration.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'A business warehouse is destroyed by a tornado in a federally declared disaster area. The building''s adjusted basis is $200,000, FMV before the casualty was $350,000, and insurance reimburses $310,000. What is the tax result?',
 '["$40,000 Section 1231 loss", "$110,000 Section 1231 gain", "$150,000 ordinary loss", "$110,000 casualty gain"]'::jsonb,
 1,
 'For business property, the casualty gain or loss equals insurance proceeds minus adjusted basis: $310,000 - $200,000 = $110,000 gain. Business casualty gains are Section 1231 gains (not subject to the personal-use $100/$500 floors or 10% AGI threshold). This gain may be deferred if the taxpayer reinvests in qualified replacement property under Section 1033 (involuntary conversion).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'In 2026, Linda has the following Section 1231 transactions: $50,000 gain on sale of business land and $65,000 loss on sale of business equipment. What is the net Section 1231 result?',
 '["$15,000 long-term capital loss", "$15,000 ordinary loss", "$15,000 short-term capital loss", "$65,000 ordinary loss offset by $50,000 capital gain"]'::jsonb,
 1,
 'The net Section 1231 result is $50,000 - $65,000 = ($15,000) net loss. When Section 1231 losses exceed Section 1231 gains, the net loss is treated as an ordinary loss, fully deductible against the taxpayer''s ordinary income. This is the favorable ''heads I win, tails I don''t lose'' nature of Section 1231. If the net had been a gain, it would have been long-term capital gain.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Tony sells a residential rental building for $500,000. The original cost was $350,000 and total straight-line depreciation claimed is $100,000. What are the amounts of (1) Section 1250 ordinary recapture and (2) unrecaptured Section 1250 gain?',
 '["(1) $100,000 ordinary; (2) $0", "(1) $0 ordinary; (2) $100,000 at 25% max rate", "(1) $50,000 ordinary; (2) $50,000 at 25% max rate", "(1) $0 ordinary; (2) $250,000 at 25% max rate"]'::jsonb,
 1,
 'Tony''s adjusted basis is $350,000 - $100,000 = $250,000. Total gain is $500,000 - $250,000 = $250,000. Since only straight-line depreciation was claimed (as required by MACRS for real property), there is no excess depreciation and no Section 1250 ordinary recapture. The $100,000 of straight-line depreciation is unrecaptured Section 1250 gain taxed at a maximum 25% rate. The remaining $150,000 is Section 1231 gain.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'A taxpayer sells stock at a loss 20 days after purchasing identical stock. Under the wash sale rule, which statement is correct?',
 '["The loss is permanently disallowed", "The disallowed loss is added to the basis of the replacement stock", "The loss is deductible because the 30-day period has expired", "The wash sale rule only applies to gains, not losses"]'::jsonb,
 1,
 'Under the wash sale rule (Section 1091), if a taxpayer sells stock at a loss and purchases substantially identical stock within 30 days before or after the sale, the loss is disallowed. However, the disallowed loss is added to the basis of the replacement stock, so the economic loss is preserved and recognized when the replacement stock is eventually sold. The wash sale rule applies only to losses, not gains.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Amy sells her small business truck (Section 1245 property) for $8,000. She purchased it for $35,000 and claimed $30,000 in depreciation. What is the amount and character of her gain or loss?',
 '["$3,000 Section 1245 ordinary income", "$3,000 Section 1231 gain", "$27,000 ordinary loss", "$3,000 long-term capital gain"]'::jsonb,
 0,
 'Amy''s adjusted basis is $35,000 - $30,000 = $5,000. Her gain is $8,000 - $5,000 = $3,000. Under Section 1245, the gain is ordinary income to the extent of depreciation previously claimed ($30,000). Since the entire $3,000 gain is within the $30,000 of depreciation, all $3,000 is Section 1245 ordinary income recapture. Section 1245 recapture is always applied before Section 1231 treatment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Greg owns a business building with an adjusted basis of $400,000 and $150,000 of accumulated straight-line depreciation. He sells it for $380,000. What is the tax treatment?',
 '["$20,000 Section 1231 loss (ordinary loss)", "$20,000 long-term capital loss", "$130,000 unrecaptured Section 1250 gain", "No gain or loss recognized"]'::jsonb,
 0,
 'Greg''s adjusted basis after depreciation is $400,000 (this is already the adjusted basis reflecting prior depreciation). Wait — the adjusted basis IS $400,000. He sells for $380,000, resulting in a $20,000 loss. Since the property was used in a trade or business and held more than one year, this is a Section 1231 loss. If net Section 1231 result is a loss, it is treated as an ordinary loss. There is no depreciation recapture on a loss transaction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Section 1245 recapture requires that gain on the sale of depreciable personal property be treated as ordinary income to the extent of:',
 '["Depreciation claimed in the current year only", "All depreciation previously allowed or allowable", "Only straight-line depreciation", "Only accelerated depreciation in excess of straight-line"]'::jsonb,
 1,
 'Section 1245 requires full recapture — gain is ordinary income to the extent of ALL depreciation previously allowed or allowable on the property. This differs from Section 1250, which only recaptures excess depreciation over straight-line. Section 1245 applies to personal property (equipment, machinery, vehicles) and is more aggressive than Section 1250 recapture for real property.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Vera sells an office building for $1,200,000. The original cost was $800,000, and she claimed $200,000 in straight-line depreciation. She also sells office furniture (Section 1245 property) for $60,000 (original cost $100,000, depreciation claimed $70,000). Compute the total ordinary income from both sales.',
 '["$30,000", "$200,000", "$230,000", "$630,000"]'::jsonb,
 0,
 'Building: Adjusted basis = $800,000 - $200,000 = $600,000. Gain = $1,200,000 - $600,000 = $600,000. Since straight-line was used, Section 1250 ordinary recapture is $0 ($200,000 is unrecaptured Section 1250 gain at 25% max, not ordinary). Furniture: Adjusted basis = $100,000 - $70,000 = $30,000. Gain = $60,000 - $30,000 = $30,000 — all Section 1245 ordinary recapture. Total ordinary income = $0 + $30,000 = $30,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'Henry sells investment land for $150,000 that he has held for 8 months. His basis is $110,000. What is the character and tax treatment of the gain?',
 '["$40,000 short-term capital gain taxed at ordinary rates", "$40,000 long-term capital gain taxed at preferential rates", "$40,000 Section 1231 gain", "$40,000 ordinary income"]'::jsonb,
 0,
 'Henry''s gain is $150,000 - $110,000 = $40,000. Since the land was held for only 8 months (not more than one year), the gain is a short-term capital gain. Short-term capital gains are taxed at the taxpayer''s ordinary income tax rates. The land is investment property (not business property), so Section 1231 does not apply — Section 1231 requires use in a trade or business.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Property Transactions: Gains/Losses',
 'In a given tax year, a taxpayer has Section 1231 gains of $80,000 and Section 1231 losses of $80,000. The taxpayer also had $10,000 of unrecaptured Section 1231 losses from two years ago. What is the net tax result?',
 '["$0 net Section 1231 gain or loss", "$10,000 ordinary income", "$80,000 LTCG offset by $80,000 ordinary loss", "$10,000 long-term capital gain"]'::jsonb,
 0,
 'Section 1231 gains equal Section 1231 losses ($80,000 each), resulting in a net Section 1231 gain/loss of $0. The five-year lookback rule only applies when there is a net Section 1231 gain. Since the net result is zero, the $10,000 of prior unrecaptured losses remains unrecaptured and continues to be tracked for the remaining three years of the lookback period.',
 'hard');

-- =============================================================================
-- Like-Kind Exchanges — 22 questions (7 easy, 11 medium, 4 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Under Section 1031, which of the following types of property qualifies for a like-kind exchange?',
 '["Stocks and bonds", "Inventory held for sale to customers", "Real property held for investment exchanged for real property used in a business", "A personal residence"]'::jsonb,
 2,
 'Section 1031 like-kind exchanges are limited to real property held for productive use in a trade or business or for investment. Stocks, bonds, notes, inventory, and property held primarily for sale are specifically excluded. Personal residences do not qualify because they are personal-use property. Real property exchanged for real property of a like kind qualifies, regardless of whether one is investment and the other is business-use.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'After the Tax Cuts and Jobs Act (TCJA), Section 1031 like-kind exchange treatment is available for which type of property?',
 '["Personal property such as vehicles and equipment", "Real property only", "Both real and personal property", "Intangible property only"]'::jsonb,
 1,
 'Effective January 1, 2018, the TCJA limited Section 1031 like-kind exchange treatment to real property only. Before the TCJA, taxpayers could also do like-kind exchanges of personal property (equipment, vehicles, machinery). Now, exchanges of personal property are fully taxable. The real property must be held for use in a trade or business or for investment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'In a Section 1031 like-kind exchange, the taxpayer must identify replacement property within how many days of transferring the relinquished property?',
 '["30 days", "45 days", "90 days", "180 days"]'::jsonb,
 1,
 'In a deferred like-kind exchange, the taxpayer must identify potential replacement properties in writing within 45 calendar days of transferring the relinquished property. The taxpayer must also receive the replacement property within 180 days (or the due date of the tax return, including extensions, if earlier). Missing the 45-day identification deadline disqualifies the exchange.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'In a Section 1031 exchange, the taxpayer must receive the replacement property within how many days of transferring the relinquished property?',
 '["45 days", "90 days", "120 days", "180 days"]'::jsonb,
 3,
 'The taxpayer must receive the replacement property within 180 calendar days after the transfer of the relinquished property (or the due date of the tax return, including extensions, for the year of the transfer, if earlier). This is independent of the 45-day identification period — both deadlines must be met for the exchange to qualify under Section 1031.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'What is the role of a qualified intermediary (QI) in a Section 1031 like-kind exchange?',
 '["The QI appraises the properties to determine fair market value", "The QI holds the sale proceeds and acquires the replacement property on behalf of the taxpayer to prevent constructive receipt", "The QI files the Section 1031 election with the IRS", "The QI provides financing for the replacement property"]'::jsonb,
 1,
 'A qualified intermediary facilitates a deferred like-kind exchange by holding the proceeds from the sale of the relinquished property and using those funds to acquire the replacement property on behalf of the taxpayer. This prevents the taxpayer from having actual or constructive receipt of the cash, which would disqualify the exchange. The QI must be an unrelated third party.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'In a Section 1031 exchange, Lisa transfers an office building (basis $200,000, FMV $350,000) and receives a warehouse (FMV $300,000) plus $50,000 cash. What is Lisa''s recognized gain?',
 '["$0", "$50,000", "$150,000", "$100,000"]'::jsonb,
 1,
 'Lisa''s realized gain is $350,000 (FMV received: $300,000 + $50,000) minus $200,000 basis = $150,000. In a like-kind exchange, gain is recognized to the extent of boot received. Boot is non-like-kind property, including cash. Lisa received $50,000 in boot (cash). Her recognized gain is the lesser of realized gain ($150,000) or boot received ($50,000) = $50,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Continuing with Lisa''s exchange (basis $200,000 in relinquished property, received warehouse FMV $300,000 plus $50,000 cash, recognized gain $50,000), what is Lisa''s basis in the replacement warehouse?',
 '["$300,000", "$200,000", "$250,000", "$150,000"]'::jsonb,
 1,
 'The basis of replacement property in a like-kind exchange is: basis of relinquished property ($200,000) + gain recognized ($50,000) - boot received ($50,000) = $200,000. Alternatively: FMV of replacement property ($300,000) - deferred gain ($150,000 - $50,000 = $100,000) = $200,000. The $100,000 of deferred gain is preserved in the lower basis of the replacement property.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Mark exchanges an apartment building (basis $400,000, FMV $600,000) for another apartment building (FMV $600,000) with no boot given or received. What is the tax result?',
 '["$200,000 gain recognized", "$200,000 gain deferred, basis of new property is $400,000", "$200,000 gain excluded permanently", "No gain or loss; basis of new property is $600,000"]'::jsonb,
 1,
 'In a pure like-kind exchange with no boot, no gain is recognized. The $200,000 realized gain ($600,000 - $400,000) is fully deferred. Mark''s basis in the replacement property is $400,000 (the same as his basis in the relinquished property). The deferred gain will be recognized when Mark eventually sells the replacement property in a taxable transaction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'In a Section 1031 exchange, the taxpayer gives boot (cash) of $30,000 along with relinquished property (basis $150,000, FMV $220,000) to receive replacement property (FMV $250,000). What is the basis of the replacement property?',
 '["$250,000", "$220,000", "$180,000", "$150,000"]'::jsonb,
 2,
 'Basis of replacement property = basis of relinquished property ($150,000) + boot given ($30,000) + gain recognized ($0, since no boot was received) - boot received ($0) = $180,000. When a taxpayer gives boot but receives none, no gain is recognized. The boot given increases the basis of the replacement property. The $70,000 deferred gain ($250,000 FMV - $180,000 basis) is preserved.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Sam exchanges a commercial building (basis $300,000, FMV $500,000, subject to a $100,000 mortgage) for a retail building (FMV $400,000, no mortgage). The buyer assumes Sam''s $100,000 mortgage. What is Sam''s recognized gain?',
 '["$0", "$100,000", "$200,000", "$50,000"]'::jsonb,
 1,
 'Sam''s realized gain is $500,000 - $300,000 = $200,000. The buyer''s assumption of Sam''s $100,000 mortgage is treated as boot received by Sam. Recognized gain is the lesser of realized gain ($200,000) or boot received ($100,000) = $100,000. Mortgage relief is treated the same as cash boot in a Section 1031 exchange.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'In a Section 1031 exchange, both parties transfer mortgages. The taxpayer is relieved of a $150,000 mortgage and assumes a $90,000 mortgage on the replacement property. What is the net boot received?',
 '["$150,000", "$90,000", "$60,000", "$240,000"]'::jsonb,
 2,
 'When both parties transfer mortgaged properties, the mortgages are netted. The taxpayer was relieved of $150,000 and assumed $90,000, resulting in net mortgage relief of $60,000. This $60,000 is net boot received. Mortgage assumed by the taxpayer reduces boot received, while mortgage relief increases boot received. Only the net amount is treated as boot for gain recognition purposes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Which of the following would disqualify a transaction from Section 1031 like-kind exchange treatment?',
 '["Exchanging an office building for raw land", "Using a qualified intermediary for a deferred exchange", "Exchanging real property with a related party who sells within two years", "Exchanging a rental house for a commercial warehouse"]'::jsonb,
 2,
 'Under Section 1031(f), if a like-kind exchange occurs between related parties (siblings, ancestors, descendants, controlled entities) and either party disposes of the property within two years, the exchange is disqualified and any deferred gain is recognized. Office building for raw land qualifies (both real property). Rental house for warehouse qualifies (both real property held for business/investment).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Rachel exchanges rental property (basis $175,000, FMV $275,000) for replacement rental property (FMV $250,000) plus $25,000 in cash. What is the basis of the replacement property?',
 '["$250,000", "$175,000", "$200,000", "$225,000"]'::jsonb,
 1,
 'Rachel''s realized gain is $275,000 - $175,000 = $100,000. Boot received = $25,000 cash. Recognized gain = lesser of $100,000 or $25,000 = $25,000. Basis of replacement = $175,000 (old basis) + $25,000 (gain recognized) - $25,000 (boot received) = $175,000. Alternatively: $250,000 FMV - $75,000 deferred gain = $175,000. The deferred gain reduces the basis.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Which of the following is NOT a requirement for a valid Section 1031 like-kind exchange?',
 '["The properties must be like-kind (real property for real property)", "Both properties must be held for use in a trade or business or for investment", "The exchange must be completed in a single simultaneous transaction", "The taxpayer must not have constructive receipt of the exchange proceeds"]'::jsonb,
 2,
 'Section 1031 does not require a simultaneous exchange. Deferred (non-simultaneous) exchanges are permitted, provided the 45-day identification and 180-day closing deadlines are met and a qualified intermediary holds the proceeds. The other requirements — like-kind property, business/investment use, and avoiding constructive receipt — are all essential for a valid exchange.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Tom exchanges investment land (basis $90,000, FMV $160,000) for a rental duplex (FMV $140,000) and $20,000 cash. He also pays $5,000 in exchange expenses. What is Tom''s recognized gain?',
 '["$70,000", "$20,000", "$15,000", "$0"]'::jsonb,
 2,
 'Tom''s realized gain is ($140,000 + $20,000) - $90,000 - $5,000 = $65,000 (exchange expenses reduce the amount realized). Boot received is $20,000 cash, reduced by the $5,000 in exchange expenses, for net boot of $15,000. Recognized gain is the lesser of realized gain ($65,000) or net boot ($15,000) = $15,000. Exchange expenses offset boot before computing recognized gain.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Under Section 1031, can a taxpayer exchange a rental property in the United States for a rental property in France?',
 '["Yes, both are real property held for investment", "No, real property in the U.S. and real property outside the U.S. are not like-kind", "Yes, but only if a qualified intermediary is used", "No, Section 1031 does not apply to rental property"]'::jsonb,
 1,
 'Section 1031(h) provides that real property located in the United States and real property located outside the United States are not like-kind. A domestic-for-foreign real property exchange does not qualify for tax deferral under Section 1031. However, foreign real property can be exchanged for other foreign real property.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Janet identifies four potential replacement properties within the 45-day identification period. Under the three-property rule, what is the consequence?',
 '["The exchange automatically fails because more than three properties were identified", "The exchange qualifies only if the total FMV of the four properties does not exceed 200% of the relinquished property''s FMV", "The exchange qualifies as long as Janet acquires at least one within 180 days", "There is no limit on the number of replacement properties that can be identified"]'::jsonb,
 1,
 'Under the three-property rule, a taxpayer may identify up to three replacement properties without regard to their value. If more than three are identified, the exchange can still qualify under the 200% rule — the total FMV of all identified properties must not exceed 200% of the FMV of the relinquished property. Alternatively, the 95% rule requires acquiring 95% of the total identified value.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Which of the following exchanges qualifies as like-kind under Section 1031?',
 '["A personal automobile for a business truck", "Shares of stock in IBM for shares of stock in Apple", "An apartment building held for rental income for raw land held for investment", "Inventory of computers for inventory of office furniture"]'::jsonb,
 2,
 'An apartment building (real property, rental) exchanged for raw land (real property, investment) qualifies because both are real property held for business use or investment. Personal-use property (personal auto) does not qualify. Stocks and inventory are specifically excluded from Section 1031. The character of real property (improved vs. unimproved) does not matter — all real property is like-kind to all other real property.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Ed exchanges a rental condo (basis $120,000, FMV $200,000) for a rental house (FMV $200,000). No boot is involved. Ed originally purchased the condo 3 years ago. What is Ed''s basis and holding period for the rental house?',
 '["Basis $200,000; holding period starts fresh", "Basis $120,000; holding period includes the 3 years from the condo", "Basis $120,000; holding period starts fresh", "Basis $200,000; holding period includes the 3 years from the condo"]'::jsonb,
 1,
 'In a like-kind exchange with no boot, the replacement property takes a substituted basis equal to the relinquished property''s basis ($120,000). The holding period of the relinquished property tacks onto the replacement property, so Ed''s holding period includes the 3 years he held the condo. The $80,000 deferred gain is preserved in the lower basis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'In an improvement exchange, Sandra transfers her relinquished property (basis $250,000, FMV $400,000) to a qualified intermediary. The QI acquires replacement property for $300,000 and makes $100,000 in improvements before transferring it to Sandra within the 180-day period. What is Sandra''s basis in the replacement property?',
 '["$400,000", "$250,000", "$300,000", "$350,000"]'::jsonb,
 1,
 'Sandra''s realized gain is $400,000 (total FMV received) - $250,000 (basis) = $150,000. No boot received (the full value was reinvested in like-kind property + improvements). Recognized gain = $0. Basis of replacement = $250,000 (old basis) + $0 (gain recognized) = $250,000. The improvement exchange allows improvements to count as part of the replacement property when done through the QI structure before transfer.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'Bob and his brother Carl exchange real properties. Bob gives Carl an office building (basis $100,000, FMV $180,000) and Carl gives Bob raw land (FMV $180,000). 14 months later, Carl sells the office building. What happens to Bob''s deferred gain?',
 '["Nothing — the two-year rule applies only to Bob, not Carl", "Bob must recognize the $80,000 previously deferred gain", "Bob loses his basis in the raw land", "Carl must pay Bob''s deferred gain"]'::jsonb,
 1,
 'Under the related-party rules of Section 1031(f), if either party to a related-party like-kind exchange disposes of the exchanged property within two years, the original exchange is disqualified. Carl''s sale within 14 months triggers recognition of Bob''s $80,000 deferred gain ($180,000 FMV - $100,000 basis). Exceptions apply for death, involuntary conversion, or dispositions that are not tax-motivated.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Like-Kind Exchanges',
 'A taxpayer sells relinquished property on March 1, 2026. The 45th day falls on April 15, 2026 (a business day). By what date must the replacement property be identified in writing?',
 '["March 31, 2026", "April 15, 2026", "April 30, 2026", "August 28, 2026"]'::jsonb,
 1,
 'The 45-day identification period is a strict calendar-day deadline measured from the date the relinquished property is transferred. March 1 + 45 days = April 15. The identification must be in writing, signed by the taxpayer, and delivered to the qualified intermediary or another party involved in the exchange. Weekends and holidays do not extend this deadline.',
 'medium');

-- =============================================================================
-- Individual Taxation: Income — 35 questions (11 easy, 17 medium, 7 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Under Section 61, which of the following is the best definition of gross income?',
 '["Income from wages and salaries only", "All income from whatever source derived, unless specifically excluded", "Total receipts minus cost of goods sold", "Adjusted gross income before deductions"]'::jsonb,
 1,
 'Section 61 defines gross income as all income from whatever source derived, including but not limited to compensation for services, business income, gains from property, interest, rents, royalties, dividends, and alimony (pre-2019). This is an all-inclusive definition — income is taxable unless a specific Code section excludes it.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'In 2026, Jake earns $85,000 in wages, receives $3,000 in credit card cash-back rewards from personal purchases, and wins $500 in a raffle. What is Jake''s gross income?',
 '["$85,500", "$88,500", "$85,000", "$88,000"]'::jsonb,
 0,
 'Jake''s gross income includes $85,000 wages and $500 raffle winnings (prizes and awards are taxable under Section 74). The $3,000 in credit card cash-back rewards from personal purchases is treated as a purchase price reduction (rebate), not taxable income. Therefore, gross income is $85,000 + $500 = $85,500.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Which of the following types of interest income is included in gross income?',
 '["Interest on municipal bonds issued by a state government", "Interest on a savings account at a commercial bank", "Interest on qualified private activity bonds (for regular tax purposes)", "Interest on U.S. Treasury bonds (for state income tax purposes)"]'::jsonb,
 1,
 'Interest on a savings account at a commercial bank is fully taxable and included in gross income. Municipal bond interest is generally excluded under Section 103. Private activity bond interest may be a tax preference item for AMT but is typically excluded for regular tax. Treasury bond interest is taxable for federal purposes but exempt from state income tax.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'In 2026, Clara receives $8,000 in interest from corporate bonds, $3,000 in interest from municipal bonds, and $2,000 in interest from U.S. Treasury bonds. What amount of interest income is included in Clara''s federal gross income?',
 '["$13,000", "$10,000", "$8,000", "$5,000"]'::jsonb,
 1,
 'Corporate bond interest ($8,000) and U.S. Treasury bond interest ($2,000) are both included in federal gross income. Municipal bond interest ($3,000) is excluded under Section 103. Clara''s taxable interest income is $8,000 + $2,000 = $10,000. Note that Treasury interest, while taxable federally, is exempt from state income tax.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'What tax rate applies to qualified dividends for a married couple filing jointly with taxable income of $400,000 in 2026?',
 '["0%", "10%", "15%", "20%"]'::jsonb,
 2,
 'Qualified dividends are taxed at preferential capital gains rates. For 2026, the 15% rate applies to married filing jointly taxpayers with taxable income between approximately $96,700 and $600,050. Since $400,000 falls within this range, the qualified dividend rate is 15%. The 0% rate applies to lower income brackets, and 20% applies above the threshold.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'To qualify for the preferential tax rate, qualified dividends must meet which of the following requirements?',
 '["They must be paid by a foreign corporation not eligible for treaty benefits", "The shareholder must hold the stock for more than 60 days during the 121-day period surrounding the ex-dividend date", "They must be paid from tax-exempt income of the corporation", "The shareholder must hold the stock for at least one full calendar year"]'::jsonb,
 1,
 'Qualified dividends must be paid by a U.S. corporation or a qualified foreign corporation, and the shareholder must meet the holding period requirement — holding the stock for more than 60 days during the 121-day period beginning 60 days before the ex-dividend date. Dividends from most U.S. corporations qualify, but those from REITs and certain foreign corporations do not.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Greg rents out a vacation home for 30 days and uses it personally for 20 days during 2026. Total rental income is $9,000 and total expenses (mortgage interest, taxes, insurance, maintenance, depreciation) are $15,000. How are the rental expenses treated?',
 '["All $15,000 is deductible against rental income", "Expenses are allocated 60% rental / 40% personal; rental expenses limited to rental income", "No rental expenses are deductible because personal use exceeds 14 days", "Expenses are allocated 30/50 rental; rental deductions limited to $9,000 of rental income"]'::jsonb,
 3,
 'When personal use exceeds the greater of 14 days or 10% of rental days, the property is treated as a personal residence. Expenses must be allocated between rental and personal use (30 rental days / 50 total days = 60%). Rental expenses are deductible only to the extent of rental income — excess rental expenses cannot create a loss. The $9,000 rental income caps the deductible rental expenses.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Social Security benefits become partially taxable when a taxpayer''s provisional income exceeds certain thresholds. Provisional income is calculated as:',
 '["AGI + tax-exempt interest + 50% of Social Security benefits", "AGI only", "AGI + all Social Security benefits", "Taxable income + Social Security benefits"]'::jsonb,
 0,
 'Provisional income (also called modified AGI for this purpose) equals AGI + tax-exempt interest + 50% of Social Security benefits. For single filers, if provisional income exceeds $25,000, up to 50% of benefits are taxable; above $34,000, up to 85% are taxable. For MFJ, the thresholds are $32,000 and $44,000. Tax-exempt interest is added back to prevent sheltering income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Henry and Martha (MFJ) have AGI of $30,000 (not including Social Security), tax-exempt interest of $5,000, and Social Security benefits of $18,000. Their provisional income is $44,000. What is the maximum percentage of their Social Security benefits that may be taxable?',
 '["0%", "50%", "85%", "100%"]'::jsonb,
 2,
 'For married filing jointly, provisional income of $44,000 reaches the second threshold ($44,000). At or above this threshold, up to 85% of Social Security benefits may be taxable. The actual amount included is the lesser of (a) 85% of total benefits or (b) the sum computed using the two-tier formula. The $32,000 first-tier threshold triggers 50% inclusion; the $44,000 second tier triggers up to 85%.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'David and Susan divorced in 2016. Under their divorce decree, David pays Susan $2,000 per month in alimony. How is this treated for federal income tax purposes in 2026?',
 '["Deductible by David and taxable to Susan", "Not deductible by David and not taxable to Susan", "Deductible by David but not taxable to Susan", "Not deductible by David but taxable to Susan"]'::jsonb,
 0,
 'For divorce or separation agreements executed before January 1, 2019, alimony is deductible by the payor and included in gross income of the recipient. Since David and Susan''s decree was in 2016 (pre-TCJA), the old rules apply. For agreements executed after December 31, 2018, alimony is neither deductible by the payor nor taxable to the recipient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Mike and Lisa divorce in 2026 under a new divorce agreement. Mike pays Lisa $3,000 per month in alimony. What is the federal income tax treatment?',
 '["Deductible by Mike and taxable to Lisa", "Not deductible by Mike and not taxable to Lisa", "Deductible by Mike but not taxable to Lisa", "Taxable to Lisa but not deductible by Mike"]'::jsonb,
 1,
 'For divorce and separation agreements executed after December 31, 2018 (under the TCJA), alimony payments are not deductible by the payor and not included in the recipient''s gross income. The 2026 divorce falls under the post-TCJA rule. This change eliminated the alimony deduction and shifted the tax burden to the higher-income payor.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'In 2026, Patricia wins a $10,000 prize in a game show and also has $4,000 in gambling losses from casino visits. What net amount must Patricia include in gross income from these activities?',
 '["$6,000", "$10,000", "$4,000", "$14,000"]'::jsonb,
 1,
 'Gambling winnings of $10,000 are fully included in gross income. Gambling losses are deductible only as an itemized deduction on Schedule A, limited to the amount of gambling winnings. Patricia cannot net losses against winnings on the income side. She reports $10,000 in gross income and, if she itemizes, deducts up to $4,000 on Schedule A. If she takes the standard deduction, she gets no benefit from the losses.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Which of the following is NOT included in gross income under Section 61?',
 '["Jury duty pay", "Unemployment compensation", "Life insurance proceeds received by a beneficiary due to the death of the insured", "Cancellation of indebtedness income"]'::jsonb,
 2,
 'Life insurance death benefit proceeds received by a beneficiary are excluded from gross income under Section 101(a). Jury duty pay, unemployment compensation, and cancellation of indebtedness income are all included in gross income. COD income has exceptions (bankruptcy, insolvency, qualified farm/real property debt), but it is generally taxable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Victor owes $50,000 on a credit card. The credit card company agrees to settle the debt for $30,000. Victor is not bankrupt and is not insolvent. What is the tax consequence of the debt cancellation?',
 '["$20,000 of cancellation of indebtedness income included in gross income", "$50,000 of income", "$30,000 of income", "No income — debt settlements are not taxable"]'::jsonb,
 0,
 'Under Section 61(a)(11), cancellation of indebtedness (COD) income is included in gross income. Victor''s $20,000 of forgiven debt ($50,000 - $30,000) is taxable income because he is neither bankrupt nor insolvent. The exceptions to COD income recognition under Section 108 (bankruptcy, insolvency, qualified farm debt, qualified real property debt, qualified principal residence debt) do not apply.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Wendy owes $80,000 in debt and has total assets of $55,000 when her creditor cancels $30,000 of the debt. How much COD income must Wendy include in gross income?',
 '["$30,000", "$25,000", "$5,000", "$0"]'::jsonb,
 2,
 'Wendy is insolvent because her liabilities ($80,000) exceed her assets ($55,000) by $25,000. Under Section 108, COD income is excluded to the extent of insolvency. Of the $30,000 cancelled debt, $25,000 is excluded (the extent of insolvency), and the remaining $5,000 is included in gross income because that portion makes her solvent. After the cancellation, her liabilities are $50,000 and assets are $55,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'A taxpayer files for Chapter 7 bankruptcy and has $40,000 of debt cancelled by creditors as part of the bankruptcy proceeding. What is the tax treatment of the COD income?',
 '["$40,000 is included in gross income", "$40,000 is excluded from gross income under the bankruptcy exclusion", "$20,000 is excluded and $20,000 is taxable", "The taxpayer must reduce tax attributes by $40,000 but has no current income"]'::jsonb,
 1,
 'Under Section 108(a)(1)(A), COD income arising in a Title 11 bankruptcy case is fully excluded from gross income. This is the broadest exclusion — it applies regardless of solvency. However, the taxpayer must reduce tax attributes (NOLs, credits, basis of assets) under Section 108(b) by the amount excluded. The bankruptcy exclusion takes priority over the insolvency exclusion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Under H.R. 1 provisions effective in 2026, tip income received by service workers in qualifying occupations may be eligible for which tax treatment?',
 '["Tips are excluded from gross income entirely", "Tips are included in gross income but eligible for a new above-the-line deduction", "Tips are taxed at a flat 10% rate regardless of the worker''s bracket", "Tips are excluded from Social Security wages but remain in gross income"]'::jsonb,
 1,
 'Under H.R. 1 (2025 legislation), qualifying tip income received by service workers in eligible occupations (restaurants, hospitality, etc.) remains includable in gross income but is eligible for a new above-the-line deduction that effectively offsets the income tax on tips. This reduces the taxpayer''s AGI. The tips remain subject to FICA taxes. Eligibility is limited to workers earning below specified income thresholds.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Emma works as a restaurant server and receives $35,000 in wages plus $22,000 in tips during 2026. She meets all H.R. 1 tip income eligibility requirements. Which statement correctly describes the tax treatment of her tips?',
 '["The $22,000 is fully excluded from gross income", "The $22,000 is included in gross income but offset by the tip income deduction, reducing her taxable income", "Only tips over $10,000 qualify for the deduction", "Emma can choose to either exclude or deduct the tips"]'::jsonb,
 1,
 'Under the H.R. 1 tip income provisions, Emma includes the full $22,000 in gross income but claims an above-the-line deduction for qualifying tip income, which reduces her AGI and taxable income. The tips remain subject to FICA (Social Security and Medicare) taxes. The provision targets service workers below the income threshold and applies to cash and credit card tips reported to the employer.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'In 2026, Rick receives a salary of $120,000, $1,500 in jury duty pay, $4,000 in state income tax refund (he itemized last year and received a tax benefit), and $600 in interest on municipal bonds. What is Rick''s gross income?',
 '["$125,500", "$126,100", "$120,000", "$126,700"]'::jsonb,
 0,
 'Rick''s gross income includes: salary ($120,000) + jury duty pay ($1,500) + state tax refund ($4,000 under the tax benefit rule, since he itemized and benefited from the SALT deduction last year) = $125,500. Municipal bond interest ($600) is excluded under Section 103. Therefore, gross income is $120,000 + $1,500 + $4,000 = $125,500.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Angela receives $6,000 in rental income from a spare bedroom in her primary residence. She incurred $8,000 in expenses allocated to the rental activity. Assuming the rental is not subject to the vacation home rules, how much rental loss can Angela deduct if she actively participates and her AGI is $90,000?',
 '["$0", "$2,000", "$6,000", "$8,000"]'::jsonb,
 1,
 'Angela has a $2,000 rental loss ($6,000 income - $8,000 expenses). Under Section 469, rental activities are passive, but taxpayers who actively participate can deduct up to $25,000 of rental losses against nonpassive income if their AGI is $100,000 or less. Angela''s AGI of $90,000 qualifies for the full $25,000 allowance. Her $2,000 loss is fully deductible.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Carlos receives $15,000 in unemployment compensation benefits in 2026. How is this treated for federal income tax purposes?',
 '["Fully excluded from gross income", "Fully included in gross income", "The first $10,200 is excluded, and the remainder is taxable", "Taxed at a flat 10% rate"]'::jsonb,
 1,
 'Unemployment compensation is fully included in gross income under Section 85. The temporary exclusion of $10,200 in unemployment benefits applied only to tax year 2020 under the American Rescue Plan Act. For 2026, the full $15,000 is taxable. Taxpayers can elect to have federal income tax withheld from unemployment benefits at a 10% rate.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Eli rents a vacation property for 10 days and uses it personally for 5 days during 2026. Total rental income is $5,000. How is the rental income treated?',
 '["$5,000 is included in gross income with proportional expense deductions", "$5,000 is excluded from gross income under the 14-day rule", "Only $3,333 is included (proportional to rental days)", "$5,000 is included and no expenses are deductible"]'::jsonb,
 1,
 'Under the 14-day rule (Section 280A(g)), if a taxpayer rents a dwelling unit for 14 days or fewer during the year, the rental income is excluded from gross income entirely. Since Eli rented for only 10 days (14 or fewer), the $5,000 is tax-free. However, no rental expenses (other than those otherwise deductible, like mortgage interest and property taxes) can be claimed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Fiona receives a $10,000 signing bonus from her new employer in January 2026. She is also given a $5,000 relocation reimbursement. Under current tax law, how much must Fiona include in gross income?',
 '["$10,000", "$15,000", "$5,000", "$0"]'::jsonb,
 1,
 'Under current law (post-TCJA), both the $10,000 signing bonus and the $5,000 relocation reimbursement are included in gross income. The TCJA suspended the exclusion for employer-provided moving expense reimbursements (except for active-duty military) for tax years 2018-2025, and H.R. 1 extends this treatment. Both payments total $15,000 of taxable income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Howard receives $12,000 in Social Security benefits in 2026. His only other income is $10,000 in tax-exempt municipal bond interest. What is his provisional income?',
 '["$10,000", "$16,000", "$22,000", "$6,000"]'::jsonb,
 1,
 'Provisional income = modified AGI + 50% of Social Security benefits. Modified AGI includes AGI ($0, since municipal bond interest is not in AGI) + tax-exempt interest ($10,000). Provisional income = $0 + $10,000 + ($12,000 x 50%) = $16,000. For a single filer, this is below the $25,000 first threshold, so none of Howard''s Social Security benefits are taxable.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'A single taxpayer has $20,000 AGI (before Social Security), $4,000 tax-exempt interest, and $24,000 in Social Security benefits. Provisional income = $20,000 + $4,000 + $12,000 = $36,000. The first threshold is $25,000 and second is $34,000. What is the maximum taxable Social Security amount?',
 '["$12,000 (50% of benefits)", "$17,100", "$20,400 (85% of benefits)", "The lesser of the two-tier formula result or 85% of benefits"]'::jsonb,
 3,
 'The taxable amount is the lesser of: (a) 85% of Social Security benefits ($24,000 x 85% = $20,400) or (b) the two-tier formula result: 50% of excess over $25,000 up to $34,000 = $4,500 + 85% of excess over $34,000 ($2,000 x 85% = $1,700) = $6,200. The correct answer uses the lesser of the formula amount or 85% of benefits. The formula''s purpose is to phase in taxation gradually.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Which of the following correctly states the tax treatment of wages, salaries, and tips?',
 '["Wages are taxable but tips under $20 per month from a single employer are not reported to the employer", "All tips are excluded from gross income", "Wages are taxable only above the standard deduction amount", "Salaries are taxable but bonuses are not"]'::jsonb,
 0,
 'All wages, salaries, and tips are included in gross income under Section 61. However, employees are not required to report tips to their employer if total tips from that employer are less than $20 in a calendar month (though the income is still taxable). All cash and non-cash tips are taxable regardless of amount. Bonuses, commissions, and fringe benefits (unless excluded) are also taxable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'In 2026, Jane has the following income: salary $75,000, interest on corporate bonds $2,000, qualified dividends $5,000, and long-term capital gains $8,000. Her marginal ordinary income tax rate is 22%. What total federal income tax rate applies to her qualified dividends?',
 '["22%", "15%", "0%", "20%"]'::jsonb,
 1,
 'Qualified dividends are taxed at preferential long-term capital gains rates, not ordinary rates. For 2026, single filers with taxable income in Jane''s range (approximately $48,476 to $533,400) pay 15% on qualified dividends. The 0% rate applies to income within the lowest brackets, and the 20% rate applies above approximately $533,400. Jane''s $5,000 in qualified dividends is taxed at 15%.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Paul receives a below-market-interest loan of $200,000 from his employer at 1% interest when the applicable federal rate (AFR) is 5%. What are the tax consequences to Paul?',
 '["No tax consequences because it is a loan, not income", "Paul has imputed interest income of $8,000 (4% x $200,000) and the employer has compensation expense of $8,000", "Paul must include the full $200,000 as income", "Only the employer is affected — Paul has no taxable event"]'::jsonb,
 1,
 'Under Section 7872, below-market loans between employers and employees create two deemed transactions: (1) the employer pays additional compensation to the employee equal to the foregone interest ($200,000 x (5% - 1%) = $8,000), and (2) the employee pays interest back to the employer at the AFR. Paul has $8,000 of compensation income, and the employer has $8,000 of compensation expense and $8,000 of interest income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'In 2026, Mia receives rental income of $24,000 from a residential rental property. Her deductible rental expenses (depreciation, insurance, repairs, taxes) total $30,000. She actively participates in the rental and her modified AGI is $125,000. How much of the $6,000 rental loss can she deduct?',
 '["$6,000", "$3,000", "$0", "$12,500"]'::jsonb,
 0,
 'The $25,000 rental loss allowance under Section 469(i) is phased out by 50% of modified AGI exceeding $100,000. Mia''s modified AGI of $125,000 exceeds $100,000 by $25,000. Phase-out = $25,000 x 50% = $12,500. Remaining allowance = $25,000 - $12,500 = $12,500. Since her $6,000 loss is less than the $12,500 remaining allowance, the full $6,000 rental loss is deductible against nonpassive income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Which of the following items is specifically EXCLUDED from gross income?',
 '["Punitive damages received in a lawsuit", "Compensatory damages for physical injury", "Compensation for lost wages in an employment discrimination suit", "Interest earned on a tax refund"]'::jsonb,
 1,
 'Under Section 104(a)(2), compensatory damages received on account of personal physical injuries or physical sickness are excluded from gross income. Punitive damages are always taxable. Damages for emotional distress, lost wages (non-physical), or employment discrimination (unless physical) are taxable. Interest on tax refunds is also taxable income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Terry receives a $50,000 settlement: $30,000 for physical injuries sustained in a car accident, $15,000 for emotional distress related to the accident, and $5,000 in punitive damages. What amount is included in Terry''s gross income?',
 '["$50,000", "$20,000", "$5,000", "$0"]'::jsonb,
 2,
 'The $30,000 for physical injuries is excluded under Section 104(a)(2). The $15,000 for emotional distress arising from the physical injury is also excluded because it originated from a physical injury. The $5,000 in punitive damages is always taxable regardless of the nature of the claim. Terry''s gross income from the settlement is $5,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Sam receives $12,000 in alimony from a 2017 divorce decree and $6,000 in child support. What amount must Sam include in gross income?',
 '["$18,000", "$12,000", "$6,000", "$0"]'::jsonb,
 1,
 'The 2017 divorce decree predates the TCJA (pre-2019), so alimony of $12,000 is included in Sam''s gross income. Child support ($6,000) is never taxable to the recipient (and never deductible by the payor) regardless of when the divorce occurred. Child support is considered a payment for the support of the child, not income to the custodial parent.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Nicole works as a hotel housekeeper earning $38,000 in wages and $8,000 in reported tips during 2026. She meets the H.R. 1 tip income eligibility criteria. What is the impact on her AGI?',
 '["AGI is $46,000 — no deduction for tips", "AGI is $38,000 — tips are excluded from gross income", "AGI is $38,000 — tips are included in gross income but offset by the tip deduction", "AGI is $42,000 — only 50% of tips are deductible"]'::jsonb,
 2,
 'Under H.R. 1, Nicole includes the full $8,000 of tips in gross income ($46,000 total) but claims an above-the-line deduction of $8,000 for qualifying tip income. This reduces her AGI to $38,000. The tip deduction mechanism keeps the tips subject to FICA taxes while providing income tax relief. The deduction is available only to eligible workers below specified income thresholds.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Ken has $45,000 in wages and receives a gift of $20,000 cash from his grandmother. What is Ken''s gross income?',
 '["$65,000", "$45,000", "$55,000", "$20,000"]'::jsonb,
 1,
 'Under Section 102, the value of property or cash received as a gift is excluded from the donee''s gross income. Ken''s $20,000 gift from his grandmother is not taxable income to him. His gross income is $45,000 (wages only). Note that the gift tax, if any, is the responsibility of the donor (grandmother), not the recipient. Gifts from employers generally do not qualify for the exclusion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Income',
 'Laura inherits $500,000 from her deceased uncle''s estate. She also inherits an IRA with a balance of $150,000 and takes a $50,000 distribution from the IRA in 2026. What amount is included in Laura''s 2026 gross income?',
 '["$550,000", "$500,000", "$50,000", "$0"]'::jsonb,
 2,
 'The $500,000 inheritance is excluded from gross income under Section 102. However, the $50,000 IRA distribution is income in respect of a decedent (IRD) under Section 691 and is fully taxable as ordinary income. IRD items retain their tax character and do not receive a stepped-up basis. Laura''s gross income includes only the $50,000 IRA distribution.',
 'hard');


-- REG Chunk 3: Deductions, Credits, Credits/AMT, Filing/Credits, Estate and Gift Tax

-- =============================================================================
-- Individual Taxation: Deductions — 28 questions
-- Difficulty mix: 8 easy, 15 medium, 5 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'For 2026, what is the standard deduction for a single taxpayer under age 65 with no dependents?',
 '["$14,600", "$15,700", "$16,550", "$13,850"]'::jsonb,
 1,
 'The 2026 standard deduction for a single filer is $15,700. This amount is adjusted annually for inflation and represents the base amount before any additional standard deduction for age or blindness. Taxpayers choose whichever is greater: the standard deduction or their total itemized deductions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Marcus, a single taxpayer, has an AGI of $80,000 in 2026. He paid $8,200 in unreimbursed medical expenses during the year. What is his allowable medical expense deduction if he itemizes?',
 '["$8,200", "$2,200", "$6,000", "$0"]'::jsonb,
 1,
 'Medical expenses are deductible to the extent they exceed 7.5% of AGI. Marcus''s AGI floor is $80,000 x 7.5% = $6,000. His deductible medical expenses are $8,200 - $6,000 = $2,200. Only the amount exceeding the floor is deductible as an itemized deduction on Schedule A.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'In 2026, an eligible educator may deduct up to what amount of unreimbursed classroom expenses as an above-the-line deduction?',
 '["$250", "$300", "$500", "$1,000"]'::jsonb,
 1,
 'The educator expense deduction allows eligible K-12 teachers, instructors, counselors, and principals who work at least 900 hours during the school year to deduct up to $300 of unreimbursed classroom expenses as an adjustment to gross income. This is taken above the line, meaning the taxpayer does not need to itemize to claim it.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Chen contributes $4,200 to a Health Savings Account (HSA) in 2026. He has self-only coverage under a high-deductible health plan. The 2026 self-only HSA contribution limit is $4,300. How much of his contribution is deductible as an above-the-line deduction?',
 '["$0", "$2,100", "$4,200", "$4,300"]'::jsonb,
 2,
 'HSA contributions up to the annual limit are fully deductible as an above-the-line adjustment to gross income. Since Chen''s $4,200 contribution is below the $4,300 self-only limit, the entire $4,200 is deductible. The deduction does not require itemizing and is available regardless of AGI level.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Diana is self-employed and pays $9,600 per year for her own health insurance premiums. She has net self-employment income of $75,000. Where does she deduct the health insurance premiums?',
 '["Schedule A as a medical expense", "Schedule C as a business expense", "Form 1040 as an above-the-line deduction", "It is not deductible"]'::jsonb,
 2,
 'Self-employed individuals may deduct 100% of health insurance premiums for themselves, their spouse, and dependents as an above-the-line deduction on Form 1040, limited to net self-employment income. This is more advantageous than the Schedule A medical deduction because it reduces AGI directly without requiring the 7.5% AGI floor.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Roberto has net self-employment income of $140,000 in 2026. His total self-employment tax is $19,782. What amount may he deduct as an above-the-line adjustment for self-employment tax?',
 '["$19,782", "$9,891", "$10,710", "$0"]'::jsonb,
 1,
 'Self-employed taxpayers may deduct 50% of self-employment tax as an above-the-line adjustment on Form 1040. This mirrors the employer''s share of FICA that W-2 employees receive as an exclusion. Roberto''s deduction is $19,782 x 50% = $9,891. The other half is not deductible.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'In 2026, a taxpayer pays $3,800 in student loan interest. Her modified AGI is $75,000 (single). What is her maximum student loan interest deduction?',
 '["$0", "$2,500", "$3,800", "$1,900"]'::jsonb,
 1,
 'The student loan interest deduction is capped at $2,500 per year and is an above-the-line adjustment. Even though the taxpayer paid $3,800, the maximum deduction is $2,500. The deduction phases out at higher income levels, but at $75,000 MAGI for a single filer, the taxpayer is within the eligible income range for 2026.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Frank pays $12,000 in alimony to his ex-spouse in 2026 under a divorce decree executed in 2017. How should this be treated on Frank''s 2026 tax return?',
 '["$12,000 deduction above the line", "Not deductible since alimony is never deductible", "$12,000 itemized deduction on Schedule A", "Deductible only if he itemizes"]'::jsonb,
 0,
 'Alimony paid under divorce or separation agreements executed before January 1, 2019, is deductible by the payer as an above-the-line adjustment to gross income. Since Frank''s decree was executed in 2017, the pre-TCJA rules apply. Had the decree been executed after 2018, the payments would not be deductible.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Under H.R. 1 provisions effective in 2026, which of the following types of personal interest became newly deductible?',
 '["Credit card interest", "Auto loan interest", "Personal loan interest", "Student loan interest on amounts over $2,500"]'::jsonb,
 1,
 'H.R. 1 introduced a new provision allowing taxpayers to deduct auto loan interest on personal vehicles as an itemized deduction starting in 2026. This is a departure from the longstanding rule that personal interest is nondeductible. Credit card interest and general personal loan interest remain nondeductible.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Patricia, a single filer, paid $6,500 in state income taxes and $5,800 in property taxes in 2026. What is her total allowable SALT deduction on Schedule A?',
 '["$12,300", "$10,000", "$6,500", "$5,800"]'::jsonb,
 1,
 'The state and local tax (SALT) deduction is capped at $10,000 ($5,000 for married filing separately). Although Patricia paid a total of $12,300 in state income and property taxes, her deduction is limited to $10,000. The SALT cap applies to the combined total of state/local income taxes (or sales taxes) and property taxes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'A married couple filing jointly purchased their primary residence in 2020 with a $900,000 mortgage. In 2026, they paid $38,000 in mortgage interest. How much mortgage interest can they deduct on Schedule A?',
 '["$38,000", "$31,667", "$28,500", "$0"]'::jsonb,
 1,
 'For mortgages originated after December 15, 2017, the mortgage interest deduction is limited to interest on the first $750,000 of acquisition indebtedness. Since their $900,000 mortgage exceeds this limit, only the interest attributable to the first $750,000 is deductible: $38,000 x ($750,000 / $900,000) = $31,667.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Greg donates $15,000 in cash to his local public charity in 2026. His AGI is $60,000. What is the maximum amount of this contribution he can deduct in 2026?',
 '["$15,000", "$18,000", "$36,000", "$9,000"]'::jsonb,
 0,
 'Cash contributions to public charities are deductible up to 60% of the taxpayer''s AGI. Greg''s 60% limit is $60,000 x 60% = $36,000. Since his $15,000 donation is well under this ceiling, the entire $15,000 is deductible in 2026. Any excess over the AGI limitation would carry forward for up to five years.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Sandra donates publicly traded stock held for 14 months with a fair market value of $25,000 and a cost basis of $8,000 to a public charity. Her AGI is $70,000. What is the maximum charitable deduction she can claim in 2026?',
 '["$8,000", "$21,000", "$25,000", "$14,000"]'::jsonb,
 1,
 'Donations of long-term capital gain property to public charities are deductible at fair market value but limited to 30% of AGI. Sandra''s 30% limit is $70,000 x 30% = $21,000. Although the stock is worth $25,000, she can only deduct $21,000 in 2026. The remaining $4,000 carries forward for up to five years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'A taxpayer donates artwork appraised at $40,000 (basis $5,000, held 3 years) to a private non-operating foundation. What AGI limitation percentage applies to this donation?',
 '["60%", "50%", "30%", "20%"]'::jsonb,
 3,
 'Donations of long-term capital gain property to private non-operating foundations are subject to a 20% of AGI limitation. This is the most restrictive charitable contribution limit. The taxpayer may alternatively elect to reduce the donation to basis and use the 50% AGI limit, but if claiming fair market value, the 20% ceiling applies.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Kevin, a single taxpayer, has $150,000 of qualified business income from a non-SSTB sole proprietorship in 2026. His taxable income before the QBI deduction is $180,000. What is his Section 199A QBI deduction?',
 '["$30,000", "$36,000", "$45,000", "$150,000"]'::jsonb,
 0,
 'The Section 199A QBI deduction is the lesser of 20% of QBI or 20% of taxable income before the QBI deduction. 20% of QBI = $150,000 x 20% = $30,000. 20% of taxable income = $180,000 x 20% = $36,000. The lesser amount is $30,000. Since Kevin''s taxable income is below the $197,300 threshold, no W-2 wage or UBIA limitation applies.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'For 2026, at what taxable income threshold does the W-2 wage limitation begin to apply for the Section 199A QBI deduction for a married filing jointly taxpayer?',
 '["$170,050", "$197,300", "$340,100", "$394,600"]'::jsonb,
 3,
 'For married filing jointly taxpayers in 2026, the W-2 wage and UBIA limitations on the Section 199A QBI deduction begin to phase in at $394,600 of taxable income. Below this threshold, the deduction is simply 20% of QBI (subject to the taxable income limit). The single filer threshold is $197,300.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Lauren, single, has $200,000 of QBI from her accounting practice (a specified service trade or business). Her 2026 taxable income before the QBI deduction is $220,000. What happens to her Section 199A deduction?',
 '["The full 20% deduction is available", "The deduction is partially phased out", "The deduction is completely disallowed", "She must use the W-2 wage safe harbor"]'::jsonb,
 1,
 'Lauren''s taxable income of $220,000 exceeds the $197,300 single-filer threshold but falls within the $50,000 phase-out range (ending at $247,300). Because her business is a specified service trade or business (SSTB), the QBI deduction is partially phased out within this range. Above $247,300, an SSTB owner receives no Section 199A deduction.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Which of the following businesses is classified as a specified service trade or business (SSTB) for purposes of the Section 199A QBI deduction?',
 '["Residential construction company", "Law firm", "Manufacturing company", "Restaurant"]'::jsonb,
 1,
 'A law firm is a specified service trade or business (SSTB) because it falls under the category of law as defined in Section 199A. SSTBs include health, law, accounting, actuarial science, performing arts, consulting, athletics, financial services, and brokerage. Construction, manufacturing, and restaurants are not SSTBs.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Tom contributes $7,000 to a traditional IRA in 2026. He is age 52 and is an active participant in his employer''s 401(k) plan. His MAGI is $89,000 (single). What portion of his IRA contribution is deductible?',
 '["$7,000 fully deductible", "Partially deductible based on phase-out", "$0 — none is deductible", "$6,500 deductible"]'::jsonb,
 1,
 'An active participant in an employer plan who is single faces a phase-out of the traditional IRA deduction based on MAGI. At $89,000 MAGI, Tom falls within the phase-out range for single filers. The deduction is reduced proportionally. He may still make a nondeductible contribution or consider a Roth IRA.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'In 2026, a married couple filing jointly has the following expenses: $9,000 state income taxes, $4,000 property taxes, $6,000 mortgage interest on a $500,000 loan, $2,000 charitable contributions, and $3,500 auto loan interest (H.R. 1). Should they itemize or take the standard deduction?',
 '["Itemize — total deductions exceed the standard deduction", "Standard deduction — $31,400 exceeds their itemized total", "They must itemize because they have a mortgage", "Either option produces the same result"]'::jsonb,
 1,
 'Their itemized deductions total: $10,000 SALT cap + $6,000 mortgage interest + $2,000 charitable + $3,500 auto loan interest = $21,500. The 2026 MFJ standard deduction is $31,400, which exceeds their itemized deductions. They should take the standard deduction. Taxpayers are not required to itemize simply because they have a mortgage.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'A taxpayer who elects to deduct state and local general sales taxes in lieu of state income taxes is subject to what limitation?',
 '["No limitation", "$5,000 cap", "$10,000 SALT cap combined with property taxes", "50% of AGI"]'::jsonb,
 2,
 'Taxpayers may elect to deduct state and local sales taxes instead of state and local income taxes, but the total SALT deduction — including property taxes — remains subject to the $10,000 cap ($5,000 MFS). This election is beneficial for residents of states with no income tax who pay significant sales taxes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Rachel, a single filer with AGI of $400,000, has $250,000 of QBI from a non-SSTB manufacturing business. The business paid $300,000 in W-2 wages and has $100,000 of unadjusted basis in qualified property. What is Rachel''s Section 199A deduction?',
 '["$50,000", "$150,000", "$12,500", "$40,000"]'::jsonb,
 0,
 'Since Rachel''s income exceeds $247,300 (the end of the phase-out range for single filers), the W-2 wage/UBIA limitation fully applies for her non-SSTB. The deduction is the lesser of: (a) 20% of QBI = $50,000, or (b) the greater of 50% of W-2 wages ($150,000) or 25% of W-2 wages ($75,000) + 2.5% of UBIA ($2,500) = $77,500. The lesser amount is $50,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Which of the following is NOT an above-the-line deduction (adjustment to gross income)?',
 '["Health Savings Account contributions", "Mortgage interest on a primary residence", "Student loan interest", "Self-employment tax (50%)"]'::jsonb,
 1,
 'Mortgage interest is an itemized deduction claimed on Schedule A, not an above-the-line deduction. HSA contributions, student loan interest, and the deductible portion of self-employment tax are all above-the-line adjustments that reduce AGI directly on Schedule 1 of Form 1040.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Under H.R. 1, a taxpayer purchases a vehicle for $35,000 with a $28,000 auto loan at 6% interest. In the first year, they pay $1,680 in interest. How is this treated for 2026?',
 '["Nondeductible personal interest", "Deductible as an itemized deduction under H.R. 1", "Deductible above the line as an adjustment to income", "Deductible only if the vehicle is used for business"]'::jsonb,
 1,
 'Under the H.R. 1 provision effective in 2026, auto loan interest on personal vehicles is deductible as an itemized deduction on Schedule A. This represents a new category of deductible personal interest. The taxpayer must itemize to benefit from this deduction; it is not available as an above-the-line adjustment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'A married couple filing jointly has combined W-2 income of $290,000. The husband also has $60,000 of QBI from a consulting SSTB (sole proprietorship). Their taxable income before the QBI deduction is $320,000. What is the Section 199A impact?',
 '["Full $12,000 QBI deduction is available", "QBI deduction is partially phased out due to SSTB rules", "No QBI deduction — SSTBs are never eligible", "QBI deduction is $60,000"]'::jsonb,
 0,
 'The MFJ threshold for Section 199A is $394,600 in 2026. Since their taxable income of $320,000 is below this threshold, SSTB limitations do not apply. The deduction is 20% of QBI = $60,000 x 20% = $12,000, subject to the taxable income limit of 20% x $320,000 = $64,000. The full $12,000 deduction is available.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'Maria, age 67 and single, has $95,000 in AGI. She paid $12,000 in medical expenses, $10,500 in state/local taxes, $8,000 in mortgage interest, and $4,000 in charitable contributions. What are her total itemized deductions?',
 '["$34,500", "$26,875", "$27,875", "$29,125"]'::jsonb,
 1,
 'Medical: $12,000 - ($95,000 x 7.5% = $7,125) = $4,875. SALT: capped at $10,000 (paid $10,500). Mortgage interest: $8,000. Charitable: $4,000. Total itemized deductions = $4,875 + $10,000 + $8,000 + $4,000 = $26,875. This exceeds the single standard deduction of $15,700 (plus the additional amount for age 65+), so Maria should itemize.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'James pays $5,000 in interest on a home equity loan in 2026. The loan proceeds were used to renovate his kitchen. The combined acquisition debt and home equity debt total $600,000. Is the home equity interest deductible?',
 '["No — home equity interest is never deductible after TCJA", "Yes — because the proceeds were used to buy, build, or substantially improve the home", "Yes — all home equity interest up to $100,000 is deductible", "Only if he files married filing jointly"]'::jsonb,
 1,
 'Under TCJA rules still in effect, home equity loan interest is deductible only if the proceeds are used to buy, build, or substantially improve the taxpayer''s qualified residence. Since James used the funds for a kitchen renovation (a substantial improvement), the interest is deductible. The total debt must remain under the $750,000 acquisition debt limit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Deductions',
 'A taxpayer makes a $500 cash donation to a qualified charity and receives a tote bag valued at $30 in return. What is the deductible charitable contribution?',
 '["$500", "$470", "$0", "$530"]'::jsonb,
 1,
 'When a donor receives a benefit in return for a charitable contribution, the deductible amount is reduced by the fair market value of the benefit received. The deductible contribution is $500 - $30 = $470. This quid pro quo rule applies when the payment exceeds $75 and the charity must provide a written disclosure of the benefit''s value.',
 'medium');

-- =============================================================================
-- Individual Taxation: Credits — 25 questions
-- Difficulty mix: 8 easy, 12 medium, 5 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Under H.R. 1 provisions for 2026, what is the child tax credit amount per qualifying child under age 17?',
 '["$2,000", "$2,500", "$3,000", "$3,600"]'::jsonb,
 1,
 'H.R. 1 increased the child tax credit to $2,500 per qualifying child under age 17 for 2026. This is an increase from the previous $2,000 amount under TCJA. The credit begins to phase out at $200,000 of MAGI for single filers and $400,000 for married filing jointly.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Mark and Lisa, married filing jointly, have three children ages 5, 10, and 14 in 2026. Their MAGI is $350,000. What is their total child tax credit?',
 '["$5,000", "$6,000", "$7,500", "$4,500"]'::jsonb,
 2,
 'All three children are under age 17 and qualify for the $2,500 credit under H.R. 1. Total credit = 3 x $2,500 = $7,500. The phase-out for MFJ begins at $400,000 MAGI, so at $350,000 the full credit is available. The credit is not reduced because their income is below the phase-out threshold.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Angela has one qualifying child age 8 and a tax liability of $1,800 before credits in 2026. What is the maximum refundable portion of her child tax credit?',
 '["$0", "$1,400", "$1,700", "$2,500"]'::jsonb,
 2,
 'Under H.R. 1, the child tax credit is $2,500 per child. A portion of the credit is refundable as the additional child tax credit if the nonrefundable portion exceeds the taxpayer''s tax liability. The refundable portion is up to $1,700 per child for 2026. Angela''s $1,800 liability absorbs $1,800 of the $2,500 credit, and the remaining $700 (up to the $1,700 refundable cap) would be refundable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'The child and dependent care credit allows a maximum amount of employment-related expenses for two or more qualifying individuals of:',
 '["$3,000", "$6,000", "$8,000", "$16,000"]'::jsonb,
 1,
 'The child and dependent care credit is based on a maximum of $3,000 in expenses for one qualifying individual and $6,000 for two or more. The credit percentage ranges from 20% to 35% of eligible expenses depending on AGI. Both spouses must have earned income (or be a student/disabled) to claim the credit.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Denise, a single mother, pays $7,500 in daycare costs for her two children (ages 3 and 6) in 2026. Her AGI is $42,000. She claims the child and dependent care credit. What is the maximum expense amount she can use to calculate the credit?',
 '["$7,500", "$6,000", "$3,000", "$4,200"]'::jsonb,
 1,
 'The child and dependent care credit limits eligible expenses to $3,000 for one qualifying individual or $6,000 for two or more. Even though Denise paid $7,500, her maximum eligible expense amount is $6,000. The credit percentage applied to this amount depends on her AGI level.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Which of the following is a requirement to claim the earned income credit (EIC)?',
 '["The taxpayer must have at least one qualifying child", "The taxpayer must have earned income and meet AGI limits", "The taxpayer must be married filing jointly", "The taxpayer must be at least age 25"]'::jsonb,
 1,
 'The fundamental requirement for the EIC is that the taxpayer must have earned income (wages, self-employment income) and meet the applicable AGI limits. A qualifying child is not required — there is a smaller EIC available for eligible workers without qualifying children. Filing status does not have to be MFJ, and age requirements apply only to those without children.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Carlos, single with two qualifying children, has earned income of $38,000 and investment income of $12,500 in 2026. Can Carlos claim the earned income credit?',
 '["Yes — he meets all requirements", "No — his investment income exceeds the limit", "No — his earned income is too high", "Yes — but only a reduced credit"]'::jsonb,
 1,
 'The earned income credit has an investment income disqualification rule. For 2026, if a taxpayer''s investment income exceeds approximately $11,600, they are disqualified from claiming the EIC regardless of their earned income or number of children. Carlos''s $12,500 investment income exceeds this threshold, so he cannot claim the credit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'The American Opportunity Tax Credit (AOTC) has a maximum credit of $2,500 per eligible student. What portion is refundable?',
 '["0%", "25%", "40%", "100%"]'::jsonb,
 2,
 'The AOTC is 40% refundable, meaning up to $1,000 (40% of $2,500) can be received as a refund even if the taxpayer has no tax liability. The remaining 60% ($1,500) is nonrefundable and can only offset tax liability. This makes the AOTC more valuable than the Lifetime Learning Credit, which is entirely nonrefundable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Sarah, a junior in college, paid $5,200 in qualified tuition and $800 in required textbooks in 2026. What is her maximum American Opportunity Tax Credit?',
 '["$2,000", "$2,500", "$4,000", "$6,000"]'::jsonb,
 1,
 'The AOTC is calculated as 100% of the first $2,000 in qualified expenses plus 25% of the next $2,000, for a maximum of $2,500 per student. Sarah''s qualified expenses of $6,000 exceed the $4,000 cap that generates the maximum credit. Her AOTC is $2,000 + ($2,000 x 25%) = $2,500.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'The Lifetime Learning Credit for 2026 provides a maximum credit of what amount per tax return?',
 '["$2,000", "$2,500", "$4,000", "$10,000"]'::jsonb,
 0,
 'The Lifetime Learning Credit is 20% of up to $10,000 in qualified tuition and fees, for a maximum credit of $2,000 per tax return (not per student). Unlike the AOTC, it is available for an unlimited number of years and covers graduate-level courses, but it is entirely nonrefundable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Michael and Beth (MFJ) incur $15,000 in qualified adoption expenses in 2026 for the adoption of an eligible child. Their MAGI is $240,000. What is the maximum adoption credit they can claim?',
 '["$15,000", "$16,810", "$0", "The credit is partially phased out"]'::jsonb,
 3,
 'The adoption credit for 2026 has a maximum per-child amount (approximately $16,810). The credit phases out for taxpayers with MAGI between approximately $252,150 and $292,150 for MFJ. At $240,000 MAGI, Michael and Beth are below the phase-out range, so they can claim the full $15,000 in expenses (limited to the per-child maximum).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Unlike the AOTC, the Lifetime Learning Credit:',
 '["Is available only for the first four years of post-secondary education", "Has no limit on the number of years it can be claimed", "Has a 40% refundable portion", "Requires at least half-time enrollment"]'::jsonb,
 1,
 'The Lifetime Learning Credit can be claimed for an unlimited number of years for any course at an eligible educational institution, including graduate school and professional development courses. It does not require half-time enrollment and is not refundable. The AOTC, by contrast, is limited to the first four years of post-secondary education.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'A married couple filing jointly has MAGI of $425,000 and four qualifying children under age 17. What is their 2026 child tax credit under H.R. 1?',
 '["$10,000", "$9,375", "$8,750", "$7,500"]'::jsonb,
 2,
 'The base credit is 4 x $2,500 = $10,000. The phase-out begins at $400,000 MAGI for MFJ, reducing the credit by $50 for each $1,000 over the threshold. Excess MAGI = $425,000 - $400,000 = $25,000. Reduction = ($25,000 / $1,000) x $50 = $1,250. Credit after phase-out = $10,000 - $1,250 = $8,750.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'A taxpayer with one qualifying child for EIC purposes must have earned income and AGI below approximately what threshold (single/HoH) to receive any earned income credit in 2026?',
 '["$17,640", "$25,000", "$49,084", "$59,899"]'::jsonb,
 2,
 'For a taxpayer with one qualifying child filing as single or head of household, the earned income credit phases out completely at approximately $49,084 of earned income/AGI in 2026. The credit amount and phase-out thresholds vary by the number of qualifying children and filing status, with higher thresholds for more children.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'To claim the child and dependent care credit, both spouses must have earned income unless one spouse is:',
 '["Over age 65", "A full-time student or disabled", "Claiming the EIC", "Filing a separate return"]'::jsonb,
 1,
 'The child and dependent care credit requires both spouses to have earned income (or be actively seeking employment). However, a spouse who is a full-time student or is physically or mentally incapable of self-care is deemed to have earned income of $250/month for one qualifying individual or $500/month for two or more, allowing the other spouse to claim the credit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Robert and Jennifer (MFJ) pay $4,500 in qualified tuition for their daughter''s first year of college and $8,000 for Robert''s MBA program. Can they claim both the AOTC and Lifetime Learning Credit on the same return?',
 '["No — only one education credit can be claimed per return", "Yes — they can claim the AOTC for the daughter and the LLC for Robert", "Yes — but they must split the credits equally", "No — MBA programs do not qualify for any education credit"]'::jsonb,
 1,
 'Taxpayers can claim the AOTC and Lifetime Learning Credit on the same return as long as they are for different students. The AOTC applies to the daughter (first four years of undergrad) and the LLC applies to Robert (graduate school). However, both credits cannot be claimed for the same student in the same year.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Which of the following expenses qualifies for the American Opportunity Tax Credit but NOT for the Lifetime Learning Credit?',
 '["Tuition", "Student activity fees", "Course materials (textbooks and supplies)", "Lab fees"]'::jsonb,
 2,
 'Course materials such as textbooks, supplies, and equipment needed for a course qualify for the AOTC but are not qualifying expenses for the Lifetime Learning Credit. The LLC covers only tuition and fees paid to the institution. This makes the AOTC more inclusive in terms of eligible expenses.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'A single taxpayer with no qualifying children must be at least what age to claim the earned income credit?',
 '["18", "19", "21", "25"]'::jsonb,
 3,
 'A taxpayer with no qualifying children must be at least age 25 but under age 65 to claim the earned income credit. This age restriction does not apply to taxpayers who have a qualifying child. The minimum age ensures that the credit targets working adults rather than dependent students or very young workers.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'The child tax credit under H.R. 1 requires the qualifying child to have what type of identification number?',
 '["Any taxpayer identification number (TIN)", "An Individual Taxpayer Identification Number (ITIN)", "A Social Security Number (SSN) valid for employment", "An Employer Identification Number (EIN)"]'::jsonb,
 2,
 'To claim the child tax credit, the qualifying child must have a Social Security Number (SSN) that is valid for employment, issued before the due date of the return. An ITIN does not satisfy this requirement. This rule was enacted under TCJA and continues under H.R. 1 to prevent claims for children without SSNs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Paula adopts a special needs child from the U.S. foster care system in 2026. She incurs $8,000 in adoption expenses. What is the maximum adoption credit she can claim?',
 '["$8,000", "$16,810", "$14,440", "$0"]'::jsonb,
 1,
 'For the adoption of a special needs child, the taxpayer is deemed to have paid the full maximum adoption credit amount (approximately $16,810 for 2026) regardless of actual expenses incurred. This means Paula can claim the full $16,810 credit even though she only spent $8,000. The special needs designation provides an enhanced benefit.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'A taxpayer claims the AOTC for her daughter in 2026. The daughter is convicted of a felony drug offense during the tax year. What is the impact on the credit?',
 '["No impact — the conviction does not affect the credit", "The credit is disallowed for the year of conviction only", "The student is permanently ineligible for the AOTC", "The credit is reduced by 50%"]'::jsonb,
 2,
 'A student convicted of a federal or state felony drug offense is permanently ineligible for the American Opportunity Tax Credit. This restriction does not apply to the Lifetime Learning Credit. The family could potentially claim the LLC instead for future years of the student''s education.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'The earned income credit is calculated based on which of the following?',
 '["Total income including investment income", "Earned income only (wages and self-employment)", "AGI minus the standard deduction", "Taxable income after all deductions"]'::jsonb,
 1,
 'The earned income credit is calculated based on earned income, which includes wages, salaries, tips, and net self-employment income. Investment income, pensions, Social Security benefits, and unemployment compensation are not earned income for EIC purposes, though investment income is used for the disqualification test.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'A married couple filing separately may claim which of the following credits?',
 '["Child and dependent care credit", "Earned income credit", "Neither the child and dependent care credit nor the EIC", "Both credits without limitation"]'::jsonb,
 2,
 'Married taxpayers filing separately are generally ineligible for both the child and dependent care credit and the earned income credit. These credits require a filing status of single, head of household, qualifying surviving spouse, or married filing jointly. The MFS filing status disqualifies taxpayers from several family-related credits.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'Tina pays $9,500 in qualifying expenses for her son''s second year of college in 2026. Her MAGI is $78,000 (single). What is her AOTC?',
 '["$2,500", "$2,000", "$1,900", "$0"]'::jsonb,
 0,
 'The AOTC is 100% of the first $2,000 plus 25% of the next $2,000, for a maximum of $2,500. Tina''s $9,500 in expenses well exceeds the $4,000 cap generating the maximum credit. At $78,000 MAGI (single), she is within the AOTC income limits (phase-out begins at $80,000). Her full AOTC is $2,500.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits',
 'David and Susan (MFJ) have a 17-year-old son in 2026. They claim him as a dependent. What child-related credit, if any, can they claim?',
 '["$2,500 child tax credit", "$500 credit for other dependents", "$2,000 child tax credit", "No credit — the child is too old"]'::jsonb,
 1,
 'The child tax credit under H.R. 1 requires the child to be under age 17 at the end of the tax year. A 17-year-old does not qualify. However, the $500 credit for other dependents (also called the family credit) is available for dependents who do not qualify for the child tax credit, including children age 17 and older who are still claimed as dependents.',
 'hard');

-- =============================================================================
-- Individual Taxation: Credits/AMT — 20 questions
-- Difficulty mix: 6 easy, 10 medium, 4 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'For 2026, what is the approximate AMT exemption amount for a single taxpayer?',
 '["$75,900", "$81,300", "$88,100", "$137,000"]'::jsonb,
 2,
 'The 2026 AMT exemption for a single taxpayer is approximately $88,100. This amount is subtracted from alternative minimum taxable income (AMTI) before applying the AMT tax rates. The exemption phases out at higher income levels. For married filing jointly, the exemption is approximately $137,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'The alternative minimum tax is computed by applying which tax rates to the AMT base (AMTI minus exemption)?',
 '["A flat 26%", "A flat 28%", "26% on the first $232,600 and 28% on the excess", "10% to 37% graduated rates"]'::jsonb,
 2,
 'The AMT uses a two-tier rate structure: 26% applies to the first $232,600 of AMT base (for 2026), and 28% applies to the amount exceeding that threshold. These rates are lower than the top regular tax rates but apply to a broader income base because many deductions and exclusions are added back as preference items.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Which of the following is an AMT preference item that must be added back to taxable income when computing AMTI?',
 '["Charitable contributions", "Mortgage interest on acquisition debt", "State and local tax deduction", "Standard deduction"]'::jsonb,
 2,
 'The state and local tax deduction is a major AMT adjustment item. When computing AMTI, the SALT deduction claimed on the regular return must be added back. Charitable contributions and mortgage interest on acquisition debt are generally allowed for both regular tax and AMT purposes and are not preference items.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Tony exercises incentive stock options (ISOs) in 2026, purchasing 1,000 shares at the exercise price of $20 per share when the fair market value is $55 per share. What is the AMT preference item?',
 '["$0", "$20,000", "$35,000", "$55,000"]'::jsonb,
 2,
 'The AMT preference for ISOs is the spread between the fair market value and the exercise price on the date of exercise: ($55 - $20) x 1,000 = $35,000. This spread is not taxable for regular income tax purposes in the year of exercise (assuming a qualifying disposition), but it must be included as an AMT preference item.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Interest on which type of bonds is a tax preference item for AMT purposes?',
 '["U.S. Treasury bonds", "General obligation municipal bonds", "Private activity bonds issued after August 7, 1986", "Corporate bonds"]'::jsonb,
 2,
 'Tax-exempt interest on private activity bonds issued after August 7, 1986, is an AMT preference item and must be added back when calculating AMTI. Interest on general obligation municipal bonds is exempt from both regular tax and AMT. Treasury and corporate bond interest is fully taxable for regular tax and not an AMT adjustment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'The AMT exemption for married filing jointly in 2026 begins to phase out when AMTI exceeds approximately:',
 '["$578,150", "$1,079,800", "$1,252,700", "$197,300"]'::jsonb,
 1,
 'The AMT exemption for MFJ filers begins to phase out when AMTI exceeds approximately $1,079,800 in 2026. The exemption is reduced by 25 cents for each dollar of AMTI above the threshold. This means the exemption is fully phased out when AMTI exceeds approximately $1,627,800 (threshold + 4 x exemption amount).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Rachel paid AMT of $8,000 in 2025 due to timing differences (ISO exercise and SALT add-back). In 2026, her regular tax exceeds her tentative minimum tax. What happens to the prior year AMT?',
 '["It is lost permanently", "It generates an AMT credit carryforward to offset 2026 regular tax", "It is refunded automatically", "It can only offset future AMT liability"]'::jsonb,
 1,
 'When a taxpayer pays AMT due to timing or deferral items (like ISO exercises), the AMT paid generates a minimum tax credit that carries forward indefinitely. This credit can offset regular tax liability in future years when the regular tax exceeds the tentative minimum tax. The credit ensures taxpayers are not permanently double-taxed on timing differences.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'The Net Investment Income Tax (NIIT) is imposed at what rate?',
 '["1.5%", "2.9%", "3.8%", "6.2%"]'::jsonb,
 2,
 'The NIIT is a 3.8% surtax imposed on the lesser of net investment income or the excess of MAGI over the applicable threshold. This tax was enacted as part of the Affordable Care Act and applies to interest, dividends, capital gains, rental income, royalties, and certain passive business income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Michael, a single taxpayer, has MAGI of $275,000 and net investment income of $60,000 in 2026. What is his NIIT liability?',
 '["$2,280", "$2,850", "$9,500", "$10,450"]'::jsonb,
 0,
 'The NIIT is 3.8% of the lesser of (a) net investment income ($60,000) or (b) MAGI over the $200,000 threshold ($275,000 - $200,000 = $75,000). The lesser amount is $60,000. NIIT = $60,000 x 3.8% = $2,280.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'The NIIT threshold for married filing jointly taxpayers is:',
 '["$125,000", "$200,000", "$250,000", "$400,000"]'::jsonb,
 2,
 'The NIIT applies to married filing jointly taxpayers when MAGI exceeds $250,000. The thresholds are $200,000 for single/head of household filers, $250,000 for MFJ, and $125,000 for married filing separately. These thresholds are not indexed for inflation and have remained the same since the NIIT was enacted.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Which of the following types of income is subject to the 3.8% Net Investment Income Tax?',
 '["Wages from employment", "Self-employment income from a business in which the taxpayer materially participates", "Net rental income from a passive activity", "Distributions from a traditional IRA"]'::jsonb,
 2,
 'Net rental income from a passive activity is included in net investment income and subject to the 3.8% NIIT. Wages and active self-employment income are not investment income (though they are subject to other Medicare taxes). IRA distributions are excluded from the NIIT by statute.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'When computing the AMT, which of the following itemized deductions is NOT added back as a preference item?',
 '["State and local income taxes", "Real property taxes", "Charitable contributions", "Personal property taxes"]'::jsonb,
 2,
 'Charitable contributions are allowed for both regular tax and AMT purposes and are not an AMT adjustment or preference item. State and local income taxes, real property taxes, and personal property taxes (all SALT items) must be added back when computing AMTI because they are disallowed for AMT purposes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Karen, single, has AMTI of $500,000 in 2026. The AMT exemption phase-out threshold for single filers is approximately $609,350. What is her AMT exemption amount?',
 '["$88,100", "$0", "$60,775", "$88,100 — no phase-out applies"]'::jsonb,
 3,
 'Since Karen''s AMTI of $500,000 is below the phase-out threshold of approximately $609,350 for single filers, her full AMT exemption of $88,100 is available with no reduction. The exemption only begins to phase out once AMTI exceeds the threshold, at which point it is reduced by 25 cents for each dollar of excess.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'George exercises ISOs and holds the stock through year-end. He paid AMT of $15,000 due entirely to the ISO timing preference. In the following year, he sells the stock at a gain. What happens to the $15,000 AMT credit?',
 '["It expires when the stock is sold", "It offsets his regular tax in the year of sale to the extent regular tax exceeds tentative minimum tax", "It is added to his basis in the stock", "It converts to a capital loss carryforward"]'::jsonb,
 1,
 'The AMT credit from ISO timing preferences carries forward and can offset regular tax liability in any future year to the extent the regular tax exceeds the tentative minimum tax. In the year of sale, the stock sale reverses the timing difference, typically causing the regular tax to exceed the AMT, allowing George to use the credit.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Linda and Robert (MFJ) have MAGI of $300,000, including $120,000 of net investment income. What is their NIIT?',
 '["$1,900", "$4,560", "$1,520", "$11,400"]'::jsonb,
 0,
 'The NIIT is 3.8% of the lesser of net investment income ($120,000) or MAGI over the $250,000 MFJ threshold ($300,000 - $250,000 = $50,000). The lesser amount is $50,000. NIIT = $50,000 x 3.8% = $1,900. Even though they have $120,000 of NII, the tax is limited to the excess over the threshold.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Which of the following correctly describes MACRS depreciation for AMT purposes?',
 '["AMT uses the same MACRS method as regular tax", "AMT requires the 150% declining balance method for personal property instead of 200%", "AMT requires straight-line depreciation for all property", "Depreciation is not allowed for AMT purposes"]'::jsonb,
 1,
 'For AMT purposes, personal property that uses the 200% declining balance method under regular MACRS must use the 150% declining balance method. This slower depreciation creates a timing difference that is an AMT adjustment item. The difference reverses over the life of the asset as the AMT depreciation eventually catches up.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'A taxpayer has tentative minimum tax of $45,000 and regular tax liability of $52,000. What is the taxpayer''s AMT?',
 '["$45,000", "$7,000", "$52,000", "$0"]'::jsonb,
 3,
 'AMT is the excess of the tentative minimum tax over the regular tax. Since the regular tax ($52,000) exceeds the tentative minimum tax ($45,000), there is no AMT liability. The AMT only applies when the tentative minimum tax exceeds the regular tax, ensuring the taxpayer pays at least the minimum amount.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'For NIIT purposes, which of the following is NOT included in net investment income?',
 '["Short-term capital gains", "Dividend income", "Wages subject to FICA", "Interest income"]'::jsonb,
 2,
 'Wages subject to FICA are earned income, not investment income, and are excluded from the NIIT calculation. Net investment income includes interest, dividends, capital gains, rental and royalty income, non-qualified annuities, and income from passive activities. Wages are instead subject to the additional 0.9% Medicare tax above the same thresholds.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'A single taxpayer has AMTI of $750,000 in 2026. The phase-out threshold for single filers is $609,350 and the exemption is $88,100. What is the reduced AMT exemption?',
 '["$88,100", "$52,938", "$0", "$35,163"]'::jsonb,
 1,
 'The exemption is reduced by 25% of AMTI exceeding the threshold: ($750,000 - $609,350) x 25% = $140,650 x 0.25 = $35,163 reduction. Remaining exemption = $88,100 - $35,163 = $52,937, approximately $52,938. The phase-out ensures that very high-income taxpayers cannot use the full exemption to avoid AMT.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Credits/AMT',
 'Sam, a single filer with MAGI of $190,000, has net investment income of $30,000. What is his NIIT liability?',
 '["$1,140", "$0", "$7,220", "$30,000"]'::jsonb,
 1,
 'The NIIT applies only when MAGI exceeds $200,000 for single filers. Sam''s MAGI of $190,000 is below the $200,000 threshold, so the NIIT does not apply regardless of his net investment income amount. The tax is zero because the excess of MAGI over the threshold is negative.',
 'medium');

-- =============================================================================
-- Individual Taxation: Filing/Credits — 32 questions
-- Difficulty mix: 10 easy, 16 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Which of the following filing statuses generally provides the most favorable tax rates?',
 '["Single", "Married Filing Jointly", "Married Filing Separately", "Head of Household"]'::jsonb,
 1,
 'Married filing jointly generally provides the most favorable tax rates, with the widest tax brackets and the highest standard deduction ($31,400 in 2026). The MFJ brackets are approximately double the single brackets, reducing the marriage penalty. MFJ also provides access to credits that MFS does not.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'To qualify for head of household filing status, a taxpayer must meet all of the following requirements EXCEPT:',
 '["Be unmarried or considered unmarried on the last day of the tax year", "Pay more than half the cost of maintaining the home", "Have a qualifying person living in the home for more than half the year", "Have income exceeding $50,000"]'::jsonb,
 3,
 'Head of household status has no income threshold requirement. The taxpayer must be unmarried (or considered unmarried), pay more than half the cost of maintaining the home, and have a qualifying person who lived in the home for more than half the year. An exception allows a dependent parent to qualify even if not living with the taxpayer.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Carol''s husband died in November 2024. She has a dependent child age 10 living with her and has not remarried. What is Carol''s filing status for 2026?',
 '["Single", "Married Filing Jointly", "Qualifying Surviving Spouse", "Head of Household"]'::jsonb,
 2,
 'A qualifying surviving spouse (QSS) status is available for two tax years following the year of the spouse''s death, provided the taxpayer has a dependent child and maintains a household. Carol''s husband died in 2024, so she can file as QSS for 2025 and 2026. This status provides the same tax rates and standard deduction as MFJ.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Martin''s wife died in January 2023. He has not remarried and has a dependent child age 12. What is Martin''s filing status for 2026?',
 '["Qualifying Surviving Spouse", "Head of Household", "Single", "Married Filing Jointly"]'::jsonb,
 1,
 'QSS status is available for only two years following the year of the spouse''s death. Martin''s wife died in 2023, so he could file QSS for 2024 and 2025. For 2026 (the third year after death), QSS is no longer available. Since he has a dependent child living with him and pays more than half the cost of maintaining the home, he qualifies as head of household.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A married taxpayer who lived apart from their spouse for the entire last six months of the year and maintained a home for a dependent child may file as:',
 '["Married Filing Jointly only", "Married Filing Separately only", "Head of Household if all requirements are met", "Single"]'::jsonb,
 2,
 'A married individual may be considered unmarried and file as head of household if they lived apart from their spouse for the last six months of the year, maintained a home that was the principal residence of a qualifying child for more than half the year, and paid more than half the cost of maintaining the home. This is the "considered unmarried" rule.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Which of the following tests must be met for a child to be a qualifying child for dependency purposes?',
 '["Income test, support test, relationship test, residency test", "Age test, relationship test, residency test, support test", "Relationship test, age test, residency test, joint return test", "Income test, age test, citizenship test, relationship test"]'::jsonb,
 2,
 'A qualifying child must meet four tests: (1) Relationship — child, stepchild, sibling, or descendant thereof; (2) Age — under 19, or under 24 if a full-time student, or permanently disabled; (3) Residency — lived with the taxpayer for more than half the year; and (4) Joint return — did not file a joint return (except solely to claim a refund). There is no income test for a qualifying child.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'For 2026, what is the maximum gross income a qualifying relative can have to be claimed as a dependent?',
 '["$4,700", "$5,050", "$4,400", "$15,700"]'::jsonb,
 1,
 'A qualifying relative must have gross income below the exemption amount, which is approximately $5,050 for 2026. If the potential dependent''s gross income equals or exceeds this threshold, they cannot be claimed as a qualifying relative. This income test does not apply to qualifying children.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Barbara provides $12,000 of total support for her mother, who lives alone in her own apartment. Her mother has $4,800 of gross income (Social Security and pension). Can Barbara claim her mother as a dependent?',
 '["Yes — as a qualifying child", "Yes — as a qualifying relative if Barbara provides over half the support", "No — the mother''s income exceeds the limit", "No — the mother does not live with Barbara"]'::jsonb,
 1,
 'Barbara''s mother can be a qualifying relative. The income test is met ($4,800 < $5,050). The support test is met (Barbara provides over half the support). A parent is an exception to the residency requirement — a dependent parent does not need to live with the taxpayer. The relationship test is met (mother is a qualifying relative).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Jason, age 20, is a full-time college student. He earned $6,000 from a part-time job and received $8,000 in scholarships. He lives with his parents during summer break (5 months). Can his parents claim him as a qualifying child?',
 '["Yes — he meets the age, residency, and relationship tests", "No — his income is too high", "No — he did not live with them for more than half the year", "No — the scholarship income disqualifies him"]'::jsonb,
 2,
 'To be a qualifying child, the individual must live with the taxpayer for more than half the year (more than 6 months). Jason only lived with his parents for 5 months. Temporary absences for education count as time lived at home, but Jason apparently maintains a separate residence. The income amount does not matter for a qualifying child.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'The estimated tax safe harbor for individuals with prior-year AGI of $150,000 or less requires payments of at least:',
 '["90% of the current year tax liability", "100% of the prior year tax liability", "Either 90% of current year or 100% of prior year", "110% of the prior year tax liability"]'::jsonb,
 2,
 'Taxpayers can avoid the estimated tax penalty by paying at least the lesser of 90% of the current year''s tax liability or 100% of the prior year''s tax liability through withholding and estimated payments. This safe harbor allows taxpayers to base their payments on either year without penalty.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'For taxpayers with prior-year AGI exceeding $150,000 ($75,000 MFS), the estimated tax safe harbor based on prior-year liability increases to:',
 '["100% of prior year tax", "105% of prior year tax", "110% of prior year tax", "120% of prior year tax"]'::jsonb,
 2,
 'Higher-income taxpayers (prior-year AGI over $150,000, or $75,000 MFS) must pay at least 110% of the prior year''s tax liability to use the safe harbor and avoid the estimated tax penalty. The alternative is still 90% of the current year''s tax. This higher threshold prevents high-income taxpayers from underpaying based on a lower prior-year liability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A single taxpayer, age 30, with $18,000 of gross income in 2026 must file a federal income tax return because:',
 '["The income exceeds the filing threshold for a single filer", "All taxpayers must file regardless of income", "The income exceeds the standard deduction", "Filing is only required if taxes are owed"]'::jsonb,
 0,
 'A single taxpayer under age 65 must file a return if gross income equals or exceeds the standard deduction ($15,700 for 2026). Since $18,000 exceeds $15,700, a return must be filed. The filing threshold is effectively the standard deduction amount for most taxpayers.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Which filing status has the lowest standard deduction for 2026?',
 '["Single", "Married Filing Separately", "Head of Household", "Qualifying Surviving Spouse"]'::jsonb,
 1,
 'Married filing separately has the lowest standard deduction. For 2026, MFS is $15,700, which is the same as single. However, MFS is considered less favorable because it restricts access to many credits and deductions. Head of household receives a higher standard deduction, and QSS/MFJ receives the highest at $31,400.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Rita and Tom are married but wish to file separate returns in 2026. If Rita itemizes her deductions, what must Tom do?',
 '["Tom may choose either standard deduction or itemized", "Tom must also itemize his deductions", "Tom may take the standard deduction plus half of Rita''s itemized amount", "Tom cannot file a separate return if Rita itemizes"]'::jsonb,
 1,
 'When married taxpayers file separately, if one spouse itemizes deductions, the other spouse must also itemize — they cannot take the standard deduction. This rule prevents couples from optimizing by having one spouse itemize and the other take the standard deduction. Both must use the same method.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A qualifying child for dependency purposes must be under what age at the end of the tax year (assuming not a full-time student or permanently disabled)?',
 '["17", "18", "19", "24"]'::jsonb,
 2,
 'A qualifying child must be under age 19 at the end of the tax year. If the child is a full-time student, the age limit extends to under 24. There is no age limit if the child is permanently and totally disabled. Note that this age test for dependency differs from the child tax credit age requirement (under 17).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Dave, age 22, graduated college in May 2026 and started working full-time in June. He earned $42,000 and lived with his parents all year. They provided 30% of his support. Can his parents claim him as a dependent?',
 '["Yes — he is under 24 and was a student", "Yes — he lived with them all year", "No — he was not a full-time student for 5 months of the year", "No — he provided more than half his own support"]'::jsonb,
 2,
 'To qualify as a student, the child must be a full-time student for at least 5 calendar months during the year. Dave was a student only from January through May (5 months), which meets the threshold. However, the support test must also be considered — the child must not provide more than half their own support. With $42,000 in earnings and parents providing only 30%, Dave likely provides more than half his own support and cannot be claimed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Sandra is divorced and her 10-year-old son lives with her ex-husband 60% of the year. Who may claim the child as a dependent?',
 '["Sandra, because she is the mother", "The ex-husband, because the child lived with him more than half the year", "Whichever parent has higher income", "Neither parent unless they agree in writing"]'::jsonb,
 1,
 'Under the qualifying child rules, the child is the qualifying child of the parent with whom the child resided for the greater portion of the year (the custodial parent). Since the son lives with the ex-husband 60% of the year, the ex-husband is the custodial parent and may claim the dependency. The custodial parent can release the claim using Form 8332.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A self-employed taxpayer has net earnings of $60,000 in 2026. Estimated tax payments are due on which dates?',
 '["January 15, April 15, July 15, October 15", "April 15, June 15, September 15, January 15 (of next year)", "March 15, June 15, September 15, December 15", "Quarterly on the last day of each quarter"]'::jsonb,
 1,
 'Estimated tax payments for individuals are due on April 15, June 15, September 15, and January 15 of the following year. Note that the second quarter payment is due June 15 (not July 15), making the second quarter shorter than the others. These dates apply regardless of whether the taxpayer is self-employed or not.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A married couple with three children ages 4, 8, and 18 files jointly in 2026. The 18-year-old is a full-time college student who is a qualifying dependent. What is their total child tax credit?',
 '["$7,500", "$5,000", "$5,500", "$6,000"]'::jsonb,
 2,
 'The two children under 17 (ages 4 and 8) each qualify for the $2,500 child tax credit under H.R. 1, totaling $5,000. The 18-year-old does not qualify for the child tax credit (must be under 17) but qualifies for the $500 credit for other dependents. Total credit = $5,000 + $500 = $5,500.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Ellen, a single taxpayer age 68, has only Social Security income of $22,000 in 2026. Must she file a federal income tax return?',
 '["Yes — her income exceeds the filing threshold", "No — Social Security is never taxable", "It depends on her provisional income calculation", "No — she is below the filing threshold for her age"]'::jsonb,
 3,
 'Social Security benefits are only partially taxable based on provisional income (AGI + nontaxable interest + 50% of Social Security). If Social Security is Ellen''s only income, her provisional income ($11,000) is below the threshold where benefits become taxable ($25,000 for single). With no taxable income, she is below the filing threshold and is not required to file.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Tom and Nancy are married. Tom wants to file separately. Nancy has no income. Tom earned $120,000. Can Tom claim head of household status?',
 '["Yes — because Nancy has no income", "Yes — if they lived apart for the last 6 months and have a dependent child", "No — married taxpayers cannot file as head of household", "No — head of household requires being unmarried"]'::jsonb,
 1,
 'A married taxpayer can be "considered unmarried" and file as head of household if they meet specific requirements: lived apart from their spouse for the last 6 months of the year, maintained a home for a qualifying child for more than half the year, and paid more than half the cost of maintaining the home. Without these conditions, Tom must file as MFS.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Under the support test for a qualifying relative, the taxpayer must provide more than what percentage of the dependent''s total support?',
 '["25%", "33%", "50%", "100%"]'::jsonb,
 2,
 'The support test requires the taxpayer to provide more than 50% of the potential dependent''s total support for the year. Total support includes food, lodging, clothing, medical care, education, and similar necessities. If no single person provides more than 50%, a multiple support agreement may allow one contributor to claim the dependency.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Three siblings each provide support for their elderly mother: Alice provides 30%, Bob provides 25%, and Carol provides 20%. The mother provides 25% of her own support. Under a multiple support agreement, who can claim the mother as a dependent?',
 '["Only Alice, because she provides the most", "Any one of the three siblings who provides more than 10%", "None — no one provides more than 50%", "All three can each claim one-third of the dependency"]'::jsonb,
 1,
 'Under a multiple support agreement (Form 2120), when no single person provides more than 50% of support but two or more people together provide over 50%, any one contributor who provides more than 10% of the support may claim the dependency if the others sign a written agreement. All three siblings exceed the 10% threshold.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Kevin, who is 17 and unmarried, earned $14,500 from a summer job. His parents provide more than half his support. Must Kevin file his own tax return?',
 '["No — he is a dependent so his parents report his income", "Yes — his earned income exceeds the standard deduction threshold for dependents", "No — minors are not required to file", "Yes — but only if he has unearned income"]'::jsonb,
 1,
 'A dependent must file a return if their earned income exceeds the standard deduction amount ($15,700 for 2026 for a single filer, but a dependent''s standard deduction is limited to the greater of $1,300 or earned income + $450, up to $15,700). Kevin''s earned income of $14,500 puts him at $14,950 standard deduction. He must file if his gross income exceeds his standard deduction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A taxpayer fails to make required estimated tax payments throughout 2026. The underpayment penalty is computed as:',
 '["A flat 25% penalty on the underpayment", "Interest at the federal short-term rate plus 3 percentage points", "10% of the tax due", "5% per month of the underpayment"]'::jsonb,
 1,
 'The estimated tax underpayment penalty is calculated as interest at the federal short-term rate plus 3 percentage points, applied to each quarterly underpayment for the period it remained unpaid. It is technically an interest charge, not a penalty, and cannot be waived at the taxpayer''s request (though the IRS may waive it in limited circumstances).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Nancy, a single taxpayer with AGI of $130,000, paid $25,000 for her daughter''s college tuition in 2026. She wants to claim the AOTC. Is she eligible?',
 '["Yes — the full $2,500 AOTC is available", "Yes — but the AOTC is partially phased out", "No — her income exceeds the AOTC phase-out completely", "No — the tuition amount is too high for the credit"]'::jsonb,
 2,
 'The AOTC phases out for single filers with MAGI between $80,000 and $90,000. Nancy''s AGI of $130,000 far exceeds the $90,000 upper limit, so she is completely ineligible for the AOTC. She may want to consider the Lifetime Learning Credit, which has higher income phase-out thresholds, or other tax benefits for education expenses.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Which of the following is a requirement for a taxpayer to claim qualifying surviving spouse filing status?',
 '["The surviving spouse must have been widowed within the current tax year", "The surviving spouse must not have remarried and must maintain a home for a dependent child", "The surviving spouse must have filed jointly in the year of the spouse''s death", "The surviving spouse must be at least age 65"]'::jsonb,
 1,
 'Qualifying surviving spouse (QSS) status requires: (1) the spouse died in one of the two preceding tax years, (2) the surviving spouse has not remarried, (3) the surviving spouse maintains a household that is the principal residence of a dependent son, daughter, or stepchild for the entire year, and (4) the surviving spouse paid over half the cost of maintaining the home.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A taxpayer is claimed as a dependent on another person''s return. The dependent has $800 of earned income and $500 of interest income. What is the dependent''s standard deduction?',
 '["$1,300", "$1,250", "$800", "$15,700"]'::jsonb,
 0,
 'A dependent''s standard deduction is the greater of $1,300 or earned income plus $450, but not more than the regular standard deduction ($15,700). Here: earned income ($800) + $450 = $1,250. Since $1,250 is less than the $1,300 minimum, the standard deduction is $1,300. The minimum floor ensures dependents with little or no earned income still receive a basic standard deduction.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A non-custodial parent wishes to claim the child tax credit for their child. What form must the custodial parent sign to release the dependency exemption?',
 '["Form W-4", "Form 8332", "Form 2120", "Form 8812"]'::jsonb,
 1,
 'Form 8332 (Release/Revocation of Release of Claim to Exemption for Child by Custodial Parent) must be signed by the custodial parent to allow the non-custodial parent to claim the child tax credit and dependency. Form 2120 is for multiple support agreements. Form 8812 is for the additional child tax credit. Form W-4 is for withholding.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'Phil has prior-year AGI of $200,000 and expects to owe $30,000 in 2026 taxes. He wants to use the safe harbor to avoid the estimated tax penalty. What is the minimum he must pay through estimated payments and withholding?',
 '["$27,000 (90% of current year)", "$30,000 (100% of prior year)", "$33,000 (110% of prior year)", "The lesser of $27,000 or $33,000"]'::jsonb,
 2,
 'Since Phil''s prior-year AGI exceeds $150,000, his safe harbor based on prior year liability is 110% (not 100%). He must pay at least 110% of prior year tax or 90% of current year tax. Without knowing prior year tax, if we assume $30,000 was also the prior year liability, he needs $33,000 (110% x $30,000). The 110% safe harbor protects against unexpected income increases.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A taxpayer who is married but files separately may claim which of the following?',
 '["Full child tax credit if the child lives with them", "Earned income credit", "Full student loan interest deduction", "Child and dependent care credit"]'::jsonb,
 0,
 'A married filing separately taxpayer can claim the child tax credit for qualifying children who live with them, though the phase-out begins at $200,000. MFS filers cannot claim the EIC or child and dependent care credit. The student loan interest deduction is also disallowed for MFS filers. The child tax credit is one of the few family credits available under MFS.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Individual Taxation: Filing/Credits',
 'A 23-year-old full-time graduate student is supported by her parents. She has a $5,000 teaching assistant stipend. Can her parents claim her as a qualifying child?',
 '["Yes — she is under 24 and a full-time student", "No — graduate students cannot be qualifying children", "No — her stipend income is too high", "Yes — but only if she lives with them"]'::jsonb,
 0,
 'A qualifying child must be under age 24 and a full-time student for at least 5 months of the year. At age 23 as a full-time graduate student, she meets the age test. There is no income limit for qualifying children (unlike qualifying relatives). She must also meet the relationship, residency, and joint return tests. Graduate students can be qualifying children.',
 'medium');

-- =============================================================================
-- Estate and Gift Tax — 25 questions
-- Difficulty mix: 8 easy, 12 medium, 5 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'For 2026, what is the annual gift tax exclusion per donee?',
 '["$17,000", "$18,000", "$19,000", "$20,000"]'::jsonb,
 2,
 'The 2026 annual gift tax exclusion is $19,000 per donee. A donor can give up to $19,000 to any number of recipients without incurring gift tax or using any portion of the unified credit. Married couples can elect gift splitting, effectively doubling the exclusion to $38,000 per donee.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'The 2026 unified estate and gift tax exemption (applicable exclusion amount) is approximately:',
 '["$12.06 million", "$12.92 million", "$13.61 million", "$13.99 million"]'::jsonb,
 3,
 'The 2026 unified credit exemption equivalent is approximately $13.99 million per individual. This amount shelters cumulative lifetime taxable gifts and the taxable estate from estate/gift tax. Married couples can effectively shelter up to $27.98 million combined through portability of the deceased spouse''s unused exclusion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Helen gives her daughter $25,000 cash in 2026. What is Helen''s taxable gift?',
 '["$25,000", "$19,000", "$6,000", "$0"]'::jsonb,
 2,
 'The taxable gift is the total gift minus the annual exclusion: $25,000 - $19,000 = $6,000. This $6,000 taxable gift reduces Helen''s remaining unified credit (lifetime exemption). Helen must file a gift tax return (Form 709) to report the gift, but no gift tax is owed unless she has exhausted her $13.99 million lifetime exemption.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Which of the following gifts qualifies for the annual gift tax exclusion?',
 '["A gift of $19,000 cash to a friend", "A remainder interest in a trust", "A future interest in property", "A $19,000 contribution to an irrevocable trust with no Crummey powers"]'::jsonb,
 0,
 'The annual exclusion applies only to gifts of present interests — gifts the donee can immediately use, possess, or enjoy. Cash gifts are present interests. Remainder interests and future interests do not qualify. Trusts without Crummey withdrawal powers are future interests. Crummey powers convert trust contributions to present interests eligible for the exclusion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Mark and Susan (married) want to give their son $50,000 for a home down payment in 2026. If they elect gift splitting, what is the taxable gift amount?',
 '["$50,000", "$31,000", "$12,000", "$0"]'::jsonb,
 2,
 'With gift splitting, the $50,000 gift is treated as $25,000 from each spouse. Each spouse applies the $19,000 annual exclusion, resulting in taxable gifts of $6,000 each ($25,000 - $19,000). Total taxable gifts = $6,000 + $6,000 = $12,000. Gift splitting requires filing Form 709 by both spouses and the consent of the other spouse.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'A gift tax return (Form 709) must be filed when:',
 '["Any gift is made during the year", "Gifts to any one person exceed the annual exclusion", "The donor''s total gifts for the year exceed $100,000", "The donor makes gifts to more than 5 people"]'::jsonb,
 1,
 'Form 709 must be filed when gifts to any single donee exceed the annual exclusion ($19,000 in 2026), when gift splitting is elected (even if under the exclusion), or when gifts of future interests are made. Gifts that are fully covered by the annual exclusion and are present interests do not require filing.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Which of the following transfers is NOT subject to gift tax?',
 '["A $50,000 payment directly to a hospital for a grandchild''s medical bills", "A $50,000 cash gift to a grandchild", "A $50,000 transfer to an irrevocable trust for a grandchild", "A $50,000 gift of stock to a grandchild"]'::jsonb,
 0,
 'Direct payments to medical providers for someone''s medical care are excluded from gift tax under the medical exclusion, regardless of amount. This exclusion is unlimited and does not reduce the annual exclusion or lifetime exemption. The payment must be made directly to the provider, not reimbursed to the patient. The other options are taxable gifts to the extent they exceed the annual exclusion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Paul dies in 2026 with a gross estate of $18,000,000. His estate claims a $5,000,000 marital deduction and a $1,000,000 charitable deduction. What is his taxable estate?',
 '["$18,000,000", "$12,000,000", "$13,000,000", "$6,000,000"]'::jsonb,
 1,
 'Taxable estate = Gross estate - Deductions. $18,000,000 - $5,000,000 (marital) - $1,000,000 (charitable) = $12,000,000. The marital deduction is unlimited for transfers to a surviving U.S. citizen spouse. The charitable deduction is unlimited for transfers to qualifying charities. The taxable estate is then compared to the unified credit exemption.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'What is the maximum estate tax rate for 2026?',
 '["35%", "37%", "39.6%", "40%"]'::jsonb,
 3,
 'The maximum federal estate tax rate is 40%, which applies to taxable estates exceeding $1,000,000 (after applying the graduated rate schedule). The unified credit effectively eliminates tax on the first $13.99 million, so the 40% rate only impacts estates exceeding the exemption amount.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Margaret dies owning property with a fair market value of $2,000,000 that she purchased for $500,000. Her son inherits the property. What is the son''s basis in the property?',
 '["$500,000", "$2,000,000", "$1,250,000", "$0"]'::jsonb,
 1,
 'Property inherited from a decedent receives a stepped-up basis to the fair market value at the date of death (or the alternate valuation date if elected). The son''s basis is $2,000,000, eliminating the $1,500,000 of unrealized gain. This step-up in basis is one of the most significant tax benefits in the estate tax system.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'The alternate valuation date for estate tax purposes is:',
 '["3 months after the date of death", "6 months after the date of death", "12 months after the date of death", "The last day of the tax year of death"]'::jsonb,
 1,
 'The executor may elect to value the gross estate at the alternate valuation date, which is 6 months after the date of death. This election is available only if it reduces both the gross estate value and the estate tax liability. Property sold or distributed within the 6-month period is valued at the date of sale or distribution.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Edward gives his niece a piece of land with a fair market value of $100,000 and an adjusted basis of $40,000 in 2026. What is the niece''s basis for determining gain if she sells the property for $120,000?',
 '["$100,000", "$40,000", "$120,000", "$0"]'::jsonb,
 1,
 'For gift property, the donee''s basis for determining gain is generally the donor''s adjusted basis (carryover basis). The niece''s basis is $40,000. If she sells for $120,000, her gain is $120,000 - $40,000 = $80,000. The FMV basis rule (for determining loss) only applies if FMV at the time of gift is less than the donor''s basis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Direct payments made to an educational institution for tuition on behalf of another person are:',
 '["Subject to gift tax above the annual exclusion", "Excluded from gift tax regardless of amount", "Deductible as an education expense", "Treated as a qualified transfer under Section 529"]'::jsonb,
 1,
 'Direct payments to educational institutions for tuition (not room and board) are excluded from gift tax under the educational exclusion, with no dollar limit. Like the medical exclusion, this is an unlimited exclusion separate from the $19,000 annual exclusion. The payment must be made directly to the institution.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'What is the generation-skipping transfer tax (GSTT) rate for 2026?',
 '["35%", "37%", "39.6%", "40%"]'::jsonb,
 3,
 'The GSTT is imposed at a flat rate equal to the maximum estate tax rate, which is 40% for 2026. The GSTT applies to transfers that skip a generation, such as gifts from grandparent to grandchild. Each individual has a separate GST exemption ($13.99 million for 2026) that can shelter transfers from the GSTT.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Patricia''s husband died in 2025 with a taxable estate of $5,000,000 and a $13.99 million exemption. Patricia wants to use his unused exemption. What must occur?',
 '["Nothing — the unused exemption transfers automatically", "An estate tax return (Form 706) must be filed to elect portability", "Patricia must file an amended joint return", "A court order is required"]'::jsonb,
 1,
 'Portability of the deceased spouse''s unused exclusion (DSUE) requires the timely filing of a complete estate tax return (Form 706), even if no estate tax is owed. Without filing Form 706, the unused exemption is lost. The executor must make the portability election on the return. The DSUE amount would be approximately $8.99 million ($13.99M - $5M).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Which of the following assets is included in a decedent''s gross estate?',
 '["Property the decedent gifted 5 years before death", "Life insurance proceeds on the decedent''s life if the decedent owned the policy", "Property held in an irrevocable trust created 10 years before death with no retained interests", "Property owned by the surviving spouse"]'::jsonb,
 1,
 'Life insurance proceeds on the decedent''s life are included in the gross estate if the decedent had any incidents of ownership in the policy at death (or within 3 years of death). Completed gifts made more than 3 years before death, property in an irrevocable trust with no retained interests, and the surviving spouse''s separate property are generally excluded.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Robert disclaimed an inheritance of $500,000 from his mother''s estate. For the disclaimer to be qualified under IRC Section 2518, it must be made within what time period?',
 '["30 days of the decedent''s death", "6 months of the decedent''s death", "9 months of the decedent''s death or the date the disclaimant turns 21", "12 months of the decedent''s death"]'::jsonb,
 2,
 'A qualified disclaimer must be made in writing within 9 months of the transfer creating the interest (typically the date of death) or within 9 months of the disclaimant turning 21, whichever is later. The disclaimant must not have accepted the interest or any of its benefits, and the property must pass without direction from the disclaimant.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'A donor gifts property with a FMV of $30,000 and an adjusted basis of $45,000. What is the donee''s basis for determining loss?',
 '["$45,000", "$30,000", "$37,500", "$0"]'::jsonb,
 1,
 'When the donor''s basis exceeds the FMV at the time of gift, special rules apply. For determining gain, the donee uses the donor''s basis ($45,000). For determining loss, the donee uses the FMV at the time of gift ($30,000). If the donee sells for an amount between $30,000 and $45,000, there is no gain or loss. This dual-basis rule prevents the transfer of unrealized losses.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Janet transfers her home to an irrevocable trust but retains the right to live in it for 15 years. She dies 8 years after the transfer. Is the home included in her gross estate?',
 '["No — it was transferred to an irrevocable trust", "Yes — she retained a life estate (right to use) under IRC Section 2036", "No — more than 3 years have passed since the transfer", "Only the remainder interest is included"]'::jsonb,
 1,
 'Under IRC Section 2036, if the decedent transfers property but retains the right to possess, enjoy, or receive income from the property for life or a period that does not end before death, the full value of the property is included in the gross estate. Janet''s retained right to live in the home triggers inclusion regardless of the irrevocable trust.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'The estate of a decedent who died in 2026 must file an estate tax return (Form 706) if the gross estate plus adjusted taxable gifts exceed:',
 '["$5,000,000", "$12,060,000", "$12,920,000", "$13,990,000"]'::jsonb,
 3,
 'For decedents dying in 2026, Form 706 must be filed if the gross estate plus adjusted taxable gifts (lifetime gifts exceeding the annual exclusion) exceed $13,990,000 (the basic exclusion amount). Even if no tax is owed due to the unified credit, filing may be required. Filing is also recommended to elect portability of any unused exclusion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'George makes the following gifts in 2026: $25,000 to his son, $19,000 to his daughter, and $50,000 directly to a hospital for his mother''s surgery. What is his total taxable gift amount?',
 '["$94,000", "$75,000", "$6,000", "$56,000"]'::jsonb,
 2,
 'The $50,000 hospital payment qualifies for the unlimited medical exclusion and is not a taxable gift. The $19,000 to his daughter is fully covered by the annual exclusion. The $25,000 to his son exceeds the annual exclusion by $6,000 ($25,000 - $19,000). Total taxable gifts = $6,000. Only amounts exceeding the annual exclusion and not otherwise excluded are taxable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'A Crummey power in an irrevocable trust allows:',
 '["The trustee to distribute principal at their discretion", "Beneficiaries to withdraw contributions for a limited time, converting them to present interests", "The grantor to revoke the trust within 30 days", "The trust to avoid all gift tax consequences"]'::jsonb,
 1,
 'A Crummey power gives trust beneficiaries a limited right to withdraw contributions to the trust for a window of time (typically 30-60 days). This withdrawal right converts what would otherwise be a future interest into a present interest, qualifying the contribution for the annual gift tax exclusion. If the beneficiary does not exercise the power, the funds remain in trust.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Property held as joint tenants with right of survivorship between spouses is included in the gross estate of the first spouse to die at what percentage?',
 '["100%", "50%", "Based on contribution", "0% — it passes outside the estate"]'::jsonb,
 1,
 'For joint tenancy between spouses (tenancy by the entirety), 50% of the property''s value is included in the gross estate of the first spouse to die, regardless of which spouse provided the consideration. This 50% inclusion rule applies only to spouses. For non-spouse joint tenants, the inclusion is based on the decedent''s contribution.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'Thomas, a widower, dies in 2026 with a gross estate of $20,000,000. He made $2,000,000 in taxable gifts during his lifetime (gift tax of $0 was paid due to the unified credit). His estate claims $3,000,000 in deductions. What is the estate tax before credits?',
 '["$2,804,000", "$6,800,000", "$3,600,000", "$5,600,000"]'::jsonb,
 0,
 'Taxable estate = $20,000,000 - $3,000,000 = $17,000,000. Add adjusted taxable gifts: $17,000,000 + $2,000,000 = $19,000,000 tentative tax base. Tentative tax at 40% on the excess over the amounts taxed at lower rates: approximately $7,395,800. Subtract unified credit (approximately $5,595,800 for $13.99M exemption) and gift taxes paid ($0). Net estate tax is approximately $2,804,000 after the credit shelters $13.99M.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Estate and Gift Tax',
 'The marital deduction for estate tax purposes is:',
 '["Limited to 50% of the gross estate", "Limited to $13.99 million", "Unlimited for transfers to a U.S. citizen surviving spouse", "Available only if the surviving spouse is named in the will"]'::jsonb,
 2,
 'The marital deduction is unlimited — any amount passing to a surviving spouse who is a U.S. citizen qualifies for the deduction, effectively eliminating estate tax on the first spouse''s death. For non-citizen surviving spouses, a qualified domestic trust (QDOT) is required. The deduction is not limited to specific amounts or percentages of the estate.',
 'easy');
-- REG Chunk 4: C Corporations, S Corporations, Partnerships, Legal Duties, Debtor-Creditor, Tax-Exempt

-- =============================================================================
-- C Corporations (30 questions: 9 easy, 15 medium, 6 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Alpha Corp is formed when Taxpayer A transfers equipment with a fair market value of $120,000 and an adjusted basis of $80,000 to the corporation in exchange for 100% of the stock. Under Section 351, what is Taxpayer A''s recognized gain?',
 '["$0", "$40,000", "$80,000", "$120,000"]'::jsonb,
 0,
 'Section 351 provides that no gain or loss is recognized when property is transferred to a corporation solely in exchange for stock, provided the transferor(s) control the corporation (80% or more) immediately after the exchange. Since A receives 100% of the stock and transfers only property (no boot received), no gain is recognized.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Beta Corp has taxable income of $500,000 for the current year. What is Beta Corp''s federal income tax liability?',
 '["$75,000", "$100,000", "$105,000", "$170,000"]'::jsonb,
 2,
 'C corporations are taxed at a flat 21% rate under current law. Beta Corp''s tax liability is $500,000 x 21% = $105,000. The graduated corporate rate structure was eliminated by the Tax Cuts and Jobs Act, replaced by the single flat rate.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Delta Corp owns 25% of the stock of Sigma Corp. During the year, Delta receives $200,000 in dividends from Sigma. What is Delta''s dividends received deduction?',
 '["$130,000", "$100,000", "$50,000", "$200,000"]'::jsonb,
 0,
 'A corporation owning 20% or more but less than 80% of another corporation is entitled to a 65% dividends received deduction. Delta owns 25%, so the DRD is $200,000 x 65% = $130,000. The 50% DRD applies to ownership below 20%, and the 100% DRD applies to 80% or more ownership.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Gamma Corp has current-year earnings and profits (E&P) of $60,000 and accumulated E&P of $0. Gamma distributes $90,000 cash to its sole shareholder, who has a stock basis of $20,000. How is the distribution treated?',
 '["$60,000 dividend, $20,000 return of capital, $10,000 capital gain", "$90,000 dividend", "$60,000 dividend, $30,000 capital gain", "$60,000 dividend, $30,000 return of capital"]'::jsonb,
 0,
 'Distributions are treated as dividends to the extent of current and accumulated E&P ($60,000). The excess ($30,000) reduces the shareholder''s stock basis to zero ($20,000 return of capital), and any remaining amount ($10,000) is treated as capital gain from a deemed sale of stock.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Which of the following is the accumulated earnings credit threshold for a personal service corporation?',
 '["$0", "$100,000", "$150,000", "$250,000"]'::jsonb,
 2,
 'Personal service corporations (those in health, law, engineering, architecture, accounting, actuarial science, performing arts, or consulting) have an accumulated earnings credit of $150,000 rather than the standard $250,000. This lower threshold reflects the idea that service companies have less need to accumulate earnings for business purposes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Omega Corp has taxable income of $800,000 before considering a charitable contribution of $100,000. What is the maximum charitable deduction Omega may claim?',
 '["$10,000", "$120,000", "$100,000", "$80,000"]'::jsonb,
 3,
 'Corporate charitable deductions are limited to 10% of taxable income computed before the charitable deduction, dividends received deduction, NOL carryback, and capital loss carryback. 10% of $800,000 = $80,000. The excess $20,000 may be carried forward for up to five years.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'In a Section 351 exchange, Taxpayer B transfers land with a fair market value of $200,000 and an adjusted basis of $150,000 to newly formed Corp Z in exchange for 80% of the stock. No boot is received. What is Corp Z''s basis in the land?',
 '["$150,000", "$160,000", "$175,000", "$200,000"]'::jsonb,
 0,
 'Under Section 362(a), the corporation''s basis in property received in a Section 351 exchange is the transferor''s adjusted basis ($150,000), increased by any gain recognized by the transferor. Since no boot was received and no gain was recognized, the corporation takes a transferred (carryover) basis of $150,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Pike Corp owns 10% of the stock of Lake Corp and receives $80,000 in dividends during the year. What amount of dividends received deduction may Pike claim?',
 '["$16,000", "$80,000", "$52,000", "$40,000"]'::jsonb,
 3,
 'A corporation that owns less than 20% of the distributing corporation''s stock is entitled to a 50% dividends received deduction. Pike owns 10%, so the DRD is $80,000 x 50% = $40,000. The 65% DRD applies at 20%-79% ownership, and 100% DRD at 80% or more.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Rex Corp has current E&P of ($30,000) and accumulated E&P of $50,000 at the beginning of the year. Rex distributes $40,000 to its sole shareholder on July 1. How much of the distribution is a dividend?',
 '["$5,000", "$20,000", "$35,000", "$40,000"]'::jsonb,
 2,
 'When current E&P is a deficit, the deficit is allocated ratably over the year. By July 1 (half the year), the allocated current deficit is ($15,000). This reduces accumulated E&P: $50,000 - $15,000 = $35,000 available. The distribution is a dividend to the extent of $35,000. The remaining $5,000 is return of capital or capital gain.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Taxpayer C transfers property with a fair market value of $300,000 and an adjusted basis of $180,000 to newly formed Corp W in exchange for 90% of the stock (worth $260,000) and $40,000 cash. What gain does Taxpayer C recognize?',
 '["$0", "$120,000", "$80,000", "$40,000"]'::jsonb,
 3,
 'In a Section 351 exchange where boot (cash or other non-stock property) is received, the transferor recognizes gain to the extent of boot received, but not exceeding the realized gain. Realized gain is $300,000 - $180,000 = $120,000. Boot received is $40,000. Since $40,000 is less than $120,000, Taxpayer C recognizes $40,000 of gain.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Jade Corp has taxable income of $1,200,000 before the dividends received deduction. Jade owns 85% of Ruby Corp and receives $400,000 in dividends from Ruby. What is Jade''s dividends received deduction?',
 '["$200,000", "$260,000", "$360,000", "$400,000"]'::jsonb,
 3,
 'When a corporation owns 80% or more of the distributing corporation''s stock, it is entitled to a 100% dividends received deduction. Since Jade owns 85% of Ruby, the DRD is $400,000 x 100% = $400,000. This eliminates double taxation of dividends within an affiliated group.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Lark Corp has accumulated E&P of $200,000 and current E&P of $80,000. Lark distributes $350,000 to its sole shareholder who has a stock basis of $50,000. What amount is treated as a capital gain?',
 '["$0", "$70,000", "$50,000", "$20,000"]'::jsonb,
 3,
 'Total E&P available for dividend treatment is $200,000 + $80,000 = $280,000. Of the $350,000 distribution, $280,000 is a dividend. The excess is $70,000, of which $50,000 reduces stock basis to zero (return of capital). The remaining $20,000 ($70,000 - $50,000) is capital gain.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Nova Corp is a closely held C corporation with taxable income of $600,000 and has accumulated $280,000 of earnings beyond reasonable business needs. Nova is not a personal holding company. What is the accumulated earnings tax rate applied to the excess accumulation?',
 '["15%", "37%", "21%", "20%"]'::jsonb,
 3,
 'The accumulated earnings tax is imposed at a rate of 20% on accumulated taxable income. The tax serves as a penalty for corporations that accumulate earnings to avoid shareholder-level dividend taxation rather than distributing them as dividends.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Thorn Corp has undistributed personal holding company income of $500,000 for the current year. What is the personal holding company tax?',
 '["$75,000", "$200,000", "$105,000", "$100,000"]'::jsonb,
 3,
 'The personal holding company (PHC) tax is 20% of undistributed PHC income. For Thorn Corp: $500,000 x 20% = $100,000. This penalty tax is imposed in addition to the regular corporate income tax and encourages PHCs to distribute passive income as dividends rather than retain it.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Star Corp has current E&P of $100,000. During the year, Star makes two distributions: $60,000 to Shareholder X on March 1 and $80,000 to Shareholder Y on September 1. How much of each distribution is a dividend?',
 '["X: $60,000; Y: $40,000", "X: $42,857; Y: $57,143", "X: $60,000; Y: $80,000", "X: $50,000; Y: $50,000"]'::jsonb,
 0,
 'When current E&P is sufficient to cover some but not all distributions, current E&P is allocated chronologically (in order of distribution dates). The first $60,000 distribution to X is fully covered. The remaining $40,000 of current E&P covers $40,000 of Y''s $80,000 distribution. Accumulated E&P would then apply to the remaining $40,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Flash Corp computes taxable income of $900,000 before charitable contributions and receives $100,000 in dividends from a 15%-owned domestic corporation. Flash made $120,000 in charitable contributions. What is the allowable charitable deduction?',
 '["$90,000", "$92,000", "$100,000", "$120,000"]'::jsonb,
 0,
 'The charitable deduction limit is 10% of taxable income computed before the charitable deduction, DRD, NOL carryback, and capital loss carryback. The base is $900,000 (already before the charitable deduction). 10% x $900,000 = $90,000. The excess $30,000 carries forward five years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Apex Corp uses the calendar year and has a net operating loss of $200,000 in 2025. Under current law, how is this NOL treated?',
 '["Carried back 2 years, then forward 20 years", "Carried forward indefinitely, limited to 80% of taxable income", "Carried back 5 years, then forward indefinitely", "Carried forward 20 years with no limitation"]'::jsonb,
 1,
 'Under current law (post-TCJA), net operating losses may only be carried forward indefinitely (no carryback for most taxpayers). The NOL deduction is limited to 80% of taxable income in any given carryforward year. This ensures corporations always pay some tax even when applying prior-year losses.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Shareholder E owns 100% of Volt Corp, which adopts a plan of complete liquidation under Section 331. E has a stock basis of $150,000 and receives liquidating distributions totaling $400,000. What is the tax treatment to E?',
 '["$250,000 capital gain", "$400,000 ordinary income", "$250,000 ordinary income", "$400,000 capital gain"]'::jsonb,
 0,
 'Under Section 331, amounts received by a shareholder in a complete liquidation are treated as payment in exchange for stock, resulting in capital gain or loss. E''s gain is $400,000 received minus $150,000 stock basis = $250,000 capital gain. The gain is long-term if the stock was held more than one year.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Volt Corp liquidates and distributes land with a fair market value of $600,000 and an adjusted basis of $350,000 to its sole shareholder. Under Section 336, what gain does Volt Corp recognize?',
 '["$250,000", "$125,000", "$0", "$600,000"]'::jsonb,
 0,
 'Under Section 336, a liquidating corporation generally recognizes gain or loss as if it sold the property at fair market value. Volt Corp recognizes gain of $600,000 FMV minus $350,000 adjusted basis = $250,000. This gain is subject to the 21% corporate tax rate before the remaining proceeds are distributed to shareholders.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'In a Section 351 exchange, Taxpayer D transfers a building with a fair market value of $500,000 and an adjusted basis of $350,000, subject to a mortgage of $400,000, to a newly formed corporation for 100% of the stock. What gain does Taxpayer D recognize?',
 '["$0", "$150,000", "$100,000", "$50,000"]'::jsonb,
 3,
 'Under Section 357(c), when the liability assumed by the corporation exceeds the transferor''s total adjusted basis in all property transferred, the excess is recognized as gain. The mortgage ($400,000) exceeds basis ($350,000) by $50,000, so Taxpayer D recognizes $50,000 of gain.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Crest Corp has taxable income of $2,000,000 and an NOL carryforward of $1,500,000 from 2024. What is the maximum NOL deduction Crest may claim in the current year?',
 '["$1,200,000", "$2,000,000", "$1,600,000", "$1,500,000"]'::jsonb,
 3,
 'Post-TCJA net operating losses carried forward are limited to 80% of taxable income (computed without the NOL deduction). 80% of $2,000,000 = $1,600,000. Since the carryforward ($1,500,000) is less than the 80% limit ($1,600,000), Crest deducts the full $1,500,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Marble Corp is a personal holding company. Which of the following types of income would be classified as personal holding company income?',
 '["Gross profit from the sale of inventory", "Rent income that constitutes 60% or more of adjusted ordinary gross income", "Dividends received from an unrelated domestic corporation", "Gain from the sale of business equipment"]'::jsonb,
 2,
 'Personal holding company income includes passive income such as dividends, interest, royalties, and certain rents. Dividends from an unrelated corporation are PHC income. Rent income is excluded from PHC income if it equals 50% or more of adjusted ordinary gross income (and certain conditions are met). Inventory sales and equipment gains are active business income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Ridge Corp had a capital loss of $30,000 and a capital gain of $10,000 in the current year. What is the proper treatment of the net capital loss?',
 '["Deduct $20,000 against ordinary income", "Deduct $3,000 against ordinary income and carry forward $17,000", "Carry back 3 years and forward 5 years as a short-term capital loss", "No deduction; carry forward indefinitely"]'::jsonb,
 2,
 'Corporations may not deduct net capital losses against ordinary income (unlike individuals who may deduct up to $3,000). Instead, corporations carry net capital losses back 3 years and forward 5 years, and the carryover is always treated as a short-term capital loss. The $3,000 deduction against ordinary income applies only to individuals.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Taxpayer F and Taxpayer G form Corp H. F contributes property worth $400,000 (basis $250,000) for 70% of the stock, and G contributes services valued at $100,000 for 30% of the stock. What gain does F recognize?',
 '["$0", "$100,000", "$150,000", "$250,000"]'::jsonb,
 2,
 'For Section 351 nonrecognition, the transferor(s) of property must control the corporation (own 80% or more) immediately after the exchange. G contributed only services, not property, so G is not counted in the control group. F owns only 70%, which is below the 80% threshold. Therefore Section 351 does not apply and F recognizes the full realized gain of $400,000 - $250,000 = $150,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Terra Corp converts from a C corporation to an S corporation. Terra has a built-in gain asset with a fair market value of $800,000 and an adjusted basis of $500,000 at the conversion date. If Terra sells the asset 3 years after the S election, what is the built-in gains tax consequence?',
 '["No built-in gains tax because the asset was held over 1 year", "Built-in gains tax of $63,000 at 21% on the $300,000 gain", "Built-in gains tax applies only if sold within 2 years", "The gain passes through to shareholders with no entity-level tax"]'::jsonb,
 1,
 'The built-in gains tax under Section 1374 applies to any C-to-S conversion corporation that sells appreciated assets within the 5-year recognition period. The $300,000 built-in gain ($800,000 - $500,000) is taxed at the highest corporate rate of 21%, producing a $63,000 tax. Three years is within the 5-year window.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Ember Corp has current E&P of $150,000 and distributes property with a fair market value of $200,000 and an adjusted basis of $120,000 to its sole shareholder. The property is subject to a $50,000 liability assumed by the shareholder. What is the dividend amount to the shareholder?',
 '["$150,000", "$120,000", "$200,000", "$230,000"]'::jsonb,
 0,
 'When a corporation distributes property, the distribution amount to the shareholder equals the greater of fair market value or the liability, reduced by the liability assumed. Here, FMV ($200,000) minus liability assumed ($50,000) = $150,000 net distribution. E&P is increased by the $80,000 gain ($200,000 - $120,000) to $230,000 before measuring dividend treatment. Since the $150,000 distribution is fully covered by E&P, the entire $150,000 is a dividend.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Core Corp has taxable income of $400,000 and makes estimated tax payments. Which of the following correctly states the required annual payment to avoid the underpayment penalty for a large corporation (prior-year tax exceeding $1,000,000)?',
 '["100% of current-year tax liability", "100% of prior-year tax liability", "110% of prior-year tax liability", "90% of current-year tax liability"]'::jsonb,
 0,
 'Large corporations (those with taxable income exceeding $1,000,000 in any of the three preceding years) may not use the prior-year safe harbor for estimated tax payments after the first quarter. They must pay 100% of the current-year tax liability through quarterly estimated payments to avoid the underpayment penalty.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Blaze Corp reports taxable income of $750,000 before considering a $60,000 net capital loss carryforward and a $50,000 charitable contribution carryforward. Blaze has no current-year charitable contributions. What is Blaze''s taxable income?',
 '["$700,000", "$690,000", "$640,000", "$750,000"]'::jsonb,
 0,
 'The capital loss carryforward ($60,000) can offset capital gains, but Blaze has no capital gains mentioned, so it cannot be used this year. The charitable contribution carryforward ($50,000) is subject to the 10% limit: 10% of $750,000 = $75,000. Since $50,000 is within the limit, the full $50,000 is deductible. Taxable income is $750,000 - $50,000 = $700,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Pulse Corp acquires 100% of Target Corp''s stock and immediately liquidates Target under Section 332. Target has assets with a fair market value of $5,000,000 and an adjusted basis of $3,000,000. What gain does Target recognize on the liquidation?',
 '["$0", "$500,000", "$1,000,000", "$2,000,000"]'::jsonb,
 0,
 'Under Section 332, no gain or loss is recognized by a subsidiary corporation on a complete liquidation into an 80%-or-more parent corporation. Target recognizes no gain. Pulse (the parent) takes a carryover basis in Target''s assets under Section 334(b)(1). This provision facilitates tax-free restructuring within corporate groups.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'C Corporations',
 'Zenith Corp, a calendar-year C corporation, has taxable income of $350,000 and distributes appreciated property (FMV $100,000, adjusted basis $40,000) as a dividend to its sole shareholder. What effect does the property distribution have on Zenith''s E&P?',
 '["E&P decreases by $100,000", "E&P decreases by $40,000", "E&P decreases by $40,000 (adjusted for gain recognized and the FMV distributed)", "E&P increases by $60,000 and then decreases by $100,000, for a net decrease of $40,000"]'::jsonb,
 3,
 'When a corporation distributes appreciated property, it recognizes gain as if the property were sold at FMV (Section 311(b)), increasing E&P by $60,000 ($100,000 - $40,000). E&P is then reduced by the FMV of the property distributed ($100,000). The net effect on E&P is a decrease of $40,000 ($60,000 increase minus $100,000 decrease). The shareholder includes $100,000 as a dividend (assuming sufficient E&P).',
 'medium');

-- =============================================================================
-- S Corporations (26 questions: 8 easy, 13 medium, 5 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'What is the maximum number of shareholders an S corporation may have?',
 '["25", "50", "75", "100"]'::jsonb,
 3,
 'An S corporation may have a maximum of 100 shareholders. Members of a family (defined as a common ancestor and up to six generations of lineal descendants and their spouses) may elect to be treated as a single shareholder for purposes of this limit.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Which of the following entities is eligible to be a shareholder of an S corporation?',
 '["A partnership", "A C corporation", "A qualified Subchapter S trust (QSST)", "A nonresident alien individual"]'::jsonb,
 2,
 'Eligible S corporation shareholders include U.S. citizen and resident alien individuals, estates, certain trusts (QSSTs and ESBTs), and tax-exempt organizations under Section 501(c)(3). Partnerships, corporations, and nonresident aliens are not eligible shareholders. A QSST must have only one income beneficiary and distribute all income currently.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Fern Corp elects S status. How many classes of stock may Fern have outstanding?',
 '["One", "Two", "Three", "Unlimited"]'::jsonb,
 0,
 'An S corporation may have only one class of stock outstanding. Differences in voting rights among shares of common stock are permitted and do not create a second class of stock. However, differences in distribution or liquidation rights would create a prohibited second class.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'To make a valid S election effective for the current tax year, by what date must Form 2553 be filed?',
 '["March 15 of the current year", "The 15th day of the 3rd month of the tax year", "April 15 of the current year", "December 31 of the prior year"]'::jsonb,
 1,
 'An S election is effective for the current tax year if Form 2553 is filed by the 15th day of the 3rd month of that tax year (March 15 for calendar-year corporations). All shareholders must consent to the election. If filed after this date, the election is effective for the following tax year.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Sage Corp, an S corporation, reports ordinary business income of $300,000 for the year. Shareholder M owns 40% of the stock. What amount of income does M report on their individual return from Sage Corp?',
 '["$120,000", "$0 until distributed", "$300,000", "$180,000"]'::jsonb,
 0,
 'S corporation income passes through to shareholders based on their pro rata ownership percentage, regardless of whether it is actually distributed. Shareholder M reports 40% x $300,000 = $120,000 of ordinary income on their individual tax return. This pass-through occurs even if no distributions are made.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Which of the following items is separately stated on an S corporation''s Schedule K-1?',
 '["Cost of goods sold", "Officer compensation", "Depreciation expense", "Net short-term capital gain"]'::jsonb,
 3,
 'Items that could affect different shareholders differently must be separately stated on Schedule K-1. Net short-term capital gain is separately stated because shareholders may have their own capital gains and losses that would net with the pass-through amount. Cost of goods sold, officer compensation, and depreciation are included in the computation of ordinary business income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Shareholder N has a stock basis of $50,000 in Elm Corp, an S corporation. N has no debt basis. Elm reports an ordinary loss of $80,000, and N''s share is $80,000 (100% owner). How much loss may N deduct currently?',
 '["$50,000", "$0", "$80,000", "$30,000"]'::jsonb,
 0,
 'An S corporation shareholder may deduct losses only to the extent of their stock basis plus direct debt basis (loans from the shareholder to the corporation). N''s stock basis is $50,000 and debt basis is $0, for a total of $50,000. N deducts $50,000 and the remaining $30,000 is suspended and carried forward indefinitely.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Cedar Corp is an S corporation with accumulated E&P from its prior C corporation years. Cedar has AAA of $100,000 and accumulated E&P of $60,000. Cedar distributes $130,000 to its sole shareholder. How is the distribution treated?',
 '["$100,000 tax-free return of AAA, $30,000 dividend from E&P", "$130,000 dividend", "$100,000 tax-free, $30,000 capital gain", "$60,000 dividend, $70,000 tax-free"]'::jsonb,
 0,
 'For S corporations with accumulated E&P, distributions are applied first to the Accumulated Adjustments Account (AAA), which represents previously taxed S corporation income. The first $100,000 comes from AAA (tax-free return of basis). The next $30,000 comes from accumulated E&P and is treated as a dividend. The ordering protects shareholders from double taxation on S corporation earnings.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Shareholder P has a stock basis of $40,000 in Oak Corp, an S corporation. During the year, Oak reports ordinary income of $25,000, tax-exempt interest of $5,000, and makes a $35,000 cash distribution. In what order are these items applied to P''s stock basis?',
 '["Income, distributions, then losses", "Distributions, income, then losses", "Income, then distributions", "Losses, income, then distributions"]'::jsonb,
 2,
 'Stock basis is adjusted in a specific order: (1) increased by income items (ordinary income, separately stated income, and tax-exempt income), then (2) decreased by distributions, then (3) decreased by nondeductible expenses, and finally (4) decreased by losses and deductions. P''s basis goes to $70,000 ($40,000 + $25,000 + $5,000), then decreases by $35,000 to $35,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'River Corp was a C corporation that elected S status on January 1 of the current year. River has net unrealized built-in gains of $400,000 at the election date. If River sells $150,000 of built-in gain assets during Year 2 of the S election, what is the built-in gains tax?',
 '["$31,500", "$21,000", "$0", "$150,000"]'::jsonb,
 0,
 'The built-in gains tax under Section 1374 applies to recognized built-in gains during the 5-year recognition period at the highest corporate tax rate of 21%. Year 2 is within the 5-year window. The tax is $150,000 x 21% = $31,500. This tax is imposed at the entity level before the remaining gain passes through to shareholders.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Birch Corp, an S corporation with prior C corporation E&P, has gross receipts of $200,000, of which $100,000 is passive investment income (interest and dividends). Birch has no expenses directly connected to the passive income. What is the excess net passive income tax?',
 '["$10,500", "$0", "$21,000", "$50,000"]'::jsonb,
 0,
 'The ENPI tax applies when an S corporation with accumulated E&P has passive investment income exceeding 25% of gross receipts. Here, 25% of $200,000 = $50,000, and passive income is $100,000 (exceeds threshold). Excess net passive income = net passive income x (passive income - 25% of gross receipts) / passive income = $100,000 x ($100,000 - $50,000) / $100,000 = $50,000. Taxed at 21% = $10,500.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Maple Corp, an S corporation, has passive investment income exceeding 25% of gross receipts for three consecutive years and has accumulated E&P from C corporation years. What is the consequence?',
 '["A 20% penalty tax is imposed", "The S election is terminated on the first day of the fourth year", "The shareholders must pay an additional tax", "The IRS imposes a $10,000 fine"]'::jsonb,
 1,
 'If an S corporation with accumulated C corporation E&P has passive investment income exceeding 25% of gross receipts for three consecutive tax years, the S election is automatically terminated on the first day of the fourth consecutive year. The corporation reverts to C corporation status. This rule encourages S corporations to distribute accumulated E&P or limit passive income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Willow Corp has been an S corporation since formation and has never had C corporation E&P. Willow distributes $80,000 to Shareholder Q, who has a stock basis of $60,000. How is the distribution treated?',
 '["$80,000 dividend", "$60,000 tax-free, $20,000 capital gain", "$80,000 tax-free", "$60,000 dividend, $20,000 capital gain"]'::jsonb,
 1,
 'For S corporations with no accumulated E&P, distributions are tax-free to the extent of the shareholder''s stock basis (reducing basis), and any excess is treated as capital gain from the sale of stock. Q receives $60,000 tax-free (reducing basis to $0) and the remaining $20,000 is capital gain. There is no dividend treatment because Willow has no E&P.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Aspen Corp is an S corporation. Shareholder R lends $30,000 directly to Aspen Corp. Aspen reports an ordinary loss, and R''s share is $90,000. R''s stock basis is $50,000. How much loss can R deduct?',
 '["$80,000", "$50,000", "$30,000", "$90,000"]'::jsonb,
 0,
 'S corporation shareholders may deduct losses up to the sum of their stock basis and direct debt basis (loans from the shareholder to the corporation). R''s total basis is $50,000 (stock) + $30,000 (debt) = $80,000. R deducts $80,000 of the $90,000 loss. The remaining $10,000 is suspended and carried forward indefinitely. Stock basis is reduced first, then debt basis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Pine Corp is an S corporation. Shareholder S has stock basis of $100,000 and debt basis of $25,000. Pine reports an ordinary loss of $115,000 (all allocated to S as the sole shareholder). After applying the loss, what are S''s stock and debt basis amounts?',
 '["Stock: $0, Debt: $10,000", "Stock: $10,000, Debt: $0", "Stock: $0, Debt: $25,000", "Stock: $0, Debt: $0"]'::jsonb,
 0,
 'Losses reduce stock basis first, then debt basis. The $115,000 loss reduces stock basis from $100,000 to $0 ($100,000 absorbed), then reduces debt basis from $25,000 by the remaining $15,000 to $10,000. S deducts the full $115,000 because total basis ($125,000) exceeds the loss. Debt basis must be restored by future income before stock basis can increase.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Spruce Corp, an S corporation, wants to voluntarily revoke its S election. What percentage of shareholder consent is required?',
 '["Shareholders holding more than 50% of all shares (voting and nonvoting)", "Two-thirds of outstanding shares", "A simple majority (more than 50%) of shares", "Unanimous consent of all shareholders"]'::jsonb,
 0,
 'A voluntary revocation of an S election requires the consent of shareholders holding more than 50% of all outstanding shares, including both voting and nonvoting stock. This is a lower threshold than the initial election, which requires the consent of all shareholders. The revocation may specify a prospective effective date.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Holly Corp inadvertently terminated its S election when a nonresident alien acquired shares. Holly discovered the error six months later and the alien shareholder sold the stock back to a U.S. citizen. Under Section 1362(f), what relief is available?',
 '["No relief; the S election is permanently lost", "The IRS may treat the election as never terminated if the termination was inadvertent and corrected within a reasonable period", "Holly may re-elect S status immediately without waiting", "Holly must wait 5 years before re-electing S status"]'::jsonb,
 1,
 'Section 1362(f) provides inadvertent termination relief. If the IRS determines that the termination was inadvertent and the corporation takes steps to correct the disqualifying event within a reasonable period, the IRS may treat the S election as if it had never terminated. Holly corrected the issue by having the alien sell the stock back, supporting a relief request.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Ivy Corp is an S corporation with AAA of $75,000 and accumulated E&P of $40,000. Ivy distributes $120,000 to its sole shareholder, who has a stock basis of $90,000. How is the distribution treated?',
 '["$75,000 from AAA (tax-free), $40,000 dividend from E&P, $5,000 return of basis", "$90,000 tax-free, $30,000 capital gain", "$120,000 dividend", "$75,000 tax-free, $45,000 dividend"]'::jsonb,
 0,
 'When an S corporation has accumulated E&P, distributions follow a specific ordering: (1) AAA — $75,000, tax-free to the extent of stock basis; (2) accumulated E&P — $40,000, taxed as a dividend; (3) remaining basis — $5,000, tax-free return of capital (stock basis was $90,000 - $75,000 = $15,000 remaining, so $5,000 reduces it to $10,000). Total: $75,000 + $40,000 + $5,000 = $120,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Juniper Corp, an S corporation, pays health insurance premiums of $12,000 for its sole shareholder-employee who owns 60% of the stock. How is this amount treated?',
 '["Deductible by the corporation as a fringe benefit; excluded from the shareholder''s income", "Reported as wages on the shareholder''s W-2; deductible by the shareholder on Schedule 1 as self-employed health insurance", "Not deductible by the corporation or the shareholder", "Deductible by the corporation; taxable as a dividend to the shareholder"]'::jsonb,
 1,
 'For S corporation shareholders owning more than 2% of the stock, health insurance premiums paid by the corporation must be included in the shareholder-employee''s W-2 wages. The corporation deducts the premiums as compensation. The shareholder may then claim the self-employed health insurance deduction on their personal return (Schedule 1, line 17), effectively making it deductible above the line.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Laurel Corp, an S corporation, has ordinary income of $200,000 and makes a $50,000 charitable contribution. How is the charitable contribution reported?',
 '["Deducted at the corporate level, reducing ordinary income to $150,000", "Passed through as a separately stated item on Schedule K-1", "Subject to the 10% corporate charitable deduction limit", "Not deductible because S corporations cannot make charitable contributions"]'::jsonb,
 1,
 'Charitable contributions made by an S corporation are separately stated items that pass through to shareholders on Schedule K-1. They are not deducted at the entity level. Each shareholder applies their own individual charitable deduction limitations (typically 60% of AGI for cash contributions). This differs from C corporations, which deduct contributions at the entity level subject to a 10% limit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Hickory Corp was a C corporation that elected S status. At the conversion date, Hickory had an asset with a basis of $200,000 and FMV of $350,000. Hickory sells the asset for $400,000 in Year 4 of the S election. What is the built-in gain subject to the Section 1374 tax?',
 '["$150,000", "$0 because the recognition period expired", "$200,000", "$400,000"]'::jsonb,
 0,
 'The built-in gain recognized under Section 1374 is limited to the net unrealized built-in gain that existed at the conversion date. The built-in gain at conversion was $350,000 - $200,000 = $150,000. Even though the total gain on sale is $200,000 ($400,000 - $200,000), only $150,000 is subject to the built-in gains tax. The remaining $50,000 of post-conversion appreciation passes through tax-free at the entity level. Year 4 is within the 5-year recognition period.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Cherry Corp is a calendar-year S corporation. On March 31, Shareholder T sells her entire 50% interest to Shareholder U. Cherry has ordinary income of $400,000 for the full year. If no election is made, how much income is allocated to T?',
 '["$50,000", "$100,000", "$200,000", "$0"]'::jsonb,
 0,
 'Under the default per-share, per-day allocation method, T owned 50% of the shares for 90 days out of 365 days. T''s allocation is $400,000 x 50% x (90/365) = $49,315, which rounds to approximately $50,000. Alternatively, Cherry and the affected shareholders could elect the interim closing of the books method to allocate income based on actual results for each period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Alder Corp has been an S corporation since inception and has no accumulated E&P. Alder has AAA of $60,000. During the year, Alder reports a $90,000 ordinary loss. What is the ending AAA balance?',
 '["($30,000)", "$0", "$60,000", "($90,000)"]'::jsonb,
 0,
 'AAA is adjusted by all items that affect stock basis (income increases AAA, losses and deductions decrease AAA) except that AAA is not increased by tax-exempt income and not decreased by expenses related to tax-exempt income. The $90,000 loss reduces AAA from $60,000 to ($30,000). Unlike stock basis, AAA can go negative. Stock basis, however, cannot go below zero.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Which of the following events will cause an automatic termination of an S corporation election?',
 '["A shareholder dies and the estate becomes a shareholder", "The corporation issues preferred stock with different distribution rights", "A qualified Subchapter S trust becomes a shareholder", "The number of shareholders increases from 90 to 99"]'::jsonb,
 1,
 'An S corporation may have only one class of stock. Issuing preferred stock with different distribution or liquidation rights creates a second class of stock, which automatically terminates the S election. An estate is an eligible shareholder, a QSST is eligible, and 99 shareholders is within the 100-shareholder limit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Shareholder V has stock basis of $20,000 and debt basis of $15,000 in Poplar Corp, an S corporation. In Year 1, V''s share of ordinary loss is $30,000. In Year 2, V''s share of ordinary income is $18,000. What is V''s stock basis at the end of Year 2?',
 '["$3,000", "$13,000", "$8,000", "$18,000"]'::jsonb,
 2,
 'Year 1: The $30,000 loss reduces stock basis from $20,000 to $0 ($20,000 used), then reduces debt basis from $15,000 by the remaining $10,000 to $5,000. Year 2: Income of $18,000 must first restore debt basis from $5,000 back to $15,000 ($10,000 used), then the remaining $8,000 increases stock basis from $0 to $8,000. Debt basis must be fully restored before stock basis can increase.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'S Corporations',
 'Elm Corp, an S corporation, has two equal shareholders: Individual X and a qualified Subchapter S trust (QSST). Elm generates $180,000 of ordinary income and $20,000 of tax-exempt municipal bond interest. What amount of tax-exempt income is allocated to each shareholder?',
 '["$10,000", "$0", "$20,000", "$90,000"]'::jsonb,
 0,
 'Tax-exempt income is allocated pro rata to S corporation shareholders just like any other item, based on their ownership percentage. Each 50% shareholder receives $10,000 of tax-exempt interest ($20,000 x 50%). While the income is not taxable, it increases each shareholder''s stock basis and is relevant for AAA tracking. QSSTs are treated as S corporation eligible shareholders.',
 'medium');

-- =============================================================================
-- Partnerships (25 questions: 8 easy, 12 medium, 5 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner A contributes $50,000 cash and equipment with a fair market value of $30,000 and an adjusted basis of $20,000 to a newly formed partnership in exchange for a 40% interest. Under Section 721, what gain does A recognize?',
 '["$0", "$10,000", "$20,000", "$30,000"]'::jsonb,
 0,
 'Section 721 provides that no gain or loss is recognized by a partner or partnership when property is contributed to a partnership in exchange for a partnership interest. Unlike Section 351, there is no control requirement. A recognizes no gain regardless of the difference between FMV and basis of the contributed equipment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner B contributes land with a fair market value of $100,000 and an adjusted basis of $60,000 to a partnership. What is B''s outside basis in the partnership interest?',
 '["$60,000", "$40,000", "$80,000", "$100,000"]'::jsonb,
 0,
 'A partner''s outside basis in a partnership interest received in exchange for contributed property equals the adjusted basis of the property contributed plus any cash contributed. B''s outside basis is $60,000 (the adjusted basis of the land). The $40,000 of built-in gain is preserved in the partnership''s inside basis and will be allocated to B when the property is later sold.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'A partnership has three equal partners. The partnership earns $240,000 of ordinary business income, $30,000 of long-term capital gains, and $9,000 of tax-exempt interest. What amount of ordinary income does each partner report?',
 '["$80,000", "$90,000", "$93,000", "$86,000"]'::jsonb,
 0,
 'Each partner reports their distributive share of each separately stated item. Ordinary income: $240,000 / 3 = $80,000 per partner. Long-term capital gains ($10,000) and tax-exempt interest ($3,000) are separately stated on each partner''s K-1. These items retain their character when passed through to the individual partners.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner C receives a guaranteed payment of $75,000 from the partnership for services rendered. How is this amount treated for tax purposes?',
 '["Ordinary income to C; not deductible by the partnership", "Ordinary income to C; deductible by the partnership in computing ordinary income", "Self-employment income to C; not deductible by the partnership", "Capital gain to C; deductible by the partnership"]'::jsonb,
 1,
 'Under Section 707(c), guaranteed payments are treated as ordinary income to the receiving partner and are deductible by the partnership in computing its ordinary business income. Guaranteed payments are determined without regard to partnership income and are also subject to self-employment tax. They function similarly to salary payments but retain partnership character.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner D has an outside basis of $45,000 in a partnership. The partnership distributes $30,000 cash to D in a current (non-liquidating) distribution. What is D''s recognized gain and resulting basis?',
 '["Gain: $0; Basis: $15,000", "Gain: $0; Basis: $45,000", "Gain: $30,000; Basis: $0", "Gain: $0; Basis: $30,000"]'::jsonb,
 0,
 'Under Section 731, in a current distribution of cash, the partner recognizes gain only to the extent the cash distributed exceeds their outside basis. Since $30,000 does not exceed D''s $45,000 basis, no gain is recognized. D''s outside basis is reduced by the cash received: $45,000 - $30,000 = $15,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'What is the partnership''s inside basis in property contributed by Partner E if the property has a fair market value of $150,000 and E''s adjusted basis is $90,000?',
 '["$90,000", "$60,000", "$120,000", "$150,000"]'::jsonb,
 0,
 'Under Section 723, the partnership''s basis in contributed property (inside basis) equals the contributing partner''s adjusted basis at the time of contribution. The partnership takes a carryover basis of $90,000. The $60,000 built-in gain is preserved and must be allocated to E under Section 704(c) when the property is sold or depreciated.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'A partnership allocates 60% of profits to Partner F and 40% to Partner G. Under Section 704(b), when will this special allocation be respected for tax purposes?',
 '["Only if both partners agree in writing", "Only if the allocation matches the capital contribution ratio", "Special allocations are never permitted for partnerships", "Only if the allocation has substantial economic effect"]'::jsonb,
 3,
 'Section 704(b) provides that a partner''s distributive share is determined by the partnership agreement, but special allocations must have substantial economic effect to be respected. This means the allocation must have economic effect (affect dollar amounts received by partners) and be substantial (reasonable possibility that the allocation will substantially affect amounts received independent of tax consequences).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner H receives a current distribution of inventory with a fair market value of $40,000 and an inside basis to the partnership of $25,000. H''s outside basis before the distribution is $60,000. What is H''s basis in the distributed inventory?',
 '["$25,000", "$35,000", "$40,000", "$60,000"]'::jsonb,
 0,
 'In a current distribution, the partner''s basis in distributed property is the lesser of the partnership''s inside basis ($25,000) or the partner''s remaining outside basis ($60,000). Since $25,000 is less than $60,000, H takes a $25,000 carryover basis in the inventory. H''s outside basis is reduced to $35,000 ($60,000 - $25,000).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner J has an outside basis of $20,000. The partnership makes a current distribution of $25,000 cash to J. What is J''s recognized gain and its character?',
 '["$5,000 capital gain", "$5,000 ordinary income", "$25,000 capital gain", "$0 gain"]'::jsonb,
 0,
 'Under Section 731(a), a partner recognizes gain on a current distribution only to the extent cash distributed exceeds outside basis. J recognizes $25,000 - $20,000 = $5,000 of gain. This gain is treated as gain from the sale of the partnership interest, which is generally capital gain. J''s outside basis is reduced to $0.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner K contributes $100,000 cash to a partnership and K''s share of partnership recourse liabilities is $40,000. What is K''s outside basis?',
 '["$60,000", "$100,000", "$140,000", "$180,000"]'::jsonb,
 2,
 'A partner''s outside basis includes their cash contributions plus their share of partnership liabilities. Under Section 752, an increase in a partner''s share of partnership liabilities is treated as a cash contribution. K''s outside basis is $100,000 (cash) + $40,000 (share of recourse liabilities) = $140,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'A partnership has two equal partners and takes out a $200,000 nonrecourse loan secured by partnership property. How is the liability allocated for basis purposes?',
 '["Each partner''s basis increases by $200,000", "Nonrecourse liabilities do not affect partner basis", "Only the managing partner''s basis increases", "Each partner''s basis increases by $100,000"]'::jsonb,
 3,
 'Nonrecourse liabilities are generally allocated among partners based on their profit-sharing ratios. Since the partners share profits equally, each partner''s basis increases by $100,000 ($200,000 x 50%). This is important because it allows partners to deduct losses generated by debt-financed activities up to their share of nonrecourse debt.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'The ABC Partnership makes a guaranteed payment of $120,000 to Partner A for services. The partnership''s ordinary income before the guaranteed payment is $200,000. Profits and losses are shared equally among three partners. What is Partner A''s total income from the partnership?',
 '["$120,000", "$160,000", "$146,667", "$200,000"]'::jsonb,
 2,
 'The guaranteed payment of $120,000 is deducted from partnership ordinary income: $200,000 - $120,000 = $80,000 remaining ordinary income. This is split equally: $80,000 / 3 = $26,667 per partner. Partner A receives the guaranteed payment ($120,000) plus distributive share ($26,667) = $146,667 total income from the partnership.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner L receives a liquidating distribution from a partnership consisting solely of $50,000 cash. L''s outside basis immediately before the distribution is $70,000. What is L''s recognized gain or loss?',
 '["$20,000 capital loss", "$20,000 ordinary loss", "$0", "$50,000 capital gain"]'::jsonb,
 0,
 'In a liquidating distribution, a partner may recognize a loss only when the distribution consists solely of cash, unrealized receivables, and/or inventory, and the amount received is less than the partner''s outside basis. L receives only cash ($50,000) with a basis of $70,000, so L recognizes a $20,000 capital loss ($50,000 - $70,000). This loss is treated as a loss from the sale of the partnership interest.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner M sells her 30% partnership interest to Buyer N for $180,000. M''s outside basis is $120,000. The partnership has $50,000 of Section 751 hot assets (unrealized receivables) allocable to M''s interest. What is M''s ordinary income from the sale?',
 '["$50,000", "$0", "$60,000", "$180,000"]'::jsonb,
 0,
 'Under Section 751(a), the portion of gain attributable to hot assets (unrealized receivables and substantially appreciated inventory) is treated as ordinary income rather than capital gain. M''s total gain is $180,000 - $120,000 = $60,000. Of this, $50,000 is attributable to hot assets and is ordinary income. The remaining $10,000 is capital gain.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'A partnership makes a Section 754 election. Partner P purchases Partner Q''s interest for $300,000. Q''s share of the partnership''s inside basis in assets is $220,000. What is the Section 743(b) adjustment?',
 '["$0", "$220,000 step-up", "$80,000 step-up", "$300,000 step-up"]'::jsonb,
 2,
 'When a Section 754 election is in effect and a partnership interest is transferred, Section 743(b) provides for an adjustment to the inside basis of partnership assets with respect to the transferee partner. The adjustment equals the difference between the transferee''s outside basis ($300,000 purchase price) and their share of the partnership''s inside basis ($220,000) = $80,000 step-up.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner R receives a liquidating distribution of land with a fair market value of $90,000 and the partnership''s inside basis of $50,000. R''s outside basis before the distribution is $75,000. What is R''s basis in the land?',
 '["$50,000", "$90,000", "$75,000", "$25,000"]'::jsonb,
 2,
 'In a liquidating distribution, the partner''s basis in distributed property equals the partner''s remaining outside basis (substituted basis) rather than the property''s carryover basis. Since R''s outside basis ($75,000) differs from the partnership''s basis ($50,000), R takes a substituted basis of $75,000 in the land. R''s outside basis is reduced to $0.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner S contributes property with a built-in gain of $40,000 (FMV $100,000, basis $60,000) to a partnership. Two years later, the partnership sells the property for $110,000. Under Section 704(c), how is the gain allocated?',
 '["$50,000 equally between all partners", "$40,000 to S, remainder shared per profit ratios", "$50,000 to S", "$110,000 to S"]'::jsonb,
 1,
 'Section 704(c) requires that the $40,000 of pre-contribution built-in gain be allocated entirely to the contributing partner (S). The additional $10,000 of post-contribution appreciation ($110,000 sale price - $100,000 FMV at contribution) is allocated among all partners per their profit-sharing ratios. This prevents shifting of pre-contribution gains to other partners.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'A partnership distributes $10,000 cash and inventory with a basis of $15,000 and FMV of $25,000 in a current distribution to Partner T, whose outside basis is $30,000. What is T''s basis in the inventory?',
 '["$15,000", "$25,000", "$20,000", "$30,000"]'::jsonb,
 2,
 'In a current distribution, cash reduces basis first: $30,000 - $10,000 = $20,000 remaining. The partner''s basis in distributed property is the lesser of the partnership''s inside basis ($15,000) or the partner''s remaining outside basis ($20,000). Since $15,000 is less than $20,000, T takes a $15,000 carryover basis. T''s remaining outside basis is $20,000 - $15,000 = $5,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner U and Partner V each contribute $50,000 cash to form a partnership that borrows $100,000 on a recourse basis. U is the only partner with an obligation to pay if the partnership cannot. What is U''s outside basis?',
 '["$50,000", "$100,000", "$150,000", "$200,000"]'::jsonb,
 2,
 'Recourse liabilities are allocated to the partner who bears the economic risk of loss. Since U is the only partner obligated to pay if the partnership defaults, the entire $100,000 recourse liability is allocated to U. U''s outside basis is $50,000 (cash) + $100,000 (recourse liability) = $150,000. V''s outside basis remains $50,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'A two-person equal partnership has ordinary income of $280,000 before guaranteed payments. Partner W receives a guaranteed payment of $40,000. What is the total amount subject to self-employment tax for Partner W?',
 '["$40,000", "$80,000", "$160,000", "$280,000"]'::jsonb,
 2,
 'A general partner''s self-employment income includes their distributive share of partnership ordinary income plus guaranteed payments. After deducting the $40,000 guaranteed payment, ordinary income is $240,000, split equally: $120,000 each. W''s self-employment income is $120,000 (distributive share) + $40,000 (guaranteed payment) = $160,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner X contributes services (not property) to a partnership in exchange for a 20% capital interest worth $80,000. What are the tax consequences to X?',
 '["No income recognized under Section 721", "$80,000 capital gain", "$80,000 of income recognized only when the interest is sold", "$80,000 ordinary income"]'::jsonb,
 3,
 'Section 721 nonrecognition applies only to contributions of property (including cash), not services. When a partner receives a capital interest in exchange for services, the fair market value of that interest ($80,000) is recognized as ordinary compensation income. The partnership receives a corresponding deduction for the payment. X''s basis in the partnership interest is $80,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner Y has an outside basis of $10,000 and receives a current distribution of inventory (inside basis $8,000, FMV $20,000) and land (inside basis $12,000, FMV $30,000). What basis does Y take in each asset?',
 '["Inventory: $8,000; Land: $2,000", "Inventory: $4,000; Land: $6,000", "Inventory: $8,000; Land: $12,000", "Inventory: $20,000; Land: $30,000"]'::jsonb,
 0,
 'In a current distribution, basis is limited to the partner''s outside basis ($10,000). When multiple properties are distributed and combined inside bases ($20,000) exceed outside basis, the basis decrease is allocated first to unrealized receivables and inventory (up to their inside basis), then to other property. Inventory gets its full inside basis of $8,000. Remaining basis ($10,000 - $8,000 = $2,000) goes to the land.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'The XYZ Partnership has three equal partners. Partner Z wants to sell her interest. The partnership has the following assets: cash $60,000, accounts receivable $30,000 (basis $0), and land $90,000 (basis $75,000). What are the Section 751 hot assets?',
 '["Cash of $60,000", "Accounts receivable and land", "Land of $90,000", "Accounts receivable of $30,000"]'::jsonb,
 3,
 'Section 751 hot assets include unrealized receivables and substantially appreciated inventory. Accounts receivable with a $0 basis and $30,000 FMV are unrealized receivables — they represent income that has not yet been taxed. Land is not inventory (it is a capital asset for this partnership). Cash is never a hot asset. Z''s share of hot assets is $10,000 (1/3 of $30,000).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'A partnership makes a Section 754 election and distributes land with an inside basis of $50,000 and FMV of $80,000 to a retiring partner. The partner''s outside basis is $70,000. What is the Section 734(b) adjustment to remaining partnership assets?',
 '["$0", "$10,000 decrease", "$20,000 increase", "$30,000 increase"]'::jsonb,
 2,
 'Under Section 734(b), when a 754 election is in effect, the partnership adjusts the basis of its remaining assets by the difference between the distributed property''s inside basis and the basis it takes in the distributee''s hands. The retiring partner takes a $70,000 substituted basis (liquidating distribution). The adjustment is $70,000 - $50,000 = $20,000 increase to remaining partnership assets.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Partnerships',
 'Partner AA contributes equipment with a FMV of $60,000, adjusted basis of $40,000, and a $25,000 recourse liability to a 50-50 partnership. What is AA''s outside basis after the contribution?',
 '["$15,000", "$40,000", "$27,500", "$52,500"]'::jsonb,
 2,
 'AA''s initial outside basis is the adjusted basis of contributed property ($40,000). The liability assumed by the partnership is treated as a distribution of cash to AA, reducing basis by $25,000. However, AA''s 50% share of the partnership''s recourse liability increases basis by $12,500. Net basis: $40,000 - $25,000 + $12,500 = $27,500.',
 'medium');

-- =============================================================================
-- Legal Duties and Responsibilities (22 questions: 7 easy, 11 medium, 4 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Under common law, what is the standard of care a CPA owes to a client when performing professional services?',
 '["Absolute guarantee of accuracy", "Strict liability for all errors", "Best efforts with no liability for honest mistakes", "Due professional care and competence"]'::jsonb,
 3,
 'A CPA owes a client the duty of due professional care, which means performing services with the level of skill and competence that a reasonable CPA would exercise under similar circumstances. This is not a guarantee of perfection but rather a standard of professional competence. Failure to meet this standard constitutes negligence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'A CPA negligently prepares a tax return, causing the client to underpay taxes and incur penalties. Under which legal theory can the client most likely recover damages?',
 '["Fraud", "Strict liability", "Breach of contract", "Constructive fraud"]'::jsonb,
 2,
 'The client can sue for breach of contract because the CPA had an engagement agreement (express or implied) to prepare the tax return competently. Negligent preparation breaches this duty. The client may also have a negligence tort claim. Fraud requires intentional misrepresentation, and strict liability does not apply to professional services.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Under the Ultramares doctrine, to whom does an accountant owe a duty of care in a negligence action?',
 '["Any person who relies on the financial statements", "Only those in privity of contract with the accountant", "All foreseeable third parties", "Government regulators only"]'::jsonb,
 1,
 'The Ultramares doctrine (from the landmark 1931 case Ultramares Corp. v. Touche) limits an accountant''s liability for negligence to those in privity of contract (the client) or near-privity. This is the most restrictive standard and was designed to prevent accountants from being liable to an indeterminate class of persons for an indeterminate amount.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Under the Restatement (Second) of Torts approach, an accountant may be liable for negligence to which group of third parties?',
 '["Only those in privity of contract", "All reasonably foreseeable users", "Foreseen users and foreseen classes of users", "Only government agencies"]'::jsonb,
 2,
 'The Restatement approach expands liability beyond privity to include foreseen users — specific third parties or a limited class of third parties the accountant knows will rely on the work. This is a middle-ground approach between Ultramares (privity only) and the reasonably foreseeable user standard (broadest). Many states follow this approach.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'What must a plaintiff prove to establish a claim of actual fraud against a CPA?',
 '["Negligent misrepresentation of a material fact", "A breach of the engagement letter terms", "Failure to follow GAAS in conducting the audit", "An intentional misrepresentation of a material fact relied upon by the plaintiff causing damages"]'::jsonb,
 3,
 'Actual fraud requires proving: (1) a misrepresentation of a material fact, (2) made with knowledge of its falsity or reckless disregard for the truth (scienter), (3) with intent to induce reliance, (4) justifiable reliance by the plaintiff, and (5) resulting damages. This is a higher burden than negligence because it requires proving intent.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Section 7525 of the Internal Revenue Code provides a privilege for tax advice. To whom does this privilege apply?',
 '["Only licensed attorneys", "Federally authorized tax practitioners including CPAs and enrolled agents", "Any person who provides tax advice", "Only CPAs with a tax specialization"]'::jsonb,
 1,
 'Section 7525 extends a limited confidentiality privilege to communications between a taxpayer and a federally authorized tax practitioner (CPAs, enrolled agents, enrolled actuaries, and attorneys) to the extent the communication would be privileged if between a taxpayer and attorney. The privilege applies only to tax advice (not tax return preparation) and only in noncriminal proceedings.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'A CPA firm performs an audit and issues an unqualified opinion. The firm was negligent but not fraudulent. A bank that was not known to the CPA firm relied on the audited statements and suffered losses. Under the Ultramares doctrine, can the bank recover from the CPA firm?',
 '["Yes, because the bank reasonably relied on the statements", "Yes, because the CPA firm was negligent", "No, because the bank is not in privity with the CPA firm", "No, because the bank should have performed its own investigation"]'::jsonb,
 2,
 'Under Ultramares, the bank cannot recover for negligence because it is not in privity of contract with the CPA firm. The bank was not a party to the engagement and was not known to the auditor. If the CPA had committed fraud, the bank could recover regardless of privity. This illustrates why the applicable third-party liability standard matters significantly in accountant malpractice cases.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Under Section 6694(a), what is the penalty for a tax return preparer who takes an undisclosed position that lacks substantial authority?',
 '["$250 or 50% of the income derived, whichever is greater", "$5,000 or 75% of the income derived, whichever is greater", "$1,000 or 50% of the income derived, whichever is greater", "$10,000 per return"]'::jsonb,
 2,
 'Section 6694(a) imposes a penalty of the greater of $1,000 or 50% of the income derived by the preparer for an unreasonable position. A position must have substantial authority to avoid the penalty, or the position must be disclosed and have a reasonable basis. This encourages preparers to ensure that tax positions have adequate legal support.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Under Section 6694(b), what is the penalty for a tax return preparer who engages in willful or reckless conduct?',
 '["$1,000 or 50% of income derived", "$10,000 flat penalty", "$5,000 or 75% of income derived, whichever is greater", "$25,000 or 100% of income derived"]'::jsonb,
 2,
 'Section 6694(b) imposes a penalty of the greater of $5,000 or 75% of the income derived by the preparer for willful understatement or reckless disregard of rules and regulations. This is a more severe penalty than the 6694(a) penalty and applies when the preparer''s conduct goes beyond mere negligence to intentional or reckless wrongdoing.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'A CPA prepared audited financial statements. A supplier who was identified by name during the engagement as a user of the statements suffered a loss due to the CPA''s negligence. Under the Restatement approach, can the supplier recover?',
 '["No, because the supplier was not a party to the engagement", "No, because negligence claims require privity", "Yes, but only if the CPA committed fraud", "Yes, because the supplier was a specifically foreseen user of the statements"]'::jsonb,
 3,
 'Under the Restatement approach, a CPA is liable for negligence to foreseen users — specifically identified third parties or members of a limited class the accountant knows will rely on the work. The supplier was identified by name during the engagement, making them a specifically foreseen user who can recover for the CPA''s negligence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Which of the following defenses is NOT available to a CPA in a negligence lawsuit brought by a client?',
 '["Contributory negligence by the client", "Lack of duty owed to the plaintiff", "Compliance with GAAS and GAAP", "The CPA''s work was reviewed by another CPA"]'::jsonb,
 3,
 'Having work reviewed by another CPA does not excuse negligence — it is not a recognized defense. Valid defenses include: contributory negligence (the client''s own negligence contributed to the loss), lack of duty (no engagement existed), compliance with professional standards (GAAS/GAAP followed properly), and lack of causation. Each CPA remains individually responsible for their own professional competence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Under the work product doctrine, which of the following CPA documents is most likely protected from discovery in litigation?',
 '["The client''s general ledger", "The CPA''s audit workpapers prepared in the ordinary course of the engagement", "A memorandum prepared by the CPA in anticipation of litigation analyzing the client''s legal exposure", "The CPA''s engagement letter with the client"]'::jsonb,
 2,
 'The work product doctrine protects documents and materials prepared in anticipation of litigation by or for a party. A legal exposure memorandum prepared in anticipation of litigation qualifies. Regular audit workpapers, the general ledger, and engagement letters are prepared in the ordinary course of business and are generally not protected by the work product doctrine.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'A CPA knowingly misstates income on a client''s tax return. Which of the following penalties may apply to the CPA under Circular 230?',
 '["Censure, suspension, or disbarment from practice before the IRS", "Criminal imprisonment only", "Revocation of the CPA''s state license only", "No penalty if the client directed the misstatement"]'::jsonb,
 0,
 'Under Treasury Circular 230, a practitioner who engages in disreputable conduct (including knowingly making false statements on tax returns) may be censured, suspended, or disbarred from practice before the IRS. These are administrative sanctions separate from any criminal penalties or state licensing actions. Following a client''s instructions does not excuse the CPA from responsibility.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'The Section 7525 tax practitioner privilege does NOT apply in which of the following situations?',
 '["Federal tax advice given by a CPA in noncriminal proceedings", "Tax advice given by an enrolled agent regarding an IRS audit", "Written tax shelter advice provided to a corporate client", "Tax advice given by a CPA in a federal court proceeding"]'::jsonb,
 2,
 'Section 7525 privilege does not apply to written communications regarding tax shelters. Congress specifically excluded tax shelter advice from the privilege to prevent abusive tax shelter promotion from being hidden behind privilege claims. The privilege also does not apply in criminal matters or state tax proceedings.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Constructive fraud differs from actual fraud in that constructive fraud does NOT require proof of which element?',
 '["Material misrepresentation", "Reliance by the plaintiff", "Scienter (intent to deceive)", "Damages suffered by the plaintiff"]'::jsonb,
 2,
 'Constructive fraud does not require proof of scienter (intent to deceive or knowledge of falsity). Instead, it involves a misrepresentation made with reckless disregard for the truth, or a breach of fiduciary duty. The other elements (material misrepresentation, reliance, and damages) must still be proven. Constructive fraud is sometimes referred to as gross negligence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'A CPA performed an audit and failed to detect a material fraud that a reasonably competent auditor would have found. Several investors who were not known to the CPA relied on the statements and suffered losses. In a jurisdiction following the reasonably foreseeable user standard, what is the most likely outcome?',
 '["The CPA is liable because investors are reasonably foreseeable users of audited financial statements", "The CPA is not liable because the investors were not in privity", "The CPA is liable only if actual fraud is proven", "The CPA is not liable because the CPA did not commit the fraud"]'::jsonb,
 0,
 'Under the reasonably foreseeable user standard (the broadest approach), a CPA is liable for negligence to any person whom the CPA could reasonably foresee would rely on the work product. Investors are reasonably foreseeable users of audited financial statements. This is the most plaintiff-friendly standard and is followed in some states.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Under Circular 230, what is the minimum standard a tax return preparer must meet to sign a return position that is not disclosed?',
 '["Reasonable basis", "Realistic possibility of success", "Substantial authority", "More likely than not"]'::jsonb,
 2,
 'Under Circular 230, an undisclosed position on a tax return must have substantial authority (approximately a 40% likelihood of being sustained on the merits). If the position is disclosed, the lower reasonable basis standard (approximately 20%) applies. The more-likely-than-not standard (over 50%) applies to tax shelters and reportable transactions.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'A CPA is engaged to prepare a compilation report. The CPA notices that the inventory figure appears significantly overstated but the client refuses to correct it. What should the CPA do?',
 '["Issue the compilation report with no modification", "Issue a qualified compilation report", "Withdraw from the engagement and consider whether to inform users", "Perform audit procedures on the inventory balance"]'::jsonb,
 2,
 'When a CPA performing a compilation becomes aware that the financial statements are materially misstated and the client refuses to make corrections, the CPA should withdraw from the engagement. The CPA should also consider whether to inform known users that the statements should not be relied upon. A compilation does not require audit procedures, and there is no qualified compilation report.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'Under Circular 230, a CPA who practices before the IRS must meet which of the following requirements regarding continuing education?',
 '["No continuing education is required for CPAs", "36 hours of continuing education every 3 years", "72 hours of continuing education every 3 years, including 2 hours of ethics", "40 hours of continuing education annually"]'::jsonb,
 2,
 'Circular 230 requires practitioners (including CPAs) to complete 72 hours of continuing education every 3 years, with a minimum of 16 hours per year. At least 2 of the 72 hours must cover ethics. This ensures that tax practitioners maintain current knowledge of tax law changes and professional standards.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'A CPA discovers during a current engagement that the prior year''s tax return contained an error that understated the client''s tax liability by $15,000. The client refuses to amend the return. What is the CPA''s obligation under Circular 230?',
 '["Report the error directly to the IRS", "File an amended return on behalf of the client without consent", "Take no action because the prior-year return is not the CPA''s responsibility", "Advise the client of the error and the consequences of not correcting it, then consider whether to continue the engagement"]'::jsonb,
 3,
 'Under Circular 230 and AICPA standards, a CPA who discovers an error in a prior return must promptly advise the client of the error and recommend corrective action. The CPA cannot report to the IRS without client consent (except in rare circumstances). If the client refuses to correct the error, the CPA should consider whether to continue the professional relationship.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'A CPA is sued by a client for negligence in preparing financial statements. The CPA can establish that the client provided false information that directly caused the loss. Which defense is most applicable?',
 '["Statute of limitations", "Lack of privity", "Contributory negligence", "Compliance with GAAP"]'::jsonb,
 2,
 'Contributory negligence is the strongest defense here. If the client provided false information that directly caused the errors in the financial statements and the resulting loss, the client''s own negligence contributed to the damages. In many jurisdictions, contributory negligence can reduce or eliminate the CPA''s liability depending on whether the jurisdiction follows contributory negligence or comparative fault rules.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Legal Duties and Responsibilities',
 'A CPA firm issues an unqualified audit opinion on financial statements that contain a material misstatement due to fraud. An investor who purchased stock in reliance on the statements sues under Section 10(b) and Rule 10b-5 of the Securities Exchange Act of 1934. What must the investor prove regarding the CPA''s mental state?',
 '["Negligence", "Strict liability — no mental state required", "Gross negligence only", "Recklessness or intentional misconduct (scienter)"]'::jsonb,
 3,
 'Under Section 10(b) and Rule 10b-5 of the Securities Exchange Act of 1934, private plaintiffs must prove scienter — an intent to deceive, manipulate, or defraud. Most courts interpret this to include reckless conduct (severe recklessness amounting to a conscious disregard of risk). Mere negligence is insufficient under federal securities law. This is a higher burden than common-law negligence claims.',
 'hard');

-- =============================================================================
-- Debtor-Creditor Relationships (22 questions: 7 easy, 11 medium, 4 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Under UCC Article 9, what three elements must exist for a security interest to attach to collateral?',
 '["Filing, possession, and control", "Value given, debtor rights in collateral, and authenticated security agreement", "Signed promissory note, collateral description, and notarization", "Filing a financing statement, giving notice, and recording the lien"]'::jsonb,
 1,
 'Attachment of a security interest under Article 9 requires three elements: (1) value has been given by the secured party (e.g., a loan), (2) the debtor has rights in the collateral, and (3) the debtor has authenticated a security agreement that describes the collateral. Attachment gives the creditor rights against the debtor in the collateral.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'What is the primary method of perfecting a security interest under UCC Article 9?',
 '["Filing a financing statement (UCC-1) with the appropriate state office", "Obtaining a court order", "Publishing notice in a local newspaper", "Recording the security agreement with the county recorder"]'::jsonb,
 0,
 'The primary method of perfection under Article 9 is filing a financing statement (Form UCC-1) with the Secretary of State or other designated filing office. Filing provides public notice of the security interest to other creditors. Alternative perfection methods include possession of the collateral or control (for deposit accounts, investment property, and letter-of-credit rights).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'In a Chapter 7 bankruptcy, what is the purpose of the means test?',
 '["To determine whether the debtor qualifies for Chapter 7 liquidation", "To calculate the debtor''s exempt property", "To determine the priority of creditor claims", "To establish the debtor''s repayment plan"]'::jsonb,
 0,
 'The means test was introduced by the Bankruptcy Abuse Prevention and Consumer Protection Act of 2005 to determine whether an individual debtor''s Chapter 7 filing is presumed to be an abuse. If the debtor''s income exceeds the state median income and they have sufficient disposable income, they may be required to file under Chapter 13 instead.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'When a debtor files a bankruptcy petition, which of the following occurs automatically?',
 '["All debts are immediately discharged", "An automatic stay prohibiting most collection activities takes effect", "The debtor''s property is immediately sold", "All liens on the debtor''s property are removed"]'::jsonb,
 1,
 'The filing of a bankruptcy petition triggers an automatic stay under Section 362 of the Bankruptcy Code. The automatic stay immediately halts most collection efforts, lawsuits, foreclosures, wage garnishments, and other actions against the debtor or the debtor''s property. The stay provides the debtor breathing room to reorganize or liquidate in an orderly fashion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Which of the following debts is generally NOT dischargeable in bankruptcy?',
 '["Credit card debt", "Medical bills", "Student loans", "Utility bills"]'::jsonb,
 2,
 'Student loans are generally not dischargeable in bankruptcy unless the debtor can prove undue hardship (which is an extremely difficult standard to meet). Other non-dischargeable debts include certain taxes, child support, alimony, debts obtained through fraud, and fines or penalties owed to government units. Credit card debt, medical bills, and utility bills are typically dischargeable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'In a Chapter 7 bankruptcy, what is the correct priority order for distributing assets to unsecured creditors?',
 '["General unsecured creditors, then wage claims, then tax claims", "Administrative expenses, then domestic support obligations, then wage claims", "Domestic support obligations, then administrative expenses, then wage claims", "Secured creditors, then general unsecured creditors, then priority claims"]'::jsonb,
 2,
 'The correct priority order under Section 507 of the Bankruptcy Code is: (1) domestic support obligations (alimony, child support), (2) administrative expenses (trustee fees, attorney fees for the estate), (3) involuntary bankruptcy gap claims, (4) employee wages (up to a specified limit), (5) employee benefit plan contributions, (6) grain farmers and fishermen, (7) consumer deposits, (8) tax claims, (9) FDIC claims, (10) personal injury claims from DUI. General unsecured creditors come after all priority claims.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'A surety agrees to guarantee payment of a debtor''s $100,000 loan to a bank. The debtor defaults, and the surety pays the bank $100,000. What right does the surety have against the debtor?',
 '["No rights — the surety assumed the risk", "Right of subrogation — the surety steps into the bank''s shoes", "Right to collect double the amount paid", "Right to recover only 50% of the amount paid"]'::jsonb,
 1,
 'When a surety pays the creditor, the surety obtains the right of subrogation — meaning the surety steps into the creditor''s legal position and can pursue the debtor for reimbursement. The surety also has a right of reimbursement (direct right to recover from the debtor) and, if there are co-sureties, a right of contribution from them.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Bank A files a UCC-1 financing statement on January 15 covering Debtor''s inventory. Bank B files a UCC-1 on March 1 covering the same inventory. Debtor defaults on both loans. Who has priority?',
 '["Bank A, because it filed first", "Bank B, because it filed more recently", "Both banks share equally", "The bank with the larger loan amount"]'::jsonb,
 0,
 'Under Article 9''s general priority rule, conflicting perfected security interests rank according to priority in time of filing or perfection — whichever is earlier. Bank A filed first (January 15), so Bank A has priority over Bank B (March 1) in the same collateral. This is known as the first-to-file-or-perfect rule.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Seller sells a commercial refrigerator to Restaurant on credit, retaining a security interest. Seller perfects the security interest within 20 days of delivery. Bank had previously filed a financing statement covering all of Restaurant''s equipment. Who has priority in the refrigerator?',
 '["Bank, because it filed first", "Seller, because Seller has a purchase money security interest (PMSI) in equipment", "They share equally", "Neither, because the interests conflict"]'::jsonb,
 1,
 'A purchase money security interest (PMSI) in equipment has superpriority over a prior-perfected security interest if the PMSI is perfected within 20 days after the debtor receives possession of the equipment. Seller perfected within 20 days, so Seller''s PMSI in the refrigerator has priority over Bank''s earlier-filed blanket lien on equipment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Which of the following is a valid defense available to a surety against the creditor?',
 '["The debtor was a minor when the contract was formed", "The creditor materially modified the terms of the principal obligation without the surety''s consent", "The creditor extended the time for payment without changing the terms", "The debtor filed for bankruptcy"]'::jsonb,
 1,
 'A material modification of the underlying obligation without the surety''s consent releases the surety from liability to the extent of any loss caused by the modification. Common suretyship defenses include: fraud by the creditor, material alteration of the contract, release of collateral, and impairment of the surety''s subrogation rights. The debtor being a minor is typically the debtor''s defense, not the surety''s.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Debtor files a Chapter 7 petition on June 1, 2025. Debtor owns a home worth $350,000 with a $280,000 mortgage. The state homestead exemption is $50,000. How much equity is available to unsecured creditors?',
 '["$0", "$70,000", "$50,000", "$20,000"]'::jsonb,
 3,
 'The debtor''s equity in the home is $350,000 - $280,000 = $70,000. The homestead exemption protects $50,000 of that equity. The remaining $20,000 of non-exempt equity is available to the bankruptcy trustee to distribute to unsecured creditors. The mortgage holder retains its secured claim against the property.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Which chapter of the Bankruptcy Code is specifically designed for individuals with regular income who want to repay their debts over a 3-to-5-year period?',
 '["Chapter 7", "Chapter 9", "Chapter 11", "Chapter 13"]'::jsonb,
 3,
 'Chapter 13 is the wage earner''s plan, designed for individuals with regular income who wish to keep their property and repay debts over a 3-to-5-year period under a court-approved plan. Eligibility requires secured debts below $2,750,000 and unsecured debts below $2,750,000 (as adjusted). Chapter 7 is liquidation, Chapter 9 is for municipalities, and Chapter 11 is reorganization.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'A creditor made a loan to a debtor that was induced by the debtor''s fraudulent financial statements. The debtor later files Chapter 7 bankruptcy. Is the debt dischargeable?',
 '["Yes, all debts are discharged in Chapter 7", "No, debts obtained through fraud or false pretenses are not dischargeable", "Yes, unless the creditor files a separate lawsuit", "No, but only if the fraud amount exceeds $10,000"]'::jsonb,
 1,
 'Under Section 523(a)(2) of the Bankruptcy Code, debts obtained by false pretenses, false representation, or actual fraud are excepted from discharge. The creditor must file a timely adversary proceeding in the bankruptcy court to have the specific debt declared non-dischargeable. The debtor''s use of fraudulent financial statements to induce the loan qualifies.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Under UCC Article 9, which of the following types of collateral may be perfected by the secured party taking possession?',
 '["Accounts receivable", "General intangibles", "Negotiable instruments", "Deposit accounts"]'::jsonb,
 2,
 'Under Article 9, perfection by possession is available for tangible collateral and negotiable instruments. Negotiable instruments (promissory notes, checks) can be perfected by the secured party taking physical possession. Accounts receivable and general intangibles are intangible and cannot be possessed. Deposit accounts can only be perfected by control, not possession.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Sureties A and B are co-sureties on a $120,000 obligation. Surety A agreed to cover up to $80,000, and Surety B agreed to cover up to $40,000. The debtor defaults on the full $120,000, and Surety A pays the entire $120,000 to the creditor. How much can Surety A recover from Surety B?',
 '["$40,000", "$60,000", "$80,000", "$120,000"]'::jsonb,
 0,
 'Co-sureties have a right of contribution from each other based on their proportional liability. Surety A''s maximum is $80,000 and Surety B''s maximum is $40,000. Surety B''s proportional share is $40,000/$120,000 = 1/3 of the total obligation. B''s share of the $120,000 default is $40,000 (limited to B''s maximum). Surety A can recover $40,000 from Surety B.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'A debtor transferred a vacation home worth $200,000 to a family member for $10,000 six months before filing Chapter 7 bankruptcy. The trustee seeks to recover the property. What is the basis for the trustee''s action?',
 '["Equitable subordination", "Preference payment", "Fraudulent transfer", "Lien avoidance"]'::jsonb,
 2,
 'The transfer is a fraudulent transfer (also called fraudulent conveyance) because it was made for less than reasonably equivalent value and the debtor was insolvent or became insolvent as a result. Under Section 548, the trustee can avoid transfers made within 2 years before the filing date if they were made with actual intent to defraud or without reasonably equivalent value while insolvent.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'A debtor paid $15,000 to a trade creditor on an existing $15,000 debt 60 days before filing a Chapter 7 petition. The payment was made in the ordinary course of business. Can the trustee recover this as a preference?',
 '["Yes, because it was made within 90 days of filing", "No, because ordinary course of business payments are excepted from preference recovery", "Yes, because the amount exceeds $5,000", "No, because the debtor was solvent at the time of payment"]'::jsonb,
 1,
 'Under Section 547(c)(2), a transfer made in the ordinary course of business (or financial affairs) of the debtor and the creditor is excepted from preference avoidance. Although the payment meets the general preference requirements (to a creditor, for an antecedent debt, within 90 days, while insolvent, giving more than in Chapter 7), the ordinary course defense applies.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Debtor owes $50,000 to an unsecured creditor. The debtor also owes $8,000 in federal income taxes from 3 years ago and $12,000 in employee wages earned within 180 days of the bankruptcy filing. In a Chapter 7 distribution, which claim is paid first?',
 '["The unsecured creditor''s $50,000 claim", "The $8,000 tax claim", "The $12,000 wage claim", "All three are paid equally"]'::jsonb,
 2,
 'Employee wages earned within 180 days of the bankruptcy filing (up to a statutory limit per employee) are a priority claim under Section 507(a)(4), which has higher priority than tax claims under Section 507(a)(8). Tax claims have priority over general unsecured claims. The order is: wages first, then taxes, then general unsecured creditors.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Supplier holds a PMSI in inventory sold to Retailer. Under Article 9, what additional step must Supplier take to achieve superpriority over a prior-perfected secured party with a blanket lien on Retailer''s inventory?',
 '["File a UCC-1 within 20 days of delivery", "Perfect before the debtor receives the inventory and send authenticated notification to the prior-perfected party", "Obtain a court order granting superpriority", "Record the PMSI with the county recorder"]'::jsonb,
 1,
 'A PMSI in inventory has superpriority over a prior-perfected party only if: (1) the PMSI is perfected when the debtor receives possession of the inventory, and (2) the PMSI holder sends authenticated notification to the prior-perfected party before the debtor receives the inventory. This notification requirement for inventory PMSIs is more stringent than for equipment PMSIs (which only require perfection within 20 days).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'A debtor files for Chapter 11 bankruptcy reorganization. Which of the following statements about Chapter 11 is correct?',
 '["Only corporations may file Chapter 11", "The debtor typically remains in possession and operates the business during reorganization", "All creditors must consent to the reorganization plan", "The debtor must liquidate all assets within 180 days"]'::jsonb,
 1,
 'In Chapter 11, the debtor typically remains in possession (debtor-in-possession or DIP) and continues to operate the business during the reorganization process. Individuals, partnerships, and corporations can file Chapter 11. Not all creditors must consent — the plan can be confirmed through a cramdown if certain requirements are met. Chapter 11 is reorganization, not liquidation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'A creditor holds a valid, perfected security interest in a debtor''s equipment. The debtor files Chapter 7 bankruptcy. What happens to the creditor''s secured claim?',
 '["The security interest is automatically voided by the bankruptcy filing", "The creditor retains its security interest but is subject to the automatic stay", "The creditor may immediately repossess the equipment", "The security interest is subordinated to all unsecured claims"]'::jsonb,
 1,
 'A valid, perfected security interest survives bankruptcy. The secured creditor retains its lien on the collateral but must comply with the automatic stay — it cannot repossess or foreclose without court permission (relief from stay). The secured creditor is paid from the collateral''s value before unsecured creditors receive anything from that specific asset.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Debtor-Creditor Relationships',
 'Under the Bankruptcy Code, a debtor paid $25,000 to an insider (family member) on an old debt 10 months before filing a Chapter 7 petition. Can the trustee avoid this as a preference?',
 '["No, because it was outside the 90-day preference period", "No, because payments to family members are always exempt", "Yes, but only if the payment exceeded $5,000", "Yes, because the preference period for insiders extends to one year before filing"]'::jsonb,
 3,
 'Under Section 547(b)(4)(B), the preference look-back period is extended from 90 days to one year for transfers to insiders (family members, business partners, officers, directors). Since the payment was made 10 months before filing, it falls within the one-year insider preference period. The trustee can avoid the transfer and recover the $25,000 for the estate.',
 'hard');

-- =============================================================================
-- Tax-Exempt Organizations (22 questions: 7 easy, 11 medium, 4 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'Under Section 501(c)(3), which of the following is a requirement for an organization to qualify for tax-exempt status?',
 '["The organization must be organized and operated exclusively for commercial purposes", "The organization must be organized and operated exclusively for charitable, religious, educational, or similar exempt purposes", "The organization must distribute all profits to its members annually", "The organization must be incorporated in a state with no income tax"]'::jsonb,
 1,
 'Section 501(c)(3) requires that the organization be organized and operated exclusively for one or more exempt purposes: charitable, religious, educational, scientific, literary, testing for public safety, fostering amateur sports competition, or preventing cruelty to children or animals. No part of the net earnings may inure to the benefit of any private individual.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'Which IRS form must most organizations seeking Section 501(c)(3) status file to apply for recognition of tax-exempt status?',
 '["Form 990", "Form 1120", "Form 2553", "Form 1023"]'::jsonb,
 3,
 'Organizations seeking Section 501(c)(3) status must file Form 1023 (Application for Recognition of Exemption Under Section 501(c)(3)). Smaller organizations with gross receipts normally $50,000 or less and total assets of $250,000 or less may file Form 1023-EZ, a streamlined version. Form 990 is the annual information return, not the application.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'Which of the following activities would jeopardize an organization''s Section 501(c)(3) tax-exempt status?',
 '["Conducting educational seminars related to its exempt purpose", "Earning investment income from an endowment fund", "Devoting a substantial part of its activities to attempting to influence legislation", "Selling merchandise related to its exempt purpose in a gift shop"]'::jsonb,
 2,
 'A 501(c)(3) organization may not devote a substantial part of its activities to attempting to influence legislation (lobbying). While insubstantial lobbying is permitted, a substantial amount can result in loss of exempt status. Organizations may elect the Section 501(h) expenditure test, which provides specific dollar limits rather than the vague substantiality test.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A Section 501(c)(3) organization receives $50,000 in dividends from publicly traded stocks it holds in its investment portfolio. Is this income subject to unrelated business income tax (UBIT)?',
 '["Yes, all investment income is subject to UBIT", "No, dividends are specifically excluded from UBIT", "Yes, because the income is not related to the exempt purpose", "No, but only if the dividends are reinvested"]'::jsonb,
 1,
 'Dividends are specifically excluded from unrelated business taxable income under Section 512(b)(1), along with interest, annuities, royalties, and most rents from real property. These passive investment income items are not considered income from a trade or business even though they are unrelated to the exempt purpose. This exclusion encourages exempt organizations to maintain investment portfolios.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'What is the annual information return that most tax-exempt organizations must file with the IRS?',
 '["Form 1040", "Form 1120", "Form 990", "Form 1065"]'::jsonb,
 2,
 'Most tax-exempt organizations must file Form 990 (Return of Organization Exempt From Income Tax) annually. Small organizations with gross receipts normally $50,000 or less may file Form 990-N (e-Postcard). Private foundations file Form 990-PF regardless of size. Churches and certain religious organizations are generally exempt from the filing requirement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A Section 501(c)(3) organization participates in political campaign activity by endorsing a candidate for public office. What is the consequence?',
 '["A warning letter from the IRS", "Loss of tax-exempt status", "A 10% excise tax on the endorsement costs", "No consequence if done on an insubstantial basis"]'::jsonb,
 1,
 'Section 501(c)(3) organizations are absolutely prohibited from participating or intervening in political campaigns on behalf of (or in opposition to) any candidate for public office. Unlike lobbying (where insubstantial amounts are permitted), there is a complete ban on political campaign activity. Violation results in loss of tax-exempt status and potentially an excise tax under Section 4955.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'For unrelated business income tax purposes, which three conditions must be met for income to be subject to UBIT?',
 '["Trade or business, regularly carried on, and not substantially related to the exempt purpose", "Profitable activity, conducted within the U.S., and exceeding $1,000", "Any income over $25,000, regardless of source or relation to exempt purpose", "Business activity, conducted by employees, and generating over $10,000"]'::jsonb,
 0,
 'Income is subject to UBIT only if all three conditions are met: (1) it is from a trade or business, (2) the trade or business is regularly carried on, and (3) the trade or business is not substantially related to the organization''s exempt purpose. If any one condition is not met, the income is not subject to UBIT.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A university (501(c)(3) organization) operates a bookstore on campus that sells textbooks to students and general-interest books to the public. Which portion of the bookstore revenue is subject to UBIT?',
 '["All bookstore revenue", "Only revenue from textbook sales", "Only revenue from general-interest book sales to the public if the activity is regularly carried on and not substantially related", "None, because bookstores are always exempt"]'::jsonb,
 2,
 'Textbook sales to students are substantially related to the university''s educational purpose and are not subject to UBIT. General-interest book sales to the public may be subject to UBIT if the activity constitutes a regularly carried on trade or business that is not substantially related to education. The analysis requires examining whether the sales serve the exempt purpose or are primarily commercial.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A Section 501(c)(3) charity operates a thrift store staffed entirely by volunteers. The store sells donated clothing to the public. Is the thrift store income subject to UBIT?',
 '["Yes, because retail sales are always subject to UBIT", "No, because the activity is staffed by volunteers and qualifies for the volunteer labor exception", "Yes, because the goods are sold to the general public", "No, but only if the store earns less than $50,000 annually"]'::jsonb,
 1,
 'Section 513(a)(1) provides an exception from UBIT for any trade or business in which substantially all the work is performed by volunteers without compensation. Since the thrift store is staffed entirely by unpaid volunteers, it qualifies for this exception regardless of the amount of revenue generated. Other UBIT exceptions include the convenience exception and the donated goods exception.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A private foundation has net investment income of $500,000 for the year. What excise tax is imposed on this income?',
 '["No excise tax on private foundations", "10% of net investment income", "2% of net investment income", "1.39% of net investment income"]'::jsonb,
 3,
 'Private foundations are subject to an excise tax of 1.39% on net investment income under Section 4940 (as amended by the Taxpayer Certainty and Disaster Tax Relief Act of 2019, which replaced the prior two-tier 2%/1% rate). For this foundation, the tax is $500,000 x 1.39% = $6,950. This tax applies to interest, dividends, rents, royalties, and net capital gains.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A private foundation is required to distribute a minimum amount for charitable purposes each year. What is the general minimum distribution requirement?',
 '["1% of net assets", "25% of net investment income", "10% of gross revenue", "5% of the fair market value of non-charitable-use assets"]'::jsonb,
 3,
 'Under Section 4942, private foundations must distribute at least 5% of the fair market value of their non-charitable-use assets annually for charitable purposes (qualifying distributions). Failure to meet this minimum distribution requirement results in an initial excise tax of 30% of the undistributed amount, with a 100% additional tax if not corrected.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'The founder of a private foundation sells a building to the foundation for $500,000, which is the property''s fair market value. Is this transaction subject to the self-dealing rules?',
 '["No, because the price is at fair market value", "No, because sales of real property are exempt from self-dealing rules", "Yes, but only if the price exceeds fair market value", "Yes, Section 4941 prohibits virtually all transactions between disqualified persons and private foundations regardless of fairness"]'::jsonb,
 3,
 'Section 4941 imposes strict prohibitions on self-dealing transactions between private foundations and disqualified persons (founders, managers, substantial contributors, and their family members). Unlike the arm''s length standard used elsewhere in tax law, the private foundation self-dealing rules are per se violations — the fairness of the price is irrelevant. The initial tax is 10% of the amount involved.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A Section 501(c)(3) museum borrows $2,000,000 to purchase an office building, renting out the space to commercial tenants. The rental income is $240,000 per year. How is this income treated for UBIT purposes?',
 '["Fully excluded from UBIT because real property rents are exempt", "Subject to UBIT only if the tenants are for-profit businesses", "Excluded from UBIT because the museum is tax-exempt", "Subject to UBIT as debt-financed income under Section 514"]'::jsonb,
 3,
 'While rental income from real property is generally excluded from UBIT under Section 512(b)(3), this exclusion does not apply to debt-financed income. Under Section 514, when property is acquired or improved with borrowed funds, the income is subject to UBIT in proportion to the outstanding debt. The museum must compute the debt-financed portion and include it in unrelated business taxable income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A Section 501(c)(3) hospital''s exempt purpose includes promoting health for the benefit of the community. The hospital operates a pharmacy that sells prescription drugs to hospital patients and the general public. Which sales are subject to UBIT?',
 '["All pharmacy sales", "Only sales to hospital patients", "Only sales to the general public, if regularly carried on", "No pharmacy sales because the hospital is tax-exempt"]'::jsonb,
 2,
 'Pharmacy sales to hospital patients are substantially related to the hospital''s exempt purpose of promoting health. However, pharmacy sales to the general public (walk-in customers not receiving hospital services) may constitute an unrelated trade or business because they are not substantially related to the hospital''s exempt healthcare purpose. The related/unrelated distinction turns on who the customer is and the connection to exempt activities.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A private foundation owns 30% of the voting stock of a for-profit corporation. Under the excess business holdings rules of Section 4943, what is the general permitted holding?',
 '["No limit on ownership of for-profit businesses", "50% of voting stock", "100%, provided all profits are used for charitable purposes", "20% of voting stock, reduced by disqualified persons'' holdings"]'::jsonb,
 3,
 'Section 4943 limits a private foundation''s combined holdings with disqualified persons to 20% of the voting stock of a corporation (or a 35% limit if it can demonstrate that unrelated parties have effective control). If the foundation and disqualified persons together hold 30% and the foundation alone holds 30%, it exceeds the 20% limit and must divest excess holdings or face an initial 10% excise tax.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'Which of the following organizations is NOT required to file Form 990 or Form 990-EZ?',
 '["A private foundation with $5,000,000 in assets", "A public charity with $500,000 in gross receipts", "A church with $2,000,000 in gross receipts", "A tax-exempt social welfare organization"]'::jsonb,
 2,
 'Churches and certain religious organizations are specifically exempt from the Form 990 filing requirement, regardless of their size or gross receipts. Private foundations must file Form 990-PF. Public charities file Form 990 or 990-EZ based on their size. Social welfare organizations under Section 501(c)(4) must file Form 990.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'An exempt organization has unrelated business taxable income of $800 for the year. Must it file Form 990-T and pay UBIT?',
 '["Yes, all UBIT must be reported", "Yes, but only if the organization is a private foundation", "No, because UBIT under $5,000 is exempt", "No, because there is a $1,000 specific deduction for UBIT"]'::jsonb,
 3,
 'Section 512(b)(12) provides a $1,000 specific deduction when computing unrelated business taxable income. Since the organization''s gross UBIT of $800 is less than the $1,000 specific deduction, the net UBIT is $0. An organization must file Form 990-T only if gross unrelated business income is $1,000 or more. With only $800, no filing is required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A nonprofit organization received its 501(c)(3) determination letter in 2023. In 2025, the organization spends 40% of its total expenditures on direct lobbying activities. What is the most likely consequence?',
 '["The IRS will issue a warning letter", "Loss of tax-exempt status because lobbying activity is substantial", "A 25% excise tax on the lobbying expenditures", "No consequence because 40% is not considered substantial"]'::jsonb,
 1,
 'Spending 40% of total expenditures on lobbying is clearly substantial and would result in revocation of 501(c)(3) status. While the Code does not define exactly what percentage constitutes substantial, courts and the IRS have generally found that 5% or less is insubstantial while amounts approaching or exceeding 15-20% are considered substantial. At 40%, loss of exemption is virtually certain.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A Section 501(c)(3) organization pays its executive director a salary of $900,000 per year. Comparable executives at similar organizations earn $300,000-$400,000. What potential excise tax applies?',
 '["No excise tax; compensation is a management decision", "Section 4958 intermediate sanctions: 25% excise tax on the excess benefit to the director, plus potential 200% tax if not corrected", "Section 4941 self-dealing tax of 10%", "Section 4945 taxable expenditure penalty"]'::jsonb,
 1,
 'Section 4958 imposes intermediate sanctions (excise taxes) on excess benefit transactions between a 501(c)(3) or 501(c)(4) organization and disqualified persons. The excess compensation ($500,000-$600,000 above comparable levels) is an excess benefit. The disqualified person (director) owes a 25% initial tax on the excess. If not corrected, a 200% additional tax applies. Organization managers who knowingly approve the excess may also owe a 10% tax.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A private foundation makes a grant to an individual for travel and study. Under what circumstances is this grant not a taxable expenditure under Section 4945?',
 '["The individual is a family member of the foundation''s donor", "The grant is awarded on an objective and nondiscriminatory basis pursuant to an IRS-approved procedure", "The grant amount is less than $5,000", "Individual grants by private foundations are always taxable expenditures"]'::jsonb,
 1,
 'Under Section 4945(g), grants to individuals for travel, study, or similar purposes are not taxable expenditures if they are awarded on an objective and nondiscriminatory basis pursuant to a procedure approved in advance by the IRS. The foundation must demonstrate that grants are based on merit, awarded through a competitive process, and supervised to ensure funds are used for the intended purpose.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'An exempt organization operates a gift shop that sells items related to its museum exhibits (books, replicas, educational materials). Is the gift shop income subject to UBIT?',
 '["Yes, because it is a commercial retail operation", "No, because the sale of items substantially related to the exempt purpose is not unrelated business income", "Yes, but only for items priced over $50", "No, but only if the gift shop is staffed by volunteers"]'::jsonb,
 1,
 'Gift shop sales of items that are substantially related to the museum''s exempt educational purpose — such as books about exhibits, educational replicas, and materials that enhance visitors'' understanding — are not subject to UBIT. The third prong of the UBIT test (not substantially related) is not met. Items unrelated to the exhibits (generic souvenirs, snacks) might be subject to UBIT if regularly sold.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(3, 'Tax-Exempt Organizations',
 'A private foundation makes an investment that jeopardizes its exempt purpose. Under Section 4944, what is the initial excise tax on the foundation?',
 '["5% of the amount invested", "25% of the amount invested", "15% of the amount invested", "10% of the amount invested"]'::jsonb,
 3,
 'Section 4944 imposes an initial excise tax of 10% of the amount of a jeopardizing investment on the private foundation. A foundation manager who knowingly participates in the investment may also be subject to a 5% tax (up to $10,000). If the investment is not removed from jeopardy within the correction period, an additional 25% tax is imposed on the foundation and 5% on the manager.',
 'hard');
