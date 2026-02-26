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
});

export type SubmitQuizInput = z.infer<typeof submitQuizSchema>;

export const startExamSchema = z.object({
	sectionCode: z.string().min(2, "Section code is required"),
});

export const feedbackSchema = z.object({
	email: z.string().email().optional().or(z.literal("")),
	pageUrl: z.string().optional(),
	category: z
		.enum(["general", "bug", "content", "suggestion"])
		.default("general"),
	message: z.string().min(1, "Message is required").max(2000),
});
