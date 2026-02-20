// Coverage analysis for AICPA Blueprint vs. course content
// Pure functions — no DB or network calls, works entirely from blueprint data

import type {
	BlueprintArea,
	BlueprintGroup,
	BlueprintSection,
	CpaBlueprint,
} from "./blueprint";

// --- Types ---

export interface GroupCoverage {
	sectionCode: string;
	areaNumber: number;
	areaName: string;
	areaWeight: [number, number];
	groupLetter: string;
	groupName: string;
	hasLessons: boolean;
	lessonCount: number;
	questionCount: number;
	questionTarget: number;
	questionGap: number;
}

export interface AreaCoverage {
	sectionCode: string;
	area: number;
	name: string;
	weight: [number, number];
	totalGroups: number;
	coveredGroups: number;
	lessonCoverage: number;
	totalQuestions: number;
	questionTarget: number;
	questionGap: number;
}

export interface SectionCoverage {
	code: string;
	title: string;
	totalGroups: number;
	coveredGroups: number;
	lessonCoverage: number;
	totalQuestions: number;
	areas: AreaCoverage[];
}

export interface CoverageGap {
	sectionCode: string;
	areaNumber: number;
	areaName: string;
	areaWeight: [number, number];
	groupLetter: string;
	groupName: string;
	missingLessons: boolean;
	questionDeficit: number;
	priority: number;
}

export interface CoverageReport {
	sections: SectionCoverage[];
	gaps: CoverageGap[];
	summary: {
		totalGroups: number;
		coveredGroups: number;
		overallLessonCoverage: number;
		totalQuestions: number;
		totalGaps: number;
	};
}

// --- Core Functions ---

/**
 * Compute the minimum question target for a single group within an area.
 * Uses the midpoint of the area weight range, divided evenly across groups.
 */
export function computeGroupQuestionTarget(
	weight: [number, number],
	groupsInArea: number,
	totalSectionQuestions: number,
): number {
	const midWeight = (weight[0] + weight[1]) / 2 / 100;
	const areaTarget = midWeight * totalSectionQuestions;
	return Math.round(areaTarget / groupsInArea);
}

/**
 * Compute question count for a group by summing its mapped question topics.
 */
function getGroupQuestionCount(
	group: BlueprintGroup,
	questionCounts: Record<string, number>,
): number {
	return group.questionTopics.reduce(
		(sum, topic) => sum + (questionCounts[topic] ?? 0),
		0,
	);
}

/**
 * Generate a full coverage report from blueprint data and question counts.
 */
export function generateCoverageReport(
	blueprint: CpaBlueprint,
	questionCounts: Record<string, number>,
	sectionTotals: Record<string, number>,
): CoverageReport {
	const sections: SectionCoverage[] = [];
	const gaps: CoverageGap[] = [];
	let totalGroups = 0;
	let coveredGroups = 0;
	let totalQuestions = 0;

	for (const section of blueprint) {
		const sectionTotal = sectionTotals[section.code] ?? 0;
		const sectionCoverage = computeSectionCoverage(
			section,
			questionCounts,
			sectionTotal,
			gaps,
		);
		sections.push(sectionCoverage);
		totalGroups += sectionCoverage.totalGroups;
		coveredGroups += sectionCoverage.coveredGroups;
		totalQuestions += sectionCoverage.totalQuestions;
	}

	// Sort gaps by priority (highest first)
	gaps.sort((a, b) => b.priority - a.priority);

	return {
		sections,
		gaps,
		summary: {
			totalGroups,
			coveredGroups,
			overallLessonCoverage:
				totalGroups > 0 ? Math.round((coveredGroups / totalGroups) * 100) : 0,
			totalQuestions,
			totalGaps: gaps.length,
		},
	};
}

function computeSectionCoverage(
	section: BlueprintSection,
	questionCounts: Record<string, number>,
	sectionTotal: number,
	gaps: CoverageGap[],
): SectionCoverage {
	const areas: AreaCoverage[] = [];
	let sectionGroups = 0;
	let sectionCovered = 0;
	let sectionQuestions = 0;

	for (const area of section.areas) {
		const areaCov = computeAreaCoverage(
			section.code,
			area,
			questionCounts,
			sectionTotal,
			gaps,
		);
		areas.push(areaCov);
		sectionGroups += areaCov.totalGroups;
		sectionCovered += areaCov.coveredGroups;
		sectionQuestions += areaCov.totalQuestions;
	}

	return {
		code: section.code,
		title: section.title,
		totalGroups: sectionGroups,
		coveredGroups: sectionCovered,
		lessonCoverage:
			sectionGroups > 0
				? Math.round((sectionCovered / sectionGroups) * 100)
				: 0,
		totalQuestions: sectionQuestions,
		areas,
	};
}

