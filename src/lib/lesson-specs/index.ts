// Barrel for topic specifications. Lookup is by `questions.topic` field value.
//
// Add a new spec by:
//   1. Creating src/lib/topic-specs/<section>-<kebab-topic-name>.ts that exports a `spec`
//      object conforming to LessonSpec
//   2. Importing and registering it below
//
// Topics without a spec return undefined — the generator and validator should treat that
// as "no scope constraint" (legacy behavior) until specs cover the full bank.

import type { LessonSpec } from "./types";
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
import { spec as tcpEntityTaxComplianceNolsAndConsolidatedReturns } from "./tcp-entity-tax-compliance-nols-and-consolidated-returns";
import { spec as audInternalControls } from "./aud-internal-controls";
import { spec as audTestsOfControls } from "./aud-tests-of-controls";
import { spec as audQualityManagement } from "./aud-quality-management";
import { spec as audAuditReports } from "./aud-audit-reports";
import { spec as audMisstatementsAndControlDeficiencies } from "./aud-misstatements-and-control-deficiencies";
import { spec as regIndividualTaxationCredits } from "./reg-individual-taxation-credits";
import { spec as regEstateAndGiftTax } from "./reg-estate-and-gift-tax";
import { spec as barStockCompensationAndBusinessCombinations } from "./bar-stock-compensation-and-business-combinations";

const SPECS: Record<string, LessonSpec> = {
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
	[tcpEntityTaxComplianceNolsAndConsolidatedReturns.topic]: tcpEntityTaxComplianceNolsAndConsolidatedReturns,
	[audInternalControls.topic]: audInternalControls,
	[audTestsOfControls.topic]: audTestsOfControls,
	[audQualityManagement.topic]: audQualityManagement,
	[audAuditReports.topic]: audAuditReports,
	[audMisstatementsAndControlDeficiencies.topic]: audMisstatementsAndControlDeficiencies,
	[regIndividualTaxationCredits.topic]: regIndividualTaxationCredits,
	[regEstateAndGiftTax.topic]: regEstateAndGiftTax,
	[barStockCompensationAndBusinessCombinations.topic]: barStockCompensationAndBusinessCombinations,
};

/** Look up the topic spec for a given questions.topic value. Returns undefined if none. */
export function getLessonSpec(topic: string): LessonSpec | undefined {
	return SPECS[topic];
}

/** All registered topic specs (for audit / overview tooling). */
export function allLessonSpecs(): LessonSpec[] {
	return Object.values(SPECS);
}

/** Topics that have a spec written. */
export function specifiedLessons(): string[] {
	return Object.keys(SPECS);
}

export type { LessonSpec, BannedTerm } from "./types";
