# Question Curation Plan

Per-section target: 1,500 questions. Distributed by AICPA Blueprint area weights.

**Goal:** 9,000 total questions across all sections.

**Batch size:** 30 questions per generation batch.

**To generate:** 2,430 new questions (~126 batches).

**To trim:** 5,712 questions to delete (keep best, cut weakest).

**Difficulty targets:** 30% easy / 50% medium / 20% hard.

## Workflow

For each section:
1. **Trim** — for over-target topics, score/rank existing questions and delete the weakest
2. **Generate** — for under-target topics, run orchestrator to fill the gap
3. **Review** — manual human review of the surviving question set

## Section Overview

| Section | Current | Target | To Trim | To Generate | Gen Batches | Status |
|---------|---------|--------|---------|-------------|-------------|--------|
| AUD     | 3,618 | 1,500 | 2,355 | 177 | 29 | Generating |
| FAR     | 3,511 | 1,500 | 2,022 | 11 | 2 | Pending |
| REG     | 2,448 | 1,500 | 1,010 | 16 | 9 | Generating |
| BAR     | 1,189 | 1,500 | 151 | 462 | 29 | Pending |
| ISC     | 1,479 | 1,500 | 78 | 99 | 32 | Generating |
| TCP     | 1,103 | 1,500 | 96 | 493 | 30 | Generating |

## Topic Detail

### AUD

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Ethics and Independence | 60 | 38 | -22 |  |
| 1 | Government Auditing Standards | 34 | 38 |  | +4 |
| 1 | Independence | 20 | 38 |  | +18 |
| 1 | Nature and Scope of Engagements | 20 | 38 |  | +18 |
| 1 | Professional Responsibilities | 37 | 38 |  | +1 |
| 1 | Professional Skepticism and Judgment | 38 | 38 |  |  |
| 1 | Quality Management | 55 | 38 | -17 |  |
| 1 | Terms of Engagement | 20 | 38 |  | +18 |
| 2 | Audit Planning | 62 | 64 |  | +2 |
| 2 | Internal Controls | 72 | 64 | -8 |  |
| 2 | Materiality | 50 | 64 |  | +14 |
| 2 | Responding to Assessed Risks | 20 | 64 |  | +44 |
| 2 | Risk Assessment | 64 | 64 |  |  |
| 2 | Understanding the Entity and Environment | 20 | 64 |  | +44 |
| 2 | Using the Work of Others | 20 | 64 |  | +44 |
| 3 | Analytical Procedures | 50 | 65 |  | +15 |
| 3 | Audit Evidence | 67 | 65 | -2 |  |
| 3 | Audit Sampling | 52 | 65 |  | +13 |
| 3 | Misstatements and Control Deficiencies | 1649 | 65 | -1584 |  |
| 3 | Specific Areas and Transactions | 56 | 65 |  | +9 |
| 3 | Substantive Procedures | 58 | 65 |  | +7 |
| 3 | Tests of Controls | 20 | 65 |  | +45 |
| 3 | Written Representations | 747 | 65 | -682 |  |
| 4 | Attestation Engagements | 46 | 38 | -8 |  |
| 4 | Audit Reports | 62 | 38 | -24 |  |
| 4 | Modifications to the Auditor Report | 20 | 38 |  | +18 |
| 4 | Other Information and Supplementary Information | 20 | 38 |  | +18 |
| 4 | Review and Compilation | 46 | 38 | -8 |  |
| 4 | Review/Compilation Engagements | 37 | 38 |  | +1 |

### FAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Conceptual Framework and Standards | 80 | 80 |  |  |
| 1 | Earnings Per Share | 1541 | 80 | -1461 |  |
| 1 | Employee Benefit Plans | 125 | 80 | -45 |  |
| 1 | Financial Statements | 108 | 80 | -28 |  |
| 1 | Special Purpose Frameworks | 94 | 80 | -14 |  |
| 1 | Statement of Cash Flows | 88 | 80 | -8 |  |
| 2 | Bonds and Debt | 74 | 53 | -21 |  |
| 2 | Cash and Receivables | 64 | 53 | -11 |  |
| 2 | Equity | 75 | 53 | -22 |  |
| 2 | Fixed Assets | 74 | 53 | -21 |  |
| 2 | Intangible Assets | 72 | 53 | -19 |  |
| 2 | Inventory | 75 | 53 | -22 |  |
| 2 | Leases | 78 | 53 | -25 |  |
| 2 | Payables and Accrued Liabilities | 50 | 53 |  | +3 |
| 2 | Revenue Recognition | 83 | 53 | -30 |  |
| 3 | Accounting Changes and Error Corrections | 80 | 58 | -22 |  |
| 3 | Consolidations | 107 | 58 | -49 |  |
| 3 | Contingencies | 64 | 58 | -6 |  |
| 3 | Fair Value | 69 | 58 | -11 |  |
| 3 | Governmental Accounting Fundamentals | 50 | 58 |  | +8 |
| 3 | Income Taxes | 75 | 58 | -17 |  |
| 3 | Not-for-Profit Accounting | 71 | 58 | -13 |  |
| 4 | Governmental Accounting | 314 | 137 | -177 |  |

