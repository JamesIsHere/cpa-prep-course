import type { TopicSpec } from "./types";

// Twenty-ninth authored spec — twelfth spec of Stage 3. Selected
// from census v3 as rank #2: 67 questions, 18 flagged (26.9%) on
// `Section 355` (9), `continuity of interest` (4), `Section 338`
// (4), `accumulated adjustments account` (1). Clean rightful-owner:
// Entity Formation and Liquidation (just authored) explicitly
// banned all §368 reorganization depth, §355 divisions, §338
// qualified stock purchases, and continuity-of-interest doctrine
// content as "separate advanced corporate topic — Entity Formation
// and Restructuring territory." This spec IS that separate topic.
//
// ## Anchor
//
// TCP/II/A/2 (C corp shareholder transactions — contributions,
// distributions, loans). The AICPA blueprint does not explicitly
// enumerate reorganizations, but the content is testable at CPA
// depth as advanced C corp material and naturally fits at this
// task cluster along with Entity Formation and Liquidation.
//
// ## Scope line
//
// §368 seven reorganization types, COI/COBE doctrines, §356 boot,
// §354/§361 nonrecognition, §358/§362 basis, §381 attribute
// carryover, §382 as a TRIGGER (not mechanics), §355 divisions
// (spin-off/split-off/split-up) with active-trade-or-business,
// device test, business purpose, §355(d)/(e) anti-Morris-Trust;
// §338 qualified stock purchases — both §338(g) and §338(h)(10).

