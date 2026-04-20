import { describe, expect, it } from "vitest";
import {
	startQuizSchema,
	submitQuizSchema,
	startExamSchema,
	feedbackSchema,
	activeSectionSchema,
	completeOnboardingSchema,
	reviewQuizSchema,
	submitExamSchema,
	remediateSchema,
} from "@/lib/schemas";

describe("startQuizSchema", () => {
	it("accepts valid input", () => {
		const result = startQuizSchema.safeParse({ sectionCode: "aud", count: 10 });
		expect(result.success).toBe(true);
	});

	it("accepts optional topics", () => {
		const result = startQuizSchema.safeParse({
			sectionCode: "far",
			count: 5,
			topics: ["Revenue", "Inventory"],
		});
		expect(result.success).toBe(true);
	});

	it("rejects count > 30", () => {
		const result = startQuizSchema.safeParse({ sectionCode: "aud", count: 31 });
		expect(result.success).toBe(false);
	});

	it("rejects missing sectionCode", () => {
		const result = startQuizSchema.safeParse({ count: 10 });
		expect(result.success).toBe(false);
	});

	it("rejects count = 0", () => {
		const result = startQuizSchema.safeParse({ sectionCode: "aud", count: 0 });
		expect(result.success).toBe(false);
	});

	it("accepts optional pinnedOnly flag", () => {
		const result = startQuizSchema.safeParse({
			sectionCode: "far",
			count: 10,
			pinnedOnly: true,
		});
		expect(result.success).toBe(true);
	});
});

describe("submitQuizSchema", () => {
	it("accepts valid answers", () => {
		const result = submitQuizSchema.safeParse({
			answers: [{ questionId: 1, selectedIndex: 2 }],
		});
		expect(result.success).toBe(true);
	});

	it("rejects empty answers array", () => {
		const result = submitQuizSchema.safeParse({ answers: [] });
		expect(result.success).toBe(false);
	});

	it("rejects selectedIndex > 3", () => {
		const result = submitQuizSchema.safeParse({
			answers: [{ questionId: 1, selectedIndex: 4 }],
		});
		expect(result.success).toBe(false);
	});

	it("rejects negative selectedIndex", () => {
		const result = submitQuizSchema.safeParse({
			answers: [{ questionId: 1, selectedIndex: -1 }],
		});
		expect(result.success).toBe(false);
	});

	it("accepts optional durationSeconds", () => {
		const result = submitQuizSchema.safeParse({
			answers: [{ questionId: 1, selectedIndex: 0 }],
			durationSeconds: 120,
		});
		expect(result.success).toBe(true);
	});
});

describe("startExamSchema", () => {
	it("accepts valid sectionCode", () => {
		const result = startExamSchema.safeParse({ sectionCode: "reg" });
		expect(result.success).toBe(true);
	});

	it("rejects empty sectionCode", () => {
		const result = startExamSchema.safeParse({ sectionCode: "" });
		expect(result.success).toBe(false);
	});

	it("accepts optional pinnedOnly flag", () => {
		const result = startExamSchema.safeParse({
			sectionCode: "far",
			pinnedOnly: true,
		});
		expect(result.success).toBe(true);
	});
});

describe("feedbackSchema", () => {
	it("accepts valid feedback", () => {
		const result = feedbackSchema.safeParse({ message: "Great site!" });
		expect(result.success).toBe(true);
	});

	it("rejects empty message", () => {
		const result = feedbackSchema.safeParse({ message: "" });
		expect(result.success).toBe(false);
	});

	it("rejects message > 2000 chars", () => {
		const result = feedbackSchema.safeParse({ message: "x".repeat(2001) });
		expect(result.success).toBe(false);
	});

	it("accepts valid email", () => {
		const result = feedbackSchema.safeParse({
			message: "Hello",
			email: "user@example.com",
		});
		expect(result.success).toBe(true);
	});

	it("accepts empty string email", () => {
		const result = feedbackSchema.safeParse({ message: "Hello", email: "" });
		expect(result.success).toBe(true);
	});

	it("rejects invalid email", () => {
		const result = feedbackSchema.safeParse({
			message: "Hello",
			email: "not-an-email",
		});
		expect(result.success).toBe(false);
	});
});

