-- =============================================================================
-- Migration: Gap Coverage — TCP Questions
-- Section: TCP — Tax Compliance and Planning (section_id = 6)
-- New questions: 40 (2 topics × 20)
-- Purpose: Fill 2 blueprint groups that had empty questionTopics
-- =============================================================================

-- =============================================================================
-- Multi-Jurisdictional Tax Planning — 20 questions
-- Difficulty: 6 easy, 8 medium, 6 hard
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A state that adopts "rolling conformity" to the Internal Revenue Code will automatically:',
 '["Incorporate all future federal tax law changes as they are enacted", "Freeze its conformity to the IRC as of a specific date chosen by the legislature", "Require separate legislation each year to adopt federal changes", "Conform only to the IRC provisions that existed when the state first adopted its income tax"]'::jsonb,
 0,
 'Rolling (or dynamic) conformity means a state automatically incorporates federal IRC changes as they are enacted without requiring separate state legislation. This contrasts with static (or fixed-date) conformity, where the state conforms to the IRC as of a specific date and must affirmatively legislate to update. Rolling conformity reduces administrative burden but limits state control over revenue impacts of federal changes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'Under the Wayfair decision, which standard did the U.S. Supreme Court establish for state sales tax collection obligations on remote sellers?',
 '["Physical presence in the state remains the sole determinant of nexus", "Economic nexus based on sales revenue or transaction volume thresholds", "Nexus is established only when a seller has employees in the state", "Sales tax nexus requires ownership of tangible property in the state"]'::jsonb,
 1,
 'In South Dakota v. Wayfair, Inc. (2018), the Supreme Court overruled Quill Corp. v. North Dakota and held that a state may require sales tax collection from remote sellers based on economic nexus — typically meeting thresholds such as $100,000 in sales or 200 transactions within the state. Physical presence is no longer the sole constitutional requirement for sales tax nexus.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A corporation has nexus in three states and uses the traditional three-factor apportionment formula. The factors are property, payroll, and sales. If the corporation''s property factor is 20%, payroll factor is 30%, and sales factor is 50%, what is the apportionment percentage?',
 '["50%", "30%", "33.33%", "25%"]'::jsonb,
 2,
 'Under the traditional equally weighted three-factor formula (UDITPA), each factor receives one-third weight. The apportionment percentage is (20% + 30% + 50%) / 3 = 33.33%. Many states have moved away from the equally weighted formula toward a double-weighted sales factor or single sales factor, but the traditional UDITPA formula weights all three factors equally.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'P.L. 86-272 provides protection from state income tax for businesses whose only in-state activity is:',
 '["Solicitation of orders for the sale of tangible personal property, with orders approved and shipped from outside the state", "Providing services to customers located in the state", "Making deliveries using company-owned vehicles within the state", "Performing warranty repairs on tangible personal property sold in the state"]'::jsonb,
 0,
 'P.L. 86-272 (15 U.S.C. §§ 381–384) prohibits a state from imposing a net income tax on a business whose only in-state activity is the solicitation of orders for the sale of tangible personal property, provided the orders are sent outside the state for approval and are fulfilled from outside the state. The protection does not extend to services, intangible property, or activities beyond mere solicitation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'State X uses market-based sourcing for services. A consulting firm based in State Y provides strategy consulting to a client headquartered in State X. Under market-based sourcing, where is the service revenue sourced?',
 '["State Y, where the consulting firm is located", "Split equally between State X and State Y", "The state where the consulting work was physically performed", "State X, where the client receives the benefit of the service"]'::jsonb,
 3,
 'Market-based sourcing assigns service revenue to the state where the customer receives the benefit of the service, rather than where the service provider performs the work (cost-of-performance method). Since the client is headquartered in State X and receives the benefit there, the revenue is sourced to State X. The Multistate Tax Commission has issued model regulations supporting market-based sourcing for services.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A state imposes a throwback rule. Corporation Z has sales of $2 million shipped from State A to customers in State B, where Corporation Z has no income tax nexus. How does the throwback rule affect apportionment?',
 '["The $2 million in sales is excluded from all state apportionment formulas", "The $2 million is assigned to the state of the purchaser (State B) for apportionment", "The $2 million is divided equally between State A and State B", "The $2 million is thrown back to State A and included in State A''s sales factor"]'::jsonb,
 3,
 'Under a throwback rule, sales of tangible personal property shipped from a state to a purchaser in a state where the seller has no nexus are "thrown back" to the shipping state and included in that state''s sales factor numerator. This prevents "nowhere income" — income that escapes state taxation because the seller lacks nexus in the destination state. Not all states impose throwback rules.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'Which of the following best describes an economic nexus standard for state income tax purposes?',
 '["A business establishes nexus when its property, payroll, or sales in the state exceed specified thresholds", "A seller must have a physical office or warehouse in the state", "Nexus requires the business to be incorporated in the state", "Economic nexus applies only to sales tax and not to income tax"]'::jsonb,
 0,
 'Economic nexus for state income tax (often called "factor presence nexus") is established when a business exceeds certain quantitative thresholds in a state — typically a specified dollar amount of property, payroll, or sales. The Multistate Tax Commission''s model factor-presence nexus standard uses thresholds such as $50,000 of property, $50,000 of payroll, $500,000 of sales, or 25% of any factor. This is distinct from sales tax economic nexus under Wayfair.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A multistate corporation establishes a Delaware holding company to hold its trademarks and license them to operating subsidiaries in other states. State Q requires combined reporting. What is the most likely effect of combined reporting on this structure?',
 '["Combined reporting eliminates the intercompany royalty deductions, neutralizing the tax benefit of the holding company", "The trademark royalty payments create deductible expenses that reduce taxable income in State Q", "State Q must honor the separate entity structure and allow the deduction", "The holding company income is exempt from all state taxation because it is a passive entity"]'::jsonb,
 0,
 'Combined reporting requires commonly owned and controlled corporations engaged in a unitary business to file a combined return, which eliminates intercompany transactions (including royalty payments to holding companies) when computing the combined tax base. This neutralizes the tax benefit of Delaware holding company structures by adding back the intercompany deductions and including the holding company''s income in the combined group.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'Under the Uniform Division of Income for Tax Purposes Act (UDITPA), nonbusiness income is generally:',
 '["Allocated entirely to the taxpayer''s state of commercial domicile", "Apportioned among all states where the taxpayer has nexus using the standard formula", "Excluded from state taxation in all states", "Divided equally among all states where the taxpayer files returns"]'::jsonb,
 0,
 'UDITPA distinguishes between business income (apportioned by formula) and nonbusiness income (allocated to specific states). Nonbusiness income — income not arising from or related to the taxpayer''s regular trade or business — is generally allocated to the taxpayer''s state of commercial domicile or the situs of the property generating the income. Rent and gains from real property are allocated to the state where the property is located.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A state offers a pass-through entity (PTE) tax election as a workaround for the federal $10,000 SALT deduction cap. How does this election generally benefit individual owners of pass-through entities?',
 '["It eliminates all state income tax obligations for the individual owners", "It converts ordinary income into capital gains for federal tax purposes", "Individual owners may deduct unlimited state taxes on their federal return without the PTE election", "The entity pays state tax at the entity level, and individual owners receive a corresponding credit or income exclusion on their individual state return, effectively deducting state taxes above the SALT cap at the federal level"]'::jsonb,
 3,
 'The PTE tax workaround allows a pass-through entity to elect to pay state income tax at the entity level, which is deductible for federal income tax purposes as a business expense (not subject to the $10,000 individual SALT cap). Individual owners then receive a credit or exclusion on their state individual return to avoid double taxation. The IRS confirmed in Notice 2020-75 that these entity-level taxes are deductible by the entity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'Corporation M has operations in five states. State R uses a single sales factor apportionment formula. Corporation M has significant property and payroll in State R but only 10% of its total sales there. Compared to the equally weighted three-factor formula, single sales factor apportionment will likely:',
 '["Increase Corporation M''s apportioned income in State R", "Have no effect on Corporation M''s apportioned income", "Decrease Corporation M''s apportioned income in State R because only sales are weighted", "Require Corporation M to also apportion nonbusiness income"]'::jsonb,
 2,
 'Under a single sales factor formula, only the sales factor determines apportionment. Since Corporation M has only 10% of its sales in State R, the apportionment percentage would be 10%. Under the equally weighted three-factor formula, the higher property and payroll factors would increase the apportionment percentage. States adopt single sales factor formulas to attract businesses with significant in-state property and payroll while shifting tax burden to companies selling into the state.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A corporation uses the cost-of-performance method for sourcing service income. The corporation performs 60% of its direct costs in State A, 25% in State B, and 15% in State C. Under the all-or-nothing cost-of-performance approach, where is 100% of the service income sourced?',
 '["Split proportionally among States A, B, and C based on costs incurred", "State B, because it is neither the highest nor lowest cost state", "State C, because it has the lowest cost percentage", "State A, because the majority of direct costs were incurred there"]'::jsonb,
 3,
 'Under the traditional all-or-nothing cost-of-performance method, service income is sourced entirely to the state where the greatest proportion of the income-producing activity is performed, measured by direct costs. Since 60% of direct costs are incurred in State A, all of the service income is sourced to State A. This method is being phased out by many states in favor of market-based sourcing.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A state with static conformity conforms to the Internal Revenue Code as of December 31, 2020. Congress enacts a new federal deduction in 2025. How does this affect the state''s taxable income calculation?',
 '["The state automatically recognizes the new deduction for the 2025 tax year", "The state does not recognize the new deduction unless it updates its conformity date through new legislation", "The state must petition the IRS for permission to adopt the new deduction", "Static conformity prevents the state from ever adopting the new deduction"]'::jsonb,
 1,
 'Static (fixed-date) conformity means the state conforms to the IRC as of a specified date. Federal changes enacted after that date are not automatically recognized — the state legislature must pass new legislation updating the conformity date or selectively adopting specific provisions. This gives states more control over revenue impacts but creates ongoing differences between state and federal taxable income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A multistate corporation is evaluating whether to form a subsidiary to hold intellectual property in a state with no corporate income tax. Which of the following state-level provisions would most effectively counteract this planning strategy?',
 '["A single sales factor apportionment formula", "An addback statute requiring the operating entity to add back related-party royalty and interest payments", "A throwout rule for sales into states where the seller lacks nexus", "A conformity election for federal bonus depreciation"]'::jsonb,
 1,
 'Addback statutes require a taxpayer to add back to taxable income certain payments — typically royalties, interest, and management fees — made to related entities. These statutes directly target intangible holding company structures by eliminating the deduction for intercompany payments, effectively neutralizing the tax benefit. Many states have enacted addback provisions with limited exceptions for transactions with valid business purpose or that are subject to tax in another jurisdiction.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'State T offers a job creation tax credit of $5,000 per qualified new full-time employee hired in a designated enterprise zone. Corporation N hires 12 qualified employees during the tax year. Corporation N''s State T income tax liability before credits is $45,000. If the credit is nonrefundable and has no carryforward provision, what is Corporation N''s State T income tax liability after the credit?',
 '["$0", "($15,000)", "$0 with a $15,000 carryforward", "$0 with no carryforward of the excess"]'::jsonb,
 3,
 'The total credit is 12 × $5,000 = $60,000. Since the credit is nonrefundable, it can only reduce tax liability to $0 — it cannot create a refund. Corporation N''s $45,000 liability is reduced to $0, and the excess $15,000 ($60,000 − $45,000) is lost because the credit has no carryforward provision. This illustrates the importance of evaluating credit limitations when planning for state tax incentives.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A throwout rule differs from a throwback rule in that a throwout rule:',
 '["Assigns nowhere sales to the state of shipment origin", "Removes nowhere sales from both the numerator and denominator of the sales factor, increasing the apportionment percentage in remaining states", "Eliminates the sales factor entirely and relies on property and payroll factors", "Applies only to sales of services, not tangible personal property"]'::jsonb,
 1,
 'A throwout rule removes sales destined for states where the seller has no nexus ("nowhere sales") from both the numerator and denominator of the sales factor. This increases the apportionment percentages in the states where the seller does have nexus. In contrast, a throwback rule adds those sales to the numerator of the sales factor in the shipping state. Both rules address the "nowhere income" problem but produce different results.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'Which of the following activities would likely cause a corporation to exceed the protection of P.L. 86-272?',
 '["Sending sales representatives to solicit orders that are approved at the home office", "Distributing product samples to potential customers during solicitation visits", "Maintaining a repair and service center in the state to service products after sale", "Advertising in local media to generate sales leads"]'::jsonb,
 2,
 'P.L. 86-272 protects only the solicitation of orders for tangible personal property. Activities that go beyond solicitation — such as maintaining a repair or service center, making collections, accepting returns, or providing installation services — exceed the statute''s protection and create nexus for state income tax purposes. Sending sales reps to solicit, distributing samples during solicitation, and advertising are generally protected activities.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'Corporation G operates in States A, B, and C. State A requires combined reporting. Corporation G has a subsidiary that conducts a unitary business but earns all of its income in State B, which does not require combined reporting. How does State A''s combined reporting requirement affect Corporation G?',
 '["State A ignores the subsidiary''s income entirely because it is earned in State B", "State A includes the subsidiary''s income in the combined report and apportions the combined income using the combined group''s factors", "Corporation G may elect whether to include the subsidiary in State A''s combined report", "State A taxes the subsidiary''s income at the same rate as State B"]'::jsonb,
 1,
 'When State A requires combined reporting and the subsidiary is part of a unitary business with Corporation G, State A includes the subsidiary''s income in the combined report regardless of where the income is earned. The combined group''s total income is then apportioned to State A using the combined apportionment factors of all entities in the group. Combined reporting is mandatory in states that require it; the taxpayer cannot elect out.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'A state modifies federal taxable income by requiring the addback of all state income taxes deducted on the federal return. This modification is known as a:',
 '["Negative modification that decreases state taxable income", "Fixed conformity adjustment", "Positive modification that increases state taxable income", "Revenue allocation adjustment"]'::jsonb,
 2,
 'Requiring the addback of state income taxes deducted on the federal return is a positive modification — it increases state taxable income. Most states that use federal taxable income as the starting point for computing state taxable income require this addback because allowing a deduction for a state''s own income tax would be circular. Other common positive modifications include the addback of municipal bond interest from other states.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Multi-Jurisdictional Tax Planning',
 'Corporation P is headquartered in State H and has economic nexus in State J due to sales exceeding $500,000. Corporation P sells only digital software licenses (no tangible personal property). Does P.L. 86-272 protect Corporation P from State J''s income tax?',
 '["Yes, because Corporation P''s sales are below $1 million", "Yes, because Corporation P only solicits orders and does not have physical presence in State J", "No, because P.L. 86-272 protection applies only to tangible personal property, not digital goods or services", "No, but only because Corporation P exceeds the economic nexus threshold"]'::jsonb,
 2,
 'P.L. 86-272 applies exclusively to the solicitation of orders for the sale of tangible personal property. Digital software licenses are intangible property and fall outside the statute''s protection. Therefore, Corporation P cannot rely on P.L. 86-272 to shield itself from State J''s income tax. The Multistate Tax Commission has also issued guidance confirming that internet-based activities involving intangibles are not protected by P.L. 86-272.',
 'hard');

