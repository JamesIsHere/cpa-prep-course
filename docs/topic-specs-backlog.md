# Topic-specs backlog (extracted from scaffolder stubs)

This file contains the metadata for the 87 unauthored topic-spec stubs that were previously sitting in `src/lib/topic-specs/` as empty `.ts` files. Those files have been deleted as part of the 2026-04-15 cleanup sweep (retirement queue row #2). The pre-computed section/topic/blueprintRef data lives here instead.

## Important: these blueprintRef values are scaffolder guesses

The scaffolder picks a `blueprintRef` at generation time by heuristic, and **it guesses wrong about 40% of the time** (six of fourteen specs in Stage 3 #4-17 had to be re-anchored during authoring). Do NOT trust the `blueprintRef` column below as authoritative. ALWAYS verify against `alignment/aicpa-blueprint-tasks.json` before authoring.

**Additionally:** these are `blueprint.ts`-style refs (Slayer-lesson coordinate system), not AICPA JSON refs. Per `docs/blueprint-coordinate-systems.md`, task-specs must anchor to AICPA JSON coordinates, not blueprint.ts letters. When promoting a row from this backlog into a task-spec, translate the ref into the AICPA JSON coordinate system first.

## How to resurrect a stub

When a session decides to author a spec for a topic in this backlog:

1. Regenerate the stub file via `npx tsx scripts/qa/scaffold-topic-spec.ts --topic="..."` (if the scaffolder still exists and is parameterized for this). OR
2. Copy an existing authored spec as a template and edit the fields.
3. Either way, verify the AICPA anchor manually before filling `inScope`/`outOfScope`/`bannedTerms`.

## Backlog by section

### AUD (18 topics)

| Topic | blueprint.ts ref | Slayer group | Lessons | Scaffolded |
|---|---|---|---|---|
| Analytical Procedures | `AUD/III/C` | AUD/III/C Analytical procedures | 08-substantive-procedures | 2026-04-14 |
| Attestation Engagements | `AUD/IV/E` | AUD/IV/E Attestation engagements | 11-attestation-engagements | 2026-04-14 |
| Ethics and Independence | `AUD/I/B` | AUD/I/B Professional ethics and conduct | 02-ethics-and-independence | 2026-04-14 |
| Government Auditing Standards | `AUD/I/E` | AUD/I/E Government Auditing Standards and Single Audit | 13-government-auditing | 2026-04-14 |
| Independence | `AUD/I/C` | AUD/I/C Independence | 02-ethics-and-independence | 2026-04-14 |
| Modifications to the Auditor Report | `AUD/IV/B` | AUD/IV/B Modifications to the auditor's report | 09-audit-reports | 2026-04-14 |
| Nature and Scope of Engagements | `AUD/I/A` | AUD/I/A Nature and scope of engagements | 01-intro | 2026-04-14 |
| Other Information and Supplementary Information | `AUD/IV/C` | AUD/IV/C Other information and supplementary information | 09-audit-reports | 2026-04-14 |
| Professional Responsibilities | `AUD/I/B` | AUD/I/B Professional ethics and conduct | 02-ethics-and-independence | 2026-04-14 |
| Professional Skepticism and Judgment | `AUD/I/D` | AUD/I/D Professional skepticism and judgment | 01-intro | 2026-04-14 |
| Responding to Assessed Risks | `AUD/II/E` | AUD/II/E Responding to assessed risks | 04-risk-assessment | 2026-04-14 |
| Review and Compilation | `AUD/IV/D` | AUD/IV/D Reviews and compilations | 10-review-compilation | 2026-04-14 |
| Review/Compilation Engagements | `AUD/IV/D` | AUD/IV/D Reviews and compilations | 10-review-compilation | 2026-04-14 |
| Specific Areas and Transactions | `AUD/III/H` | AUD/III/H Specific areas and transactions | 08-substantive-procedures | 2026-04-14 |
| Substantive Procedures | `AUD/III/A` | AUD/III/A Substantive procedures | 08-substantive-procedures | 2026-04-14 |
| Terms of Engagement | `AUD/I/G` | AUD/I/G Terms of engagement | 03-audit-planning | 2026-04-14 |
| Understanding the Entity and Environment | `AUD/II/B` | AUD/II/B Understanding the entity and its environment | 03-audit-planning | 2026-04-14 |
| Written Representations | `AUD/III/G` | AUD/III/G Written representations | 06-audit-evidence | 2026-04-14 |

### BAR (10 topics)

| Topic | blueprint.ts ref | Slayer group | Lessons | Scaffolded |
|---|---|---|---|---|
| Advanced Consolidations | `BAR/II/E` | BAR/II/E Consolidations (advanced) | 09-consolidations-advanced | 2026-04-14 |
| Advanced Lease Transactions | `BAR/II/I` | BAR/II/I Advanced lease transactions | 13-advanced-leases | 2026-04-14 |
| Advanced Revenue and Intangibles | `BAR/II/A` | BAR/II/A Revenue recognition (advanced) | 07-advanced-revenue | 2026-04-14 |
| Fund-to-Government-Wide Reconciliation | `BAR/III/B` | BAR/III/B Reconciliation requirements | 15-fund-reconciliation | 2026-04-14 |
| Income Taxes Advanced | `BAR/II/J` | BAR/II/J Income taxes (advanced) | 09-consolidations-advanced | 2026-04-14 |
| Intangible Assets Advanced | `BAR/II/H` | BAR/II/H Intangible assets (advanced) | 07-advanced-revenue | 2026-04-14 |
| Interfund Transactions | `BAR/III/C` | BAR/III/C Specific transactions and events | 16-interfund-transactions | 2026-04-14 |
| Internal-Use Software and Cloud Computing | `BAR/II/B` | BAR/II/B Internal-use software and cloud computing | 12-internal-use-software | 2026-04-14 |
| Pension and Postretirement Benefits | `BAR/II/K` | BAR/II/K Employee benefit plans | 14-employee-benefit-plans | 2026-04-14 |
| State and Local Government Reporting | `BAR/III/A` | BAR/III/A Government-wide financial statements | 11-government-advanced | 2026-04-14 |

### FAR (22 topics)

| Topic | blueprint.ts ref | Slayer group | Lessons | Scaffolded |
|---|---|---|---|---|
| Accounting Changes and Error Corrections | `FAR/III/A` | FAR/III/A Accounting changes and error corrections | 18-accounting-changes | 2026-04-14 |
| Cash and Cash Equivalents | `FAR/II/A` | FAR/II/A Cash and cash equivalents | 09-cash-and-cash-equivalents | 2026-04-14 |
| Consolidations | `FAR/I/A` | FAR/I/A General-purpose financial reporting: for-profit business entities | 01-financial-reporting-for-profit, 02-statement-of-cash-flows, 03-consolidated-financial-statements | 2026-04-14 |
| Contingencies | `FAR/III/B` | FAR/III/B Contingencies and commitments | 19-contingencies | 2026-04-14 |
| Debt | `FAR/II/H` | FAR/II/H Debt (financial liabilities) | 16-debt | 2026-04-14 |
| Equity | `FAR/II/I` | FAR/II/I Equity | 17-equity | 2026-04-14 |
| Financial Reporting: For-Profit | `FAR/I/A` | FAR/I/A General-purpose financial reporting: for-profit business entities | 01-financial-reporting-for-profit, 02-statement-of-cash-flows, 03-consolidated-financial-statements | 2026-04-14 |
| Financial Statement Ratios | `FAR/I/F` | FAR/I/F Financial statement ratios and performance metrics | 08-financial-statement-ratios | 2026-04-14 |
| Income Taxes | `FAR/III/D` | FAR/III/D Accounting for income taxes | 21-income-taxes | 2026-04-14 |
| Intangible Assets | `FAR/II/F` | FAR/II/F Intangible assets | 14-intangible-assets | 2026-04-14 |
| Inventory | `FAR/II/C` | FAR/II/C Inventory | 11-inventory | 2026-04-14 |
| Investments | `FAR/II/E` | FAR/II/E Investments | 13-investments | 2026-04-14 |
| Not-for-Profit Accounting | `FAR/I/B` | FAR/I/B General-purpose financial reporting: nongovernmental not-for-profit entities | 04-not-for-profit | 2026-04-14 |
| Payables and Accrued Liabilities | `FAR/II/G` | FAR/II/G Payables and accrued liabilities | 15-payables-and-accrued-liabilities | 2026-04-14 |
| Property, Plant and Equipment | `FAR/II/D` | FAR/II/D Property, plant and equipment | 12-property-plant-equipment | 2026-04-14 |
| Public Company Reporting | `FAR/I/D` | FAR/I/D Public company reporting topics | 06-public-company-reporting | 2026-04-14 |
| Revenue Recognition | `FAR/III/C` | FAR/III/C Revenue recognition | 20-revenue-recognition | 2026-04-14 |
| Special Purpose Frameworks | `FAR/I/E` | FAR/I/E Special purpose frameworks | 07-special-purpose-frameworks | 2026-04-14 |
| State and Local Government | `FAR/I/C` | FAR/I/C State and local government concepts | 05-state-local-government | 2026-04-14 |
| Statement of Cash Flows | `FAR/I/A` | FAR/I/A General-purpose financial reporting: for-profit business entities | 01-financial-reporting-for-profit, 02-statement-of-cash-flows, 03-consolidated-financial-statements | 2026-04-14 |
| Subsequent Events | `FAR/III/G` | FAR/III/G Subsequent events | 24-subsequent-events | 2026-04-14 |
| Trade Receivables | `FAR/II/B` | FAR/II/B Trade receivables | 10-trade-receivables | 2026-04-14 |

### ISC (13 topics)

| Topic | blueprint.ts ref | Slayer group | Lessons | Scaffolded |
|---|---|---|---|---|
| Change Management | `TODO` | ISC/I/E Change management | 05-system-availability | 2026-04-14 |
| Data Management and Lifecycle | `TODO` | ISC/I/C Data management and governance | 04-data-management | 2026-04-14 |
| Data Protection Technologies | `TODO` | ISC/II/F Data protection technologies | 09-privacy | 2026-04-14 |
| ERP and Accounting Information Systems | `ISC/I/B` | ISC/I/B Enterprise systems and applications | 03-erp-accounting-systems | 2026-04-14 |
| Incident Response and Recovery | `ISC/II/D` | ISC/II/D Monitoring and incident response | 10-incident-response | 2026-04-14 |
| IT Audit Frameworks | `TODO` | ISC/I/G IT audit frameworks | 14-it-audit-frameworks | 2026-04-14 |
| IT General Controls | `TODO` | ISC/I/F IT general controls | 13-it-general-controls | 2026-04-14 |
| IT Infrastructure and Architecture | `ISC/I/A` | ISC/I/A IT infrastructure and architecture | 02-it-infrastructure | 2026-04-14 |
| Privacy Requirements and Data Protection | `TODO` | ISC/II/E Privacy requirements | 09-privacy | 2026-04-14 |
| Security and Control Frameworks | `ISC/II/A` | ISC/II/A Security frameworks and standards | 06-security-frameworks | 2026-04-14 |
| Security Controls and Monitoring | `ISC/II/C` | ISC/II/C Security controls and countermeasures | 08-security-controls | 2026-04-14 |
| System Availability and Change Management | `TODO` | ISC/I/D System availability and business continuity | 05-system-availability | 2026-04-14 |
| Threats, Attacks, and Vulnerabilities | `ISC/II/B` | ISC/II/B Threats and vulnerabilities | 07-threats-vulnerabilities | 2026-04-14 |

### REG (18 topics)

| Topic | blueprint.ts ref | Slayer group | Lessons | Scaffolded |
|---|---|---|---|---|
| Agency and Regulation | `REG/II/B` | REG/II/B Agency | 04-agency-and-regulation | 2026-04-14 |
| Alternative Minimum Tax | `REG/IV/E` | REG/IV/E Alternative minimum tax | 10-individual-taxation-credits | 2026-04-14 |
| Business Law: Contracts | `REG/II/A` | REG/II/A Contracts | 03-business-law-contracts | 2026-04-14 |
| Business Structures | `REG/II/C` | REG/II/C Business structures and governance | 05-business-structures | 2026-04-14 |
| Circular 230 | `REG/I/B` | REG/I/B Circular 230 and tax practice | 02-circular-230 | 2026-04-14 |
| Debtor-Creditor Relationships | `REG/II/D` | REG/II/D Debtor-creditor relationships | 16-debtor-creditor | 2026-04-14 |
| Federal Tax Procedures | `REG/I/C` | REG/I/C Federal tax procedures | 14-federal-tax-procedures | 2026-04-14 |
| Government Regulation of Business | `REG/II/E` | REG/II/E Government regulation of business | 04-agency-and-regulation | 2026-04-14 |
| Individual Taxation: Credits/AMT | `REG/IV/C` | REG/IV/C Tax credits and payments | 10-individual-taxation-credits | 2026-04-14 |
| Individual Taxation: Filing/Credits | `REG/IV/D` | REG/IV/D Filing status and dependents | 17-filing-status-dependents | 2026-04-14 |
| Individual Taxation: Income | `REG/IV/A` | REG/IV/A Gross income | 09-individual-taxation-income | 2026-04-14 |
| Legal Duties and Responsibilities | `REG/I/D` | REG/I/D Legal duties and responsibilities | 15-legal-duties | 2026-04-14 |
| Like-Kind Exchanges | `REG/III/B` | REG/III/B Gains, losses, and nontaxable exchanges | 07-property-transactions-gains, 08-like-kind-exchanges | 2026-04-14 |
| Professional Ethics in Tax | `REG/I/A` | REG/I/A Professional ethics for tax practitioners | 02-circular-230 | 2026-04-14 |
| Property Transactions: Basis | `REG/III/A` | REG/III/A Basis and holding period | 06-property-transactions-basis | 2026-04-14 |
| Property Transactions: Gains/Losses | `REG/III/B` | REG/III/B Gains, losses, and nontaxable exchanges | 07-property-transactions-gains, 08-like-kind-exchanges | 2026-04-14 |
| Tax Procedures | `REG/I/C` | REG/I/C Federal tax procedures | 14-federal-tax-procedures | 2026-04-14 |
| Tax-Exempt Organizations | `REG/V/E` | REG/V/E Tax-exempt organizations | 18-tax-exempt-organizations | 2026-04-14 |

### TCP (6 topics)

| Topic | blueprint.ts ref | Slayer group | Lessons | Scaffolded |
|---|---|---|---|---|
| Individual Tax Planning: Compensation | `TCP/I/A` | TCP/I/A Compensation planning and optimization | 02-individual-planning | 2026-04-14 |
| Nontaxable Dispositions | `TCP/IV/B` | TCP/IV/B Nontaxable dispositions | 14-nontaxable-dispositions | 2026-04-14 |
| Related Party Transactions | `TCP/IV/C` | TCP/IV/C Related party transactions | 15-related-party-transactions | 2026-04-14 |
| Retirement Plans and Education Savings | `TCP/I/D` | TCP/I/D Retirement and education savings | 05-retirement-education | 2026-04-14 |
| Trusts and Estates | `TCP/III/A` | TCP/III/A Trust and estate taxation | 10-trusts-estates | 2026-04-14 |
| Wealth Transfer and Gifting Strategies | `TCP/I/C` | TCP/I/C Wealth transfer and estate planning | 04-wealth-transfer | 2026-04-14 |


## Files deleted

The following 87 stub files were deleted from `src/lib/topic-specs/` in commit **[sweep-stub-cleanup]**:

- `src\lib\topic-specs\aud-analytical-procedures.ts`
- `src\lib\topic-specs\aud-attestation-engagements.ts`
- `src\lib\topic-specs\aud-ethics-and-independence.ts`
- `src\lib\topic-specs\aud-government-auditing-standards.ts`
- `src\lib\topic-specs\aud-independence.ts`
- `src\lib\topic-specs\aud-modifications-to-the-auditor-report.ts`
- `src\lib\topic-specs\aud-nature-and-scope-of-engagements.ts`
- `src\lib\topic-specs\aud-other-information-and-supplementary-information.ts`
- `src\lib\topic-specs\aud-professional-responsibilities.ts`
- `src\lib\topic-specs\aud-professional-skepticism-and-judgment.ts`
- `src\lib\topic-specs\aud-responding-to-assessed-risks.ts`
- `src\lib\topic-specs\aud-review-and-compilation.ts`
- `src\lib\topic-specs\aud-review-compilation-engagements.ts`
- `src\lib\topic-specs\aud-specific-areas-and-transactions.ts`
- `src\lib\topic-specs\aud-substantive-procedures.ts`
- `src\lib\topic-specs\aud-terms-of-engagement.ts`
- `src\lib\topic-specs\aud-understanding-the-entity-and-environment.ts`
- `src\lib\topic-specs\aud-written-representations.ts`
- `src\lib\topic-specs\bar-advanced-consolidations.ts`
- `src\lib\topic-specs\bar-advanced-lease-transactions.ts`
- `src\lib\topic-specs\bar-advanced-revenue-and-intangibles.ts`
- `src\lib\topic-specs\bar-fund-to-government-wide-reconciliation.ts`
- `src\lib\topic-specs\bar-income-taxes-advanced.ts`
- `src\lib\topic-specs\bar-intangible-assets-advanced.ts`
- `src\lib\topic-specs\bar-interfund-transactions.ts`
- `src\lib\topic-specs\bar-internal-use-software-and-cloud-computing.ts`
- `src\lib\topic-specs\bar-pension-and-postretirement-benefits.ts`
- `src\lib\topic-specs\bar-state-and-local-government-reporting.ts`
- `src\lib\topic-specs\far-accounting-changes-and-error-corrections.ts`
- `src\lib\topic-specs\far-cash-and-cash-equivalents.ts`
- `src\lib\topic-specs\far-consolidations.ts`
- `src\lib\topic-specs\far-contingencies.ts`
- `src\lib\topic-specs\far-debt.ts`
- `src\lib\topic-specs\far-equity.ts`
- `src\lib\topic-specs\far-financial-reporting-for-profit.ts`
- `src\lib\topic-specs\far-financial-statement-ratios.ts`
- `src\lib\topic-specs\far-income-taxes.ts`
- `src\lib\topic-specs\far-intangible-assets.ts`
- `src\lib\topic-specs\far-inventory.ts`
- `src\lib\topic-specs\far-investments.ts`
- `src\lib\topic-specs\far-not-for-profit-accounting.ts`
- `src\lib\topic-specs\far-payables-and-accrued-liabilities.ts`
- `src\lib\topic-specs\far-property-plant-and-equipment.ts`
- `src\lib\topic-specs\far-public-company-reporting.ts`
- `src\lib\topic-specs\far-revenue-recognition.ts`
- `src\lib\topic-specs\far-special-purpose-frameworks.ts`
- `src\lib\topic-specs\far-state-and-local-government.ts`
- `src\lib\topic-specs\far-statement-of-cash-flows.ts`
- `src\lib\topic-specs\far-subsequent-events.ts`
- `src\lib\topic-specs\far-trade-receivables.ts`
- `src\lib\topic-specs\isc-change-management.ts`
- `src\lib\topic-specs\isc-data-management-and-lifecycle.ts`
- `src\lib\topic-specs\isc-data-protection-technologies.ts`
- `src\lib\topic-specs\isc-erp-and-accounting-information-systems.ts`
- `src\lib\topic-specs\isc-incident-response-and-recovery.ts`
- `src\lib\topic-specs\isc-it-audit-frameworks.ts`
- `src\lib\topic-specs\isc-it-general-controls.ts`
- `src\lib\topic-specs\isc-it-infrastructure-and-architecture.ts`
- `src\lib\topic-specs\isc-privacy-requirements-and-data-protection.ts`
- `src\lib\topic-specs\isc-security-and-control-frameworks.ts`
- `src\lib\topic-specs\isc-security-controls-and-monitoring.ts`
- `src\lib\topic-specs\isc-system-availability-and-change-management.ts`
- `src\lib\topic-specs\isc-threats-attacks-and-vulnerabilities.ts`
- `src\lib\topic-specs\reg-agency-and-regulation.ts`
- `src\lib\topic-specs\reg-alternative-minimum-tax.ts`
- `src\lib\topic-specs\reg-business-law-contracts.ts`
- `src\lib\topic-specs\reg-business-structures.ts`
- `src\lib\topic-specs\reg-circular-230.ts`
- `src\lib\topic-specs\reg-debtor-creditor-relationships.ts`
- `src\lib\topic-specs\reg-federal-tax-procedures.ts`
- `src\lib\topic-specs\reg-government-regulation-of-business.ts`
- `src\lib\topic-specs\reg-individual-taxation-credits-amt.ts`
- `src\lib\topic-specs\reg-individual-taxation-filing-credits.ts`
- `src\lib\topic-specs\reg-individual-taxation-income.ts`
- `src\lib\topic-specs\reg-legal-duties-and-responsibilities.ts`
- `src\lib\topic-specs\reg-like-kind-exchanges.ts`
- `src\lib\topic-specs\reg-professional-ethics-in-tax.ts`
- `src\lib\topic-specs\reg-property-transactions-basis.ts`
- `src\lib\topic-specs\reg-property-transactions-gains-losses.ts`
- `src\lib\topic-specs\reg-tax-exempt-organizations.ts`
- `src\lib\topic-specs\reg-tax-procedures.ts`
- `src\lib\topic-specs\tcp-individual-tax-planning-compensation.ts`
- `src\lib\topic-specs\tcp-nontaxable-dispositions.ts`
- `src\lib\topic-specs\tcp-related-party-transactions.ts`
- `src\lib\topic-specs\tcp-retirement-plans-and-education-savings.ts`
- `src\lib\topic-specs\tcp-trusts-and-estates.ts`
- `src\lib\topic-specs\tcp-wealth-transfer-and-gifting-strategies.ts`
