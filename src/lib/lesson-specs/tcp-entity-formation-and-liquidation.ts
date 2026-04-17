import type { TopicSpec } from "./types";

// Twenty-eighth authored spec — eleventh spec of Stage 3. Selected
// from census v2 as rank #7: 105 questions, 14 flagged (13%) on
// `unrealized receivable` (5), `Section 752` (4), and `Section 736`
// (3). Census v2 was the first run to surface this topic — v1 could
// not see it because the three banned terms weren't universal until
// Advanced Basis Calculations registered them. This spec expects a
// mix of rightful-owner whitelisting (C corp formation mechanics
// that are its core) and cleanup of partnership-depth content that
// belongs to Partnerships (REG) and Advanced Basis Calculations
// (TCP).
//
// ## Anchor
//
// AICPA TCP/II/A/2 "Transactions between a shareholder and a C
// corporation (contributions to and distributions from a
// corporation and loans)" explicitly lists the tasks "Calculate a
// shareholder's tax realized and recognized gain (loss) on the
// contribution of noncash property to a C corporation" and
// "Calculate the tax realized and recognized gain (loss) for both
// a C corporation and shareholders on a liquidating distribution."
// That is the AICPA mandate for this topic. The scaffolder
// mis-anchored to TCP/II/E, which is actually "Tax-exempt
// organizations"; corrected to TCP/II/A/2.
//
// Note: Entity Choice and Planning (already authored) is anchored
// at TCP/III/A 'Formation and liquidation of business entities,'
// which is the PLANNING counterpart. Entity Choice owns the
// cross-entity comparison decision framework; this spec owns the
// mechanics of C corporation formation and liquidation at tax-
// compliance depth. Two specs, different AICPA groups, different
// scope lines.
//
// ## Scope line
//
// This topic owns §351 tax-free corporate formation mechanics at
// AICPA compliance depth: the 80% control requirement, the
// property-not-service rule, boot and gain recognition, assumption
// of liabilities under §357 (with the §357(b) tax-avoidance
// disqualification and the §357(c) excess-liability gain
// recognition), shareholder basis in stock received under §358
// (substituted basis plus gain recognized minus boot received minus
// liabilities assumed), corporation's basis in property received
// under §362 (carryover basis plus gain recognized, subject to the
// §362(e)(2) built-in-loss limitation), and holding period tacking.
// Complete corporate liquidation mechanics: shareholder treatment
// under §331 (exchange treatment — gain/loss recognized as if stock
// sold, typically capital gain/loss); corporation-level gain on
// distribution of appreciated property under §336 (deemed sale at
// FMV); parent-subsidiary liquidation under §332 (nonrecognition
// when the 80% requirement is met); §337 nonrecognition at the
// subsidiary level for distributions to the 80% parent; basis
// carryover to the parent under §334(b). Non-liquidating
// distributions of property: §311(b) corporate-level gain on
// distribution of appreciated property (the General Utilities
// doctrine repeal).
//
// Not this topic: §721 partnership formation mechanics, §704(c)
// built-in gain allocations, §704(b) substantial economic effect,
// §731 nonliquidating partnership distributions, §736 retirement
// payments, §751 hot assets, partnership basis allocation rules —
// all owned by Partnerships (REG) and Advanced Basis Calculations
// (TCP); §1361 S corporation election mechanics, §1363 LIFO
// recapture on C-to-S conversion, §1374 built-in gains tax
// (S Corporations REG); the cross-entity comparison framework
// (Entity Choice and Planning); §382 NOL limitation after ownership
// change (separate topic); reorganizations under §368 (a separate
// advanced corporate topic if specced).

