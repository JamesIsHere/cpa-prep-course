// Barrel for topic specifications. Lookup is by `questions.topic` field value.
//
// Add a new spec by:
//   1. Creating src/lib/topic-specs/<section>-<kebab-topic-name>.ts that exports a `spec`
//      object conforming to TopicSpec
//   2. Importing and registering it below
//
// Topics without a spec return undefined — the generator and validator should treat that
// as "no scope constraint" (legacy behavior) until specs cover the full bank.

import type { TopicSpec } from "./types";
import { spec as barProspective } from "./bar-prospective-analysis-and-forecasting";
import { spec as barFinancialValuation } from "./bar-financial-valuation-methods";
import { spec as barDerivatives } from "./bar-derivatives-and-hedging";
import { spec as tcpInternational } from "./tcp-international-tax";
import { spec as regSCorporations } from "./reg-s-corporations";
import { spec as barCapitalStructureAndValuation } from "./bar-capital-structure-and-valuation";
import { spec as barRiskManagementAndEconomics } from "./bar-risk-management-and-economics";
import { spec as farFairValue } from "./far-fair-value";
import { spec as regCCorporations } from "./reg-c-corporations";
import { spec as tcpOwnerEntityTransactions } from "./tcp-owner-entity-transactions";
import { spec as barFinancialStatementAnalysis } from "./bar-financial-statement-analysis";
import { spec as regPartnerships } from "./reg-partnerships";
import { spec as tcpPassiveActivityAndAtRiskRules } from "./tcp-passive-activity-and-at-risk-rules";
import { spec as farLeases } from "./far-leases";
import { spec as barBusinessCombinations } from "./bar-business-combinations";
import { spec as audAuditEvidence } from "./aud-audit-evidence";
import { spec as audRiskAssessment } from "./aud-risk-assessment";
import { spec as tcpAdvancedBasisCalculations } from "./tcp-advanced-basis-calculations";
import { spec as barForeignCurrencyTransactions } from "./bar-foreign-currency-transactions";
import { spec as audUsingTheWorkOfOthers } from "./aud-using-the-work-of-others";
import { spec as audAuditSampling } from "./aud-audit-sampling";
import { spec as tcpCapitalStructureTaxPlanning } from "./tcp-capital-structure-tax-planning";
import { spec as tcpEntityChoiceAndPlanning } from "./tcp-entity-choice-and-planning";
import { spec as regIndividualTaxationDeductions } from "./reg-individual-taxation-deductions";
import { spec as audMateriality } from "./aud-materiality";
import { spec as audAuditPlanning } from "./aud-audit-planning";
import { spec as tcpMultiJurisdictionalTaxPlanning } from "./tcp-multi-jurisdictional-tax-planning";
import { spec as tcpEntityFormationAndLiquidation } from "./tcp-entity-formation-and-liquidation";
import { spec as tcpEntityFormationAndRestructuring } from "./tcp-entity-formation-and-restructuring";
import { spec as iscSocEngagements } from "./isc-soc-engagements";
import { spec as iscSocReporting } from "./isc-soc-reporting";
import { spec as iscSocTestingControls } from "./isc-soc-testing-controls";
import { spec as iscSocReportContentAndStructure } from "./isc-soc-report-content-and-structure";
import { spec as iscSocReportingAndTrustServicesCriteria } from "./isc-soc-reporting-and-trust-services-criteria";

const SPECS: Record<string, TopicSpec> = {
	[barProspective.topic]: barProspective,
	[barFinancialValuation.topic]: barFinancialValuation,
	[barDerivatives.topic]: barDerivatives,
	[tcpInternational.topic]: tcpInternational,
	[regSCorporations.topic]: regSCorporations,
	[barCapitalStructureAndValuation.topic]: barCapitalStructureAndValuation,
	[barRiskManagementAndEconomics.topic]: barRiskManagementAndEconomics,
	[farFairValue.topic]: farFairValue,
	[regCCorporations.topic]: regCCorporations,
	[tcpOwnerEntityTransactions.topic]: tcpOwnerEntityTransactions,
	[barFinancialStatementAnalysis.topic]: barFinancialStatementAnalysis,
	[regPartnerships.topic]: regPartnerships,
	[tcpPassiveActivityAndAtRiskRules.topic]: tcpPassiveActivityAndAtRiskRules,
	[farLeases.topic]: farLeases,
	[barBusinessCombinations.topic]: barBusinessCombinations,
	[audAuditEvidence.topic]: audAuditEvidence,
	[audRiskAssessment.topic]: audRiskAssessment,
	[tcpAdvancedBasisCalculations.topic]: tcpAdvancedBasisCalculations,
	[barForeignCurrencyTransactions.topic]: barForeignCurrencyTransactions,
	[audUsingTheWorkOfOthers.topic]: audUsingTheWorkOfOthers,
	[audAuditSampling.topic]: audAuditSampling,
	[tcpCapitalStructureTaxPlanning.topic]: tcpCapitalStructureTaxPlanning,
	[tcpEntityChoiceAndPlanning.topic]: tcpEntityChoiceAndPlanning,
	[regIndividualTaxationDeductions.topic]: regIndividualTaxationDeductions,
	[audMateriality.topic]: audMateriality,
	[audAuditPlanning.topic]: audAuditPlanning,
	[tcpMultiJurisdictionalTaxPlanning.topic]: tcpMultiJurisdictionalTaxPlanning,
	[tcpEntityFormationAndLiquidation.topic]: tcpEntityFormationAndLiquidation,
	[tcpEntityFormationAndRestructuring.topic]: tcpEntityFormationAndRestructuring,
	[iscSocEngagements.topic]: iscSocEngagements,
	[iscSocReporting.topic]: iscSocReporting,
	[iscSocTestingControls.topic]: iscSocTestingControls,
	[iscSocReportContentAndStructure.topic]: iscSocReportContentAndStructure,
	[iscSocReportingAndTrustServicesCriteria.topic]: iscSocReportingAndTrustServicesCriteria,
};

/** Look up the topic spec for a given questions.topic value. Returns undefined if none. */
export function getTopicSpec(topic: string): TopicSpec | undefined {
	return SPECS[topic];
}

/** All registered topic specs (for audit / overview tooling). */
export function allTopicSpecs(): TopicSpec[] {
	return Object.values(SPECS);
}

/** Topics that have a spec written. */
export function specifiedTopics(): string[] {
	return Object.keys(SPECS);
}

export type { TopicSpec, BannedTerm } from "./types";
