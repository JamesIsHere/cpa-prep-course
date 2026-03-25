// Types sent to the client (no answers)
export interface QuizQuestion {
	id: number;
	stem: string;
	choices: string[];
}

// Full question with answer data (server-only)
export interface QuizQuestionFull extends QuizQuestion {
	correct_index: number;
	explanation: string;
	topic: string;
	difficulty: string;
	cognitive_level?: number;
}

// A single answer submitted by the user
export interface QuizAnswer {
	questionId: number;
	selectedIndex: number;
}

// Per-question result returned after scoring
export interface QuizQuestionResult {
	id: number;
	stem: string;
	choices: string[];
	selectedIndex: number;
	correctIndex: number;
	explanation: string;
	correct: boolean;
	topic?: string;
}

// Full quiz result
export interface QuizResult {
	score: number;
	total: number;
	questions: QuizQuestionResult[];
}

// Per-topic breakdown for exam results
export interface ExamTopicScore {
	topic: string;
	correct: number;
	total: number;
}

// Exam result extends quiz result with topic breakdown
export interface ExamResult extends QuizResult {
	topicScores: ExamTopicScore[];
}

// Flag on a question (used by admin review)
export interface QuestionFlag {
	flag_type: string;
	notes: string;
	created_at: string;
}

// Question with review metadata (used by admin review)
export interface ReviewQuestion extends QuizQuestionFull {
	flags: QuestionFlag[];
	reviewed: boolean;
	notes?: string;
}

// Per-question engagement data collected client-side
export interface QuestionTiming {
	questionId: number;
	timeToAnswerMs: number;
	flagged: boolean;
}

// Payload for updating explanation dwell times post-submit
export interface ExplanationDwellUpdate {
	questionId: number;
	timeOnExplanationMs: number;
}

/**
 * Score a quiz by comparing user answers against full questions.
 * Pure function — no side effects.
 */
export function scoreQuiz(
	answers: QuizAnswer[],
	questions: QuizQuestionFull[],
): QuizResult {
	const questionMap = new Map(questions.map((q) => [q.id, q]));

	const scored: QuizQuestionResult[] = answers.map((answer) => {
		const question = questionMap.get(answer.questionId);
		if (!question) {
			throw new Error(`Question ${answer.questionId} not found`);
		}
		const correct = answer.selectedIndex === question.correct_index;
		return {
			id: question.id,
			stem: question.stem,
			choices: question.choices,
			selectedIndex: answer.selectedIndex,
			correctIndex: question.correct_index,
			explanation: question.explanation,
			correct,
			topic: question.topic,
		};
	});

	return {
		score: scored.filter((q) => q.correct).length,
		total: scored.length,
		questions: scored,
	};
}

/**
 * Score an exam — same as scoreQuiz but adds per-topic breakdown.
 * Uses the question's topic field to group results.
 */
export function scoreExam(
	answers: QuizAnswer[],
	questions: QuizQuestionFull[],
): ExamResult {
	const base = scoreQuiz(answers, questions);

	const topicMap = new Map<string, { correct: number; total: number }>();

	const fullMap = new Map(questions.map((fq) => [fq.id, fq]));

	for (const q of base.questions) {
		const full = fullMap.get(q.id);
		const topic = full?.topic ?? "Other";
		const entry = topicMap.get(topic) ?? { correct: 0, total: 0 };
		entry.total++;
		if (q.correct) entry.correct++;
		topicMap.set(topic, entry);
	}

	const topicScores: ExamTopicScore[] = Array.from(topicMap.entries())
		.map(([topic, counts]) => ({ topic, ...counts }))
		.sort((a, b) => a.topic.localeCompare(b.topic));

	return { ...base, topicScores };
}
