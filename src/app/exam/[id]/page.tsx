import Link from "next/link";
import { notFound, redirect } from "next/navigation";
import { createClient } from "@/lib/supabase/server";
import ExamClient from "./exam-client";

export async function generateMetadata({
	params,
}: {
	params: Promise<{ id: string }>;
}) {
	const { id } = await params;
	return { title: `Exam #${id}` };
}

export default async function ExamSessionPage({
	params,
}: {
	params: Promise<{ id: string }>;
}) {
	const { id } = await params;
	const attemptId = parseInt(id, 10);
	if (isNaN(attemptId)) notFound();

	const supabase = await createClient();
	const {
		data: { user },
	} = await supabase.auth.getUser();

	if (!user) redirect("/login?next=/exam/" + id);

	// Fetch attempt
	const { data: attempt } = await supabase
		.from("exam_attempts")
		.select(
			"id, user_id, section_id, started_at, completed_at, time_limit_minutes, score, total, answers",
		)
		.eq("id", attemptId)
		.single();

	if (!attempt || attempt.user_id !== user.id) notFound();

	// Get section code for display
	const { data: section } = await supabase
		.from("sections")
		.select("code")
		.eq("id", attempt.section_id)
		.single();

	const sectionCode = section?.code ?? "";

	// If completed, show results by fetching full questions for review
	if (attempt.completed_at) {
		const storedAnswers = attempt.answers as {
			question_id: number;
			choice_index: number | null;
		}[];
		const questionIds = storedAnswers.map((a) => a.question_id);

		const { data: questions } = await supabase
			.from("questions")
			.select(
				"id, stem, choices, correct_index, explanation, topic, difficulty",
			)
			.in("id", questionIds);

		if (!questions) notFound();

		// Build result data for the results component
		const questionMap = new Map(questions.map((q) => [q.id, q]));
		const scoredQuestions = storedAnswers.map((a) => {
			const q = questionMap.get(a.question_id)!;
			const selectedIndex = a.choice_index ?? -1;
			return {
				id: q.id,
				stem: q.stem,
				choices: q.choices as string[],
				selectedIndex,
				correctIndex: q.correct_index,
				explanation: q.explanation ?? "",
				correct: selectedIndex === q.correct_index,
			};
		});

		// Build topic scores
		const topicMap = new Map<string, { correct: number; total: number }>();
		for (const sq of scoredQuestions) {
			const q = questionMap.get(sq.id)!;
			const topic = q.topic ?? "Other";
			const entry = topicMap.get(topic) ?? { correct: 0, total: 0 };
			entry.total++;
			if (sq.correct) entry.correct++;
			topicMap.set(topic, entry);
		}

		const topicScores = Array.from(topicMap.entries())
			.map(([topic, counts]) => ({ topic, ...counts }))
			.sort((a, b) => a.topic.localeCompare(b.topic));

		return (
			<main className="max-w-4xl mx-auto px-4 py-12">
				<Link
					href="/exam"
					className="text-sm text-emerald-600 hover:text-emerald-700 mb-6 inline-block"
				>
					&larr; Practice Exams
				</Link>
				<h1 className="text-3xl font-bold text-gray-900 mb-2">
					{sectionCode.toUpperCase()} Exam Results
				</h1>
				<p className="text-gray-500 mb-8">
					Completed on {new Date(attempt.completed_at).toLocaleDateString()}
				</p>
				<ExamClient
					mode="results"
					result={{
						score: attempt.score ?? 0,
						total: attempt.total ?? 0,
						questions: scoredQuestions,
						topicScores,
					}}
				/>
			</main>
		);
	}

	// Check if timer has expired server-side
	const startedAt = new Date(attempt.started_at).getTime();
	const limitMs = attempt.time_limit_minutes * 60 * 1000;

	if (Date.now() - startedAt >= limitMs) {
		// Auto-expire
		await supabase
			.from("exam_attempts")
			.update({
				completed_at: new Date().toISOString(),
				score: 0,
			})
			.eq("id", attemptId);

		redirect(`/exam/${attemptId}`);
	}

	// In progress — fetch questions
	const storedAnswers = attempt.answers as {
		question_id: number;
		choice_index: number | null;
	}[];
	const questionIds = storedAnswers.map((a) => a.question_id);

	const { data: questions } = await supabase
		.from("questions")
		.select("id, stem, choices")
		.in("id", questionIds);

	if (!questions) notFound();

	// Preserve shuffle order
	const orderedQuestions = questionIds
		.map((qid) => questions.find((q) => q.id === qid))
		.filter(
			(q): q is { id: number; stem: string; choices: unknown } => q != null,
		)
		.map((q) => ({
			id: q.id,
			stem: q.stem,
			choices: q.choices as string[],
		}));

	return (
		<main className="max-w-4xl mx-auto px-4 py-12">
			<ExamClient
				mode="active"
				attemptId={attemptId}
				questions={orderedQuestions}
				startedAt={attempt.started_at}
				timeLimitMinutes={attempt.time_limit_minutes}
				sectionCode={sectionCode}
			/>
		</main>
	);
}
