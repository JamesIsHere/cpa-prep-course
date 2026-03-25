-- User-submitted issue reports on questions.
-- One active report per user per question (unique constraint).
-- Admin resolves with status: fixed, wont_fix, duplicate.

CREATE TABLE question_reports (
  id serial PRIMARY KEY,
  question_id int NOT NULL REFERENCES questions(id),
  user_id uuid NOT NULL REFERENCES auth.users(id),
  quiz_attempt_id int REFERENCES quiz_attempts(id) ON DELETE SET NULL,
  reason text NOT NULL CHECK (reason IN ('wrong_answer', 'confusing_wording', 'typo', 'outdated', 'other')),
  note text DEFAULT '' CHECK (char_length(note) <= 500),
  resolution text CHECK (resolution IN ('fixed', 'wont_fix', 'duplicate')),
  resolved_at timestamptz,
  resolved_by uuid REFERENCES auth.users(id),
  created_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE (user_id, question_id)
);

ALTER TABLE question_reports ENABLE ROW LEVEL SECURITY;

-- Users can read their own reports
CREATE POLICY "users read own reports"
  ON question_reports FOR SELECT
  USING ((SELECT auth.uid()) = user_id);

-- Users can insert their own reports
CREATE POLICY "users insert own reports"
  ON question_reports FOR INSERT
  WITH CHECK ((SELECT auth.uid()) = user_id);

-- Users can update their own unresolved reports (change reason/note)
CREATE POLICY "users update own unresolved reports"
  ON question_reports FOR UPDATE
  USING ((SELECT auth.uid()) = user_id AND resolution IS NULL)
  WITH CHECK ((SELECT auth.uid()) = user_id);

-- Indexes
CREATE INDEX idx_qrep_question_id ON question_reports(question_id);
CREATE INDEX idx_qrep_user_id ON question_reports(user_id);
CREATE INDEX idx_qrep_unresolved ON question_reports(question_id) WHERE resolution IS NULL;