function computeAreaCoverage(
	sectionCode: string,
	area: BlueprintArea,
	questionCounts: Record<string, number>,
	sectionTotal: number,
	gaps: CoverageGap[],
): AreaCoverage {
	let coveredGroups = 0;
	let areaQuestions = 0;
	const groupCount = area.groups.length;
	let areaTarget = 0;

	for (const group of area.groups) {
		const hasLessons = group.lessonSlugs.length > 0;
		if (hasLessons) coveredGroups++;

		const qCount = getGroupQuestionCount(group, questionCounts);
		areaQuestions += qCount;

		const target = computeGroupQuestionTarget(
			area.weight,
			groupCount,
			sectionTotal,
		);
		areaTarget += target;

		const questionGap = Math.max(0, target - qCount);
		const missingLessons = !hasLessons;

		if (missingLessons || questionGap > 0) {
			const weightMid = (area.weight[0] + area.weight[1]) / 2;
			// Priority: high-weight areas with no coverage score highest
			const priority = weightMid * (missingLessons ? 2 : 1) + questionGap;

			gaps.push({
				sectionCode,
				areaNumber: area.area,
				areaName: area.name,
				areaWeight: area.weight,
				groupLetter: group.letter,
				groupName: group.name,
				missingLessons,
				questionDeficit: questionGap,
				priority,
			});
		}
	}

	return {
		sectionCode,
		area: area.area,
		name: area.name,
		weight: area.weight,
		totalGroups: groupCount,
		coveredGroups,
		lessonCoverage:
			groupCount > 0 ? Math.round((coveredGroups / groupCount) * 100) : 0,
		totalQuestions: areaQuestions,
		questionTarget: areaTarget,
		questionGap: Math.max(0, areaTarget - areaQuestions),
	};
}

// --- Formatting ---

/**
 * Format a coverage report as a readable string for console/CI output.
 */
export function formatCoverageReport(report: CoverageReport): string {
	const lines: string[] = [];

	lines.push("═══════════════════════════════════════════════════════");
	lines.push("  AICPA BLUEPRINT COVERAGE REPORT");
	lines.push("═══════════════════════════════════════════════════════");
	lines.push("");

	// Per-section summary
	for (const section of report.sections) {
		lines.push(`${section.code.toUpperCase()} — ${section.title}`);
		lines.push(
			`  Lesson coverage: ${section.coveredGroups}/${section.totalGroups} groups (${section.lessonCoverage}%)`,
		);
		lines.push(`  Questions: ${section.totalQuestions}`);
		lines.push("");

		for (const area of section.areas) {
			const weightStr = `${area.weight[0]}-${area.weight[1]}%`;
			lines.push(`  Area ${area.area}: ${area.name} [${weightStr}]`);
			lines.push(
				`    Lessons: ${area.coveredGroups}/${area.totalGroups} groups | Questions: ${area.totalQuestions}/${area.questionTarget} target`,
			);
			if (area.questionGap > 0) {
				lines.push(`    ⚠ Question gap: ${area.questionGap} needed`);
			}
		}
		lines.push("");
	}

	// Gap list
	lines.push("───────────────────────────────────────────────────────");
	lines.push("  COVERAGE GAPS (sorted by priority)");
	lines.push("───────────────────────────────────────────────────────");
	lines.push("");

	for (const gap of report.gaps) {
		const flags: string[] = [];
		if (gap.missingLessons) flags.push("NO LESSON");
		if (gap.questionDeficit > 0)
			flags.push(`-${gap.questionDeficit} questions`);
		const flagStr = flags.join(", ");

		lines.push(
			`  [${gap.sectionCode.toUpperCase()}] Area ${gap.areaNumber}, Group ${gap.groupLetter}: ${gap.groupName}`,
		);
		lines.push(
			`    Weight: ${gap.areaWeight[0]}-${gap.areaWeight[1]}% | ${flagStr} | Priority: ${gap.priority.toFixed(0)}`,
		);
	}

	// Overall summary
	lines.push("");
	lines.push("───────────────────────────────────────────────────────");
	lines.push("  SUMMARY");
	lines.push("───────────────────────────────────────────────────────");
	lines.push(
		`  Overall lesson coverage: ${report.summary.coveredGroups}/${report.summary.totalGroups} groups (${report.summary.overallLessonCoverage}%)`,
	);
	lines.push(`  Total questions: ${report.summary.totalQuestions}`);
	lines.push(`  Total gaps: ${report.summary.totalGaps}`);
	lines.push("");

	return lines.join("\n");
}
