import type { SectionProgress } from "@/components/section-progress-card";

export interface ReadinessResult {
	score: number; // 0–100 composite
	coverage: number; // 0–1
	volume: number; // 0–1
	accuracy: number; // 0–1 (0 if < 30 questions)
	probability: number; // 0–100 probability of passing
}

const MIN_QUESTIONS_FOR_ACCURACY = 50; // Increased for better prediction

/**
 * Compute an exam-readiness score and passing probability from section progress data.
 *
 * Probability calculation:
 * - Weighted Accuracy (60%)
 * - Weighted Coverage (30%)
 * - Weighted Volume   (10%)
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

	// Probability: heavily biased toward accuracy, but capped by coverage
	// Someone with 100% accuracy on only 5% of the blueprint is NOT likely to pass.
	let prob = 0;
	if (progress.questionsPracticed >= MIN_QUESTIONS_FOR_ACCURACY) {
		const accuracyFactor = Math.max(0, (accuracy - 0.5) / 0.45); // 0 at 50% acc, 1.0 at 95% acc
		const coverageFactor = Math.min(1, coverage / 0.8); // 1.0 at 80% coverage
		
		prob = Math.round((accuracyFactor * 70 + coverageFactor * 30) * Math.min(1, progress.questionsPracticed / 200));
	}
	
	const probability = Math.max(0, Math.min(99, prob)); // Cap at 99% because nothing is certain

	return { score, coverage, volume, accuracy, probability };
}