describe("activeSectionSchema", () => {
	it("accepts valid input", () => {
		const result = activeSectionSchema.safeParse({ sectionCode: "bar" });
		expect(result.success).toBe(true);
	});

	it("accepts with targetExamDate", () => {
		const result = activeSectionSchema.safeParse({
			sectionCode: "isc",
			targetExamDate: "2026-06-15",
		});
		expect(result.success).toBe(true);
	});

	it("accepts null targetExamDate", () => {
		const result = activeSectionSchema.safeParse({
			sectionCode: "tcp",
			targetExamDate: null,
		});
		expect(result.success).toBe(true);
	});

	it("rejects sectionCode too short", () => {
		const result = activeSectionSchema.safeParse({ sectionCode: "x" });
		expect(result.success).toBe(false);
	});
});

describe("completeOnboardingSchema", () => {
	it("accepts empty object (defaults)", () => {
		const result = completeOnboardingSchema.safeParse({});
		expect(result.success).toBe(true);
	});

	it("accepts valid goals", () => {
		const result = completeOnboardingSchema.safeParse({
			questionsGoal: 30,
			lessonsGoal: 2,
		});
		expect(result.success).toBe(true);
	});

	it("rejects questionsGoal > 100", () => {
		const result = completeOnboardingSchema.safeParse({ questionsGoal: 101 });
		expect(result.success).toBe(false);
	});

	it("rejects questionsGoal = 0", () => {
		const result = completeOnboardingSchema.safeParse({ questionsGoal: 0 });
		expect(result.success).toBe(false);
	});
});

describe("reviewQuizSchema", () => {
	it("accepts valid input", () => {
		const result = reviewQuizSchema.safeParse({
			questionIds: [1, 2, 3],
			sectionCode: "aud",
		});
		expect(result.success).toBe(true);
	});

	it("rejects empty questionIds", () => {
		const result = reviewQuizSchema.safeParse({
			questionIds: [],
			sectionCode: "aud",
		});
		expect(result.success).toBe(false);
	});

	it("rejects > 30 questionIds", () => {
		const ids = Array.from({ length: 31 }, (_, i) => i + 1);
		const result = reviewQuizSchema.safeParse({
			questionIds: ids,
			sectionCode: "aud",
		});
		expect(result.success).toBe(false);
	});
});

describe("submitExamSchema", () => {
	it("accepts valid exam answers", () => {
		const result = submitExamSchema.safeParse({
			answers: [{ questionId: 1, selectedIndex: 2 }],
		});
		expect(result.success).toBe(true);
	});

	it("accepts selectedIndex -1 (unanswered)", () => {
		const result = submitExamSchema.safeParse({
			answers: [{ questionId: 1, selectedIndex: -1 }],
		});
		expect(result.success).toBe(true);
	});

	it("rejects empty answers", () => {
		const result = submitExamSchema.safeParse({ answers: [] });
		expect(result.success).toBe(false);
	});
});

describe("remediateSchema", () => {
	it("accepts valid input", () => {
		const result = remediateSchema.safeParse({ sectionCode: "far", count: 20 });
		expect(result.success).toBe(true);
	});

	it("applies default count of 10", () => {
		const result = remediateSchema.safeParse({ sectionCode: "far" });
		expect(result.success).toBe(true);
		if (result.success) {
			expect(result.data.count).toBe(10);
		}
	});

	it("rejects count > 50", () => {
		const result = remediateSchema.safeParse({ sectionCode: "far", count: 51 });
		expect(result.success).toBe(false);
	});
});
