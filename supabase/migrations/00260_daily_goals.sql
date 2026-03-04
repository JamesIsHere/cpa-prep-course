-- Add daily goals configuration to profiles
ALTER TABLE profiles ADD COLUMN IF NOT EXISTS daily_goals JSONB DEFAULT '{"questions": 20, "lessons": 1}'::jsonb;

-- Function to get daily progress
CREATE OR REPLACE FUNCTION get_user_daily_progress(p_user_id UUID)
RETURNS JSONB
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_questions_done INT;
  v_lessons_done INT;
  v_goals JSONB;
BEGIN
  -- Count questions answered today (UTC)
  SELECT COUNT(*) INTO v_questions_done
  FROM (
    SELECT jsonb_array_elements(answers)
    FROM quiz_attempts
    WHERE user_id = p_user_id 
      AND completed_at >= CURRENT_DATE
    UNION ALL
    SELECT jsonb_array_elements(answers)
    FROM exam_attempts
    WHERE user_id = p_user_id 
      AND completed_at >= CURRENT_DATE
  ) sub;

  -- Count unique lessons visited today (using a simple heuristic for now: lessons with a quiz attempt)
  -- In a full implementation, we might have a lesson_views table.
  -- For now, we'll count lessons where they took a quiz today.
  SELECT COUNT(DISTINCT (q.topic)) INTO v_lessons_done
  FROM quiz_attempts qa,
  jsonb_array_elements(topic_scores) AS q
  WHERE qa.user_id = p_user_id 
    AND qa.completed_at >= CURRENT_DATE;

  -- Get goals
  SELECT daily_goals INTO v_goals FROM profiles WHERE id = p_user_id;

  RETURN jsonb_build_object(
    'questions_done', COALESCE(v_questions_done, 0),
    'lessons_done', COALESCE(v_lessons_done, 0),
    'goals', COALESCE(v_goals, '{"questions": 20, "lessons": 1}'::jsonb)
  );
END;
$$;