### REG

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Circular 230 | 42 | 45 |  | +3 |
| 1 | Federal Tax Procedures | 40 | 45 |  | +5 |
| 1 | Legal Duties and Responsibilities | 45 | 45 |  |  |
| 1 | Professional Ethics in Tax | 29 | 45 |  | +16 |
| 1 | Tax Procedures | 45 | 45 |  |  |
| 2 | Agency and Regulation | 66 | 60 | -6 |  |
| 2 | Business Law: Contracts | 73 | 60 | -13 |  |
| 2 | Business Structures | 68 | 60 | -8 |  |
| 2 | Debtor-Creditor Relationships | 62 | 60 | -2 |  |
| 2 | Government Regulation of Business | 50 | 60 |  | +10 |
| 3 | Like-Kind Exchanges | 50 | 50 |  |  |
| 3 | Property Transactions: Basis | 52 | 50 | -2 |  |
| 3 | Property Transactions: Gains/Losses | 44 | 50 |  | +6 |
| 4 | Alternative Minimum Tax | 80 | 68 | -12 |  |
| 4 | Individual Taxation: Credits | 98 | 68 | -30 |  |
| 4 | Individual Taxation: Credits/AMT | 68 | 68 |  |  |
| 4 | Individual Taxation: Deductions | 66 | 68 |  | +2 |
| 4 | Individual Taxation: Filing/Credits | 75 | 68 | -7 |  |
| 4 | Individual Taxation: Income | 85 | 68 | -17 |  |
| 5 | C Corporations | 136 | 83 | -53 |  |
| 5 | Estate and Gift Tax | 205 | 84 | -121 |  |
| 5 | Partnerships | 131 | 83 | -48 |  |
| 5 | S Corporations | 129 | 83 | -46 |  |
| 5 | Tax-Exempt Organizations | 729 | 84 | -645 |  |

### BAR

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Capital Structure and Valuation | 285 | 134 | -151 |  |
| 1 | Financial Statement Analysis | 116 | 134 |  | +18 |
| 1 | Financial Valuation Methods | 83 | 134 |  | +51 |
| 1 | Prospective Analysis and Forecasting | 106 | 134 |  | +28 |
| 1 | Risk Management and Economics | 70 | 134 |  | +64 |
| 2 | Advanced Consolidations | 49 | 55 |  | +6 |
| 2 | Advanced Lease Transactions | 39 | 55 |  | +16 |
| 2 | Advanced Revenue and Intangibles | 49 | 55 |  | +6 |
| 2 | Business Combinations | 20 | 55 |  | +35 |
| 2 | Derivatives and Hedging | 50 | 55 |  | +5 |
| 2 | Foreign Currency Transactions | 20 | 55 |  | +35 |
| 2 | Income Taxes Advanced | 20 | 55 |  | +35 |
| 2 | Intangible Assets Advanced | 20 | 55 |  | +35 |
| 2 | Internal-Use Software and Cloud Computing | 39 | 55 |  | +16 |
| 2 | Pension and Postretirement Benefits | 38 | 55 |  | +17 |
| 2 | Stock Compensation and Business Combinations | 52 | 55 |  | +3 |
| 3 | Fund-to-Government-Wide Reconciliation | 39 | 75 |  | +36 |
| 3 | Interfund Transactions | 38 | 75 |  | +37 |
| 3 | State and Local Government Reporting | 56 | 75 |  | +19 |

### ISC

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Change Management | 79 | 86 |  | +7 |
| 1 | Data Management and Lifecycle | 78 | 86 |  | +8 |
| 1 | ERP and Accounting Information Systems | 78 | 86 |  | +8 |
| 1 | IT Audit Frameworks | 86 | 86 |  |  |
| 1 | IT General Controls | 86 | 86 |  |  |
| 1 | IT Infrastructure and Architecture | 82 | 86 |  | +4 |
| 1 | System Availability and Change Management | 86 | 86 |  |  |
| 2 | Data Protection Technologies | 169 | 100 | -69 |  |
| 2 | Incident Response and Recovery | 109 | 100 | -9 |  |
| 2 | Privacy Requirements and Data Protection | 100 | 100 |  |  |
| 2 | Security and Control Frameworks | 82 | 99 |  | +17 |
| 2 | Security Controls and Monitoring | 100 | 100 |  |  |
| 2 | Threats, Attacks, and Vulnerabilities | 99 | 99 |  |  |
| 3 | SOC Engagements | 45 | 60 |  | +15 |
| 3 | SOC Report Content and Structure | 50 | 60 |  | +10 |
| 3 | SOC Reporting | 60 | 60 |  |  |
| 3 | SOC Reporting and Trust Services Criteria | 60 | 60 |  |  |
| 3 | SOC Testing Controls | 60 | 60 |  |  |

### TCP

