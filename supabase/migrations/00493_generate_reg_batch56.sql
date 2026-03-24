-- Migration: Question generation — REG batch 56 (16 questions)
-- Date: 2026-03-24
-- Topic: Professional Ethics in Tax
-- Difficulty: 5E / 8M / 3H
-- Bloom's: L1:4 / L2:6 / L3:4 / L4:2

BEGIN;

INSERT INTO questions (section_id, topic, stem, choices, correct_index, explanation, difficulty, cognitive_level)
VALUES

-- Q1: hard / L4 — Section 6694(a) vs 6694(b) preparer penalty evaluation
(3, 'Professional Ethics in Tax', $EXPL$CPA Delgado prepares a return taking an aggressive position that lacks substantial authority and is not disclosed. The IRS later determines Delgado knew the position was frivolous but included it to reduce the client's liability. Which penalty framework applies and what is the maximum exposure?$EXPL$, $EXPL$["Section 6694(b) applies — $5,000 or 75% of income derived, whichever is greater", "Section 6694(a) applies — $1,000 or 50% of income derived, whichever is greater", "Section 6694(a) and (b) stack — combined penalty of $6,000 minimum", "Section 6695 applies — $50 per administrative failure, capped at $28,000"]$EXPL$::jsonb, 0, $EXPL$Correct (A): Section 6694(b) imposes a penalty of $5,000 or 75% of income derived (whichever is greater) for willful attempts to understate tax liability or reckless/intentional disregard of rules. Delgado's knowing inclusion of a frivolous position constitutes willful conduct under this provision.
Wrong (B): Section 6694(a) covers unreasonable positions lacking substantial authority, but the willful element elevates this to 6694(b).
Wrong (C): The penalties under 6694(a) and (b) do not stack; the higher willful/reckless penalty supersedes.
Wrong (D): Section 6695 covers administrative failures like missing PTINs, not substantive position errors.$EXPL$, 'hard', 4),

-- Q2: easy / L1 — Section 7216 unauthorized disclosure
(3, 'Professional Ethics in Tax', $EXPL$Under Section 7216, what is the penalty for a tax return preparer who knowingly discloses taxpayer information without authorization?$EXPL$, $EXPL$["A civil fine of $50 per disclosure", "A criminal penalty of up to $1,000 fine and/or 1 year imprisonment", "Automatic disbarment from practice before the IRS", "A $5,000 civil penalty per disclosure"]$EXPL$::jsonb, 1, $EXPL$Correct (B): Section 7216 imposes a criminal penalty of up to $1,000 fine and/or 1 year imprisonment for knowingly or recklessly disclosing taxpayer information. This is one of the few criminal penalties specifically targeting preparers.
Wrong (A): The $50 penalty relates to Section 6695 administrative failures, not unauthorized disclosure.
Wrong (C): Disbarment is a Circular 230 sanction imposed by the OPR, not an automatic consequence of Section 7216.
Wrong (D): Section 7216 is a criminal provision, not a civil penalty statute.$EXPL$, 'easy', 1),

-- Q3: medium / L3 — Circular 230 conflicts of interest (Section 10.29)
(3, 'Professional Ethics in Tax', $EXPL$CPA Nakamura is asked to represent both a husband and wife in an IRS audit where the couple is separated and may have conflicting positions on the allocation of itemized deductions. Under Circular 230 Section 10.29, Nakamura may represent both spouses only if:$EXPL$, $EXPL$["The IRS examiner consents to joint representation in writing", "The spouses verbally agree to joint representation during the initial meeting", "Nakamura reasonably believes competent representation is possible and each spouse provides informed written consent", "Nakamura discloses the conflict to the OPR and receives clearance before proceeding"]$EXPL$::jsonb, 2, $EXPL$Correct (C): Circular 230 Section 10.29 permits representation despite a conflict of interest only if the practitioner reasonably believes competent representation is possible, the representation is not prohibited by law, and each affected client gives informed written consent.
Wrong (A): IRS examiner consent is not required; the obligation runs to the clients, not the IRS.
Wrong (B): Verbal agreement is insufficient — Section 10.29 requires informed written consent from each client.
Wrong (D): OPR clearance is not required for conflicts; the practitioner self-assesses and obtains client consent.$EXPL$, 'medium', 3),

