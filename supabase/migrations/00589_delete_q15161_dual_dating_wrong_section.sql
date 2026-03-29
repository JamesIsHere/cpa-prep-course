-- Delete Q15161: dual dating question (auditing concept) was incorrectly placed in FAR
-- Dual dating is an AU-C 560 / AUD topic, not a FAR subsequent events topic
DELETE FROM questions WHERE id = 15161;
