-- Delete 6 review-flagged questions confirmed as incorrect after manual review
-- Q13870: Answer (withdraw) contradicts explanation (disclaim)
-- Q4961: Answer (re-perform all tests) contradicts explanation (not required)
-- Q12622: Mandating maintenance windows is wrong for CI/CD (bad ISC advice)
-- Q14382: Section 121+1033 math yields basis $170K not $220K
-- Q14522: Section 751(b) bifurcates, doesn't convert entire gain to ordinary
-- Q14678: Section 163(j) ATI calculation is wrong in explanation

DELETE FROM questions WHERE id IN (13870, 4961, 12622, 14382, 14522, 14678);