-- Q4: easy / L2 — Contingent fee rules
(3, 'Professional Ethics in Tax', $EXPL$CPA Patel agrees to prepare a client's original Form 1040 for a fee equal to 15% of any refund received. Under Circular 230, this arrangement is:$EXPL$, $EXPL$["Permitted if Patel discloses the arrangement to the IRS", "Permitted as long as the fee does not exceed 25% of the refund", "Permitted only if the client provides written consent to the fee structure", "Prohibited because contingent fees are not allowed for original return preparation"]$EXPL$::jsonb, 3, $EXPL$Correct (D): Circular 230 prohibits contingent fees for preparing original tax returns. Contingent fees are only permitted for amended returns claiming refunds and for services in connection with IRS examinations or proceedings.
Wrong (A): Disclosure to the IRS does not cure the prohibition on contingent fees for original returns.
Wrong (B): There is no percentage threshold that makes contingent fees acceptable for original returns.
Wrong (C): Client consent does not override the regulatory prohibition on contingent fees for original returns.$EXPL$, 'easy', 2),

-- Q5: medium / L2 — Return of client records despite unpaid fees
(3, 'Professional Ethics in Tax', $EXPL$CPA Warren has completed a client's tax return, but the client owes Warren $3,500 in unpaid preparation fees. The client requests all records back. Under Circular 230, Warren must:$EXPL$, $EXPL$["Promptly return all client records upon request, regardless of unpaid fees", "Retain the records until the client pays at least 50% of the outstanding balance", "Return only the original source documents but may withhold work product until paid", "Withhold all records as a lien until the fees are paid in full"]$EXPL$::jsonb, 0, $EXPL$Correct (A): Circular 230 requires practitioners to promptly return all client records upon request, even if fees remain unpaid. The practitioner may retain copies of the records but cannot withhold the originals.
Wrong (B): There is no partial payment threshold; records must be returned regardless of any outstanding balance.
Wrong (C): Circular 230 does not distinguish between source documents and work product for return purposes — all client records must be returned.
Wrong (D): Practitioners may not use a retaining lien on client records under Circular 230, even for legitimate unpaid fees.$EXPL$, 'medium', 2),

-- Q6: medium / L2 — Enrolled agent unlimited practice rights
(3, 'Professional Ethics in Tax', $EXPL$An enrolled agent (EA) is representing a corporate client in an IRS Appeals conference regarding a disputed deduction. The IRS Appeals officer questions whether the EA has authority to represent the corporation at this level. Under Circular 230, the EA's representation authority is:$EXPL$, $EXPL$["Limited to returns the EA personally prepared and signed", "Unlimited — EAs have the same practice rights as CPAs and attorneys before the IRS", "Limited to individual taxpayers, not corporate entities", "Requires co-signature from a CPA or attorney for Appeals-level proceedings"]$EXPL$::jsonb, 1, $EXPL$Correct (B): Under Circular 230, enrolled agents have unlimited practice rights before the IRS, identical to those of CPAs and attorneys. An EA may represent any taxpayer — individual or corporate — in audits, Appeals conferences, and collections without restriction.
Wrong (A): Limited representation to returns prepared and signed applies to unenrolled return preparers, not enrolled agents.
Wrong (C): EAs are not limited to individual taxpayers; their unlimited practice rights extend to all entity types.
Wrong (D): No co-signature requirement exists — EAs independently have full representation authority before the IRS.$EXPL$, 'medium', 2),

-- Q7: easy / L1 — OPR sanctions categories
(3, 'Professional Ethics in Tax', $EXPL$Which of the following is a sanction that the IRS Office of Professional Responsibility (OPR) may impose on a practitioner who violates Circular 230?$EXPL$, $EXPL$["Criminal prosecution and imprisonment", "Automatic revocation of the practitioner's CPA license", "Censure, which is a public reprimand", "Referral to the practitioner's state bar for disbarment"]$EXPL$::jsonb, 2, $EXPL$Correct (C): Censure is one of the sanctions the OPR may impose under Circular 230, consisting of a public reprimand. Other OPR sanctions include suspension, disbarment from IRS practice, and monetary penalties.
Wrong (A): The OPR handles administrative sanctions, not criminal prosecution — criminal matters are handled by the Department of Justice.
Wrong (B): The OPR cannot revoke a CPA license; that authority belongs to state boards of accountancy.
Wrong (D): The OPR disciplines practitioners directly under Circular 230 rather than referring matters to state bar associations.$EXPL$, 'easy', 1),

