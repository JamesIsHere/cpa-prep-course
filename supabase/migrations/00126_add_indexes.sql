-- Performance indexes for question bank scaling
-- Addresses full table scans on quiz/exam start and RLS filters on attempts

-- Questions: every quiz/exam fetches by section_id
CREATE INDEX idx_questions_section_id ON questions(section_id);

-- Questions: filtered quizzes (blueprint targeting) use (section_id, topic)
CREATE INDEX idx_questions_section_topic ON questions(section_id, topic);

-- Questions: Bloom's-filtered quizzes
CREATE INDEX idx_questions_section_cognitive ON questions(section_id, cognitive_level);

-- Quiz attempts: RLS filter on every user query
CREATE INDEX idx_quiz_attempts_user_id ON quiz_attempts(user_id);

-- Exam attempts: RLS filter on every user query
CREATE INDEX idx_exam_attempts_user_id ON exam_attempts(user_id);
