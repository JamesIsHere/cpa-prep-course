-- Per-question engagement tracking: one row per question per quiz encounter
-- Captures timing (pre-submit dwell, post-submit explanation dwell), correctness,
-- flagging, and device type for analytics and question calibration.

CREATE TABLE question_responses (
  id serial PRIMARY KEY,
  quiz_attempt_id int NOT NULL REFERENCES quiz_attempts(id) ON DELETE CASCADE,
  question_id int NOT NULL REFERENCES questions(id),
  user_id uuid NOT NULL REFERENCES auth.users(id),
  selected_index int NOT NULL,
  correct boolean NOT NULL,
  time_to_answer_ms int,
  time_on_explanation_ms int,
  flagged boolean NOT NULL DEFAULT false,
  device_type text CHECK (device_type IN ('mobile', 'tablet', 'desktop')),
  answered_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE question_responses ENABLE ROW LEVEL SECURITY;

CREATE POLICY "users read own responses"
  ON question_responses FOR SELECT
  USING ((SELECT auth.uid()) = user_id);

CREATE POLICY "users insert own responses"
  ON question_responses FOR INSERT
  WITH CHECK ((SELECT auth.uid()) = user_id);

CREATE POLICY "users update own responses"
  ON question_responses FOR UPDATE
  USING ((SELECT auth.uid()) = user_id)
  WITH CHECK ((SELECT auth.uid()) = user_id);

-- Indexes for common query patterns
CREATE INDEX idx_qr_user_id ON question_responses(user_id);
CREATE INDEX idx_qr_quiz_attempt_id ON question_responses(quiz_attempt_id);
CREATE INDEX idx_qr_question_id ON question_responses(question_id);
CREATE INDEX idx_qr_user_question ON question_responses(user_id, question_id);
