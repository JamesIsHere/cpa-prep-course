-- Add target exam date to user profiles
ALTER TABLE profiles ADD COLUMN IF NOT EXISTS target_exam_date DATE;
