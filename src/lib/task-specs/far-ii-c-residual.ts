import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/II/C (Inventory).
// ~7 homeless questions on permitted costing method concepts, IFRS LIFO
// prohibition, inventory classifications, inventory error mechanics
// and multi-period self-correcting effects, and retail inventory method
// conceptual understanding beyond the representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/C",
	section: "far",

	aicpaTask:
		"Residual: inventory content beyond the representative tasks — permitted costing method concepts (not calculation), IFRS LIFO prohibition, inventory classifications (raw materials, WIP, finished goods), inventory error mechanics and multi-period self-correcting effects on retained earnings, and retail inventory method conceptual understanding.",
	aicpaSkill: "Application",
	bloomLevel: 2,

	inScope: [
		"Permitted costing method concepts (ASC 330): FIFO, LIFO, weighted average, specific identification — conceptual understanding of cost flow assumptions and when each is appropriate, not numerical calculation",
		"IFRS LIFO prohibition (IAS 2): LIFO not permitted under IFRS, rationale (faithful representation of physical flow), GAAP-IFRS difference on inventory costing methods",
		"Inventory classifications: raw materials, work-in-process, and finished goods for manufacturing entities; merchandise inventory for retailers; supplies; distinction between direct and indirect costs in WIP",
		"Inventory error mechanics: effect of ending inventory errors on COGS and net income in current and subsequent periods, self-correcting nature over two periods, cumulative effect on retained earnings, balance sheet vs income statement impact timing",
		"Retail inventory method conceptual understanding: cost-to-retail ratio concept, markups and markdowns treatment (conventional vs FIFO vs average cost), LCM approximation through conventional retail method, when the method is appropriate",
		"Gross profit method: estimation of ending inventory using historical gross profit percentage, appropriate uses (interim reporting, fire loss claims, reasonableness checks), distinction from retail inventory method",
		"Purchase commitment losses: recognition of loss when firm non-cancelable purchase commitment exists and market price falls below commitment price, measurement and disclosure requirements",
		"FOB shipping point vs destination: inventory recognition timing based on transfer of risk/title, cutoff errors when goods are in transit at period-end",
		"Interest capitalization to inventory (ASC 835-20): qualifying assets for interest capitalization, avoidable interest concept, application to self-constructed assets and inventory produced for own use",
	],

	keyStandards: [
		"ASC 330 — Inventory",
		"IAS 2 — Inventories",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-inventory",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
