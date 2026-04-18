import type { LessonSpec } from "./types";

// TCP/III/C — "Tax planning for S corporations."
//
// No direct DB topic match. This is the PLANNING group for S corps,
// distinct from TCP/II/B (compliance — basis, distributions, loss
// limitations) and REG S corporations (election, eligibility, formation).
//
// AICPA representative tasks cover planning strategies: reasonable
// compensation optimization, AAA management, C-to-S conversion timing,
// built-in gains tax planning, and distribution planning.

export const spec: LessonSpec = {
	topic: "S Corporation Tax Planning",
	section: "tcp",
	primaryRef: "TCP/III/C",
	secondaryRefs: [],

	inScope: [
		"Reasonable compensation planning — balancing salary (subject to FICA/Medicare) vs. distributions (not subject to employment tax), IRS scrutiny of inadequate compensation, factors used to determine reasonable compensation",
		"Built-in gains (BIG) tax planning under §1374 — 5-year recognition period after C-to-S conversion, strategies to minimize BIG tax exposure (accelerating/deferring asset dispositions, using NOL carryovers to offset BIG), estimating BIG tax liability",
		"AAA management strategies — monitoring accumulated adjustments account to ensure distributions come from AAA (tax-free return of basis) before AEP (taxable dividend), election to distribute AEP first under §1368(e)(3) in specific planning contexts",
		"C-to-S conversion timing analysis — evaluating when to elect S status considering BIG tax exposure, loss of C corporation NOL carryovers (cannot be used at S level, but can offset BIG tax), passive investment income penalty under §1375",
		"Passive investment income tax under §1375 — tax on excess net passive investment income when S corp has AEP and passive investment income exceeds 25% of gross receipts, planning to avoid the tax (eliminating AEP, reducing passive income, distributing AEP)",
		"S corporation termination risk management — monitoring the 100-shareholder limit, eligible shareholder requirements, single-class-of-stock requirement; inadvertent termination relief under §1362(f)",
		"Distribution planning to optimize basis — timing distributions relative to income allocations, ensuring sufficient basis for loss deductions, ordering of stock basis vs. debt basis utilization",
		"Shareholder loan structuring — creating bona fide debt basis through direct shareholder-to-corporation loans (vs. back-to-back loans or guarantees that do NOT create basis), promissory note documentation requirements",
		"Comparison of S corp vs. other entity planning — when to recommend S election vs. partnership vs. C corp for a specific client scenario (cross-reference to TCP/III/A entity choice spec, but here focused on S-specific optimization)",
		"Qualified subchapter S subsidiary (QSub) election at concept level — single-member S corp subsidiary treated as disregarded entity, planning implications for liability isolation",
	],

	outOfScope: [
		"S corporation basis computation mechanics — covered in TCP/II/B (S Corporation Taxation) spec",
		"S corporation election and eligibility rules at depth — covered in REG S Corporations spec",
		"Detailed reasonable compensation case law analysis and factor-by-factor benchmarking",
		"Entity choice comparison framework at depth — covered in TCP/III/A spec",
		"Partnership vs. S corp comparison at detailed mechanics level — covered separately",
		"State-level S corporation election and composite return mechanics",
		"ESBT and QSST trust mechanics at depth",
		"S corporation ESOP planning and §1042 rollover strategies",
		"Detailed AAA computation across multiple years with C corporation conversion history",
	],

	keyStandards: [
		"IRC §1362 — S corporation election, revocation, termination",
		"IRC §1368 — Distribution rules for S corporations",
		"IRC §1374 — Built-in gains tax",
		"IRC §1375 — Passive investment income tax",
		"IRC §1362(f) — Inadvertent termination relief",
		"IRC §1368(e)(3) — Election to distribute AEP first",
		"IRC §3121 — FICA on wages (reasonable compensation context)",
	],

	commonMisconceptions: [
		"Believing S corp distributions are always subject to self-employment tax. S corp distributions to shareholders who receive reasonable compensation are NOT subject to FICA/Medicare. Only the salary portion is subject to employment taxes.",
		"Believing the built-in gains tax can be avoided by simply deferring sales past the recognition period. The 5-year BIG recognition period applies to gains built in at the time of C-to-S conversion — deferring sales past 5 years does eliminate BIG tax, but the taxpayer must survive the full period without disposing of appreciated assets.",
		"Believing C corporation NOL carryovers can be used against S corporation ordinary income. C corp NOL carryovers are suspended during S years — they can only offset BIG tax, not the S corp's pass-through income.",
		"Treating back-to-back loans (shareholder borrows from bank, lends to S corp) the same as direct loans for basis purposes. The IRS scrutinizes back-to-back loan arrangements — the loan must create genuine economic outlay and a bona fide debtor-creditor relationship between the shareholder and the corporation.",
		"Believing the passive investment income tax under §1375 applies to all S corporations. The §1375 tax applies ONLY to S corporations with accumulated earnings and profits (AEP) from C corporation years AND passive investment income exceeding 25% of gross receipts. S corps that have always been S corps (no AEP) are not subject to this tax.",
		"Assuming inadvertent termination of S status is automatically fatal. Section 1362(f) provides relief for inadvertent terminations — the IRS can waive the termination if the corporation and shareholders take corrective steps within a reasonable period.",
	],

	representativeDifficulty: "hard",

	notes:
		"TCP/III/C is the planning counterpart to TCP/II/B (compliance). Questions should present client scenarios requiring S corp optimization decisions — reasonable compensation levels, BIG tax mitigation, distribution timing, conversion analysis. This is a higher-difficulty group because it requires synthesis of multiple rules into a planning recommendation.",
};