-- Q8: easy / L1 — Section 6695 administrative failure penalties
(3, 'Professional Ethics in Tax', $EXPL$Under Section 6695, what is the penalty per failure for a tax return preparer who fails to include a Preparer Tax Identification Number (PTIN) on a return?$EXPL$, $EXPL$["$25 per failure, maximum $10,000 per year", "$100 per failure, maximum $50,000 per year", "No monetary penalty, only a warning letter from the IRS", "$50 per failure, maximum $28,000 per year"]$EXPL$::jsonb, 3, $EXPL$Correct (D): Section 6695 imposes a $50 penalty per failure for administrative items such as failing to include a PTIN, failing to furnish a return copy to the taxpayer, or failing to sign the return. Each penalty type is capped at $28,000 per year.
Wrong (A): The $25 amount and $10,000 cap are not the correct figures under Section 6695.
Wrong (B): The $100 per failure amount overstates the Section 6695 penalty.
Wrong (C): Section 6695 does impose monetary penalties, not merely warning letters.$EXPL$, 'easy', 1),

-- Q9: medium / L2 — Disreputable conduct under Section 10.51
(3, 'Professional Ethics in Tax', $EXPL$CPA Brennan is convicted of a misdemeanor for willfully failing to file her own federal income tax return for three consecutive years. Under Circular 230 Section 10.51, this conviction constitutes:$EXPL$, $EXPL$["A minor infraction requiring only continuing education remediation", "Disreputable conduct that may result in censure, suspension, or disbarment", "Grounds for a monetary penalty only, not suspension or disbarment", "An issue outside OPR jurisdiction because it involves the practitioner's personal return"]$EXPL$::jsonb, 1, $EXPL$Correct (B): Circular 230 Section 10.51 lists willful failure to file a federal tax return as disreputable conduct. This subjects the practitioner to the full range of OPR sanctions including censure, suspension, or disbarment from practice before the IRS.
Wrong (A): Willful failure to file is classified as disreputable conduct, not a minor infraction — no amount of CPE remediation cures it.
Wrong (C): Disreputable conduct can result in the full range of sanctions, not just monetary penalties.
Wrong (D): The OPR has jurisdiction over a practitioner's personal tax compliance — willful failure to file one's own return is explicitly listed as disreputable conduct.$EXPL$, 'medium', 2),

-- Q10: medium / L3 — Solicitation restrictions application
(3, 'Professional Ethics in Tax', $EXPL$CPA Torres learns that a local business owner is facing an IRS audit. Torres has never met the business owner but goes to the owner's office uninvited to offer representation services. Under Circular 230, Torres's conduct is:$EXPL$, $EXPL$["Permitted as long as Torres provides a written engagement letter", "Prohibited — Circular 230 bans uninvited in-person solicitation of prospective clients", "Permitted because the business owner has an immediate need for tax representation", "Prohibited only if Torres charges a fee above the customary rate for audit representation"]$EXPL$::jsonb, 1, $EXPL$Correct (B): Circular 230 prohibits practitioners from soliciting employment through in-person contact or uninvited written solicitations. Exceptions exist only for former clients and family members, neither of which applies here.
Wrong (A): Providing an engagement letter does not cure the prohibition on uninvited in-person solicitation.
Wrong (C): The client's need for representation does not override the solicitation restriction — Torres must wait for the client to initiate contact.
Wrong (D): The fee amount is irrelevant; the prohibition applies to the method of solicitation, not the fee charged.$EXPL$, 'medium', 3),

