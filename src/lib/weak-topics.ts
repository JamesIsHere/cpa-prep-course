export interface TopicPerformance {
	topic: string;
	correct: number;
	total: number;
	accuracy: number;
}

export interface TopicAnalysis {
	weakTopics: TopicPerformance[];
	strongTopics: TopicPerformance[];
}

const MIN_ATTEMPTS = 3;
const WEAK_COUNT = 3;

/**
 * Aggregate per-topic scores from quiz attempts and rank by accuracy.
 *
 * Each input entry is the `topic_scores` JSONB array from a single quiz_attempt:
 *   { topic: string; correct: number; total: number }[]
 *
 * Topics with fewer than MIN_ATTEMPTS total questions are excluded to avoid noise.
 * Returns bottom 3 as weakTopics and top 3 as strongTopics (by accuracy).
 */
export function analyzeTopicPerformance(
	topicScoresArrays: { topic: string; correct: number; total: number }[][],
): TopicAnalysis {
	const agg = new Map<string, { correct: number; total: number }>();

	for (const scores of topicScoresArrays) {
		for (const ts of scores) {
			const entry = agg.get(ts.topic) ?? { correct: 0, total: 0 };
			entry.correct += ts.correct;
			entry.total += ts.total;
			agg.set(ts.topic, entry);
		}
	}

	const qualified: TopicPerformance[] = [];
	for (const [topic, { correct, total }] of agg) {
		if (total >= MIN_ATTEMPTS) {
			qualified.push({
				topic,
				correct,
				total,
				accuracy: correct / total,
			});
		}
	}

	// Sort ascending by accuracy for weak topics
	qualified.sort((a, b) => a.accuracy - b.accuracy);

	const weakTopics = qualified.slice(0, WEAK_COUNT);
	const strongTopics = qualified
		.slice(-WEAK_COUNT)
		.reverse(); // best first

	return { weakTopics, strongTopics };
}
