-- Rewrite Q14194 (TCP / Wealth Transfer and Gifting Strategies). The original scenario
-- involved a gift causa mortis, whose federal tax treatment is genuinely ambiguous — three
-- different answers are defensible depending on which authority you privilege (Rev. Rul.
-- 70-452 treats it as an incomplete gift pulled into the estate under §2033/§2038; the
-- stored explanation claimed both gift tax AND §2035(a) estate inclusion apply; the post-
-- 1981 strict reading limits §2035(a) to retained-interest and life-insurance transfers).
-- None of the four offered choices was cleanly correct, and the "double taxation" claim
-- in the keyed answer (D) directly contradicted the "credit prevents full double taxation"
-- language in the explanation.
--
-- This rewrite replaces the question with a clean §2035(b) "gross-up rule" scenario that
-- tests the same conceptual territory (contemplation-of-death transfers, gift vs. estate
-- tax interaction) but has an unambiguous answer grounded in a specific Code section.
-- Topic, difficulty, and cognitive level preserved.
--
-- Flagged 2026-04-11 Phase 2 verification (Q14194 TCP review — conceptual ambiguity).

BEGIN;

UPDATE questions SET
  stem = $EXPL$Margaret Ashworth had previously used her entire lifetime gift and estate tax exemption before 2024. In March 2024, Margaret transferred $3,000,000 in publicly traded stock to her daughter as an outright gift with no retained interests or reserved powers. Margaret paid $1,200,000 in gift tax on the transfer. Margaret died unexpectedly in November 2025, approximately 20 months after the gift. Under IRC §2035, what amount, if any, is included in Margaret's gross estate as a result of the 2024 transfer and the gift tax Margaret paid on it?$EXPL$,
  choices = '["$0 — neither the gift nor the gift tax is included because §2035 does not apply to outright transfers", "$1,200,000 — the gift tax paid is included under §2035(b) but the underlying gift is not", "$3,000,000 — the full value of the gifted stock is included under §2035(a)", "$4,200,000 — both the gift and the gift tax are included in the gross estate"]'::jsonb,
  explanation = $EXPL$Correct (B): Under IRC §2035(b), any gift tax paid by the decedent (or the decedent's estate) on gifts made by the decedent or the decedent's spouse during the three-year period ending on the date of death is added to the gross estate. This "gross-up rule" neutralizes the tax advantage of paying gift tax from pre-tax dollars — gift tax is tax-exclusive while estate tax is tax-inclusive — and prevents death-bed gifting designed to shift assets out at a lower effective rate. Margaret's $1,200,000 of gift tax paid on the March 2024 gift is included in her gross estate under §2035(b) because she died within three years of the gift. The $3,000,000 stock itself is not pulled back into the gross estate because §2035(a), as narrowed by the 1981 amendments, applies only to transfers of retained interests (under §§2036, 2037, and 2038) and life insurance (§2042) — not to outright gifts of non-retained-interest property.
Wrong (A): §2035(b) unambiguously requires gross-up of gift taxes paid within three years of death, regardless of whether the underlying gift was otherwise excluded from the estate. Treating the amount as $0 ignores the gross-up rule entirely rather than applying it to the $1,200,000 Margaret paid.
Wrong (C): Prior to the 1981 amendments, §2035(a) did pull back the value of gifts made within three years of death into the gross estate. That general rule was repealed; §2035(a) now applies only to specific categories such as retained interests and life insurance. An outright gift of publicly traded stock is not included in the gross estate under current §2035(a).
Wrong (D): This combines the pre-1981 full-gift-inclusion rule with the §2035(b) gross-up and double-counts. Current law includes only the $1,200,000 gift tax paid, not the gift itself.$EXPL$,
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 14194;

COMMIT;