export const spec: TopicSpec = {
	topic: "Entity Formation and Liquidation",
	section: "tcp",
	blueprintRef: "TCP/II/A/2",

	inScope: [
		"§351 tax-free corporate formation: the general rule that no gain or loss is recognized on the transfer of property to a corporation by one or more persons solely in exchange for stock if, immediately after the exchange, such persons are in 'control' of the corporation. Control means ownership of at least 80% of the total combined voting power of all classes of voting stock and at least 80% of the total number of shares of all other classes of stock (§368(c)).",
		"The 'property' requirement for §351: the transferor must contribute property — which includes cash, equipment, inventory, receivables, intangibles, real estate, and intellectual property. Services are NOT property. A person who contributes only services receives stock in exchange for the services and recognizes ordinary compensation income equal to the stock's fair market value; the corporation receives a deduction or capitalized asset for the service value.",
		"The control group problem when services are contributed: if a service provider receives stock counted toward the 80% control group, the non-service transferors may lose §351 treatment. A commonly-tested fact pattern: two contributors exchange property for 80% of the stock and a third contributor exchanges services for 20%. The service provider's 20% is disregarded for control purposes, meaning the property contributors must hold at least 80% by themselves for the transaction to qualify.",
		"Boot under §351(b): if the transferor receives cash or other property (boot) in addition to stock, the transferor recognizes gain to the extent of the lesser of the realized gain or the boot received. Character of the gain depends on the property transferred (ordinary, §1231, capital). Loss is NEVER recognized under §351, even if boot is received.",
		"Assumption of liabilities under §357: the assumption of a transferor's liability by the corporation is generally NOT treated as boot for gain recognition under the general rule (§357(a)). Two exceptions apply: (1) §357(b) — if the principal purpose of the assumption is tax avoidance or there is no bona fide business purpose, the liabilities are treated as money received (boot), tainting the whole transaction; (2) §357(c) — if the total liabilities assumed by the corporation exceed the transferor's total adjusted basis in the property transferred, the excess is treated as gain recognized to the transferor.",
		"Shareholder basis in stock received under §358: substituted basis rule — stock basis equals the adjusted basis of property transferred, plus any gain recognized, minus any boot received (cash or other property), minus any liabilities assumed by the corporation. A transferor contributing $60,000 basis equipment and recognizing $10,000 gain for $30,000 stock and $5,000 cash has a stock basis of $60,000 + $10,000 − $5,000 = $65,000.",
		"Corporation's basis in contributed property under §362: carryover basis — the corporation's basis in the contributed property equals the transferor's adjusted basis plus any gain recognized by the transferor on the contribution. The corporation's basis cannot exceed the property's FMV at the time of contribution under the §362(e)(2) built-in-loss limitation, which prevents a net built-in loss from being transferred to the corporation.",
		"Holding period tacking under §1223: when §351 nonrecognition applies, the transferor's holding period in the stock received tacks the holding period of property contributed if the property was a capital asset or §1231 asset. For the corporation's holding period in property received, §1223(2) provides similar tacking from the transferor's holding period.",
		"Complete liquidation — general concept: a liquidation involves the corporation's winding up of business, the distribution of assets to shareholders in exchange for their stock, and the dissolution of the corporate entity. Tax consequences arise at BOTH the corporate level (gain on the distribution of appreciated assets) AND the shareholder level (gain or loss on the exchange of stock for the distributed assets).",
		"Shareholder treatment under §331: a shareholder receiving a liquidating distribution is treated as having sold the stock — the shareholder recognizes gain or loss equal to the difference between the FMV of property received (plus cash and minus liabilities assumed) and the adjusted basis of the stock. The character is generally capital gain or capital loss (unless the stock was held as an ordinary-income asset, e.g., dealer inventory).",
		"Corporation-level treatment under §336 (General Utilities repeal): the corporation recognizes gain on the distribution of appreciated property in a complete liquidation as if the property had been sold at FMV. Loss on depreciated property is generally recognized, though §336(d) limits loss recognition in certain related-party or recently-acquired-property scenarios. This is the General Utilities doctrine repeal — historically, corporate-level gain on liquidating distributions was not recognized; post-1986, it is.",
		"Parent-subsidiary liquidation under §332: nonrecognition at the shareholder (parent) level when the parent owns at least 80% of the subsidiary's stock (by vote and value), both at the time of the plan of liquidation and continuously until the completion of the liquidation. Under §337, the subsidiary recognizes no gain or loss on distributions to the 80% parent (but DOES recognize gain on distributions to minority shareholders under §336).",
		"Parent's basis in property received under §334(b): in a §332 parent-subsidiary liquidation, the parent takes a carryover basis from the subsidiary (the same basis the subsidiary had in the property). This preserves the subsidiary's tax attributes and built-in gain or loss at the parent level. Contrast with §334(a) general rule for liquidations not qualifying for §332, where the shareholder takes a FMV basis.",
		"Minority shareholders in a §332 liquidation: minority shareholders receive FMV treatment — §336 gain is recognized by the subsidiary on property distributed to them, and each minority shareholder recognizes gain or loss as if §331 applied (exchange treatment, FMV vs stock basis). Only the 80% parent gets the §332 nonrecognition benefit.",
		"Tax attributes carryover in §332 liquidation under §381: the parent inherits the subsidiary's tax attributes — earnings and profits, net operating losses, capital losses, credit carryforwards, and the method of accounting — subject to the §382 ownership-change limitations when applicable.",
		"Non-liquidating distributions of property under §311(b): when a corporation distributes appreciated property to shareholders outside of liquidation (a current-year distribution of property with basis less than FMV), the corporation recognizes gain as if the property had been sold for FMV. This is the General Utilities repeal as applied to non-liquidating distributions. Loss on depreciated property is NOT recognized under §311(a), only gain on appreciated property under §311(b).",
		"Tax-free reorganizations under §368 — only at high concept level: the existence of seven reorganization types (Type A statutory merger, Type B stock-for-stock, Type C stock-for-assets, Type D divisive, Type E recapitalization, Type F mere change in form, Type G bankruptcy); the continuity of interest and continuity of business enterprise doctrines at concept level. Detailed reorganization mechanics are outside this topic's depth — this topic focuses on the formation and ordinary-liquidation lifecycle, not on reorganizations that preserve corporate continuity.",
		"Liquidation planning considerations: the interaction of §336 corporate-level gain with the §331 shareholder-level gain (potentially double-taxing built-in gains, though the §332 parent-subsidiary exception preserves single-level taxation); the basis step-up for shareholders who receive FMV assets under §334(a); the timing consideration of distribution in a single tax year vs over multiple tax years; and the treatment of corporate debts assumed or extinguished as part of the liquidation.",
	],

	outOfScope: [
		"§721 partnership formation mechanics at depth — the general nonrecognition rule, exceptions (investment company partnerships under §721(b), disguised sales under §707(a)(2)(B)), partnership's basis in contributed property, partner's outside basis, §704(c) built-in gain tracking for contributed property, §752 liability allocation, holding period tacking. All owned by the Partnerships (REG) spec and Advanced Basis Calculations (TCP) spec",
		"§731 nonliquidating partnership distributions — gain recognition to partners only to the extent cash exceeds outside basis, loss recognition only on complete liquidation of partnership interest, ordering of basis reduction on partnership distributions, inside/outside basis divergence. Advanced Basis Calculations territory",
		"§736 retirement and liquidation payments to a partner — §736(a) payments for services and unrealized receivables (ordinary income to the retiring partner), §736(b) payments for partnership property (capital gain/loss under §731). Partnerships / Advanced Basis territory",
		"§751 hot assets mechanics — unrealized receivables and substantially appreciated inventory definitions at depth, §751(a) ordinary income recharacterization on sale of a partnership interest, §751(b) disproportionate distribution rules. Partnerships / Advanced Basis territory",
		"§704(b) substantial economic effect and §704(c) built-in gain allocation methods — capital account maintenance, the three allocation methods (traditional, traditional with curative, remedial). Partnerships / Advanced Basis territory",
		"§1361 S corporation election eligibility requirements at depth — eligible shareholder categories, one-class-of-stock rule, domestic corporation requirement, prohibited corporations (banks, insurance, DISC). S Corporations (REG) territory",
		"§1362 S election and termination mechanics — timing of the election, revocation, inadvertent termination, post-termination transition period. S Corporations territory",
		"§1363(d) LIFO recapture on C-to-S conversion — the computation of LIFO reserve recapture, the four-installment payment option. S Corporations territory",
		"§1374 built-in gains tax mechanics — recognition period, net unrealized built-in gain computation, the 21% rate, interaction with NOL. S Corporations territory",
		"§1375 passive investment income tax — the 25% gross receipts test, computation of excess net passive income, three-consecutive-year termination. S Corporations territory",
		"§368 tax-free corporate reorganizations at computation depth — Type A merger mechanics, Type B stock-for-stock continuity requirements, Type C asset-for-stock, the seven types and their specific technical requirements, §354/§355/§361 nonrecognition rules, boot in reorganizations, §356 gain recognition, §358 basis, §362 basis, §381 attribute carryover in reorganizations. The high-concept level (seven types exist and preserve continuity) is in scope; the computation depth is a separate advanced topic",
		"§355 corporate divisions — spin-offs, split-offs, split-ups, the active trade or business requirement, the 5-year rule, the device test, continuity of interest. Separate advanced corporate topic",
		"§382 NOL limitation after an ownership change — 5% shareholder tracking, long-term tax-exempt rate, continuity of business enterprise, built-in gain/loss adjustments. The general inheritance of NOLs under §381 in a §332 liquidation is in scope at concept level; the §382 limitation depth is a separate topic",
		"§269 acquisitions made to evade tax — separate anti-abuse topic",
		"Entity choice and planning decision framework — the cross-entity comparison of C corp / S corp / partnership / LLC / sole proprietor selection. Entity Choice and Planning (TCP) owns this",
		"§301 ordinary distribution ordering (dividend / return of basis / capital gain §301(c)(3) sequence) — this is C Corporations (REG) topic territory at depth. The corporation-level §311(b) gain on appreciated-property distributions is in scope here",
		"Accumulated earnings tax under §531-537 and personal holding company tax under §541-547 — separate C corp anti-avoidance topics",
		"Consolidated return mechanics at depth — §1501-§1504 consolidated group requirements, intercompany transactions, SRLY rules, earnings and profits adjustments. C Corporations territory",
	],

	keyStandards: [
		"IRC §351 — Transfer to corporation controlled by transferor (tax-free formation)",
		"IRC §357 — Assumption of liability",
		"IRC §358 — Basis to distributees (shareholder basis in stock received)",
		"IRC §362 — Basis to corporation (carryover basis in contributed property)",
		"IRC §368(c) — Definition of control (80% voting + 80% of other classes)",
		"IRC §331 — Gain or loss to shareholders in complete liquidation",
		"IRC §332 — Complete liquidations of subsidiaries (parent-subsidiary nonrecognition)",
		"IRC §334 — Basis of property received in liquidations",
		"IRC §336 — Gain or loss recognized on property distributed in complete liquidation",
		"IRC §337 — Nonrecognition for property distributed to parent in complete liquidation",
		"IRC §311 — Taxability of corporation on distribution (§311(b) gain on appreciated property)",
		"IRC §381 — Carryover of tax attributes in certain corporate acquisitions",
		"IRC §1223 — Holding period of property (tacking rules)",
	],

	commonMisconceptions: [
		"Thinking that services contributed to a corporation count toward the 80% control requirement under §351. Services are not 'property' under §351 — a contributor who receives stock solely for services recognizes ordinary compensation income and is excluded from the control-group determination for the other property contributors. This can disqualify the entire transaction from §351 treatment if the property contributors fall below 80% after the service contributor is excluded.",
		"Believing that assumption of liabilities is always treated as boot. The general rule under §357(a) is that liabilities assumed by the corporation are NOT boot. Two exceptions apply: §357(b) when the principal purpose is tax avoidance (the entire assumption becomes boot), and §357(c) when total liabilities exceed total basis (the excess is recognized as gain, but only the excess).",
		"Confusing the shareholder's basis in stock with the corporation's basis in property. Under §358, the shareholder's stock basis equals the transferor's basis in the property contributed, plus gain recognized, minus boot received, minus liabilities assumed. Under §362, the corporation's basis in the property received equals the transferor's basis plus gain recognized. The two bases are derived from different formulas and serve different purposes.",
		"Treating losses as recognizable under §351 if boot is received. §351 nonrecognition is asymmetric — gain is recognized to the extent of boot, but loss is NEVER recognized regardless of whether boot is received. A contributor with a realized loss in the property transferred defers the loss indefinitely (absorbed into stock basis).",
		"Assuming every complete liquidation triggers double taxation. Complete liquidations normally trigger double taxation — corporate-level gain under §336 on distributed appreciated property and shareholder-level gain under §331 on the exchange. The §332 parent-subsidiary exception (80% ownership) preserves single-level taxation by deferring the corporate-level gain and providing carryover basis under §334(b).",
		"Thinking §332 applies to minority shareholders in a parent-subsidiary liquidation. §332 nonrecognition applies ONLY to the 80% parent. Minority shareholders are treated under the general §331 rules — the corporation recognizes gain under §336 on property distributed to them, and each minority shareholder recognizes exchange gain or loss on their stock.",
		"Confusing the §311(b) non-liquidating gain rule with the §336 liquidation rule. Both are aspects of the General Utilities doctrine repeal, but they apply in different contexts. §311(b) applies to current-year distributions of appreciated property to shareholders outside of liquidation (dividend distribution). §336 applies to distributions in complete liquidation. §311(a) does NOT recognize loss on depreciated property in non-liquidating distributions — only gain under §311(b).",
		"Treating §336 losses as always recognizable. §336(d) contains two loss limitations: (1) the related-party rule — loss is not recognized on distribution to a related party if the property was acquired in a §351 contribution or as a capital contribution within five years of the liquidation; (2) the pre-existing built-in loss on §351-contributed property with a tax-avoidance purpose is also limited.",
		"Thinking §362(e)(2) applies only when the transferor is individually related to the corporation. The §362(e)(2) built-in-loss limitation applies whenever a §351 transfer results in the corporation receiving property with aggregate basis in excess of aggregate FMV. The limitation caps the corporation's aggregate basis at FMV, preventing the built-in loss from transferring. The transferor may instead elect to reduce its stock basis to preserve the corporation's basis.",
		"Confusing control for §351 with control for reorganizations. §351 control is defined in §368(c) as 80% voting power + 80% of each non-voting class. Different control definitions apply in different contexts (e.g., 50% for affiliated group, 80% for consolidated return, 50% for CFC).",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Partnership formation / allocation depth ---
		{
			term: "Section 721",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)721\\b",
			category: "partnership formation",
			why: "§721 partnership formation — Partnerships (REG) and Advanced Basis Calculations (TCP) territory.",
		},
		{
			term: "Section 752",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)752\\b",
			category: "partnership liability allocation",
			why: "§752 partnership liability allocation — Partnerships / Advanced Basis territory.",
		},
		{
			term: "Section 736",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)736\\b",
			category: "partnership retirement",
			why: "§736 retirement and liquidation payments to a partner — Partnerships / Advanced Basis territory.",
		},
		{
			term: "Section 731",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)731\\b",
			category: "partnership distribution",
			why: "§731 nonliquidating partnership distributions — Partnerships / Advanced Basis territory.",
		},
		{
			term: "Section 751",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)751\\b",
			category: "partnership hot assets",
			why: "§751 hot assets mechanics — Partnerships / Advanced Basis territory.",
		},
		{
			term: "Section 704",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)704\\(",
			category: "partnership allocation",
			why: "§704(b) or §704(c) partnership allocation — Partnerships / Advanced Basis territory.",
		},
		{
			term: "substantial economic effect",
			pattern: "substantial\\s+economic\\s+effect",
			category: "partnership allocation",
			why: "§704(b) partnership allocation regulations — Partnerships / Advanced Basis territory.",
		},
		{
			term: "hot assets",
			pattern: "\\bhot\\s+assets?\\b",
			category: "partnership hot assets",
			why: "§751 hot assets — Partnerships / Advanced Basis territory.",
		},
		{
			term: "unrealized receivable",
			pattern: "unrealized\\s+receivable",
			category: "partnership hot assets",
			why: "Unrealized receivables under §751 — Partnerships / Advanced Basis territory.",
		},

		// --- S corp mechanics ---
		{
			term: "Section 1374",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1374\\b",
			category: "S corp mechanics",
			why: "§1374 built-in gains tax — S Corporations (REG) territory.",
		},
		{
			term: "Section 1375",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1375\\b",
			category: "S corp mechanics",
			why: "§1375 passive investment income tax — S Corporations (REG) territory.",
		},
		{
			term: "Section 1363",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1363\\b",
			category: "S corp mechanics",
			why: "§1363 LIFO recapture on C-to-S conversion — S Corporations territory.",
		},
		{
			term: "Section 1361",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1361\\b",
			category: "S corp election",
			why: "§1361 S corp eligibility — S Corporations (REG) territory.",
		},
		{
			term: "accumulated adjustments account",
			pattern: "accumulated\\s+adjustments\\s+account|\\bAAA\\s+account",
			category: "S corp mechanics",
			why: "S corp AAA tracking — S Corporations territory.",
		},

		// --- Reorganization depth ---
		{
			term: "Section 368 reorganization",
			pattern: "(?:Section\\s*|§\\s*)368\\s+reorganization|Type\\s+[A-G]\\s+reorganization",
			category: "reorganization depth",
			why: "§368 reorganizations at computation depth — separate advanced corporate topic. High-concept mention of reorganization types is in scope.",
		},
		{
			term: "continuity of interest",
			pattern: "continuity\\s+of\\s+interest",
			category: "reorganization depth",
			why: "Continuity of interest doctrine in §368 — reorganization depth.",
		},
		{
			term: "Section 355",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)355\\b",
			category: "reorganization depth",
			why: "§355 spin-off/split-off/split-up — separate advanced corporate topic.",
		},
		{
			term: "active trade or business requirement",
			pattern: "active\\s+trade\\s+or\\s+business\\s+requirement",
			category: "reorganization depth",
			why: "§355(b) active trade or business test for corporate divisions — reorganization territory.",
		},

		// --- §382 NOL limitation depth ---
		{
			term: "long-term tax-exempt rate",
			pattern: "long[-\\s]term\\s+tax[-\\s]exempt\\s+rate",
			category: "§382 depth",
			why: "§382 limitation base rate — separate NOL/attributes topic.",
		},

		// --- QBI / Entity Choice ---
		{
			term: "Section 199A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)199A\\b",
			category: "QBI",
			why: "§199A QBI — Individual Taxation: Deductions (REG) owns mechanics; Entity Choice and Planning (TCP) owns comparison-level use. Not a formation/liquidation concept.",
		},
		{
			term: "qualified business income",
			pattern: "qualified\\s+business\\s+income",
			category: "QBI",
			why: "QBI — Individual Deductions and Entity Choice territory.",
		},

		// --- Accumulated earnings / PHC ---
		{
			term: "accumulated earnings tax",
			pattern: "accumulated\\s+earnings\\s+tax|\\bAET\\b",
			category: "anti-avoidance",
			why: "§531 accumulated earnings tax — separate C corp anti-avoidance topic.",
		},
		{
			term: "personal holding company tax",
			pattern: "personal\\s+holding\\s+company\\s+tax|\\bPHC\\s+tax",
			category: "anti-avoidance",
			why: "§541 personal holding company tax — separate C corp anti-avoidance topic.",
		},
	],

	notes:
		"Entity Formation and Liquidation is the TCP/II/A/2 topic covering §351 tax-free corporate formation, §331/§332/§336/§337 complete corporate liquidation, §334 basis in liquidation, §311(b) non-liquidating appreciated-property distribution, and §381 attribute carryover — all at C corporation compliance depth. Census v2 flagged 14/105 questions at 13% on `unrealized receivable`, `Section 752`, and `Section 736` — all partnership depth terms. This was a v2 discovery (invisible on v1 before Advanced Basis Calculations registered these bans). The flags are genuine drift — partnership-specific content that belongs to Partnerships (REG) and Advanced Basis Calculations (TCP), not C corp formation/liquidation. Anchored at TCP/II/A/2 'Transactions between a shareholder and a C corporation (contributions to and distributions from a corporation and loans)' because AICPA tasks under that sub-topic explicitly include calculating shareholder gain/loss and basis on contributions and liquidating distributions. The scaffolder badly mis-anchored to TCP/II/E (which is actually 'Tax-exempt organizations'); corrected. Note that Entity Choice and Planning (already authored) is anchored at TCP/III/A (Entity Tax PLANNING — the comparison decision framework). This spec is Entity Tax COMPLIANCE for C corp formation/liquidation mechanics. Two specs, different AICPA areas (II vs III), different scope lines. Line this spec holds: §351 / §331-§337 C corporation formation and liquidation mechanics. Out of scope: partnership formation (§721) and partner-level mechanics (§704/§731/§736/§751/§752), S corp mechanics (§1361/§1362/§1363/§1374/§1375/AAA), §368 reorganizations at depth, §355 divisions, §382 NOL limitations at depth, §199A QBI, accumulated earnings tax, and personal holding company tax.",
};
