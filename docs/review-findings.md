# Human Review Findings

Patterns found during 30-question statistical reviews. Each pattern is a candidate for automated bulk detection and fix.

## Recurring Issues

### 1. Giveaway longest answer
**Pattern:** Correct answer is significantly longer or more qualified than distractors. Test-savvy students pick it without knowing the material.
**Example:** Q1321 — correct choice was "Advocacy threat, which is permissible if the matter is administrative and not adversarial" while others were bare labels.
**Automated check idea:** Flag questions where correct choice word count is >1.5x the average of wrong choices.
**Found in:** Q1321, Q4479, Q4548

### 2. Absurd distractors
**Pattern:** Wrong answers are obviously wrong to anyone with basic knowledge — not plausible misconceptions a CPA candidate would actually have.
**Example:** Q1403 — distractors were "marketing services" and "real estate lease management" for an SQMS component question.
**Automated check idea:** Hard to automate directly. Could flag questions where distractor text doesn't share any domain keywords with the correct answer.
**Found in:** Q1403, Q1504 (B/D), Q4479 (A/C)

### 3. Incomplete explanations
**Pattern:** Explanation only addresses why the correct answer is right, or covers 1-2 wrong answers but not all. Should explain all 4 choices.
**Example:** Q6095 — only explained why D was wrong, skipped A and C.
**Automated check idea:** Check for presence of "Wrong (A)" / "Wrong (B)" / "Wrong (C)" / "Wrong (D)" patterns — flag if fewer than 3 wrong-answer explanations.
**Found in:** Q6095, Q1666, Q4548

### 4. Null cognitive_level
**Pattern:** Question has no Bloom's level set, so it gets skipped by filters that key on cognitive_level.
**Automated check idea:** `SELECT id FROM questions WHERE cognitive_level IS NULL` — should be zero.
**Found in:** Q4479, Q4548

### 5. Bare stems (missed by expansion)
**Pattern:** Short textbook-style stems that weren't caught by the stem expansion pass, usually because cognitive_level was null (filter was L1/L2 only) or word count was just over the threshold.
**Automated check idea:** Flag stems under 25 words that don't contain a named entity or dollar amount.
**Found in:** Q4479, Q1504, Q4548, Q1666

### 6. Explanation/choice label mismatch
**Pattern:** Explanation references choices by letter but the labels don't match the actual choice text. Usually from a reordering or index change that didn't update the explanation.
**Example:** Q13097 — explanation said "Correct (C)" but described choice B's text. Correct_index pointed to wrong answer.
**Automated check idea:** Parse explanation for "Correct (X)" pattern, verify it matches the choice at correct_index.
**Found in:** Q13097, Q1504

### 7. Recite-all-N questions
**Pattern:** Question asks candidate to identify all N items in a framework/standard from a single answer choice. Real CPA exam tests recognition of 1-2 items, not memorization of complete lists.
**Automated check idea:** Flag questions where correct answer contains >5 comma-separated or "and"-joined items.
**Found in:** Q1380

### 8. Distractor is also correct
**Pattern:** A wrong answer is actually a true statement about the topic, making the question have two correct answers. Usually happens when a general characteristic is listed alongside a more specific one.
**Example:** Q26 — "The practitioner must be independent" is true for AUP engagements, but was listed as a wrong answer alongside the "correct" characteristic.
**Automated check idea:** Harder to automate — may need AI-assisted review to check whether distractor text is factually true.
**Found in:** Q26

## Review Log

| Question | Section | Action | Issues |
|----------|---------|--------|--------|
| Q324     | AUD     | Keep   | — |
| Q1403    | AUD     | Fixed  | #2 absurd distractors |
| Q13987   | AUD     | Keep   | — |
| Q1321    | AUD     | Fixed  | #1 giveaway longest, #3 incomplete explanation |
| Q6095    | AUD     | Fixed  | #3 incomplete explanation |
| Q4479    | AUD     | Fixed  | #1 giveaway longest, #2 absurd distractors, #4 null cognitive_level, #5 bare stem |
| Q1666    | AUD     | Fixed  | #3 incomplete explanation |
| Q13097   | AUD     | Fixed  | #6 explanation/choice mismatch (wrong answer keyed) |
| Q1504    | AUD     | Fixed  | #2 absurd distractors, #5 bare stem, #6 mismatch |
| Q1380    | AUD     | Fixed  | #7 recite-all-N |
| Q4548    | AUD     | Fixed   | #1 giveaway longest, #3 incomplete explanation, #4 null cognitive_level, #5 bare stem |
| Q13088   | AUD     | Keep    | — |
| Q276     | AUD     | Fixed   | #3 incomplete explanation (added D) |
| Q1695    | AUD     | Keep    | Weak distractors but tolerable at easy |
| Q4       | AUD     | Keep    | Bare stem, weak C/D distractors, tolerable at easy |
| Q1459    | AUD     | Fixed   | #6 explanation mismatch (A/B labels swapped) |
| Q4648    | AUD     | Fixed   | Correctness error (stem said mitigated, answer was EOM), #4 null, #1 giveaway, #5 bare |
| Q26      | AUD     | Fixed   | #8 distractor also correct (independence is true for AUP) |
| Q1545    | AUD     | Fixed   | #6 explanation mismatch (A/B swapped) |
| Q1547    | AUD     | Fixed   | #6 explanation mismatch (said "Choice A incorrect" but A was correct) |
| Q4518    | AUD     | Fixed   | #3 incomplete explanation, #4 null cognitive_level |
| Q6482    | AUD     | Fixed   | #3 incomplete explanation (added C) |
| Q1380    | AUD     | Fixed   | #7 recite-all-N (listed all 8 SQMS components) |
| Q4599    | AUD     | Fixed   | #1 giveaway longest, #2 absurd distractors, #3 incomplete, #4 null |
| Q1468    | AUD     | Fixed   | #3 incomplete explanation (added D) |
| Q5025    | AUD     | Keep    | Strong question — material vs pervasive distinction |
| Q1528    | AUD     | Fixed   | #1 extreme giveaway (33 vs 8 words), #2 absurd distractors |
| Q1458    | AUD     | Fixed   | #6 explanation mismatch, #3 incomplete (added B) |
| Q12842   | AUD     | Keep    | Strong question — multi-location ITGC reliance |
| Q1759    | AUD     | Fixed   | #3 incomplete explanation (added B/C) |
| Q13880   | AUD     | Keep    | Strong question — recurring engagement reassessment |