-- Q11: medium / L3 — Reasonable basis vs substantial authority thresholds
(3, 'Professional Ethics in Tax', $EXPL$CPA Hoffman takes a position on a client's return that has approximately a 25% likelihood of being sustained on the merits. The position is not disclosed on the return. Under Circular 230 Section 10.34, this position:$EXPL$, $EXPL$["Meets the substantial authority standard and requires no disclosure", "Fails to meet the reasonable basis standard and may not be taken under any circumstances", "Meets the reasonable basis standard but requires adequate disclosure to avoid the accuracy-related penalty", "Exceeds the more-likely-than-not standard required for all return positions"]$EXPL$::jsonb, 2, $EXPL$Correct (C): A 25% likelihood meets the reasonable basis threshold (approximately 20%) but falls below substantial authority (approximately 40%). Under Circular 230 Section 10.34, an undisclosed position must meet substantial authority. Since it does not, the position requires adequate disclosure on the return to be permissible.
Wrong (A): Substantial authority requires approximately 40% likelihood; 25% falls short.
Wrong (B): A 25% likelihood exceeds the reasonable basis threshold of approximately 20%, so it may be taken with disclosure.
Wrong (D): More likely than not requires greater than 50% likelihood and applies only to tax shelters and reportable transactions.$EXPL$, 'medium', 3),

-- Q12: medium / L2 — Written tax advice and audit lottery
(3, 'Professional Ethics in Tax', $EXPL$CPA Reeves is preparing written tax advice for a client considering an aggressive deduction. The client mentions that their return has never been audited in 15 years. Under Circular 230 Section 10.37, when formulating the written advice, Reeves:$EXPL$, $EXPL$["May factor in the low audit probability to support the position's viability", "Should note the client's clean audit history as a mitigating factor in the advice", "May reference the audit probability if the client signs a written acknowledgment of the risk", "Must base the advice on reasonable assumptions and may not consider the possibility that the return will not be audited"]$EXPL$::jsonb, 3, $EXPL$Correct (D): Circular 230 Section 10.37 explicitly requires practitioners not to take into account the possibility that a return will not be audited when providing written tax advice. Reeves must base the advice solely on reasonable factual and legal assumptions, regardless of the client's audit history.
Wrong (A): Practitioners are expressly prohibited from factoring audit probability into written tax advice.
Wrong (B): A clean audit history is irrelevant — Section 10.37 bars reliance on the likelihood of non-audit.
Wrong (C): Client acknowledgment does not override the regulatory prohibition on considering audit probability.$EXPL$, 'medium', 2),

-- Q13: easy / L1 — Prohibition on cashing refund checks
(3, 'Professional Ethics in Tax', $EXPL$Under Circular 230, which activity is generally prohibited for practitioners?$EXPL$, $EXPL$["Cashing a client's tax refund check on the client's behalf", "Charging a flat fee for tax return preparation", "Preparing returns for clients in multiple states", "Advertising tax preparation services online"]$EXPL$::jsonb, 0, $EXPL$Correct (A): Circular 230 specifically prohibits practitioners from cashing refund checks for clients, with only limited exceptions. This rule prevents practitioners from having direct access to client tax refund funds.
Wrong (B): Flat fees are a permissible fee arrangement — only contingent fees for original returns are prohibited.
Wrong (C): Multi-state return preparation is permitted; there is no geographic restriction on practice.
Wrong (D): Online advertising is permitted under Circular 230 — only uninvited in-person solicitation and certain written solicitations are restricted.$EXPL$, 'easy', 1),

