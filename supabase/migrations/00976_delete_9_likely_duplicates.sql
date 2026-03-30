-- Delete 9 likely-duplicate questions (similarity > 0.7)
-- Keeps the higher-scoring question from each pair

-- FAR: 3 duplicates
DELETE FROM questions WHERE id IN (1959, 2004, 2114);

-- REG: 2 duplicates
DELETE FROM questions WHERE id IN (5459, 10740);

-- TCP: 4 duplicates
DELETE FROM questions WHERE id IN (4232, 4123, 4236, 5997);
