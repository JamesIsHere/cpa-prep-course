-- Add topic_scores JSONB column to quiz_attempts
-- Stores per-topic breakdown: [{ topic, correct, total }, ...]
ALTER TABLE quiz_attempts ADD COLUMN IF NOT EXISTS topic_scores JSONB;

-- Backfill completed attempts by joining answers with questions.topic
UPDATE quiz_attempts qa
SET topic_scores = sub.scores
FROM (
  SELECT
    qa2.id AS attempt_id,
    jsonb_agg(
      jsonb_build_object(
        'topic', t.topic,
        'correct', t.correct_count,
        'total', t.total_count
      ) ORDER BY t.topic
    ) AS scores
  FROM quiz_attempts qa2
  CROSS JOIN LATERAL (
    SELECT
      q.topic,
      COUNT(*) AS total_count,
      COUNT(*) FILTER (
        WHERE (ans->>'choice_index')::int = q.correct_index
      ) AS correct_count
    FROM jsonb_array_elements(qa2.answers) AS ans
    JOIN questions q ON q.id = (ans->>'question_id')::int
    GROUP BY q.topic
  ) t
  WHERE qa2.completed_at IS NOT NULL
    AND qa2.answers IS NOT NULL
  GROUP BY qa2.id
) sub
WHERE qa.id = sub.attempt_id
  AND qa.completed_at IS NOT NULL;
