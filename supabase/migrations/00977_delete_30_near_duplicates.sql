-- Delete 30 near-duplicate questions (similarity >= 0.65)
-- Keeps the higher-scoring question from each pair

DELETE FROM questions WHERE id IN (10392,1995,5572,11070,10952,8404,7654,1067,272,5146,2002,7660,2587,5520,6075,12125,10564,10054,4207,2538,2627,4070,3230,12058,4583,4144,10076,14966,15042,15065);
