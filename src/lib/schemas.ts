import { z } from "zod";

export const startQuizSchema = z.object({
	sectionCode: z.string().min(2, "Section code is required"),
	count: z.number().int().min(1).max(30, "Maximum 30 questions per quiz"),
	topics: z.array(z.string()).optional(),
});

export type StartQuizInput = z.infer<typeof startQuizSchema>;

export const quizAnswerSchema = z.object({
	questionId: z.number().int(),
	selectedIndex: z.number().int().min(0).max(3),
});

export const submitQuizSchema = z.object({
	answers: z.array(quizAnswerSchema).min(1, "At least one answer is required"),
	durationSeconds: z.number().int().optional(),
});

export type SubmitQuizInput = z.infer<typeof submitQuizSchema>;

export const startExamSchema = z.object({
	sectionCode: z.string().min(2, "Section code is required"),
});

export const activeSectionSchema = z.object({
	sectionCode: z.string().min(2).max(6),
	targetExamDate: z.string().nullable().optional(),
});

export const completeOnboardingSchema = z.object({
	questionsGoal: z.number().int().min(1).max(100).optional(),
	lessonsGoal: z.number().int().min(1).max(20).optional(),
});

export const reviewQuizSchema = z.object({
	questionIds: z.array(z.number().int()).min(1).max(30),
	sectionCode: z.string().min(2),
});

export const submitExamSchema = z.object({
	answers: z.array(z.object({
		questionId: z.number().int(),
		selectedIndex: z.number().int().min(-1).max(3),
	})).min(1),
});

export const remediateSchema = z.object({
	sectionCode: z.string().min(2),
	count: z.number().int().min(1).max(50).default(10),
});

export const feedbackSchema = z.object({
	email: z.string().email().optional().or(z.literal("")),
	pageUrl: z.string().optional(),
	category: z
		.enum(["general", "bug", "content", "suggestion"])
		.default("general"),
	message: z.string().min(1, "Message is required").max(2000),
});
