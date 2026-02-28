import { describe, expect, it } from "vitest";
import type { QuizAnswer, QuizQuestionFull, QuizResult, ExamResult } from "@/lib/quiz";
import { scoreQuiz, scoreExam } from "@/lib/quiz";

const mockQuestions: QuizQuestionFull[] = [
	{
		id: 1,
		stem: "What is 2 + 2?",
		choices: ["3", "4", "5", "6"],
		correct_index: 1,
		explanation: "Basic arithmetic.",
		topic: "Math",
		difficulty: "easy",
	},
	{
		id: 2,
		stem: "What color is the sky?",
		choices: ["Red", "Green", "Blue", "Yellow"],
		correct_index: 2,
		explanation: "The sky appears blue due to Rayleigh scattering.",
		topic: "Science",
		difficulty: "easy",
	},
	{
		id: 3,
		stem: "What is the capital of France?",
		choices: ["London", "Berlin", "Madrid", "Paris"],
		correct_index: 3,
		explanation: "Paris is the capital of France.",
		topic: "Geography",
		difficulty: "easy",
	},
];

describe("scoreQuiz", () => {
	it("scores all-correct answers", () => {
		const answers: QuizAnswer[] = [
			{ questionId: 1, selectedIndex: 1 },
			{ questionId: 2, selectedIndex: 2 },
			{ questionId: 3, selectedIndex: 3 },
		];

		const result = scoreQuiz(answers, mockQuestions);
		expect(result.score).toBe(3);
		expect(result.total).toBe(3);
		expect(result.questions.every((q) => q.correct)).toBe(true);
	});

	it("scores mixed answers correctly", () => {
		const answers: QuizAnswer[] = [
			{ questionId: 1, selectedIndex: 1 }, // correct
			{ questionId: 2, selectedIndex: 0 }, // wrong
			{ questionId: 3, selectedIndex: 3 }, // correct
		];

		const result = scoreQuiz(answers, mockQuestions);
		expect(result.score).toBe(2);
		expect(result.total).toBe(3);
		expect(result.questions[0].correct).toBe(true);
		expect(result.questions[1].correct).toBe(false);
		expect(result.questions[2].correct).toBe(true);
	});

	it("scores all-wrong answers", () => {
		const answers: QuizAnswer[] = [
			{ questionId: 1, selectedIndex: 0 },
			{ questionId: 2, selectedIndex: 0 },
			{ questionId: 3, selectedIndex: 0 },
		];

		const result = scoreQuiz(answers, mockQuestions);
		expect(result.score).toBe(0);
		expect(result.total).toBe(3);
	});

	it("throws for unknown question ID", () => {
		const answers: QuizAnswer[] = [{ questionId: 999, selectedIndex: 0 }];
		expect(() => scoreQuiz(answers, mockQuestions)).toThrow(
			"Question 999 not found",
		);
	});

	it("returns correct shape for QuizResult", () => {
		const answers: QuizAnswer[] = [{ questionId: 1, selectedIndex: 1 }];
		const result: QuizResult = scoreQuiz(answers, [mockQuestions[0]]);

		expect(result).toHaveProperty("score");
		expect(result).toHaveProperty("total");
		expect(result).toHaveProperty("questions");
		expect(result.questions[0]).toHaveProperty("id");
		expect(result.questions[0]).toHaveProperty("stem");
		expect(result.questions[0]).toHaveProperty("choices");
		expect(result.questions[0]).toHaveProperty("selectedIndex");
		expect(result.questions[0]).toHaveProperty("correctIndex");
		expect(result.questions[0]).toHaveProperty("explanation");
		expect(result.questions[0]).toHaveProperty("correct");
	});

	it("includes explanation and correct index in results", () => {
		const answers: QuizAnswer[] = [{ questionId: 2, selectedIndex: 0 }];
		const result = scoreQuiz(answers, [mockQuestions[1]]);

		expect(result.questions[0].correctIndex).toBe(2);
		expect(result.questions[0].selectedIndex).toBe(0);
		expect(result.questions[0].explanation).toBe(
			"The sky appears blue due to Rayleigh scattering.",
		);
	});
});

describe("scoreExam", () => {
	it("returns score and topic breakdown", () => {
		const answers: QuizAnswer[] = [
			{ questionId: 1, selectedIndex: 1 }, // correct — Math
			{ questionId: 2, selectedIndex: 0 }, // wrong — Science
			{ questionId: 3, selectedIndex: 3 }, // correct — Geography
		];

		const result: ExamResult = scoreExam(answers, mockQuestions);
		expect(result.score).toBe(2);
		expect(result.total).toBe(3);
		expect(result.topicScores).toHaveLength(3);

		const math = result.topicScores.find((t) => t.topic === "Math");
		expect(math).toEqual({ topic: "Math", correct: 1, total: 1 });

		const science = result.topicScores.find((t) => t.topic === "Science");
		expect(science).toEqual({ topic: "Science", correct: 0, total: 1 });

		const geo = result.topicScores.find((t) => t.topic === "Geography");
		expect(geo).toEqual({ topic: "Geography", correct: 1, total: 1 });
	});

	it("sorts topic scores alphabetically", () => {
		const answers: QuizAnswer[] = [
			{ questionId: 1, selectedIndex: 1 },
			{ questionId: 2, selectedIndex: 2 },
			{ questionId: 3, selectedIndex: 3 },
		];

		const result = scoreExam(answers, mockQuestions);
		const topics = result.topicScores.map((t) => t.topic);
		expect(topics).toEqual(["Geography", "Math", "Science"]);
	});

	it("handles unanswered questions (selectedIndex -1)", () => {
		const answers: QuizAnswer[] = [
			{ questionId: 1, selectedIndex: -1 },
			{ questionId: 2, selectedIndex: 2 },
		];

		const result = scoreExam(answers, [mockQuestions[0], mockQuestions[1]]);
		expect(result.score).toBe(1);
		expect(result.total).toBe(2);
	});

	it("groups multiple questions under the same topic", () => {
		const dupeTopicQuestions: QuizQuestionFull[] = [
			{ ...mockQuestions[0], id: 10, topic: "Math" },
			{ ...mockQuestions[1], id: 11, topic: "Math" },
		];
		const answers: QuizAnswer[] = [
			{ questionId: 10, selectedIndex: 1 }, // correct
			{ questionId: 11, selectedIndex: 0 }, // wrong (correct is 2)
		];

		const result = scoreExam(answers, dupeTopicQuestions);
		expect(result.topicScores).toHaveLength(1);
		expect(result.topicScores[0]).toEqual({ topic: "Math", correct: 1, total: 2 });
	});
});
