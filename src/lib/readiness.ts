import type { SectionProgress } from "@/components/section-progress-card";

export interface ReadinessResult {
	score: number; // 0–100 composite
	coverage: number; // 0–1
	volume: number; // 0–1
	accuracy: number; // 0–1 (0 if < 30 questions)
}

const MIN_QUESTIONS_FOR_ACCURACY = 30;

/**
 * Compute an exam-readiness score from section progress data.
 *
 * Sub-scores:
 *   Coverage (33%) — blueprint groups touched / total
 *   Volume   (33%) — questions practiced / total (capped at 1.0)
 *   Accuracy (34%) — correct / practiced (requires 30+ questions, else 0)
 */
export function computeReadiness(progress: SectionProgress): ReadinessResult {
	const coverage =
		progress.blueprintGroupsTotal > 0
			? progress.blueprintGroupsTouched / progress.blueprintGroupsTotal
			: 0;

	const volume =
		progress.totalQuestions > 0
			? Math.min(progress.questionsPracticed / progress.totalQuestions, 1)
			: 0;

	const accuracy =
		progress.questionsPracticed >= MIN_QUESTIONS_FOR_ACCURACY
			? progress.totalCorrect / progress.questionsPracticed
			: 0;

	const score = Math.round(coverage * 33 + volume * 33 + accuracy * 34);

	return { score, coverage, volume, accuracy };
}
