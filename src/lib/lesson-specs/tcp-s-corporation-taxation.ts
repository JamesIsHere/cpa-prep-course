import type { LessonSpec } from "./types";

// TCP/II/B — "S corporations."
//
// No single DB topic maps here — S corporation content is distributed
// across several TCP topics. This spec covers the AICPA group's two
// topics: TCP/II/B/1 (basis of shareholder's interest) and TCP/II/B/2
// (transactions between shareholder and S corporation).
//
// Distinct from REG S corporations (which covers election, eligibility,
// built-in gains tax, AAA ordering) — TCP/II/B focuses on the ongoing
// shareholder-level compliance: basis tracking, distribution treatment,
// and loss limitation ordering.

export const spec: LessonSpec = {
	topic: "S Corporation Taxation",
	section: "tcp",
	primaryRef: "TCP/II/B",
	secondaryRefs: [],

	inScope: [
		"Shareholder basis in S corporation stock — initial basis (cash/property contributed or purchase price), annual adjustments for income/loss/deductions, separately stated items' effect on basis",
		"S corporation basis ordering rules — increase for income items first, then decrease for distributions, then decrease for nondeductible expenses, then decrease for deductible losses/deductions; basis cannot go below zero",
		"Debt basis for S corporation shareholders — only DIRECT loans from shareholder to corporation create debt basis (unlike partnerships); guarantees of corporate debt do NOT create basis; back-and-forth between stock and debt basis restoration",
		"Loss limitation ordering for S corp shareholders — four-hurdle sequence: (1) stock + debt basis under §1366(d), (2) at-risk under §465, (3) passive activity under §469, (4) excess business loss under §461(l); losses suspended at each level carry forward separately",
		"Distribution treatment from S corporations — tax-free return of basis from AAA (accumulated adjustments account), then from AEP (accumulated earnings and profits from C corp years) treated as dividend, then return of remaining stock basis, then capital gain; AAA ordering at concept level",
		"Shareholder contributions to S corporation — §351 nonrecognition on formation (if 80% control), basis = adjusted basis of contributed property + gain recognized (if any), holding period tacking for capital/§1231 assets",
		"Shareholder loans to S corporation — creation of debt basis, interest income to shareholder, repayment reducing debt basis, loss deductions first reduce stock basis then debt basis",
		"Separately stated items flowing through to shareholders — the distinction between ordinary business income/loss and separately stated items (capital gains/losses, §1231 gains/losses, charitable contributions, tax-exempt income, etc.)",
		"Pro rata allocation on mid-year ownership changes — per-share per-day allocation as default method, election for interim closing of the books",
		"Built-in gains tax at concept level — §1374 tax on recognized built-in gains during the 5-year recognition period after C-to-S conversion, at corporate rate",
	],

	outOfScope: [
		"S corporation election and eligibility rules at depth — one class of stock, 100-shareholder limit, eligible shareholders, election timing, revocation/termination — covered in REG",
		"AAA computation at detailed mechanics level — accumulated adjustments account tracking across multiple years with C corporation history",
		"Reasonable compensation analysis for S corp shareholder-employees — IRS challenge patterns, payroll tax savings, disguised distributions",
		"Qualified subchapter S subsidiary (QSub) rules",
		"Passive activity loss rules at depth — covered in TCP/I/B spec",
		"Entity choice comparison (C vs. S vs. partnership) — covered in TCP/III/A spec",
		"S corporation tax planning strategies — covered in TCP/III/C spec",
		"ESBT and QSST trust rules for S corporation eligibility at depth",
		"State-level entity tax treatment of S corporations (e.g., composite returns, entity-level tax elections)",
	],

	keyStandards: [
		"IRC §1366 — Pass-through of items to shareholders",
		"IRC §1367 — Adjustments to basis of shareholder's stock",
		"IRC §1368 — Distributions (S corporation with and without AEP)",
		"IRC §1366(d) — Loss limitation to basis",
		"IRC §1374 — Built-in gains tax",
		"IRC §351 — Transfer to corporation controlled by transferor",
		"IRC §465 — At-risk limitation (applied after basis limitation)",
		"IRC §469 — Passive activity limitation (applied after at-risk)",
	],

	commonMisconceptions: [
		"Believing guarantees of S corporation debt create shareholder basis. Unlike partnerships, only DIRECT loans from the shareholder to the corporation create debt basis. Guaranteeing a bank loan to the corporation does NOT increase the shareholder's basis.",
		"Applying the partnership debt-sharing rules to S corporations. S corporation shareholders do NOT get basis for their share of entity-level debt (no §752 equivalent). Only direct shareholder-to-corporation loans count.",
		"Confusing AAA with shareholder stock basis. AAA is a corporate-level account that tracks the S corporation's cumulative net income less distributions. Shareholder stock basis is a shareholder-level account. They start at different amounts and can diverge.",
		"Believing S corporation distributions are always tax-free. Distributions are tax-free only to the extent of the shareholder's stock basis (and AAA if the corporation has AEP). Distributions exceeding basis are capital gain.",
		"Applying loss deductions before reducing basis for distributions. The ordering rules require distributions to reduce basis BEFORE losses — a distribution received during the year reduces the basis available for loss deductions.",
		"Believing debt basis is restored before stock basis. When income increases basis, stock basis is restored first. Only after stock basis is fully restored does excess income restore debt basis. This matters when the shareholder has both suspended losses and reduced debt basis.",
	],

	representativeDifficulty: "medium",

	notes:
		"TCP/II/B covers the ongoing shareholder-level compliance for S corporations — basis tracking, distribution ordering, and loss limitations. This is distinct from the REG S corporation spec (election/eligibility/formation) and TCP/III/C (S corp tax planning strategies). The key computational skill is the four-hurdle loss limitation sequence and the basis ordering rules.",
};
