-- Add Bloom's cognitive level column to questions table
-- L1 = Remembering & Understanding, L2 = Application, L3 = Analysis, L4 = Evaluation
-- Nullable — null means "not yet tagged"

ALTER TABLE questions
ADD COLUMN cognitive_level int CHECK (cognitive_level IN (1, 2, 3, 4));