-- =============================================================================
-- Entity Formation and Restructuring — 20 questions
-- Difficulty: 6 easy, 8 medium, 6 hard
-- correct_index distribution: 5×0, 5×1, 5×2, 5×3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'In a Type A reorganization under Section 368(a)(1)(A), a target corporation merges into an acquiring corporation. Which of the following is a requirement for Type A treatment?',
 '["The merger must comply with the applicable state or federal merger statute", "At least 80% of the target''s stock must be acquired solely for voting stock", "The acquiring corporation must acquire substantially all of the target''s assets solely for voting stock", "The target corporation must have been in existence for at least five years"]'::jsonb,
 0,
 'A Type A reorganization is a statutory merger or consolidation effected under applicable corporate law (state, federal, or foreign). Unlike Type B (solely for voting stock) or Type C (substantially all assets for voting stock), Type A reorganizations have the most flexible consideration requirements — the acquiring corporation may use a mix of stock, cash, and other property, subject to the judicial doctrines of continuity of interest and continuity of business enterprise.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'In a Type B reorganization, the acquiring corporation must obtain at least 80% control of the target corporation. Which of the following types of consideration is permitted?',
 '["Any combination of stock, cash, and debt instruments", "Voting stock plus up to 20% cash boot", "Solely voting stock of the acquiring corporation or its parent", "Voting stock plus assumption of the target''s liabilities"]'::jsonb,
 2,
 'A Type B reorganization (stock-for-stock acquisition) requires that the acquiring corporation use solely its voting stock (or voting stock of its parent) as consideration. No cash, debt instruments, or other property may be used — the "solely for voting stock" requirement is strictly enforced. Even a small amount of non-stock consideration will disqualify the transaction as a Type B reorganization. Assumption of liabilities does not disqualify a Type B, but paying cash does.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'Corporation A acquires substantially all of the assets of Corporation B solely in exchange for Corporation A''s voting stock. Corporation B then distributes the stock to its shareholders and dissolves. This transaction qualifies as which type of reorganization?',
 '["Type A — statutory merger", "Type C — asset acquisition", "Type D — transfer to controlled corporation", "Type F — change in form or identity"]'::jsonb,
 1,
 'A Type C reorganization involves the acquisition of substantially all of the target''s assets solely in exchange for the acquiring corporation''s voting stock (or its parent''s voting stock). The target corporation must then distribute all property received (plus its remaining assets) to its shareholders in liquidation. The "substantially all" requirement generally means at least 90% of net assets and 70% of gross assets, per IRS guidelines.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'The continuity of interest (COI) doctrine requires that in a tax-free reorganization:',
 '["The acquiring corporation must continue to operate the target''s historic business for at least five years", "All of the target''s shareholders must receive solely stock consideration", "A substantial part of the consideration received by the target''s shareholders must consist of equity in the acquiring corporation", "The target corporation must retain its original corporate charter"]'::jsonb,
 2,
 'The continuity of interest doctrine requires that a substantial part of the value of the consideration received by the target''s shareholders in a reorganization consist of an equity interest (stock) in the acquiring corporation. Under the regulations, the IRS safe harbor requires at least 40% of the total consideration to be stock of the acquiring corporation. This ensures that the target''s shareholders maintain a continuing equity interest in the reorganized enterprise.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'In a tax-free reorganization, a target shareholder receives stock worth $80,000 and cash boot of $20,000 in exchange for target stock with a basis of $60,000. What is the shareholder''s recognized gain?',
 '["$0", "$40,000", "$20,000", "$80,000"]'::jsonb,
 2,
 'Under Section 356, when a shareholder receives boot (non-stock consideration) in a reorganization, gain is recognized to the extent of the boot received, but not in excess of the total realized gain. The realized gain is $100,000 (total consideration) − $60,000 (basis) = $40,000. The boot received is $20,000. Since the boot ($20,000) is less than the realized gain ($40,000), the shareholder recognizes $20,000 of gain.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'A Type E reorganization under Section 368(a)(1)(E) involves:',
 '["A transfer of assets to a controlled corporation", "A statutory merger of two corporations", "A change in the place of organization or form of entity", "A recapitalization — a reshuffling of the capital structure of a single corporation"]'::jsonb,
 3,
 'A Type E reorganization is a recapitalization, which involves a reshuffling of a single corporation''s capital structure. Examples include exchanging bonds for stock, preferred stock for common stock, or bonds for bonds with different terms. A recapitalization must have a valid business purpose and is limited to changes within a single corporation — it does not involve the combination of two separate entities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'Corporation X distributes all of the stock of its wholly owned subsidiary, Corporation Y, to Corporation X''s shareholders. Both corporations have been engaged in active trades or businesses for at least five years. This transaction is a:',
 '["Taxable dividend distribution", "Type A reorganization", "Section 355 spin-off", "Section 338 deemed asset sale"]'::jsonb,
 2,
 'A pro rata distribution of a controlled subsidiary''s stock to the parent''s shareholders is a spin-off under Section 355. To qualify for tax-free treatment, both the distributing and controlled corporations must be engaged in active trades or businesses conducted for at least five years, the distribution must not be used principally as a device for distributing earnings and profits, and there must be a valid business purpose.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'In a Section 355 split-off, how does the transaction differ from a spin-off?',
 '["In a split-off, the parent distributes the subsidiary''s stock to all shareholders pro rata", "In a split-off, the parent sells the subsidiary''s stock to a third party", "There is no difference — the terms are interchangeable", "In a split-off, shareholders surrender parent stock in exchange for subsidiary stock"]'::jsonb,
 3,
 'In a split-off, shareholders of the distributing corporation exchange their stock in the parent for stock in the controlled subsidiary. This contrasts with a spin-off, where the parent distributes the subsidiary''s stock pro rata to all shareholders without any surrender of parent stock. A split-up is a third variation where the parent distributes stock of two or more subsidiaries and then liquidates.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'Corporation P acquires 100% of the stock of Corporation T from its sole shareholder for cash. Corporation P and Corporation T file a Section 338(h)(10) election. What is the primary tax consequence of this election?',
 '["Corporation T is treated as having sold all of its assets at fair market value in a deemed asset sale, with gain or loss recognized on the old Corporation T''s final return", "Corporation T''s historical tax attributes carry over to Corporation P", "The transaction is treated as a tax-free reorganization", "Corporation P recognizes gain on the stock purchase"]'::jsonb,
 0,
 'A Section 338(h)(10) election (available when an affiliated group member or S corporation stock is acquired) treats the transaction as a deemed asset sale by the old target corporation, followed by a deemed liquidation. The old target recognizes gain or loss on the deemed sale, and the new target receives a stepped-up basis in all assets equal to fair market value. The actual stock sale is disregarded for tax purposes.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'In a Type D reorganization under Section 368(a)(1)(D), a corporation transfers assets to a controlled corporation. What is the minimum stock ownership requirement for the transferee corporation?',
 '["The transferor or its shareholders must control the transferee, defined as ownership of at least 50% of the total voting power or 50% of the total value of stock", "The transferor must own at least 80% of the transferee''s voting stock", "The transferor must own 100% of the transferee", "There is no minimum ownership requirement for a Type D reorganization"]'::jsonb,
 0,
 'For an acquisitive Type D reorganization, control is defined under Section 304(c) as ownership of at least 50% of the total combined voting power or 50% of the total value of all classes of stock. This is a lower threshold than the 80% control requirement applicable to Section 351 transfers and Type B reorganizations. For a divisive Type D (combined with Section 355), the 80% control test under Section 368(c) applies.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'A Type F reorganization under Section 368(a)(1)(F) applies to:',
 '["An acquisition of one corporation by another for voting stock", "A mere change in identity, form, or place of organization of one corporation", "A transfer of assets between brother-sister corporations", "An insolvency reorganization under federal bankruptcy law"]'::jsonb,
 1,
 'A Type F reorganization involves a mere change in identity, form, or place of organization of a single corporation. Common examples include changing the state of incorporation (redomestication), changing the corporate name, or converting from a corporation to an LLC that elects corporate tax treatment. A Type F reorganization must involve only one operating corporation and cannot involve a significant change in ownership.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'A target shareholder receives acquiring corporation stock worth $50,000 and cash boot of $10,000 in a qualifying reorganization. The shareholder''s basis in the target stock surrendered was $45,000. What is the shareholder''s basis in the acquiring corporation stock received?',
 '["$40,000", "$50,000", "$55,000", "$45,000"]'::jsonb,
 3,
 'Under Section 358, the shareholder''s basis in stock received in a reorganization equals the basis of the property surrendered ($45,000), decreased by money received ($10,000), increased by gain recognized ($10,000 — gain recognized equals boot since realized gain of $15,000 exceeds boot). The calculation: $45,000 − $10,000 + $10,000 = $45,000. This substituted basis rule preserves the unrecognized gain for future recognition upon sale of the acquiring corporation stock.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'A Section 338(g) election differs from a Section 338(h)(10) election primarily because:',
 '["A 338(g) election is available only when the target is a member of an affiliated group", "A 338(g) election eliminates all gain recognition on the acquisition", "A 338(g) election applies only to tax-free reorganizations", "A 338(g) election treats the stock purchase as a taxable event at both the shareholder and corporate level, potentially resulting in double taxation"]'::jsonb,
 3,
 'A standalone Section 338(g) election (without the (h)(10) component) creates a deemed asset sale by the old target, but unlike a 338(h)(10), the selling shareholders still recognize gain on the actual stock sale. This results in potential double taxation — gain at the corporate level on the deemed asset sale and gain at the shareholder level on the stock sale. For this reason, 338(g) elections are rarely made for domestic targets but may be beneficial for foreign target acquisitions.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'The continuity of business enterprise (COBE) doctrine requires that after a reorganization, the acquiring corporation must:',
 '["Retain at least 80% of the target''s employees for two years", "Either continue the target''s historic business or use a significant portion of the target''s historic business assets in a business", "Maintain the target as a separate subsidiary for at least one year", "File a continuity certification with the IRS within 90 days"]'::jsonb,
 1,
 'The COBE doctrine requires that the acquiring corporation either (1) continue the target''s historic business (the business continuity test) or (2) use a significant portion of the target''s historic business assets in a business (the asset continuity test). Meeting either test satisfies the COBE requirement. The doctrine prevents taxpayers from using the reorganization provisions to disguise what is essentially a sale of assets followed by investment in a different business.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'Corporation D distributes the stock of two controlled subsidiaries to its shareholders and then liquidates. Each subsidiary has been engaged in an active trade or business for at least five years. This transaction is a:',
 '["Section 355 spin-off", "Section 355 split-off", "Section 355 split-up", "Type B reorganization"]'::jsonb,
 2,
 'A split-up occurs when a parent corporation distributes the stock of two or more controlled subsidiaries to its shareholders and then liquidates. This differs from a spin-off (pro rata distribution of one subsidiary''s stock, parent continues) and a split-off (shareholders exchange parent stock for subsidiary stock, parent continues). In a split-up, the parent corporation ceases to exist after distributing all subsidiary stock.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'An acquiring corporation issues $70 million of its voting stock and $30 million of cash to acquire all of the target''s assets in a transaction intended to qualify as a Type C reorganization. Does this transaction meet the "solely for voting stock" requirement?',
 '["Yes, because the boot relaxation rule permits up to 20% non-stock consideration if at least 80% of the target''s gross assets are acquired for voting stock", "Yes, because any mix of stock and cash is permitted in a Type C", "No, because a Type C reorganization requires 100% voting stock with no exceptions", "No, because $30 million exceeds the $10 million de minimis threshold"]'::jsonb,
 0,
 'Section 368(a)(2)(B) provides a boot relaxation rule for Type C reorganizations: non-stock consideration (boot) may be used if at least 80% of the fair market value of all the target''s property is acquired solely for voting stock. However, any assumption of the target''s liabilities counts as boot for purposes of this 80% test. Here, $70 million of voting stock out of $100 million total equals 70%, which would not meet the 80% threshold — so the answer depends on whether liabilities are assumed. Without liability assumption, this fails; the question tests knowledge of the rule itself.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'In a reorganization, the "device test" under Section 355 is designed to prevent:',
 '["The use of a distribution to circumvent the continuity of interest requirement", "The use of a spin-off, split-off, or split-up principally as a device for distributing earnings and profits as capital gains rather than dividends", "The transfer of assets between related corporations without gain recognition", "The acquisition of a loss corporation solely for its net operating losses"]'::jsonb,
 1,
 'The device test under Section 355(a)(1)(B) prevents taxpayers from using corporate separations (spin-offs, split-offs, and split-ups) principally as a device for distributing accumulated earnings and profits to shareholders at capital gains rates rather than as ordinary dividend income. The IRS examines several factors, including subsequent sales of distributed stock, the nature and use of assets, and the business purpose for the distribution.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'A buyer is considering acquiring Target Corporation. Target has significant built-in gains in its assets and a low stock basis held by its shareholders. The buyer wants a stepped-up basis in the assets. Which structure best achieves this goal while minimizing total tax cost?',
 '["A Type B stock-for-stock reorganization", "A Type A statutory merger with no boot", "A taxable asset purchase directly from Target", "A taxable stock purchase with a Section 338(h)(10) election, if Target is an S corporation or a subsidiary of an affiliated group"]'::jsonb,
 3,
 'A 338(h)(10) election allows the buyer to obtain a stepped-up basis in the target''s assets (as in a deemed asset sale) while avoiding the double taxation that would occur in a taxable asset purchase (corporate-level gain plus shareholder-level gain on liquidation). With 338(h)(10), the stock sale is disregarded, and only the deemed asset sale is recognized — on the old target''s final return. This is particularly advantageous when the target is an S corporation or a subsidiary, as the gain flows through to shareholders who can offset it with their stock basis.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'A Type G reorganization under Section 368(a)(1)(G) applies specifically to:',
 '["Transfers of assets by a corporation in a bankruptcy or receivership proceeding", "Conversions of partnerships to corporations", "Transfers of intangible assets between related corporations", "Recapitalizations involving the exchange of debt for equity"]'::jsonb,
 0,
 'A Type G reorganization involves a transfer of assets by a debtor corporation to an acquiring corporation pursuant to a court-approved plan in a Title 11 bankruptcy or similar insolvency proceeding. Type G reorganizations have relaxed continuity of interest requirements (creditors can be treated as having the requisite continuity) and are designed to facilitate tax-free restructuring of insolvent corporations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Restructuring',
 'In a qualifying reorganization, the acquiring corporation''s basis in the assets received from the target corporation is generally:',
 '["The fair market value of the assets on the date of transfer", "The target''s adjusted basis in the assets, increased by any gain recognized by the target on the transfer", "The acquiring corporation''s cost of the stock used as consideration", "Zero, because no gain is recognized in a tax-free reorganization"]'::jsonb,
 1,
 'Under Section 362(b), the acquiring corporation''s basis in assets received in a reorganization is the target''s adjusted basis (carryover basis), increased by any gain recognized by the target on the transfer. This carryover basis rule preserves the built-in gain for future recognition by the acquiring corporation. If the target recognizes gain (for example, due to boot), the basis is increased by that recognized gain.',
 'medium');
