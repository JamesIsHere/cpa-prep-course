-- Fix Q14456 (BAR / Foreign Currency Transactions). Choice A was internally inconsistent:
-- the stem's numbers produce a near-zero net monetary position under the temporal method,
-- but choice A claimed "LC 20,000,000 net monetary liabilities" and asserted the direction
-- of gain/loss reverses. The explanation itself derived the correct zero-ish figure but the
-- choice text contradicted it. This rewrite keeps the scenario, rewrites choice A to match
-- the actual math, and updates the explanation to drop the false "direction reverses" claim.
--
-- Flagged 2026-04-11 Phase 2 verification (Q14456 BAR review — numerical error in choice).

BEGIN;

UPDATE questions SET
  stem = $EXPL$Prescott Global (U.S.) has a foreign subsidiary with local currency functional currency. The subsidiary has total assets of LC 80,000,000 and total liabilities of LC 50,000,000. Within assets, LC 30,000,000 are nonmonetary (inventory and fixed assets at historical cost). The local currency depreciated 10% during the year. If the subsidiary's functional currency were changed to USD (requiring the temporal method instead of the current rate method), how would the translation exposure change?$EXPL$,
  choices = '["Exposure decreases from LC 30,000,000 net asset exposure to a near-zero net monetary position, and the translation gain/loss is substantially eliminated", "Exposure increases because both monetary and nonmonetary items are exposed under the temporal method", "Exposure remains the same because both methods translate the same total net assets", "Exposure decreases from LC 80,000,000 total assets to LC 50,000,000 net monetary assets"]'::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 830-10-45, the current rate method translates all assets and liabilities at the current exchange rate, so the translation exposure equals total net assets: LC 80M − LC 50M = LC 30M. Under the temporal method per ASC 830-10-55, only monetary items are translated at the current rate; nonmonetary items (inventory at cost and fixed assets) are translated at historical rates. Prescott's monetary position: monetary assets = LC 80M − LC 30M nonmonetary = LC 50M; monetary liabilities = LC 50M; net monetary position = LC 50M − LC 50M ≈ 0. With no meaningful net monetary exposure, the 10% LC depreciation produces essentially no translation effect under the temporal method, whereas it would produce a substantial translation loss under the current rate method on the LC 30M net asset position.
Wrong (B): The temporal method expressly does not translate nonmonetary items at the current exchange rate — they remain at historical rates — so nonmonetary items are not exposed to current-period rate changes under temporal, unlike the claim here. This is the defining distinction between the two methods under ASC 830.
Wrong (C): The two methods do not translate the same items. Current rate translates the entire net asset position (LC 30M here), while temporal translates only the net monetary position (near zero here), so the exposure is materially different whenever nonmonetary items are significant.
Wrong (D): LC 50M is total liabilities and is also coincidentally equal to monetary assets in this scenario; neither equals the net monetary position. The net monetary position is monetary assets minus monetary liabilities, which is approximately zero rather than LC 50M.$EXPL$,
  correct_index = 0,
  difficulty = 'hard',
  cognitive_level = 3
WHERE id = 14456;

COMMIT;