| Area | Topic | Current | Target | Trim | Generate |
|------|-------|---------|--------|------|----------|
| 1 | Individual Tax Planning: Compensation | 81 | 132 |  | +51 |
| 1 | Passive Activity and At-Risk Rules | 228 | 132 | -96 |  |
| 1 | Retirement Plans and Education Savings | 86 | 131 |  | +45 |
| 1 | Wealth Transfer and Gifting Strategies | 84 | 131 |  | +47 |
| 2 | Advanced Basis Calculations | 107 | 105 |  |  |
| 2 | Entity Formation and Liquidation | 78 | 105 |  | +27 |
| 2 | Entity Tax Compliance: NOLs and Consolidated Returns | 81 | 105 |  | +24 |
| 2 | International Tax | 54 | 105 |  | +51 |
| 2 | Owner-Entity Transactions | 80 | 105 |  | +25 |
| 3 | Capital Structure Tax Planning | 40 | 56 |  | +16 |
| 3 | Entity Choice and Planning | 44 | 56 |  | +12 |
| 3 | Multi-Jurisdictional Tax Planning | 20 | 56 |  | +36 |
| 3 | Trusts and Estates | 50 | 56 |  | +6 |
| 4 | Entity Formation and Restructuring | 50 | 75 |  | +25 |
| 4 | Nontaxable Dispositions | 40 | 75 |  | +35 |
| 4 | Related Party Transactions | 40 | 75 |  | +35 |

## Batch Log

