import { describe, expect, it } from "vitest";
import type { QuizAnswer, QuizQuestionFull } from "@/lib/quiz";
import { scoreExam } from "@/lib/quiz";

const mockQuestions: QuizQuestionFull[] = [
	{
		id: 1,
		stem: "What is GAAP?",
		choices: ["A", "B", "C", "D"],
		correct_index: 0,
		explanation: "Generally Accepted Accounting Principles.",
		topic: "Financial Reporting",
		difficulty: "easy",
	},
	{
		id: 2,
		stem: "What is an audit?",
		choices: ["A", "B", "C", "D"],
		correct_index: 1,
		explanation: "An examination of financial records.",
		topic: "Auditing",
		difficulty: "medium",
	},
	{
		id: 3,
		stem: "What is materiality?",
		choices: ["A", "B", "C", "D"],
		correct_index: 2,
		explanation: "The threshold for significance.",
		topic: "Auditing",
		difficulty: "medium",
	},
	{
		id: 4,
		stem: "What is depreciation?",
		choices: ["A", "B", "C", "D"],
		correct_index: 3,
		explanation: "Allocation of asset cost over useful life.",
		topic: "Financial Reporting",
		difficulty: "easy",
	},
	{
		id: 5,
		stem: "What is a debit?",
		choices: ["A", "B", "C", "D"],
		correct_index: 0,
		explanation: "Left side of the accounting equation.",
		topic: "Basics",
		difficulty: "easy",
	},
];

describe("scoreExam", () => {
	it("groups results by topic with correct counts", () => {
		const answers: QuizAnswer[] = [
			{ questionId: 1, selectedIndex: 0 }, // correct — Financial Reporting
			{ questionId: 2, selectedIndex: 1 }, // correct — Auditing
			{ questionId: 3, selectedIndex: 0 }, // wrong   — Auditing
			{ questionId: 4, selectedIndex: 3 }, // correct — Financial Reporting
			{ questionId: 5, selectedIndex: 0 }, // correct — Basics
		];

		const result = scoreExam(answers, mockQuestions);

		expect(result.score).toBe(4);
		expect(result.total).toBe(5);
		expect(result.topicScores).toHaveLength(3);

		const auditing = result.topicScores.find((t) => t.topic === "Auditing");
		expect(auditing).toEqual({ topic: "Auditing", correct: 1, total: 2 });

		const reporting = result.topicScores.find(
			(t) => t.topic === "Financial Reporting",
		);
		expect(reporting).toEqual({
			topic: "Financial Reporting",
			correct: 2,
			total: 2,
		});

		const basics = result.topicScores.find((t) => t.topic === "Basics");
		expect(basics).toEqual({ topic: "Basics", correct: 1, total: 1 });
	});

	it("handles all-correct answers", () => {
		const answers: QuizAnswer[] = mockQuestions.map((q) => ({
			questionId: q.id,
			selectedIndex: q.correct_index,
		}));

		const result = scoreExam(answers, mockQuestions);
		expect(result.score).toBe(5);
		expect(result.total).toBe(5);
		for (const topic of result.topicScores) {
			expect(topic.correct).toBe(topic.total);
		}
	});

	it("handles all-wrong answers", () => {
		const answers: QuizAnswer[] = mockQuestions.map((q) => ({
			questionId: q.id,
			selectedIndex: (q.correct_index + 1) % 4,
		}));

		const result = scoreExam(answers, mockQuestions);
		expect(result.score).toBe(0);
		expect(result.total).toBe(5);
		for (const topic of result.topicScores) {
			expect(topic.correct).toBe(0);
		}
	});

	it("sorts topic scores alphabetically", () => {
		const answers: QuizAnswer[] = mockQuestions.map((q) => ({
			questionId: q.id,
			selectedIndex: q.correct_index,
		}));

		const result = scoreExam(answers, mockQuestions);
		const topics = result.topicScores.map((t) => t.topic);
		expect(topics).toEqual(["Auditing", "Basics", "Financial Reporting"]);
	});

	it("includes base QuizResult fields", () => {
		const answers: QuizAnswer[] = [{ questionId: 1, selectedIndex: 0 }];
		const result = scoreExam(answers, [mockQuestions[0]]);

		expect(result).toHaveProperty("score");
		expect(result).toHaveProperty("total");
		expect(result).toHaveProperty("questions");
		expect(result).toHaveProperty("topicScores");
		expect(result.questions[0]).toHaveProperty("explanation");
		expect(result.questions[0]).toHaveProperty("correctIndex");
	});
});
