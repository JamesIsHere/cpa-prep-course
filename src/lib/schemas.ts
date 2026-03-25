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

const questionTimingSchema = z.object({
	questionId: z.number().int(),
	timeToAnswerMs: z.number().int().min(0).max(600000),
	flagged: z.boolean(),
});

export const submitQuizSchema = z.object({
	answers: z.array(quizAnswerSchema).min(1, "At least one answer is required"),
	durationSeconds: z.number().int().optional(),
	questionTimings: z.array(questionTimingSchema).optional(),
});

export type SubmitQuizInput = z.infer<typeof submitQuizSchema>;

export const explanationDwellSchema = z.object({
	dwells: z.array(z.object({
		questionId: z.number().int(),
		timeOnExplanationMs: z.number().int().min(0).max(600000),
	})).min(1),
});

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

export const reviewFilterSchema = z.object({
	section: z.string().min(2),
	topic: z.string().optional(),
	difficulty: z.enum(["easy", "medium", "hard"]).optional(),
	cognitive_level: z.coerce.number().int().min(1).max(4).optional(),
	flagged: z.enum(["true", "false"]).optional(),
	reviewed: z.enum(["true", "false"]).optional(),
	cursor: z.coerce.number().int().optional(),
	limit: z.coerce.number().int().min(1).max(100).default(50),
});

export type ReviewFilterInput = z.infer<typeof reviewFilterSchema>;

export const flagQuestionSchema = z.object({
	questionId: z.number().int(),
	flagType: z.enum([
		"wrong_answer",
		"unclear_stem",
		"bad_distractor",
		"wrong_explanation",
		"other",
	]),
	notes: z.string().max(1000).default(""),
});

export const markReviewedSchema = z.object({
	questionId: z.number().int(),
	notes: z.string().max(2000).optional(),
});

export const saveCursorSchema = z.object({
	sectionCode: z.string().min(2).max(4),
	questionId: z.number().int(),
});

export const resolveFlagSchema = z.object({
	flagId: z.number().int(),
	resolutionNotes: z.string().max(1000).default(""),
});

export const feedbackSchema = z.object({
	email: z.string().email().optional().or(z.literal("")),
	pageUrl: z.string().optional(),
	category: z
		.enum(["general", "bug", "content", "suggestion"])
		.default("general"),
	message: z.string().min(1, "Message is required").max(2000),
});
