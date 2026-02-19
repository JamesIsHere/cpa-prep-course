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
}

// Full quiz result
export interface QuizResult {
	score: number;
	total: number;
	questions: QuizQuestionResult[];
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
		};
	});

	return {
		score: scored.filter((q) => q.correct).length,
		total: scored.length,
		questions: scored,
	};
}
