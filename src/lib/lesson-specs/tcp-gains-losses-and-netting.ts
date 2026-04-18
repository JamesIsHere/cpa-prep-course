import type { LessonSpec } from "./types";

// TCP/IV/B — "Amount and character of gains and losses on asset
// disposition and netting process."
//
// DB topic: "Related Party Transactions" (66 questions) — the DB topic
// name is a partial misnomer inherited from the original topic structure.
// The AICPA group is broader: it covers gain/loss characterization,
// capital gain netting, §1231 hotchpot, and depreciation recapture.
//
// 8 task-specs in this group — the largest in TCP Area IV.

export const spec: LessonSpec = {
	topic: "Gains, Losses, and Netting",
	topicAliases: ["Related Party Transactions"],
	section: "tcp",
	primaryRef: "TCP/IV/B",
	secondaryRefs: [],

	inScope: [
		"Capital asset definition and classification — §1221 capital assets (investment property, personal-use property), excluded assets (inventory, depreciable/real property used in trade or business, accounts receivable, self-created works), the importance of character determination for the netting process",
		"Section 1231 property and the hotchpot — §1231 assets (depreciable property and real property used in trade or business held over 1 year), netting process (net §1231 gains treated as LTCG, net §1231 losses treated as ordinary), 5-year lookback recapture rule converting §1231 gain to ordinary income to the extent of prior §1231 ordinary losses",
		"Capital gain and loss netting process — net short-term against short-term, net long-term against long-term, then net the two baskets; net capital loss deduction limitation ($3,000/$1,500 MFS for individuals), unlimited carryforward of excess capital losses",
		"Holding period determination — more than 1 year for long-term, 1 year or less for short-term, tacking rules (gifted property, inherited property, like-kind exchanges, nontaxable exchanges), day-after-acquisition counting rule",
		"Depreciation recapture — §1245 recapture (gain on disposition of personal property recaptured as ordinary income to the extent of depreciation taken), §1250 recapture (gain on real property in excess of straight-line depreciation, largely obsolete post-1986 but tested at concept level), unrecaptured §1250 gain taxed at 25% rate",
		"Amount realized and adjusted basis — computation of gain/loss (amount realized minus adjusted basis), amount realized includes cash + FMV of property received + liabilities assumed by buyer, adjusted basis = cost basis minus accumulated depreciation plus capital improvements",
		"Related party loss disallowance under §267 — loss on sale between related parties (family members, >50% owned entities) is disallowed to the seller; buyer's basis is cost, but on subsequent sale the buyer can offset gain by the previously disallowed loss (but not create a loss)",
		"Constructive sale rules under §1259 at concept level — appreciated financial positions with offsetting positions (short against the box) trigger constructive sale and gain recognition",
		"Qualified small business stock (§1202) exclusion at concept level — exclusion of gain on sale of QSBS held more than 5 years, percentage exclusions (50%/75%/100% depending on acquisition date), per-issuer gain limitation",
		"Collectibles gain rate (28%) and unrecaptured §1250 gain rate (25%) as special long-term capital gain rate categories in the netting process",
	],

	outOfScope: [
		"Like-kind exchange and involuntary conversion mechanics — covered in TCP/IV/A spec",
		"Passive activity loss rules — covered in TCP/I/B spec",
		"At-risk limitations — covered in TCP/I/B spec",
		"Excess business loss limitation under §461(l) at depth — concept-level mention only",
		"Net investment income tax (NIIT) at computational depth — individual taxation topic",
		"Detailed §1202 QSBS active business requirements and per-issuer limitation computations",
		"Commodity and §1256 contract mark-to-market rules — 60/40 long-term/short-term character",
		"Section 1244 small business stock ordinary loss treatment at depth",
		"Straddle rules under §1092 at depth",
		"Partnership hot asset rules (§751) at depth — covered in TCP/III/D spec",
		"Installment sale mechanics — covered in TCP/IV/A spec",
	],

	keyStandards: [
		"IRC §1221 — Capital asset definition",
		"IRC §1231 — Property used in trade or business",
		"IRC §1(h) — Capital gain rate structure (0%/15%/20%/25%/28%)",
		"IRC §1245 — Depreciation recapture on personal property",
		"IRC §1250 — Depreciation recapture on real property",
		"IRC §1211 — Capital loss limitation",
		"IRC §1212 — Capital loss carryforward",
		"IRC §267 — Related party loss disallowance",
		"IRC §1202 — Qualified small business stock (concept level)",
		"IRC §1259 — Constructive sales (concept level)",
	],

	commonMisconceptions: [
		"Believing §1231 gains are always treated as long-term capital gains. The §1231 netting process requires combining all §1231 gains and losses first. If the net is a gain, it is LTCG — but the 5-year lookback recapture rule can convert that gain to ordinary income to the extent of prior §1231 ordinary losses.",
		"Confusing §1245 recapture with §1250 recapture. §1245 recaptures ALL depreciation as ordinary income (full recapture). §1250 recaptures only EXCESS depreciation over straight-line as ordinary income — since most post-1986 real property uses straight-line, §1250 recapture is typically zero, but unrecaptured §1250 gain is taxed at 25%.",
		"Believing capital losses can fully offset ordinary income. Individual capital losses can offset only $3,000 of ordinary income per year ($1,500 MFS). Excess capital losses carry forward indefinitely but remain subject to the $3,000 annual limitation.",
		"Treating the related party loss disallowance as a permanent loss. The disallowed loss is not permanently lost — when the buyer subsequently sells the property to an unrelated party, the buyer can use the previously disallowed loss to offset (but not exceed) the gain on that subsequent sale.",
		"Applying the day-of-acquisition rule for holding period. The holding period begins the DAY AFTER acquisition, not on the acquisition date. Property acquired on January 1 and sold on January 1 of the following year has been held for exactly 1 year — which is NOT more than 1 year, so it is short-term.",
		"Believing all depreciation recapture on real property is taxed at ordinary rates. Post-1986 real property typically has no §1250 recapture (straight-line depreciation). Instead, the depreciation is taxed as unrecaptured §1250 gain at a maximum 25% rate — not ordinary rates, not the preferential 15%/20% LTCG rate.",
	],

	representativeDifficulty: "medium",

	notes:
		"TCP/IV/B is the core gain/loss characterization and netting group. The capital gain netting process and §1231 hotchpot are the primary computational tasks. The topicAliases field includes 'Related Party Transactions' because existing DB questions under that topic name cover §267 related party loss disallowance and gain/loss netting concepts that belong to this AICPA group. The TCP/IV/C spec (Owner-Entity Transactions) covers the entity-focused related party rules.",
};