export const spec: TopicSpec = {
	topic: "Entity Formation and Restructuring",
	section: "tcp",
	blueprintRef: "TCP/II/A/2",

	inScope: [
		"§368 tax-free corporate reorganizations — general framework: a 'reorganization' is a specific statutorily-defined transaction allowing continuation of corporate form without immediate tax recognition for target shareholders, the target corporation, or the acquiring corporation. The seven reorganization types are A (statutory merger), B (stock-for-stock), C (stock-for-assets), D (divisive or acquisitive), E (recapitalization), F (mere change in identity or form), and G (bankruptcy).",
		"Type A statutory merger or consolidation: one corporation merges into another or two corporations consolidate into a new entity. Type A is the most flexible reorganization form — it permits the most variety in consideration (stock, cash, debt, property), but the continuity of interest doctrine requires target shareholders to receive a meaningful proprietary stake (generally at least 40% stock consideration).",
		"Type B stock-for-stock reorganization: the acquiring corporation acquires stock of the target solely in exchange for the acquiring corporation's voting stock, and the acquiring corporation must be in control (80%) of the target immediately after the acquisition. Solely-for-voting-stock is strict — even small amounts of boot disqualify the transaction. Creeping B reorganizations are permitted where the acquirer obtains 80% through a series of transactions, provided no boot is used in any step that is part of the plan.",
		"Type C stock-for-assets reorganization: the acquiring corporation acquires substantially all of the target's assets in exchange for its voting stock, and the target then liquidates distributing the stock to its shareholders. Under the boot relaxation rule, up to 20% of consideration may be non-stock boot, but if any boot is used, at least 80% of the FMV of the target's assets must be acquired solely for voting stock.",
		"Type D reorganization (acquisitive or divisive): acquisitive D is a transfer of substantially all assets of one corporation to a controlled (50%+ post-transfer) corporation with the transferor then distributing the stock. Divisive D is a transfer of part of a corporation's assets to a controlled corporation followed by distribution of the controlled stock to shareholders — the statutory basis for §355 spin-offs, split-offs, and split-ups.",
		"Type E recapitalization: a reshuffling of the corporation's capital structure within a single corporation — exchanging common for common, common for preferred, bonds for stock, share consolidation or split. Type E does not involve acquisition or divestiture. Common fact patterns include debt-for-stock exchanges and preferred-for-common conversions.",
		"Type F reorganization: a mere change in identity, form, or place of organization of a single corporation. Common uses include reincorporation in a different state (e.g., Delaware to Texas by forming a new entity and transferring all assets) or a change between forms within the same tax regime. Type F preserves all tax attributes of the predecessor.",
		"The continuity of interest (COI) doctrine: target shareholders must receive stock consideration representing a meaningful proprietary interest in the acquiring corporation. The IRS generally requires at least 40% of the consideration to be stock of the acquirer for Type A reorganizations (the 40% benchmark derives from Rev. Proc. 77-37 and case law). Failure to meet COI disqualifies the transaction from tax-free treatment.",
		"The continuity of business enterprise (COBE) doctrine under Reg. §1.368-1(d): the acquiring corporation must continue the target's historic business or use a significant portion of the target's historic business assets. COBE ensures the transaction is not merely a liquidation of the target under the guise of a reorganization. A fact pattern where the acquirer discontinues the target's business and redeploys the assets may fail COBE.",
		"Boot in reorganizations and gain recognition under §356: if a target shareholder receives property other than qualifying stock (boot — cash, bonds, non-qualifying stock), the shareholder recognizes gain equal to the lesser of realized gain or boot received. Loss is NEVER recognized. §356(a)(2) recharacterizes the recognized gain as a dividend to the extent it has the effect of a dividend — generally when the target shareholder continues to have a meaningful interest in the combined entity and the boot distribution is proportional to their stock.",
		"§354 nonrecognition for target shareholders: target shareholders who exchange target stock solely for acquirer stock in a qualifying reorganization recognize no gain or loss. If boot is received, gain recognition is under §356.",
		"§361 nonrecognition for the target corporation: the target corporation recognizes no gain or loss on the exchange of its assets for stock of the acquirer (or in a divisive D, stock of the controlled corporation). Distributions of the acquirer stock to target shareholders by the target in the course of the reorganization are also generally nonrecognition events.",
		"§358 substituted basis rules: target shareholders take a substituted basis in the acquirer stock received — the basis of the target stock surrendered, increased by any gain recognized, decreased by any boot received. The basis in any boot received is its fair market value.",
		"§362 carryover basis for the acquiring corporation: property received by the acquirer takes a carryover basis from the transferor, plus any gain recognized by the transferor. Contrast with a §338 election deemed asset purchase, which produces a stepped-up basis.",
		"§381 tax attribute carryover: in a qualifying reorganization (or a §332 parent-subsidiary liquidation), the acquiring corporation inherits the target's earnings and profits, net operating losses, capital losses, credit carryforwards, and depreciation methods. This is the primary tax-motivation for structuring an acquisition as a reorganization rather than a taxable asset sale.",
		"§382 as a trigger consideration: a reorganization that results in an ownership change (more than 50% change in ownership by 5%-shareholders over a three-year testing period) triggers the §382 annual NOL limitation on inherited NOLs. This spec references §382 at the concept level only; the computation mechanics belong to a separate NOL topic.",
		"§355 corporate divisions at concept depth: spin-off (distribution of subsidiary stock pro rata to shareholders), split-off (distribution of subsidiary stock in exchange for surrender of distributing stock), and split-up (complete distribution of all subsidiary stock followed by liquidation of the distributing corporation). The divisive transaction is nonrecognition at both the distributing corporation and shareholder level if §355 requirements are met.",
		"§355 active trade or business requirement: BOTH the distributing corporation and the controlled corporation must have been actively engaged in a trade or business for at least five years immediately before the distribution. The five-year test is strict and a newly formed controlled corporation generally cannot satisfy it.",
		"§355 device test: the transaction cannot be used principally as a device for distributing earnings and profits of either corporation. Evidence of a device includes a prearranged sale of the controlled corporation's stock, non-pro-rata distribution patterns, and the presence of investment assets rather than business assets.",
		"§355 business purpose requirement: the distribution must be motivated by a corporate-level business purpose other than federal income tax avoidance. Valid purposes include fit-and-focus divisions, regulatory compliance, and resolution of shareholder disputes.",
		"§355(e) and §355(d) anti-Morris Trust rules: transactions in which a §355 distribution is followed by a prearranged acquisition of 50% or more of the distributing or controlled corporation are subject to recharacterization. §355(e) triggers gain recognition at the distributing corporation level when the prearranged acquisition occurs within two years of the distribution. These rules target leveraged buyouts that were previously structured through §355.",
		"§338 qualified stock purchase election — general concept: when a corporation acquires at least 80% of the stock of a target within a 12-month acquisition period, the buyer may elect under §338 to treat the stock purchase as a deemed asset purchase for tax purposes. The deemed transaction is a sale of the target's assets to a 'new' target followed by liquidation. The election produces a stepped-up basis in the target's assets but also triggers recognition of gain at the old target level.",
		"§338(g) buyer-only election: the acquirer alone makes the election. The old target recognizes gain on the deemed asset sale and files a final return. The gain is borne by the old target's shareholders through the purchase price negotiation. §338(g) is commonly used for isolated target acquisitions where the seller will not join the election.",
		"§338(h)(10) joint buyer-seller election: available when the target is a subsidiary within a consolidated group OR an S corporation. Both buyer and seller jointly elect. The deemed gain is reported on the seller's consolidated return or S corporation return (absorbing the seller's losses and providing single-level taxation on flow-through), and the buyer gets a stepped-up basis in the target's assets. §338(h)(10) is often preferable to §338(g) when it is available.",
		"The §338 election comparison to direct asset purchase and stock purchase without election: a direct asset purchase produces the same tax result (stepped-up basis) but requires transfer of each individual asset and liability, often with third-party consent requirements. A stock purchase without §338 election preserves the target's historic basis and attributes (no step-up, no gain on acquisition). §338 allows the buyer to get asset-purchase tax treatment through a stock-purchase legal structure.",
	],

	outOfScope: [
		"§351 tax-free corporate formation mechanics — 80% control test, boot recognition under §351(b), assumption of liabilities under §357, built-in loss limitation under §362(e)(2), service-not-property rule. Entity Formation and Liquidation (TCP) territory",
		"§331-§337 complete corporate liquidation mechanics — shareholder gain/loss under §331, corporate-level gain under §336, parent-subsidiary liquidation under §332, basis rules under §334. Entity Formation and Liquidation territory",
		"§311(b) non-liquidating distribution gain on appreciated property — Entity Formation and Liquidation territory",
		"§708 partnership mergers and divisions — Partnerships (REG) territory",
		"§382 NOL limitation mechanics at computation depth — 5% shareholder tracking, long-term tax-exempt rate, recognition period, built-in gain/loss adjustments, §383 credit carryover limitation. §382 as a TRIGGER consideration is in scope; the mechanics belong to a separate NOLs topic",
		"Consolidated return mechanics at depth — §1501-§1504 affiliated group requirements, intercompany transactions, investment basis adjustments, SRLY rules. Entity Tax Compliance: NOLs and Consolidated Returns territory",
		"§269 acquisitions made to evade tax — separate anti-abuse topic",
		"§367 outbound transfers to foreign corporations and §7874 corporate inversions — International Tax territory",
		"S corporation §1362 election and termination mechanics, accumulated adjustments account (AAA) tracking — S Corporations (REG) territory. §1374 built-in gains tax is mentioned at concept level when a §338(h)(10) election is made on an S corp target",
		"Partnership content — §721, §752, §704 allocations, §751 hot assets — Partnerships / Advanced Basis territory",
		"Stock valuation methods at valuation-theory depth — comparable company analysis, DCF, lattice models, Black-Scholes option pricing. BAR Financial Valuation Methods territory",
		"ASC 805 business combinations accounting — acquisition method, measurement period adjustments, goodwill, bargain purchases, contingent consideration. FAR Business Combinations territory",
		"Leveraged buyout (LBO) financial modeling — debt structuring, equity returns, exit multiples. BAR territory",
		"Reorganization transaction costs under INDOPCO principles — Tax procedure / business expense territory",
		"Securities law aspects of reorganizations — SEC registration, Section 145 registration. Adjacent law topic",
	],

	keyStandards: [
		"IRC §368 — Definitions relating to corporate reorganizations (the seven types)",
		"IRC §354 — Exchanges of stock and securities in certain reorganizations",
		"IRC §355 — Distribution of stock and securities of a controlled corporation",
		"IRC §356 — Receipt of additional consideration (boot in reorganizations)",
		"IRC §358 — Basis to distributees",
		"IRC §361 — Nonrecognition of gain or loss to corporations",
		"IRC §362 — Basis to corporations",
		"IRC §381 — Carryover of certain tax attributes in reorganizations",
		"IRC §338 — Certain stock purchases treated as asset acquisitions",
		"IRC §338(h)(10) — Joint buyer-seller election",
		"Reg. §1.368-1(d) — Continuity of business enterprise",
		"Reg. §1.368-1(e) — Continuity of interest",
	],

	commonMisconceptions: [
		"Thinking all reorganization types have the same consideration flexibility. Type A is flexible (subject to 40% COI stock requirement); Type B requires solely voting stock (no boot); Type C allows up to 20% boot only under the boot relaxation rule. The specific consideration rules differ by reorganization type.",
		"Believing the continuity of interest doctrine requires 100% stock consideration. COI requires a meaningful proprietary stake — typically at least 40% of consideration must be acquirer stock (per Rev. Proc. 77-37). Type B is the exception because it requires solely voting stock, effectively setting COI at 100%.",
		"Confusing COI with COBE. COI is a shareholder-level requirement (target shareholders must continue holding a meaningful stake in the acquirer via stock). COBE is a corporation-level requirement (the acquirer must continue the target's historic business or use the target's historic assets). Both must be satisfied for a §368 reorganization.",
		"Thinking §338(g) and §338(h)(10) produce the same result. §338(g) is a buyer-only election; §338(h)(10) requires joint buyer-seller election and is available only when the target is a consolidated subsidiary or S corporation. §338(g) creates a deemed asset sale with gain borne by the OLD target, typically absorbed by the seller through price negotiation. §338(h)(10) shifts the gain to the seller's return directly, providing cleaner single-level taxation.",
		"Believing §355 transactions require only the active trade or business test. §355 has multiple requirements: active trade or business (5-year), device test, business purpose, continuity requirements, and specific distribution requirements. Failure of any single requirement disqualifies the transaction.",
		"Thinking the §355 5-year active trade or business requirement applies only to the distributing corporation. It applies to BOTH distributing and controlled corporations. A newly formed controlled corporation generally cannot satisfy this test, which is why §355 spin-offs typically involve existing operating divisions rather than newly created ones.",
		"Treating §356 boot recognition as always capital gain. §356(a)(2) recharacterizes the gain as a dividend (ordinary income) to the extent it has the effect of a dividend — typically when the target shareholder maintains a meaningful interest in the combined entity and the distribution is proportional to their stock holdings.",
		"Believing a reorganization preserves ALL tax attributes. §381 carries over most attributes (NOLs, E&P, credits, depreciation methods), but §382 may limit the post-reorganization use of NOLs if an ownership change occurred. The reorganization preserves the attributes in form, but §382 restricts their usefulness in the acquirer's hands.",
		"Thinking all corporate acquisitions qualify for §368 reorganization treatment. Taxable acquisitions (direct asset purchases, stock purchases for cash, §338(g) elections) are common and often preferred when the buyer wants a stepped-up basis. Reorganization treatment is desirable for attribute preservation but is not always optimal.",
		"Confusing Type A statutory merger with a reverse triangular merger. A reverse triangular merger uses an acquisition subsidiary that merges into the target (target survives), structured to qualify under §368(a)(2)(E). A forward triangular merger uses an acquisition subsidiary into which the target merges (subsidiary survives). Both are specialized reorganization forms used for practical business reasons beyond simple two-party mergers.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "Section 708",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)708\\b",
			category: "partnership mergers",
			why: "§708 partnership mergers and divisions — Partnerships (REG) territory.",
		},
		{
			term: "Section 721",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)721\\b",
			category: "partnership formation",
			why: "§721 partnership formation — Partnerships / Advanced Basis territory.",
		},
		{
			term: "Section 752",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)752\\b",
			category: "partnership liability allocation",
			why: "§752 partnership liability allocation — Partnerships / Advanced Basis territory.",
		},
		{
			term: "hot assets",
			pattern: "\\bhot\\s+assets?\\b",
			category: "partnership hot assets",
			why: "§751 hot assets — Partnerships territory.",
		},
		{
			term: "substantial economic effect",
			pattern: "substantial\\s+economic\\s+effect",
			category: "partnership allocation",
			why: "§704(b) partnership allocation — Partnerships / Advanced Basis territory.",
		},
		{
			term: "accumulated adjustments account",
			pattern: "accumulated\\s+adjustments\\s+account|\\bAAA\\s+account",
			category: "S corp distributions",
			why: "S corp AAA — S Corporations (REG) territory.",
		},
		{
			term: "long-term tax-exempt rate",
			pattern: "long[-\\s]term\\s+tax[-\\s]exempt\\s+rate",
			category: "§382 depth",
			why: "§382 limitation base rate — NOLs topic. §382 as trigger is in scope; mechanics are not.",
		},
		{
			term: "recognized built-in gain",
			pattern: "recognized\\s+built[-\\s]in\\s+gain|\\bRBIG\\b",
			category: "§382 depth",
			why: "§382 RBIG computation depth.",
		},
		{
			term: "Section 367",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)367\\b",
			category: "international tax",
			why: "§367 outbound transfers — International Tax territory.",
		},
		{
			term: "Section 7874",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)7874\\b",
			category: "international tax",
			why: "§7874 corporate inversions — International Tax territory.",
		},
		{
			term: "Subpart F",
			pattern: "Subpart\\s+F\\b",
			category: "international tax",
			why: "Subpart F — International Tax territory.",
		},
		{
			term: "GILTI",
			pattern: "\\bGILTI\\b|global\\s+intangible\\s+low[-\\s]taxed\\s+income",
			category: "international tax",
			why: "GILTI — International Tax territory.",
		},
		{
			term: "ASC 805",
			pattern: "\\bASC\\s*805\\b",
			category: "GAAP business combinations",
			why: "ASC 805 business combinations accounting — FAR territory.",
		},
		{
			term: "Black-Scholes",
			pattern: "Black[-\\s]Scholes",
			category: "valuation theory",
			why: "Option pricing — BAR Financial Valuation territory.",
		},
		{
			term: "WACC",
			pattern: "\\bWACC\\b|weighted\\s+average\\s+cost\\s+of\\s+capital",
			category: "corporate finance theory",
			why: "WACC — BAR Capital Structure territory.",
		},
		{
			term: "Section 269",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)269\\b",
			category: "anti-abuse",
			why: "§269 tax-evasion acquisitions — separate anti-abuse topic.",
		},
	],

	notes:
		"Entity Formation and Restructuring is the TCP advanced corporate topic covering §368 reorganizations (seven types with COI/COBE), §355 divisive transactions, and §338 qualified stock purchases. Census v3 flagged 18/67 questions at 26.9% on `§355`, `continuity of interest`, `§338`, and `AAA`. Clean rightful-owner: Entity Formation and Liquidation (authored immediately before this) explicitly banned all §368/§355/§338 content as 'separate advanced corporate topic — Entity Formation and Restructuring territory.' This spec is that topic. Anchored at TCP/II/A/2 alongside Entity Formation and Liquidation — two specs, same anchor, different scope lines (E&L owns §351 formation and §331-§337 liquidation; this spec owns reorganizations, divisions, §338 elections). Out of scope: §351 formation, §331-§337 liquidation, §708 partnership mergers, §382 computation depth, consolidated return mechanics, §367/§7874 international, S corp election/termination, ASC 805 GAAP accounting, valuation theory, §269 anti-abuse.",
};
