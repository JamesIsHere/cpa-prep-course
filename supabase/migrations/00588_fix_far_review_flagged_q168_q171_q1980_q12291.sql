-- Fix 4 FAR review-flagged questions from human review pass
-- Q168: Trim verbose choice B (straight-line vs effective interest)
-- Q171: Trim verbose choice B (treasury stock reissuance)
-- Q1980: Rewrite — misleading "numerator" language for retail method markdowns
-- Q12291: Rewrite — ambiguous "on the face" constraint for EPS presentation

-- Q168: Trim choice B + tighten explanation
UPDATE questions
SET
  choices = $CHOICES$["The straight-line method always produces materially different results and is never acceptable under U.S. GAAP — the effective interest method is the only permitted approach","The straight-line method produces constant annual expense ($108,000), understating early-year and overstating later-year interest relative to the effective interest method — it is acceptable only when results are not materially different from effective interest","The straight-line method is preferred over the effective interest method because it produces more predictable earnings and better matches interest expense with revenue over the bond term","Both methods produce identical total interest expense and identical annual expense — the choice is purely a disclosure preference with no financial statement impact"]$CHOICES$,
  explanation = $EXPL$Correct (B): Under ASC 835-30-35-4, straight-line produces constant expense of $108,000, while effective interest starts at $113,200 (Year 1) and declines to $103,600 (Year 10) as the carrying amount decreases. Straight-line understates expense early and overstates it later, but is acceptable when the difference is not material.
Wrong (A): The straight-line method is permitted under U.S. GAAP when the results are not materially different from the effective interest method. It is not categorically prohibited by ASC 835-30.
Wrong (C): The straight-line method is not preferred. ASC 835-30-35-2 identifies the effective interest method as preferred, with straight-line allowed only as a practical expedient when immaterial differences result.
Wrong (D): While total interest expense is identical over 10 years under both methods, annual expense amounts differ. Effective interest produces declining annual expense for a premium bond, while straight-line produces a constant amount.$EXPL$
WHERE id = 168;

-- Q171: Trim choice B
UPDATE questions
SET
  choices = $CHOICES$["Total equity increases by $272,000 — both reissuances are credited to APIC because corporations cannot recognize gains or losses on their own stock","Total equity increases by $272,000 — the above-cost reissuance creates $42,000 APIC from treasury stock, and the below-cost reissuance draws $20,000 from that APIC balance, leaving $22,000; any deficit exceeding the APIC balance would be charged to retained earnings","Total equity increases by $272,000 with a $42,000 gain on the first reissuance and a $20,000 loss on the second reissuance, both reported on the income statement as other income","Total equity increases by $192,000 because the below-cost reissuance of 4,000 shares at $20 generates no equity increase — the $20,000 deficit is offset against the $80,000 cash received"]$CHOICES$
WHERE id = 171;

-- Q1980: Rewrite retail method markdowns question
UPDATE questions
SET
  stem = $STEM$Under the conventional retail method (lower of average cost or market), how are net markdowns treated in computing the cost-to-retail percentage?$STEM$,
  choices = $CHOICES$["Excluded from the cost-to-retail percentage calculation but included in computing ending inventory at retail","Included in both the cost-to-retail percentage calculation and ending inventory at retail","Excluded from all retail method calculations","Deducted from the cost of goods available for sale"]$CHOICES$,
  correct_index = 0,
  explanation = $EXPL$Correct (A): Under ASC 330-10-30-21, the conventional retail method excludes net markdowns from the denominator (retail side) of the cost-to-retail ratio, producing a lower percentage that approximates lower of cost or market. Markdowns still reduce ending inventory at retail, which is then multiplied by this ratio to estimate ending inventory at cost. Net markups are included in the ratio.
Wrong (B): Including markdowns in both the ratio and ending inventory at retail produces the average cost retail method, not the conventional (LCM) method. The distinction between the two methods is precisely whether markdowns are in the ratio.
Wrong (C): Markdowns are not entirely excluded — they reduce ending inventory at retail. They are excluded only from the cost-to-retail ratio calculation.
Wrong (D): Markdowns are retail-side adjustments, not cost-side. Freight-in and purchase discounts affect cost; markdowns affect retail values only.$EXPL$
WHERE id = 1980;

-- Q12291: Rewrite EPS presentation question
UPDATE questions
SET
  stem = $STEM$Whitfield Corp. reports income from continuing operations of $1.2 million and a discontinued operations loss of $150,000 (net of tax) for 2025. Under ASC 260-10-45, which per-share amounts must Whitfield present for both basic and diluted EPS?$STEM$,
  choices = $CHOICES$["Only net income","Income from continuing operations and net income only — discontinued operations EPS is optional","Income from continuing operations, discontinued operations, and net income","Net income and comprehensive income"]$CHOICES$,
  correct_index = 2,
  explanation = $EXPL$Correct (C): Under ASC 260-10-45-2, an entity must present basic and diluted EPS for income from continuing operations and for net income on the face of the income statement. When discontinued operations exist, per-share amounts for discontinued operations must also be presented on the face of the income statement or in the notes. All three categories require EPS disclosure.
Wrong (A): Presenting only net income EPS omits the required per-share amounts for income from continuing operations, which must appear on the face of the income statement.
Wrong (B): Discontinued operations EPS is not optional when discontinued operations are present — ASC 260-10-45 requires per-share presentation on the face or in the notes.
Wrong (D): Comprehensive income does not require per-share presentation under ASC 260. EPS requirements apply to income statement line items, not OCI components.$EXPL$
WHERE id = 12291;