| Date | Migration | Section | Topic | Count | Notes |
|------|-----------|---------|-------|-------|-------|
| 2026-03-24 | 00481_generate_isc_batch9.sql | ISC | Change Management | 30 | Rollback plans, CAB composition, CMDB, patch mgmt, RICE framework, change categorization, environment separation |
| 2026-03-24 | 00482_generate_tcp_batch9.sql | TCP | Individual Tax Planning: Compensation | 30 | SE tax, 83(b) forfeiture, golden parachute 280G, constructive receipt, SARs, phantom stock, QBI 199A, Section 119/129 |
| 2026-03-24 | 00483_generate_isc_batch10.sql | ISC | Security Controls and Monitoring | 30 | Hashing, SSO risk, CER biometrics, DMZ, DAC/MAC models, log integrity, alerting thresholds, environmental controls, mantraps, bollards, SCADA compensating controls |
| 2026-03-24 | 00478_generate_aud_batch84.sql | AUD | Analytical Procedures | 30 | Scanning, related-party detection, accounting policy changes, conflicting evidence, disaggregation, review engagement analytics, common-size analysis, seasonality, proof-in-total, cross-sectional analysis |
| 2026-03-24 | 00479_generate_reg_batch54.sql | REG | Federal Tax Procedures | 30 | Correspondence audit, lien vs levy, 30-day letter, Appeals hazards, FTF/FTP interaction, refund lookback, valuation misstatement, interest netting, estimated tax safe harbor |
| 2026-03-24 | 00480_generate_bar_batch11.sql | BAR | Risk Management and Economics | 30 | WACC calc, tax shield, trough phase, translation exposure, DOL/DFL/DTL, M&M Props I&II, pecking order, two-stage DDM, PI capital rationing, natural hedging, CAPM blending |
| 2026-03-24 | 00484_generate_tcp_batch10.sql | TCP | Wealth Transfer and Gifting Strategies | 30 | QDOT, qualified disclaimer, net gift, Sec 2036 retained life estate, Sec 2035 three-year rule, gift of services, below-market loans, part-gift/part-sale, non-citizen spouse exclusion, reciprocal trust doctrine, Sec 2032A special use valuation, FLP Sec 2036 challenge |
| 2026-03-24 | 00485_generate_aud_batch85.sql | AUD | Tests of Controls | 30 | Internal audit reliance, upper deviation limit, quarterly 100% testing, detective controls, unpredictability, first-year audit, sequential sampling, test data CAATs, entity-level controls, block selection, access security, change management ITGCs, group audit component reliance, management override evaluation |
| 2026-03-24 | 00486_generate_reg_batch55.sql | REG | Tax Procedures | 19 | Lien attachment timing, adequate disclosure SOL, court choice strategy, FTF/FTP combined calc, Form 872 consent, math error authority, fraud burden shift, penalty mutual exclusivity, levy definition, interest rate adjustment, NFTL creditor priority, field audit location, valuation misstatement 40%, Small Case Division threshold, refund lookback |
| 2026-03-24 | 00488_generate_isc_batch11.sql | ISC | Threats, Attacks, and Vulnerabilities | 30 | Credential stuffing, watering hole, fileless malware, privilege escalation, OWASP broken access control, DNS poisoning, session hijacking, SSRF, cryptojacking, IoA vs IoC, ARP spoofing, insecure deserialization, STRIDE, SBOM, RaaS, evil twin, buffer overflow, malvertising, API security, STIX/TAXII |
| 2026-03-24 | 00487_generate_bar_batch12.sql | BAR | Prospective Analysis and Forecasting | 30 | Weighted MA divergence, adjusted R², SGR, deseasonalizing, tracking signal, DuPont strategy, multicollinearity, capital intensity, IGR, Delphi, alpha lag, retention EFN, MAPE, t-stat, Durbin-Watson, pro forma CF, forecast triangulation, CV, heteroscedasticity, MAD |
| 2026-03-24 | 00490_generate_isc_batch12.sql | ISC | IT Audit Frameworks | 30 | NIST SP 800-53, ALE cost-benefit, COBIT APO domain, framework selection, SLE calc, COSO control environment mapping, CMMI Level 4 vs 5, ATO authorization, optimize and automate, exposure factor, COBIT MEA, COSO monitoring mapping, FIPS 199 categorization, risk register living document, COBIT DSS, ITIL design and transition, vulnerability identification, end-to-end governance, quantitative vs qualitative selection, ITIL Engage, EDM03 risk optimization, RMF Prepare step, risk mitigation, dynamic governance, ARO, ISO 20000, asset inventory, COSO info/communication mapping, ITIL Improve |
| 2026-03-24 | 00489_generate_tcp_batch11.sql | TCP | Advanced Basis Calculations | 30 | Encumbered property gain, per-share per-day, Sec 737, marketable securities 731(c), 732(d) election, disguised sale 707(a)(2)(B), charitable contribution basis, three-tier distribution, Sec 108 exclusion, separately stated items, BIG tax 1374, installment obligation 704(c), nondeductible expense ordering, TCJA technical termination repeal, 734(b) trigger, 1245 recapture carryover, tax credits no basis effect, 704(c)(1)(B) seven-year, PTTP distributions, 704(c)(1)(C) built-in loss, negative AAA, nonrecourse liability tiers, S corp vs partnership guarantees, loan repayment gain, 754 revocation |
| 2026-03-24 | 00493_generate_reg_batch56.sql | REG | Professional Ethics in Tax | 16 | §6694(a)/(b) preparer penalties, §7216 unauthorized disclosure, §10.29 conflicts of interest, contingent fees, client record return, EA practice rights, OPR sanctions, §6695 admin penalties, §10.51 disreputable conduct, solicitation restrictions, reasonable basis vs substantial authority, §10.37 audit lottery, cashing refund checks, prompt disposition, §6662 accuracy penalty, penalty/sanction interplay |
| 2026-03-24 | 00492_generate_aud_batch86.sql | AUD | Materiality | 30 | Clearly trivial threshold, related-party qualitative factors, conglomerate specific materiality, performance materiality calc, aggregated misstatements near materiality, interim revision, documentation requirements, fraud risk effect, governmental benchmark, governance communication, prior-period carryforward, management pressure on materiality, tolerable misstatement allocation, specific vs overall materiality, first-year audit, clearly trivial percentage, clearly trivial application, acquisition revision, user perspective, sample size relationship, management bias pattern, timing of establishment, group audit component materiality, representation letter, scoping new accounts, cash flow misclassification, asset-intensive benchmark, fraud risk pattern, going concern effect, management communication sequence |
| 2026-03-24 | 00491_generate_bar_batch13.sql | BAR | Prospective Analysis and Forecasting | 30 | Autocorrelation residuals, negative r interpretation, forecast combination/ensemble, revenue build-up method, spontaneous assets, step costs in CVP, sales forecast foundation, influential outlier/leverage point, residual analysis heteroscedasticity, multiplicative vs additive seasonal, agreed-upon procedures, learning curve, retained earnings in EFN, cross-sectional regression, cash budget, price elasticity, linear vs exponential growth, prospective audit limitation, S-curve/logistic growth, key assumptions disclosure, error independence, flexible budget variance, EFN growth acceleration, standard error of estimate, dividend payout EFN, forecast triangulation, zero-based budgeting, CI width factors, IGR formula, lagged variables |
| 2026-03-24 | 00494_generate_reg_batch57.sql | REG | Like-Kind Exchanges | 16 | Boot exceeds realized gain cap, nature/character vs grade/quality, tax return due date deadline, mandatory deferral, 200% rule, loss non-recognition, constructive receipt/QI, personal property as boot, basis with boot given+received, simultaneous vs deferred, reverse exchange/EAT, dealer inventory exclusion, deferred gain in basis, 95% rule, personal-use exclusion, installment note as boot |
| 2026-03-24 | 00495_generate_aud_batch87.sql | AUD | Responding to Assessed Risks | 30 | Combined vs substantive approach, dual-purpose tests, fraud indicator response, weak control environment effect, roll-forward procedures, inverse RMM/detection risk, external confirmations, completeness direction of testing, related party transactions, control deficiency effect, further audit procedure categories, substantive procedure types, tests of controls purpose, auditor's specialist, evidence reliability, systematic error response, IT dependence effect, prior year misstatement effect, going concern response, accounting estimates, combined approach definition, unpredictability, inquiry limitations, risk reassessment, existence direction of testing, tests of details definition, CAATs advantages, documentation linkage, confirmation sample sizing, substantive analytical procedure limitations |
| 2026-03-24 | 00496_generate_isc_batch13.sql | ISC | IT General Controls | 30 | Default deny provisioning, RPO vs RTO, differential backup restore, ITGC cascade effect, regression testing, emergency change ratio red flag, rollback plan requirement, batch job sequencing, compensating controls for small IT, event log review, application control reliance on ITGCs, offsite backup, patch management, job failure alerting, UAT definition, post-implementation review, CAB role, root cause analysis, APOC mnemonic, backup encryption, GL close timing, backup retention, threshold alerting, time-limited privileges, integration testing, problem management, access recertification, baseline configuration, backup monitoring, compensating control definition |
| 2026-03-24 | 00500_generate_reg_batch58.sql | REG | Individual Taxation: Credits/AMT | 15 | Credit ordering rules, Other Dependent Credit, Premium Tax Credit, FTC simplified election, care credit age limit, EITC earned income definition, CTC citizenship requirement, GBC carryback/forward, care credit MFJ earned income, care credit expense limits, adoption credit special needs, AMT standard deduction add-back, LLC enrollment flexibility, EITC age requirement, FTC carryback/forward periods |
| 2026-03-24 | 00498_generate_isc_batch14.sql | ISC | Privacy Requirements and Data Protection | 30 | GDPR personal data definition, two-tier penalty calc, right to restrict processing, HIPAA safeguard categorization, CCPA thresholds, extraterritorial reach, automated decision-making Art 22, HIPAA 60-day notification, Do Not Sell link, ePHI vs PHI, processor obligations, privacy as default, administrative safeguards, private right of action, right to object direct marketing, EU-US Data Privacy Framework, HIPAA penalty tiers, Art 49 derogations, oral PHI, non-discrimination, positive-sum principle, household threshold |
| 2026-03-24 | 00501_generate_tcp_batch12.sql | TCP | Entity Formation and Liquidation | 30 | Sec 332 mandatory, holding period tacking, 338(h)(10) S corp, partial liq 5-yr test, 362(e)(2) built-in loss, Sec 381 attribute carryover, 707(a)(2)(B) disguised sale, 334(a) FMV basis, short-term notes as boot, 338 vs 338(h)(10), corporate-level partial liq test, step transaction, 721(b) investment company, S corp single-tax advantage, A/R as property, 336(d)(1) related-party loss, Sec 332 timing, accommodation transferor, 736(a) unstated goodwill, 453B installment acceleration, 357(b) tax avoidance, 731(a)(2) loss rules, 1245 recapture deferral, 332 continuous ownership, nonvoting stock control test, 302(b)(4) noncorporate only, multiparty boot isolation, 453(h) shareholder installment, 351 vs 721 liability comparison, 338(h)(10) stepped-up basis |
| 2026-03-24 | 00502_generate_isc_batch15.sql | ISC | Security and Control Frameworks | 30 | CIA triad, NIST Tier 1/3/4 characteristics, COBIT Level 3 capability, ALE/SLE calculations, ITGC-application control dependency, check digit input controls, batch total processing controls, output controls, corrective controls, ISMS definition, ISO 27001 PDCA Do/Act phases, COSO Risk Assessment/Info-Comm IT application, detective/preventive control classification, COBIT APO/DSS domains, CIS IG3, multi-framework integration, zero trust concurrent functions |
| 2026-03-24 | 00497_generate_aud_batch88.sql | AUD | Understanding the Entity and Environment | 30 | Declining industry going concern, franchise royalty reliability, rapid growth control strain, engagement letter content, cloud migration IT controls, new accounting standard adoption, governance definition, audit strategy vs plan, cryptocurrency holdings, preliminary analytics, multi-component entity, ownership structure, whistleblower hotline findings, management responsibilities, acquisition strategy, predecessor authorization, budgets/forecasts variance, labor union negotiations, actuarial estimates, interim period changes, control environment definition, revenue concentration, related-party leases, framework transition, engagement letter update, multi-jurisdictional operations, audit committee effectiveness, related-party guarantees, restatement history, nonprofit restricted funding |
| 2026-03-24 | 00499_generate_bar_batch14.sql | BAR | Financial Valuation Methods | 30 | PEG ratio, implied growth from P/E, bargain purchase ASC 805, FCF yield, adjusted NAV, non-operating assets in DCF, MPEEM contributory charges, accretion/dilution M&A, cost approach intangibles, exit vs entry price ASC 820, probability-weighted scenarios, conglomerate discount, guideline public company method, net debt bridge, TTM normalization, measurement period ASC 805, replacement cost, real options, liquidation preferences waterfall, sensitivity analysis, precedent transaction premiums, EV/EBITDA vs EV/EBIT, market participant assumptions, stub period, payout ratio DDM impact, operating lease EV adjustment, selection bias in transactions, Monte Carlo simulation, key person discount, guideline transaction method |
| 2026-03-24 | 00504_generate_aud_batch89.sql | AUD | Using the Work of Others | 30 | Bridge letter purpose, carve-out method, component auditor quality concerns, SOC gap period, component materiality, SOC 2 vs SOC 1, internal audit reporting line, group-component communication, service org deficiency impact, direct assistance written acknowledgment, restricted working paper access, specialist assumptions, inclusive vs carve-out, gap period testing, consolidation adjustments, IA quality assurance, group opinion responsibility, service auditor role, shared service center, component instruction deviations, predecessor component papers, subservice org definition, specialist objectivity bias, Type 1 vs Type 2 effect, significant component definition, re-performing IA work, complex estimates at component, SOC report control risk, specialist disagreement, inclusive method definition |
| 2026-03-24 | 00503_generate_tcp_batch13.sql | TCP | Owner-Entity Transactions | 30 | Thin capitalization, Sec 318 sibling exclusion, current distribution basis cap, Sec 302 failed test basis transfer, constructive dividend (auto/rent/expenses/loans), Sec 302(b)(1)/(b)(3)/(b)(4), Sec 318 option/entity/re-attribution, liquidating distribution loss/basis, Sec 267 in-law exclusion/267(d) loss limit, Sec 351 boot, 704(c) built-in gain, S corp AAA/E&P/basis layering, Sec 311(b) appreciated property, debt-vs-equity multi-factor, Sec 7872 gift/compensation loans |
| 2026-03-24 | 00505_generate_isc_batch16.sql | ISC | SOC Report Content and Structure | 30 | TSC Security mandatory, Section IV restricted-use reason, change mgmt multi-criteria mapping, bridge letter insufficiency, four report sections, service auditor opinion elements, AT-C 205 standard, Section IV exception evaluation, encryption multi-criteria, SOC 1 audience, SOC 3 Type II only, CC9 risk mitigation, CC6 access controls, restricted-use recipients, gap period conflicting bridge letter, PI1 points of focus, user entity auditor no reference required, COSO CC3 mapping, Privacy P5 access, Availability least-relevant control, MFA multi-criteria, system description components, SSAE 18 AT-C 320, service auditor independence, management assertion Type II, SOC report type selection, CC7 system operations, Confidentiality C1 EXCEPT, typical exam period, incident response multi-criteria |
| 2026-03-24 | 00506_generate_isc_batch17.sql | ISC | Data Management and Lifecycle | 30 | ACID atomicity, differential restore sequence, graph DB fraud detection, incremental backup, data user role, sharing-phase encryption, column-family time-series, storage-phase encryption at rest, creation-phase input validation, legal hold definition, SOX 7-year retention, backup strategy for fast restore, data validity dimension, RPO/RTO backup evaluation, key-value store, spoliation penalties, governance maturity/classification foundation, certificate of destruction, differential backup definition, lifecycle control-phase matching, custodian-owner separation risk, full backup characteristics, classification-driven controls, archival integrity/media refresh, denormalized warehouse schema, SSD vs HDD degaussing, HIPAA 6-year retention, ETL reconciliation control gaps, DLP for data exfiltration, cryptographic erasure conditions |
| 2026-03-24 | 00508_generate_isc_batch18.sql | ISC | ERP and Accounting Information Systems | 30 | Hash totals, timing differences at integration points, master data fraud, mapping error controls, single point of failure BCP, AIS components, reconciliation controls, audit trail immutability, edit checks, API authentication, cost flow methods, transaction vs master data, change management controls, real-time reporting, audit trail elements, BOM, storage controls, cutoff procedures, standardized processes, before/after values, source documents, split-ordering circumvention, customization upgrade risk, shared database, exception reporting, encryption residual risk, run-to-run totals, AIS data flow, reorder points, system load distribution |
| 2026-03-24 | 00507_generate_tcp_batch14.sql | TCP | Owner-Entity Transactions | 30 | Thin capitalization reclassification, 302(b)(3) family attribution waiver, constructive dividend (auto/rent-free/expenses/loans-no-repayment/bargain sale), Sec 7872 $100K gift NII exception, Sec 7872 compensation loan, Sec 7872 demand vs term, Sec 318 entity-to-owner/option/owner-to-entity/family-no-siblings, Sec 302(b)(1) meaningful reduction, Sec 302(b)(4) partial liquidation, Sec 302 dividend basis transfer, Sec 267 controlled group, S corp basis ordering/debt restoration, Sec 311(a) no loss, partnership current distribution cash>basis/property basis cap, debt-vs-equity multi-factor |
| 2026-03-24 | 00509_generate_isc_batch19.sql | ISC | Change Management | 30 | FSC definition, configuration drift, SDLC-ITIL integration, change models, back-out testing, governance escalation, RICE service request vs change, stakeholder communication, environment promotion controls, automated vs manual CAB, change ownership, technical debt backlog, data migration validation, change closure criteria, parallel vs pilot testing, change enablement ITIL 4, audit trail requirements, change collision analysis, maturity overstatement, SDLC requirements sign-off, risk categorization, PIR definition, smoke testing, immutable artifacts, SDLC planning deliverable, success rate calculation, environment separation, merged org framework, BIA-informed priority, SaaS change governance |
| 2026-03-24 | 00511_generate_isc_batch20.sql | ISC | IT Infrastructure and Architecture | 30 | DHCP, DNS, stateful firewall, multi-tenancy risk, load balancer failover, peer-to-peer controls, RAID 6 dual parity, hot/warm/cold site, MDM, WEP/WPA segmentation, SLA metrics, OSI Application layer, SDN security, subnetting, NAT, IPv6 dual-stack, HA clustering, UPS, forward proxy, star topology, cloud elasticity, thin client VDI, SNMP monitoring, data center tiers, EDR defense-in-depth, routing protocol auth, bandwidth, OSI Physical/Presentation layers, 802.1X port security |
| 2026-03-24 | 00512_generate_isc_batch21.sql | ISC | System Availability and Change Management | 29 | Version control rollback, SDLC testing/deployment/maintenance phases, active-active failover, patch urgency evaluation, BIA financial impact, segregation of duties, maintenance window analytics, geographic redundancy single-provider risk, change backlog metric, BCP non-IT components, requirements traceability, break-glass access, change request documentation, failed change rate trending, environment separation, rollback archival, DR test design evaluation, BIA interdependency gap, change mgmt maturity metrics, CMDB unauthorized modification detection, patch testing control, DR readiness multi-dimension evaluation, data migration validation, UAT by business stakeholders, clustering |
| 2026-03-24 | 00510_generate_tcp_batch15.sql | TCP | Entity Formation and Restructuring | 30 | 355(e) anti-Morris Trust, 354(a)(2) securities boot, 368(a)(2)(C) drop-down, 1032 issuing corp, 357(a) liabilities in reorg, 382 testing period, Morris Trust evaluation, 384 preacquisition losses, 368(b) party to reorg, Type E recapitalization excess securities, 355 distribution requirement, net value requirement, Type A flexibility, 355(d) disqualified distribution, 306 taint in recap, 382(h) NUBIL, dissenting shareholders, triangular Type B, consolidation definition, 382(c) COBE, 356 block-by-block, 338(d)(3) QSP, reorg plan requirement, 361(c) distribution, Type C boot+liabilities, 382 value calc, 368(a)(1)(A) cross-border, 355(e) integrated analysis, 382 in reorg, 355 split-up |
| 2026-03-24 | 00513_generate_isc_batch22.sql | ISC | Security Controls and Monitoring | 22 | Account lockout, tokenization vs masking, honeypot VLAN risk, FIM noise reduction, password salting, reverse proxy, JIT provisioning, geolocation controls, zero trust microsegmentation, CCTV classification, session timeout, MAC filtering limits, awareness training metrics, WPA3 SAE, API gateway, UEBA insider threat, TOTP clock sync, baseline hardening, auth architecture tradeoffs, motion detection, lateral movement detection, API security architecture |
| 2026-03-24 | 00514_generate_tcp_batch16.sql | TCP | Entity Tax Compliance: NOLs and Consolidated Returns | 30 | Joint/several liability, charitable 10% consolidated limit, capital loss netting, Sec 1231 netting, year-end conformity, depreciation triggering deferred gain, SRLY overlap rule, stock basis adjustments, common parent as agent, intercompany loss matching, pre-TCJA vs post-TCJA ordering, FIFO NOL ordering, DRD in NOL computation, capital losses excluded from NOL, ELA ordinary income character, NUBIG Sec 382(h), unused 382 limitation carryforward, reverse acquisition, dual consolidated loss Sec 1503(d) |
| 2026-03-24 | 00515_generate_isc_batch23.sql | ISC | SOC Reporting | 22 | Opinion formation 3-step process, scope limitation disclaimer, compensating controls in mgmt response, bridge letter assurance level, CUEC input validation, long gap period procedures, Section V other information, inherent limitations, principal service commitments, carve-out monitoring controls, Type I vs Type II assertion, qualified vs adverse pervasiveness, CUEC configuration mgmt, adverse opinion substantive testing, system requirements, examination-level assurance, TSC mapping, CUEC incident notification, practitioner independence from mgmt response, multi-subservice mixed methods, population quantification, inclusive method coordination |
| 2026-03-24 | 00516_generate_isc_batch24.sql | ISC | SOC Testing Controls | 22 | Block selection limitations, systematic selection, haphazard selection, population documentation, per-transaction population definition, isolated vs systemic deviations, decision tree ITGC automated, working paper signing, deviation cause analysis, deviation nature classification, inquiry corroboration requirement, random selection default, tests tied to mgmt description, control placement design, authorized personnel operating effectiveness, evidence retention, trust services criteria cross-referencing, prior-period exceptions, key control no compensating, inquiry vs inspection conflict, inherent risk sample sizes, control logic soundness |
| 2026-03-24 | 00517_generate_isc_batch25.sql | ISC | Threats, Attacks, and Vulnerabilities | 21 | Botnet C2, CVSS base score components, lateral movement, business logic flaws, DNS tunneling, polymorphic malware, adware, reconnaissance phase, MITRE ATT&CK, replay attack, honeypot, shoulder surfing, race condition, cryptographic failures OWASP#2, dumpster diving, scareware, steganography, vulnerable components OWASP#6, ISAC threat sharing, open redirect, typosquatting |
| 2026-03-24 | 00518_generate_isc_batch26.sql | ISC | SOC Reporting and Trust Services Criteria | 19 | Type I vs Type II distinction, bridge letter sufficiency evaluation, SOC 3 general-use distribution, auditor opinion three elements, multi-criteria control mapping, Section IV restricted-use rationale, user auditor SOC evaluation steps, management assertion content, four-section report structure, adverse opinion pervasive deficiency, alternative procedures no SOC available, gap period significant system changes, SOC 1 vs SOC 2 purpose, user auditor no reference required, management assertion preparer, CUEC implementation gaps, SOC 3 Type II only, SLA monitoring criteria mapping, service auditor competence evaluation |
| 2026-03-24 | 00519_generate_reg_batch59.sql | REG | Legal Duties and Responsibilities | 13 | §7525 third-party waiver, substantial portion preparer test, §6694(b) offset calc, §6695(g) 3-year retention, OPR vs IRS enforcement, ordinary vs opinion work product, signing preparer definition, dual Circ 230 + statutory exposure, PTIN annual renewal, §6695 aggregate cap, tax shelter more-likely-than-not, §6694(a) reasonable cause defense, Form 8867 requirement |
| 2026-03-24 | 00520_generate_isc_batch27.sql | ISC | IT Audit Frameworks | 18 | EDM02 benefits delivery, EDM05 stakeholder engagement, ITIL 4 progress iteratively, ITIL 4 keep it simple, NIST RMF Implement step, NIST RMF Assess step, NIST RMF Monitor step, APO13 managed security, DSS05 security services, BAI06 IT changes, BAI09 managed assets, MEA01 performance monitoring, MEA02 internal control, COBIT holistic approach, COBIT tailored to enterprise, FIPS 199 low/moderate, COBIT Level 0/5, ISO 38500/27001 |
| 2026-03-24 | 00521_generate_reg_batch60.sql | REG | Government Regulation of Business | 10 | UCC 2-207 battle of forms, respondeat superior detour/frolic, UCC Art 9 perfection, duty of loyalty, firm offer rule, undisclosed principal liability, agency termination by death, agency formation without consideration, agency coupled with interest, perfect tender rule |
| 2026-03-24 | 00522_generate_isc_batch28.sql | ISC | IT General Controls | 18 | Incident severity classification, change freeze zero-day evaluation, authentication factor categories, job execution log purpose, deprovisioning definition, IT policy hierarchy, dual authorization maker-checker, job dependency definition, automated HR-IT deprovisioning, default credential risk, system hardening, media sanitization disposal, change success rate metrics, warm site DR classification, configuration drift detection, formal access request workflow, job restart checkpoint recovery, escalation procedures definition |
| 2026-03-24 | 00523_generate_aud_batch90.sql | AUD | Independence | 18 | SEC prohibited non-audit services, management participation threat, de minimis 5% exception, concurring partner rotation, independence in mind, AICPA six principles, Code Part 1 scope, FROR cooling-off, de minimis threshold calc, client oversight requirement, automatic license revocation, familiarity safeguards, lead partner employment cooling-off, self-review personnel separation, intimidation threat, subsidiary partner rotation, state board vs AICPA authority, PCAOB/SEC sanctions |
| 2026-03-24 | 00524_generate_aud_batch91.sql | AUD | Nature and Scope of Engagements | 18 | Compilation assurance level, audit preconditions mgmt responsibility, AUP findings-only report, professional skepticism, pervasive scope limitation withdrawal, PCAOB vs AICPA applicability, negative assurance review, audit risk model application, engagement letter required content, special purpose regulatory framework, acceptable framework precondition, GAGAS additional scope requirements, compliance vs fair presentation framework, predecessor auditor communication, recurring engagement revised terms, attestation engagement definition, SQMS 1 firm-level quality, audit risk definition |
| 2026-03-24 | 00525_generate_isc_batch29.sql | ISC | Privacy Requirements and Data Protection | 18 | GDPR Article 9 special categories, joint controllers Article 26, HIPAA accounting of disclosures TPO exemption, CCPA sale definition valuable consideration, legitimate interest balancing test, designated record set, children's data consent Article 8, ROPA Article 30, psychotherapy notes heightened protection, authorized agent verification, availability breach classification, marketing authorization remuneration, Article 27 EU representative, financial incentive programs, Safe Harbor 18 identifiers, court order PHI disclosure, data protection by default Article 25(2), breach register documentation Article 33(5) |
| 2026-03-24 | 00526_generate_aud_batch92.sql | AUD | Professional Skepticism and Judgment | 18 | Impediments to skepticism, going concern assumption evaluation, self-review threat, groupthink in teams, management integrity doubt, error vs fraud distinction, control deficiency severity, experience/training role, fair value assumption scrutiny, subsequent event classification, overconfidence bias, consultation for complex judgments, sampling threshold judgment, recency bias, questioning mind definition, fraud triangle elements, motivated reasoning/self-interest, risk-proportionate skepticism |