-- Q14: hard / L3 — Prompt disposition duty in complex multi-issue scenario
(3, 'Professional Ethics in Tax', $EXPL$CPA Whitfield represents a client in an ongoing IRS examination that has lasted 14 months. The IRS requests a consent to extend the statute of limitations. Whitfield knows the client wants to delay resolution, and the original three-year assessment period expires in 60 days. Whitfield must balance Circular 230's prompt disposition requirement against the client's interests. How should Whitfield proceed?$EXPL$, $EXPL$["Refuse to sign the extension and let the statute expire, as the client's interest in delay takes priority", "Advise the client of the implications of both signing and refusing, then follow the client's informed decision while ensuring no unreasonable delay attributable to the practitioner", "Sign the extension without consulting the client, as Circular 230 requires cooperation with the IRS", "Withdraw from the engagement because the prompt disposition duty conflicts with the client's wishes"]$EXPL$::jsonb, 1, $EXPL$Correct (B): Circular 230 requires prompt disposition of IRS matters but does not mandate that a practitioner override client decisions. Whitfield should advise the client about the consequences of signing or refusing the extension, then follow the client's informed decision. The prompt disposition duty prohibits practitioner-caused delay, not client-directed strategic choices.
Wrong (A): Simply letting the statute expire without advising the client of all implications fails the practitioner's duty of competent representation.
Wrong (C): Signing without client consultation violates the duty to the client — the decision to extend is the client's, not the practitioner's.
Wrong (D): Withdrawal is not required merely because a client's strategic preference differs from the fastest resolution path.$EXPL$, 'hard', 3),

-- Q15: medium / L2 — Accuracy-related penalty threshold (Section 6662)
(3, 'Professional Ethics in Tax', $EXPL$A taxpayer's correct tax liability is $80,000, but the return as filed shows a liability of $60,000 — an understatement of $20,000. Under Section 6662, this understatement is considered "substantial" and triggers the 20% accuracy-related penalty if it exceeds:$EXPL$, $EXPL$["5% of the correct tax or $5,000, whichever is less", "25% of the correct tax liability", "The greater of 10% of the correct tax or $5,000", "15% of the correct tax liability or $10,000, whichever is greater"]$EXPL$::jsonb, 2, $EXPL$Correct (C): Section 6662 defines a substantial understatement as the greater of 10% of the correct tax or $5,000 ($10,000 for corporations). Here, 10% of $80,000 = $8,000, which exceeds $5,000, so the threshold is $8,000. The $20,000 understatement exceeds this threshold.
Wrong (A): The threshold uses the greater of the two amounts, not the lesser — and 5% is not the correct percentage.
Wrong (B): The 25% threshold relates to the substantial omission rule for extending the statute of limitations, not the accuracy-related penalty.
Wrong (D): The $10,000 threshold applies to corporations, and 15% is not the correct percentage for individuals.$EXPL$, 'medium', 2),

-- Q16: hard / L4 — Evaluating interplay of preparer penalties and Circular 230 sanctions
(3, 'Professional Ethics in Tax', $EXPL$CPA Franklin prepares 200 returns per year. An IRS investigation reveals that Franklin systematically failed to sign 40 returns, failed to furnish copies to 25 clients, and willfully understated tax on 3 returns by taking positions Franklin knew were frivolous. Evaluate the total regulatory exposure Franklin faces from both the IRC preparer penalty provisions and Circular 230 sanctions.$EXPL$, $EXPL$["Only Circular 230 sanctions apply because the OPR has exclusive jurisdiction over practitioner conduct", "Section 6694(a) penalties of $1,000 each for all 68 returns with deficiencies, capped at $28,000 total", "Section 6695 penalties for all failures combined into a single $50 penalty, plus a Circular 230 censure", "Section 6695 penalties for the administrative failures plus Section 6694(b) penalties for willful understatement, and independently, OPR may impose Circular 230 sanctions including disbarment"]$EXPL$::jsonb, 3, $EXPL$Correct (D): Franklin faces Section 6695 penalties of $50 each for failing to sign returns (40 × $50 = $2,000) and failing to furnish copies (25 × $50 = $1,250), each capped at $28,000 per category per year. The 3 willful understatements trigger Section 6694(b) penalties of $5,000 each (or 75% of income derived, if greater). Separately, the OPR may pursue Circular 230 disciplinary action including censure, suspension, or disbarment.
Wrong (A): IRC preparer penalties and Circular 230 sanctions operate independently — both apply, not just Circular 230.
Wrong (B): Section 6694(a) applies to unreasonable positions without willfulness, not administrative failures — and the $28,000 cap is per category under Section 6695, not 6694.
Wrong (C): Section 6695 imposes separate $50 penalties per failure (not a single combined penalty), and the severity of willful conduct may warrant sanctions well beyond censure.$EXPL$, 'hard', 4)
;

COMMIT;
