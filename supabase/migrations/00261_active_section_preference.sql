-- Add active_section to profiles to allow users to focus on one exam at a time
ALTER TABLE profiles ADD COLUMN IF NOT EXISTS active_section TEXT DEFAULT 'aud';
