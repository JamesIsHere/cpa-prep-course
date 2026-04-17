-- Direction W: add pin model + timestamp columns to questions table.
-- Pin model: questions are pinned to scope containers (task-specs, lesson-specs,
-- or future frameworks). Pins are stored, timestamped, and sticky. The classifier
-- suggests pins; the user confirms or overrides.
--
-- Historical data note: existing ~8,612 questions get created_at = now() because
-- true creation dates were never tracked. Accept the loss, move forward.

ALTER TABLE questions
  ADD COLUMN IF NOT EXISTS created_at timestamptz DEFAULT now(),
  ADD COLUMN IF NOT EXISTS updated_at timestamptz DEFAULT now(),
  ADD COLUMN IF NOT EXISTS pin_ref text,
  ADD COLUMN IF NOT EXISTS pinned_at timestamptz;

-- Auto-update updated_at on row modification
CREATE OR REPLACE FUNCTION update_questions_updated_at()
RETURNS TRIGGER AS $FN$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$FN$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS questions_updated_at ON questions;
CREATE TRIGGER questions_updated_at
  BEFORE UPDATE ON questions
  FOR EACH ROW EXECUTE FUNCTION update_questions_updated_at();

-- Index on pin_ref for filtering pinned/unpinned questions
CREATE INDEX IF NOT EXISTS idx_questions_pin_ref ON questions (pin_ref)
  WHERE pin_ref IS NOT NULL;
