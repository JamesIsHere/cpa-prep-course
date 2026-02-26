-- Add duration tracking to attempts
ALTER TABLE quiz_attempts ADD COLUMN IF NOT EXISTS duration_seconds INT;
ALTER TABLE exam_attempts ADD COLUMN IF NOT EXISTS duration_seconds INT;

-- Update dashboard stats RPC to include duration
CREATE OR REPLACE FUNCTION get_user_dashboard_stats(p_user_id UUID)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_section_stats JSONB;
  v_trend_data JSONB;
  v_topic_performance JSONB;
  v_time_stats JSONB;
BEGIN
  -- 1. Aggregate Section-level Stats
  WITH quiz_agg AS (
    SELECT
      section_id,
      SUM(score) as total_correct,
      SUM(total) as total_practiced,
      AVG(duration_seconds / NULLIF(total, 0)) as avg_seconds_per_q
    FROM quiz_attempts
    WHERE user_id = p_user_id AND completed_at IS NOT NULL
    GROUP BY section_id
  ),
  exam_agg AS (
    SELECT
      section_id,
      SUM(score) as total_correct,
      SUM(total) as total_practiced
    FROM exam_attempts
    WHERE user_id = p_user_id AND completed_at IS NOT NULL
    GROUP BY section_id
  ),
  unique_topics AS (
    SELECT
      section_id,
      jsonb_agg(DISTINCT (topic_elem->>'topic')) as topics
    FROM quiz_attempts,
    jsonb_array_elements(topic_scores) AS topic_elem
    WHERE user_id = p_user_id AND completed_at IS NOT NULL
    GROUP BY section_id
  ),
  recent_quiz AS (
    SELECT
      section_id,
      jsonb_agg(jsonb_build_object('score', score, 'total', total)) as recent
    FROM (
      SELECT section_id, score, total, completed_at,
             row_number() OVER (PARTITION BY section_id ORDER BY completed_at DESC) as rn
      FROM quiz_attempts
      WHERE user_id = p_user_id AND completed_at IS NOT NULL
    ) sub
    WHERE rn <= 3
    GROUP BY section_id
  )
  SELECT jsonb_object_agg(s.code, jsonb_build_object(
    'total_correct', COALESCE(q.total_correct, 0) + COALESCE(e.total_correct, 0),
    'total_practiced', COALESCE(q.total_practiced, 0) + COALESCE(e.total_practiced, 0),
    'practiced_topics', COALESCE(ut.topics, '[]'::jsonb),
    'recent_scores', COALESCE(rq.recent, '[]'::jsonb),
    'avg_seconds_per_q', COALESCE(q.avg_seconds_per_q, 0)
  )) INTO v_section_stats
  FROM sections s
  LEFT JOIN quiz_agg q ON s.id = q.section_id
  LEFT JOIN exam_agg e ON s.id = e.section_id
  LEFT JOIN unique_topics ut ON s.id = ut.section_id
  LEFT JOIN recent_quiz rq ON s.id = rq.section_id;

  -- 2. Trend Data
  WITH combined_attempts AS (
    SELECT
      s.code as section_code,
      completed_at as date,
      score,
      total,
      'quiz' as type,
      row_number() OVER (PARTITION BY section_id ORDER BY completed_at DESC) as rn
    FROM quiz_attempts q
    JOIN sections s ON q.section_id = s.id
    WHERE user_id = p_user_id AND completed_at IS NOT NULL
    UNION ALL
    SELECT
      s.code as section_code,
      completed_at as date,
      score,
      total,
      'exam' as type,
      row_number() OVER (PARTITION BY section_id ORDER BY completed_at DESC) as rn
    FROM exam_attempts e
    JOIN sections s ON e.section_id = s.id
    WHERE user_id = p_user_id AND completed_at IS NOT NULL
  )
  SELECT jsonb_agg(jsonb_build_object(
    'section_code', section_code,
    'date', date,
    'score', ROUND((score::float / NULLIF(total, 0)) * 100),
    'type', type
  )) INTO v_trend_data
  FROM combined_attempts
  WHERE rn <= 50;

  -- 3. Topic Performance
  SELECT jsonb_agg(jsonb_build_object(
    'section_code', s.code,
    'topic', topic_elem->>'topic',
    'correct', (topic_elem->>'correct')::int,
    'total', (topic_elem->>'total')::int
  )) INTO v_topic_performance
  FROM quiz_attempts q
  JOIN sections s ON q.section_id = s.id,
  jsonb_array_elements(topic_scores) AS topic_elem
  WHERE user_id = p_user_id AND completed_at IS NOT NULL;

  RETURN jsonb_build_object(
    'sections', COALESCE(v_section_stats, '{}'::jsonb),
    'trend_data', COALESCE(v_trend_data, '[]'::jsonb),
    'topic_performance', COALESCE(v_topic_performance, '[]'::jsonb)
  );
END;
$$;
